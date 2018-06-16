class UserDecorator < ApplicationDecorator
  delegate_all

  def image_data
    return '/assets/user_default.svg' unless object.image_data.attached?

    object.image_data
  end
end
