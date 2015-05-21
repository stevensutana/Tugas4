class Gambar < ActiveRecord::Base
	validates :title, presence: true,
                    length: { minimum: 3 }
    has_attached_file :nama_gambar, :styles=>{:medium=>"400x200>", :thumb=>"200x100>", :default_url=>""}
    validates_attachment_content_type :nama_gambar, :content_type =>/\Aimage\/.*\Z/
    validates :nama_gambar, presence:true;
    validates_attachment_size :nama_gambar, :less_than=>200.kilobytes 
end

