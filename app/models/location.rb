class Location < ActiveRecord::Base
  serialize :pictures, Array
#source:
#http://stackoverflow.com/questions/7394088/rails-get-next-previous-record

  def next
    Location.where("id > ?", self.id).order("id ASC").first || Location.first
  end

  def previous
    Location.where("id < ?", self.id).order("id DESC").first || Location.last
  end
 
end
