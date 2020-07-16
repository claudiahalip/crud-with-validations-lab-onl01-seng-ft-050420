class FutureReleaseYearValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
        unless value <= Date.current.year 
            record.errors.add(:attribute, "cannot be in the future!")
        end 
    end 

end 