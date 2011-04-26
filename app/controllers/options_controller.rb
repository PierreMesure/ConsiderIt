class OptionsController < ApplicationController
  def show
    @user = current_user
    @option = Option.find(params[:id])
    
    @position = current_user ? current_user.positions.where(:option_id => @option.id).first : nil
    
    @pro_points = @option.points.pros.ranked_overall.paginate(:page => 1, :per_page => 4)#.order "score DESC" \
    @con_points = @option.points.cons.ranked_overall.paginate(:page => 1, :per_page => 4)#.order "score DESC" \
    
    PointListing.transaction do
      (@pro_points + @con_points).each do |pnt|
        PointListing.create!(
          :option => @option,
          :position => @position,
          :point => pnt,
          :user => @user,
          :context => 4
        )
      end
    end
        
    @page = 1
    @bucket = 'all'
    
    @protovis = true
    
    #Point.update_relative_scores
    
  end

end
