class Student < ActiveRecord::Base
    belongs_to :cohort

    def cohort
        Cohort.select do |cohort|
            cohort.id == self.cohort_id
        end
    end

    def current_mod
       self.cohort.map {|cohort| cohort.current_mod}
    end  
end