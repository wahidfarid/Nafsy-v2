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
  end

  def edit
  end
end
