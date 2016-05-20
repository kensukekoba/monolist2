class RankingController < ApplicationController
    
    def want
        @want_items = Ownership.where(type: "Want").group(:item_id).order('count_all desc').count
        .keys.map{|id| Item.find(id)}.first(10)
    end
    
    def have
        @have_items = Ownership.where(type: "Have").group(:item_id).order('count_all desc').count
        .keys.map{|id| Item.find(id)}.first(10)
    end

end
