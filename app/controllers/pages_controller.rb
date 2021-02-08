class PagesController < ApplicationController
  def about
    # @members = [ 'thanh', 'dimitri', 'germain', 'damien', 'julien' ]
    # raise
  end

  def contact
    @members = [ 'thanh', 'dimitri', 'germain', 'damien', 'julien' ]
    # raise

    # params[:member] # nil, "", "germain"
    if params[:member]
      @members = @members.select { |member| member.start_with?(params[:member]) }
    end
  end

  def home
    @time = Time.now
  end
end
