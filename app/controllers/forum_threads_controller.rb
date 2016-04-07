class ForumThreadsController < ApplicationController
  before_action :authenticate_user!, except:  [:index, :show]
  before_action :set_forum_thread, except:  [:index, :new, :create]

  def index
    @forum_threads = ForumThread.all
  end

  def show

  end

  def new
    @forum_threads = ForumThread.new
    @forum_threads.forum_posts.new
  end

  def create

  end

  private
    def set_forum_thread
      @forum_threads = ForumThread.find(params[:id])
    end
end