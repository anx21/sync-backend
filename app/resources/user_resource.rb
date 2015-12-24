class UserResource < JSONAPI::Resource
  attribute :email
  has_many :groups, through: :group_memberships
end
