class Student < ActiveRecord::Base
    has_many :addresses
    accepts_nested_attributes_for :addresses, :allow_destroy => true
    
    validates :first_name,   :presence => true
    validates :middle_name,  :presence => true
    validates :last_name   , :presence => true
    validates :sex ,         :presence => true
    validates :birth_date ,  :presence => true
    validates :nationality,  :presence => true
    
    def full_name
        [first_name,middle_name,last_name].join(' ')
    end
    def address_attributes=(address_attributes)
        address_attributes.each do |attributes|
            addresses.build(attributes)
        end
    end
end

