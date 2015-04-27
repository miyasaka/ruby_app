class Sample2 < ActiveRecord::Base
  def self.search(search)
    if search
	Sample2.where(['col1 LIKE ?', "%#{search}%"])
    else
	Sample2.all
    end
  end
end
