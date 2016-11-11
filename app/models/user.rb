class User < ActiveRecord::Base

  include Adauth::Rails::ModelBridge

  AdauthMappings = {
    login: :login,
    name: :name,
    group_strings: :cn_groups
  }

  AdauthSearchField = [:login, :login]

  def name_first_last
    name.split(' ').reject { |initials| initials.include? '.' }.join(' ')
  end

  def notify_created(drive)
    ENV['EMAIL_RECIPIENTS'].split(',').each do |recipient|
      Notifier.drive_created_email(self, drive, recipient).deliver_later
    end
  end
end
