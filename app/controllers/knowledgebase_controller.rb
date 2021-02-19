class KnowledgebaseController < ApplicationController
  def index
    @count = Point.count
  end

  def search
    @keyword = request.params['query']
    @title_result = Point.where('result_point2.title =~ ?', '(?i).*'+@keyword+'.*')
    @content_result = Point.where('result_point2.content =~ ?', '(?i).*'+@keyword+'.*') 
  end

  def show
    @p = Point.find(request.params['id'])
    @links = @p.links.pluck(:title, :uuid)
  end

  def edit
    @p = Point.find(request.params['id'])
    @links = @p.links.pluck(:uuid)
  end

  def new
  end

  def update
    @p = Point.find(request.params['id'])
    @params = params.permit(:title, :content, links: [])
    @p.title = @params['title'] if !@params['title'].nil?
    @p.content = @params['content'] if !@params['content'].nil?
    @p.links = nil
    @p.links << Point.where(uuid: @params['links'])
    @p.save

    render "show"
  end

  def create
    point_params = params.permit(:title, :content)
    @p = Point.new(title: point_params['title'], content: point_params['content'])
    @p.save

    render "show"
  end
end