class StaticPagesController < ApplicationController
  #def home
    #@entry = current_user.entries.build if signed_in?
    #@entry  = current_user.entries.build
   #@feed_items = current_user.feed.paginate(page: params[:page])
  #end
  
  def home
    if signed_in?
      @entry  = current_user.entries.build
      @feed_items = current_user.feed.paginate(page: params[:page], :per_page => 3)
      @comments = @entry.comments.paginate(:page => params[:comment_page], :per_page => 4)
    end
  end

  def help
  end
end
