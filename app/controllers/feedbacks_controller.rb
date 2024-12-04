# app/controllers/feedback_controller.rb
class FeedbacksController < ApplicationController
  protect_from_forgery with: :null_session
  def index
  end

  def gracias
  end

  def test
  end

  def politica
  end

  def compromiso
  end

  def create
    @feedback = Feedback.new(feedback_params)
      begin
        ClientFeedbackMailer.new_feedback_email(
        rating: feedback_params[:rating], 
        client_name: feedback_params[:client_name],
        email_address: feedback_params[:email_address],
        comment: feedback_params[:comment]
      ).deliver_later
      redirect_to feedback_gracias_path
    rescue => e
      Rails.logger.error "Mailer Error: #{e.message}"
      Rails.logger.error e.backtrace.join("\n")
      render json: { message: "error", error: e.message }
    end
  end

  private
  def feedback_params
    params.require(:feedback).permit(:rating, :client_name, :email_address, :comment)
  end
end