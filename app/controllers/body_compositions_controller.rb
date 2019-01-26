class BodyCompositionsController < BaseController
  layout 'body_compositions'
  def index
    @body_compositions = BodyComposition.all
  end
end
