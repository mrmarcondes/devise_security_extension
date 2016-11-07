class OldPassword
  include Mongoid::Document
  include Mongoid::Timestamps

  field :encrypted_password, :type => String, :null => false
  field :password_salt, :type => String
  field :password_archivable_id, :type => Integer
  field :password_archivable_type, :type => String, :null => false

  attr_accessible :encrypted_password

  belongs_to :password_archivable, polymorphic: true
end
