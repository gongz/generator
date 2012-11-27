class Rule < ActiveRecord::Base
  attr_accessible :buildingDamage, :chem, :dalayed, :dead, :elec, :fire, :gas, :immediate, :minor, :nFeedback, :nMediaType, :name, :pFeedback, :pMediaType, :road, :roomNo, :trapped, :water, :when
end
