shared_examples "unauthorized_response" do
  include_context "setup_user_token"
  subject(:response) { action.call(params.merge(headers)) }

  context "when it's a wrong token" do
    let(:jwt) { "" }

    it { expect(response[0]).to be(401) }
  end

  context "when authorization header is empty" do
    let(:headers) { Hash[] }
    it { expect(response[0]).to be(401) }
  end
end
