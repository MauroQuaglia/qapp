require("rails_helper")

describe(Author) do

  it("Should saved on database") do
    expect { Author.create }.to change { Author.count }.from(0).to(1)
  end

end