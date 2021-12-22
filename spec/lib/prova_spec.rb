require('rails_helper')
require('prova')

describe("Prova") do


  it("Should return status_code ok") do
    puts Prova.new.mq
  end

end