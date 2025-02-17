class ContactsController < ApplicationController
  # def new
  #   @contact = Contact.new
  # end

  def create
    # Rails.logger.debug("Received parameters: #{params.inspect}")
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to root_path, notice: 'Your message has been submitted successfully.'
    else
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :phone, :email, :message)
  end

end
