class Patient 
  
  attr_accessor :name, :doctor 
  
  @@all = []
  
  def initialize(name) 
    @name = name
    @@all << self  
  end 
  
  def self.all 
    @@all 
  end 

  def new_appointment(date, doctor) 
    Appointment.new(date, self, doctor)
  end 

  def appointments 
    Appointment.all.select do |appt|
      appt.appointment == self 
      appt.appointment 
    end 
  end 
  
  def doctors 
    Appointment.all.collect do |appt|
      appt.doctor == self 
      appt.doctor 
    end 
  end 
  
end 