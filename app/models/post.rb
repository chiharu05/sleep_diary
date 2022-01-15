class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :kind

  validates :start_time, presence: true
  validates :kind_id, numericality: { other_than: 1 , message: "can't be blank"} 

  
end