class RankingController < ApplicationController
    
    def want
        @want_items = Ownership.where(type: "Want").limit(10).group(:item_id).order('count_all desc').count
        .keys.map{|id| Item.find(id)}
    end
    
    def have
        @have_items = Ownership.where(type: "Have").limit(10).group(:item_id).order('count_all desc').count
        .keys.map{|id| Item.find(id)}
    end

end
