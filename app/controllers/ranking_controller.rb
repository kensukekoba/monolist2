class RankingController < ApplicationController
    
    def want
        @want_items = Want.group(:item_id).order('count_all desc').limit(10).count
        .keys.map{|id| Item.find(id)}
    end
    
    def have
        @have_items = Have.group(:item_id).order('count_all desc').limit(10).count
        .keys.map{|id| Item.find(id)}
    end

end
