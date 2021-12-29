require("rails_helper")

describe(Library) do

  it("Should saved on database") do
    expect { Library.create }.to change { Library.count }.from(0).to(1)
  end

end