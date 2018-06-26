class Review::CommentDecorator < ApplicationDecorator
  delegate_all

  def image_data(&block)
    return '/assets/user_default.svg' unless object.image_data.attached?

    yield object.image_data
  end

  def body(&block)
    ConvertMarkdownService.new.convert_post(object, &block).html_safe
  end
end
