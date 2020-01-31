class Doctor
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def new_appointment(patient, date)
    Appointment.new(self, patient, date)
  end
  
  
  def self.all
    @@all
  end
  
  
end