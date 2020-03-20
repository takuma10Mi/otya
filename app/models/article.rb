class Article < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader
  def self.csv_attributes
    ["user_id","title", "content", "created_at", "updated_at"]
  end

  def self.generate_csv
    CSV.generate(headers: true) do |csv|
      csv << csv_attributes
      all.each do |cont|
        csv << csv_attributes.map{|attr| cont.send(attr)}
      end
    end
  end

end
