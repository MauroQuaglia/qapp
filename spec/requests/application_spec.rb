require("rails_helper")

describe("Config") do

  before do
    get('/')
  end

  it("should set action_dispatch.default_headers") do
    headers = response.headers
    expect(headers['X-Frame-Options']).to eq('SAMEORIGIN')
    expect(headers['X-XSS-Protection']).to eq('0')
    expect(headers['X-Content-Type-Options']).to eq('nosniff')
    expect(headers['X-Permitted-Cross-Domain-Policies']).to eq('none')
    expect(headers['Referrer-Policy']).to eq('strict-origin-when-cross-origin')
  end

end