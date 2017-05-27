class PostDecorator < ApplicationDecorator
  delegate_all

  def published_at
    object.published_at.strftime('%e %b %Y %H:%M')
  end

  def body(&block)
    ConvertMarkdownService.new.convert_post(object, &block).html_safe
  end
end
