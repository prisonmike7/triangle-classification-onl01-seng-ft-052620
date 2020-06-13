class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b ,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    self.partner = person
    if person.class != Person
      begin
        raise PartnerError
      rescue PartnerError => error
        puts error.message
      end
    else
      person.partner = self
    end
  end

  class TriangleError < StandardError
    def message
      "Triangle input invalid!"
    end
  end
end
