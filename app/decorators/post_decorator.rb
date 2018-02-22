class PostDecorator < ApplicationDecorator
  delegate_all

  decorates_association :author

  def published_at(options = {})
    return l(object.published_at, format: '%e %B %Y') if options[:date_only]

    l(object.published_at, format: '%e %b %Y %H:%M')
  end

  def body(&block)
    ConvertMarkdownService.new.convert_post(object, &block).html_safe
  end

  def header_image
    return object.header_image if object.header_image.present?

    '/assets/header-bg.jpg'
  end
end
