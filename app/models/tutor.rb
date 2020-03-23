class Tutor < ApplicationRecord

  has_secure_password
  validates :email, presence: true, uniqueness: true

  def subjects
    a = []
    if math == true
      a << "Math"
    end
    if reading == true
      a << "Reading"
    end    
    if social_studies == true
      a.push("Social Studies")
    end    
    if science == true
      a.push("Science")
    end    
    if special_needs == true
      a.push("Special Needs")
    end    
    if spelling == true
      a.push("Spelling")
    end
    return a
  end

end
