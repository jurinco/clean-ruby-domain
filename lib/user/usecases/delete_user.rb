module User
  module UseCases
    class DeleteUser
      def initialize(user_repo, request)
        @user_repo = user_repo
        @request = request
      end

      def execute
        @user_repo.delete_by_auth_token(@request[:user][:auth_token])
      end
    end
  end
end
