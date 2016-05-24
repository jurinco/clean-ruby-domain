require 'spec_helper'
require 'user/usecases/delete_user'

module User
  describe UseCases::DeleteUser do
    let(:user_repo) { Object.new }
    let(:request) { { user: { auth_token: 'TOKEN' } } }

    it 'deletes the user from the user_repo' do
      expect(user_repo).to receive(:delete_by_auth_token).with('TOKEN').and_return(true)

      UseCases::DeleteUser.new(user_repo, request).execute
    end
  end
end
