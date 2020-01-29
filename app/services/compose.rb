module NameModule
  class Compose
    def initialize
      @how_many_first
      @how_many_last
    end

    def call
      @how_many_first = 1 if @how_many_first == nil
      @how_many_first = 1 if @how_many_first == nil

      name = ''
      @how_many_first.each do |n|
        name += FirstName.order('RANDOM()')[n]
      end

      @how_many_last.each do |n|
        name += LastName.order('RANDOM()')[n]
      end

      name
    end
  end
end