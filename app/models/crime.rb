class Crime < ApplicationRecord
  belongs_to :Datestamp
  belongs_to :Timestamp
  belongs_to :site
  belongs_to :offence
end
