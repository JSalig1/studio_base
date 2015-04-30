FactoryGirl.define do
  factory :project do
    name 'project_name'
    job_number 'project_number'
  end

  factory :drive do
    number 'drive_number'
  end

  factory :archive do
    project_id 1
    drive_id 1
  end
end
