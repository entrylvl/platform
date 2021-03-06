class ConvertMarkdownService
  def convert_post(post, options = {})
    html = parser.render(post.body)

    new_html = if block_given?
      yield html, options
    end

    new_html || html
  end

  def parser
    Redcarpet::Markdown.new(RougeRendererService.new, fenced_code_blocks: true)
  end
end
