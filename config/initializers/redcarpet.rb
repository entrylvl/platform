class CodeRayify < Redcarpet::Render::HTML
  def block_code(code, language = :ruby)
    CodeRay.scan(code, language).div
  end
end
