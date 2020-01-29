module NameModule
  class FirstNameService
    def initialize(params)
      @name = params["name"]
      @gender = params["gender"]
    end

    def call
      return 'Name is required' if @name == nil

      FirstName.create(name: @name, gender: @gender)

      'First name added'
    end
  end
end