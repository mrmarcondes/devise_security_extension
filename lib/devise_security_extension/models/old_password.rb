class OldPassword
  include Mongoid::Document
  include Mongoid::Timestamps

  field :encrypted_password, type: String
  field :password_salt, type: String
  field :password_archivable_id, type: Integer
  field :password_archivable_type, type: String

  validates :encrypted_password, :password_archivable_type, presence: true

  belongs_to :password_archivable, polymorphic: true
end
