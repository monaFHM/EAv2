class ContactForm

  def initialize(name, email, betreff, message)
        @name = name
        @email = email
        @betreff = betreff
        @message = message
  end

  def name
      @name
  end

  def email
    @email
  end

  def betreff
    @betreff
  end

  def message
    @message
  end
end

