require("rails_helper")

describe("Home2", type: :request) do


  it("Should return status_code ok") do
    get("/")
    expect(response).to have_http_status(:ok)
  end

end