## doctor > appointment < patient

class Patient

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(doctor, date)
        Appointment.new(doctor, self, date)
    end

    def appointments
        result = []
        Appointment.all.each do |appointment|
            if appointment.patient == self
                result << appointment
            end
        end
        return result
    end

    def doctors
        result = []
        Appointment.all.each do |appointment|
            if appointment.patient == self
                result << appointment.doctor
            end
        end
        return result
    end

end