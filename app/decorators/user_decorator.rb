class UserDecorator < ApplicationDecorator
  delegate_all

  def image_data(&block)
    return '/assets/user_default.svg' unless object.image_data.attached?

    yield object.image_data
  end
end
