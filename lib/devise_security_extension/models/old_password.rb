class OldPassword
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :password_archivable, polymorphic: true
end
