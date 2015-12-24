class UsersController < JSONAPI::ResourceController
  def create_group
    user = User.find_by_email(params[:email])
    render json: 'User not found', status: 400 and
    return unless user.authentication_token == params[:token]
    group = Group.new(name: params[:name])
    render json: 'Invalid group name', status: 400 and return unless group.save
    membership = GroupMembership.create(user_id: user.id, group_id: group.id)
    data = {
        email: user.email,
        group: group
    }
    render json: data, status: 201 and return
  end
end
