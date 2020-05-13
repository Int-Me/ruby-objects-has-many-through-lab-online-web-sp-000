class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(name, patient)
    Appointment.new(name, self, patient)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    @set = []
    self.appointments.each do |appointment|
      @set << appointment.patient
    end
    @set
  end

end
