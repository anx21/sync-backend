class GroupResource < JSONAPI::Resource
  attribute :name
  has_many :users, through: :group_memberships
end
