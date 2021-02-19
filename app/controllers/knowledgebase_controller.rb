class KnowledgebaseController < ApplicationController
  before_action :set_point, only: [:show, :edit]

  def index
    @count = Point.count
  end

  def search
    @keyword = request.params['query']
    @title_result = Point.where('result_point2.title =~ ?', '(?i).*'+@keyword+'.*')
    @content_result = Point.where('result_point2.content =~ ?', '(?i).*'+@keyword+'.*') 
  end

  def show
  end

  def edit    
  end

  def new
  end

  def update
    @p = Point.find(request.params['id'])
    point_params = params.permit(:title, :content, links: [])
    @p.title = point_params['title'] if !point_params['title'].nil?
    @p.content = point_params['content'] if !point_params['content'].nil?
    @p.links = nil
    @p.links << Point.where(uuid: point_params['links'])
    @p.save

    redirect_to action: 'show', id: @p.uuid
  end

  def create
    point_params = params.permit(:title, :content, links: [])
    @p = Point.create(title: point_params['title'], content: point_params['content'])
    # insert links after saving because it's picky about connecting graph nodes before creating them
    @p.links << Point.where(uuid: point_params['links'])
    @p.save

    redirect_to action: 'show', id: @p.uuid
  end

  private
  def set_point
    @p = @p || Point.find(request.params['id'])
    @links = @p.links.pluck(:title, :uuid)
  end
end