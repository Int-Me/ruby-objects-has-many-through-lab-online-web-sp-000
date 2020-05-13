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

  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
  end

  def appointments
    Appointment.all.collect {|appointment| appointment.doctor == self}
  end

  def patients
    @set = []
    self.appointments.each do |appointment|
      @set << appointment.patient
    end
    @set
  end

end
