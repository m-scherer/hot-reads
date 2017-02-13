class LinksController < ApplicationController

  def index
    subscribe_to_links
    subscribe_to_users
    @links = Link.all
  end

  private

  def subscribe_to_links
    pub = Subscriber.new
    pub.subscribe_to_link_queue
  end

  def subscribe_to_users
    pub = Subscriber.new
    pub.subscribe_to_user_queue
  end


end
