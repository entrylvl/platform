require 'rouge'
require 'rouge/plugins/redcarpet'

class RougeRendererService < Redcarpet::Render::HTML
  include Rouge::Plugins::Redcarpet
end
