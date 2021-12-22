require("rails_helper")

describe("Home") do

  before do
    get('/')
  end

  it("Should return status_code ok") do
    expect(response).to have_http_status(:ok)
  end

end