class ShortenedUrl < ActiveRecord
    validates :long_url, uniqueness: true, presence: true
    validates :short_url, uniqueness: true, presence: true

    def self.random_code
        
    end

    def urlsafe_base64(n=nil, padding=false)
        s = [random_bytes(n)].pack("m0")
        s.tr!("+/", "-_")
        s.delete!("=") unless padding
        s
      end
end