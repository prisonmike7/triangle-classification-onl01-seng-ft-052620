class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b ,c)
    @a = a
    @b = b
    @c = c
  end

  def kind

  end

  def valid?
    if a <= 0 || b <= 0 || c <= 0
      return false
    elsif a + b < c || b + c < a || a + c < b
      return false
    else
      return true
    end
  end

  class TriangleError < StandardError
    def message
      "Triangle input invalid!"
    end
  end
end


# def kind
#   self.partner = person
#   if person.class != Person
#     begin
#       raise TriangleError
#     rescue PartnerError => error
#       puts error.message
#     end
#   else
#     person.partner = self
#   end
# end
