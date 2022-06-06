class GoogleBotIp

  def initialize(mask)
    @ip = mask.split('/').first
    @mask = mask.split('/').last
    # 34.64.0.0/10
  end

  def to_s
    "#{@ip}/#{@mask}"
  end

end