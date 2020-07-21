class Pirate

  attr_reader :name
  attr_accessor :weight, :height

  PIRATES =[]

  def initialize(params)
    @name = params[:name]
    @type = params[:weight]
    @booty = params[:height]
    PIRATES << self
  end

  def self.all
    PIRATES
  end

end
