class Doctor

    @@all = []

    attr_accessor :name

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select{
            |appointment| appointment.doctor == self
        }
    end

    def patients
        array = []
        self.appointments.each{
            |appointment| 
            array << appointment.patient
        }
        puts array
        array
    end


end
