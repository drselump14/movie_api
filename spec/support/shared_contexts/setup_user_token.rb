shared_context "setup_user_token" do
  let(:user_repository) { UserRepository.new }
  let(:user) { user_repository.create(name: "User1") }
  let(:jwt) { user_repository.generate_jwt(user.id) }
  let(:headers) do
    {
      "HTTP_AUTHORIZATION" => "Bearer #{jwt}"
    }
  end
end
