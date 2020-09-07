# To deliver this notification:
#
# NewPostNotification.with(post: @post).deliver_later(Audience.all)
# NewPostNotification.with(post: @post).deliver(current_user)

class NewPostNotification < Noticed::Base
  # Add your delivery methods
  #
  # deliver_by :database
  deliver_by :email, mailer: "AudienceMailer"
  # deliver_by :slack
  # deliver_by :custom, class: "MyDeliveryMethod"

  # Add required params
  params [:audience, :post]

  # Define helper methods to make rendering easier.
  #
  def message
    t(".message")
  end

  def url
    post_path(params[:post])
  end
end
