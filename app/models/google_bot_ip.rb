class GoogleBotIp
  @@results = []

  def initialize(mask)
    @mask = mask
    #https://www.gstatic.com/ipranges/goog.json
    "69.89.31.226/44"
    "192.0.34.166"
    # 192 = 11000000 (i primi 3 byte 110 )
    #   0 = 00000000
    # 34  = 00100010
    # 166 = 10100110
    # 11000000.00000000.00100010.10100110
  end

  def self.all
    @@results
  end

  def self.first
    @@results.first
  end

  def self.last
    @@results.last
  end

  def save
    if @mask.present? #validazione
      @@results << @mask
    else
      raise ArgumentError.new(@mask)
    end
  end

  def where(condition = {})
    #@@results.select{|element| element
  end

end