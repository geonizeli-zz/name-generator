module NameModule
  class Compose
    def initialize(size)
      @size = size
    end

    def call
      @how_many_first = 1 if @how_many_first == nil
      @how_many_last = 1 if @how_many_last == nil

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