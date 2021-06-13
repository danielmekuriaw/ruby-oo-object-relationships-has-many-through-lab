class Patient

    @@all = []

    attr_accessor :name

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select{
            |appointment| appointment.patient == self
        }
    end

    def doctors
        array = []
        self.appointments.each{
            |appointment| array << appointment.doctor
        }
        puts array
        array
    end

end