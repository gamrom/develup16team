module RoomsHelper
    
    def category_image (cate)
        
        case cate 
        when "영화"
            image_tag("video-camera.png", alt:"영화", width:"50")
        when "공연"
            image_tag("tickets.png", alt:"공연", width:"50")
        when "음식 나눔"
            image_tag("food.png", alt:"음식나눔", width:"50")
        when "배달음식"
            image_tag("scooter.png", alt:"배달음식", width:"50")
        else
            image_tag("coral.jpg", alt:"", width:"50")
        end
            
        
    end
    
    def category_json(cate)
        
        hash={}
        cate.each do |c| 
            hash[c.category_name] = c.id
        end
        return hash
        
    end
        
end
