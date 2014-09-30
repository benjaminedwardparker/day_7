class Vehicle
  def go
    @speed = 20
  end
  def stop
    @speed = 0
  end
  def speed
    "We are going #{@speed}"
  end
end


class Car < Vehicle

end

class Bike < Vehicle
  def speed
    "I AM ON A BIKE"
  end

end
