class User < ActiveRecord::Base

  include Adauth::Rails::ModelBridge

  AdauthMappings = {
    login: :login,
    name: :name,
    group_strings: :cn_groups
  }

  AdauthSearchField = [:login, :login]
end
