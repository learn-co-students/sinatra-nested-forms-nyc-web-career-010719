class Pirate

  attr_reader :name
  attr_accessor :weight, :height

  @@all = []

  def self.all
    @@all
  end

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    @@all << self
  end

end
