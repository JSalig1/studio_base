require "rails_helper"

RSpec.describe Notifier, type: :mailer do
  describe 'drive created email' do
    let(:drive) { create(:drive) }
    let(:user) { create(:user, name: 'Jane Doe') }
    let(:mail) { described_class.drive_created_email(user, drive, 'joe@exapmple.com').deliver_now }

    it 'renders the subject' do
      expect(mail.subject).to eq('Drive Created by Jane Doe')
    end

    it 'assigns @name' do
      expect(mail.body.encoded).to match(drive.name)
    end
  end
end
