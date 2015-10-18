module Todo1
  class SessionSerializer < ActiveModel::Serializer

    attributes :email, :username, :token_type, :user_id, :access_token

    def user_id
      object.id
    end

    def token_type
      'Bearer'
    end

  end
end


# for curl command, first User.create in rails console, then
# curl localhost:3000/todo1/login --data "email=admin@email.com&username=admin&password=password"
