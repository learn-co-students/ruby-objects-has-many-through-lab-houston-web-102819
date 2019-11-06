## doctor > appointment < patient

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

    def new_appointment(patient, date)
        Appointment.new(self, patient, date)
    end

    def appointments
        Appointment.all.select do |appointment| 
            appointment.doctor == self 
      end
    end

    
    def patients
        result = []
        Appointment.all.each do |appointment|
            if appointment.doctor == self
                result << appointment.patient
            end
        end
        return result
    end

end
