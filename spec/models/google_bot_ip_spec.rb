require("rails_helper")

describe(GoogleBotIp) do

  describe('#equal?') do
    # The equal? method should never be overridden by subclasses.
    # It is used to determine object identity, a.equal?(b) if a is the same object as b.

    it('is true if is the same object') do
      a = GoogleBotIp.new('8.8.8.8/88')
      b = a

      expect(a.equal?(b)).to be_truthy
    end

    it('is false if is not the same object') do
      a = GoogleBotIp.new('8.8.8.8/88')
      b = GoogleBotIp.new('8.8.8.8/88')

      expect(a.equal?(b)).to be_falsey
    end
  end

end