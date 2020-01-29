module NameModule
  class LastNameService
    def initialize(params)
      @name = params["name"]
      @gender = params["gender"]
    end

    def call
      return 'Name is required' if @name == nil

      LastName.create(name: @name, gender: @gender)

      'Last name added'
    end
  end
end
