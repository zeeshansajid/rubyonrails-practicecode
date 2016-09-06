class ContactsController < ApplicationController
  def new
  	@contact = Contact.new
  end

  def create
  	@contact = Contact.new(params[:contact])
  	@contact.request = request

  	if UserMailer.contactus_request(@contact).deliver
      flash.now[:notice] = nil;
    else
      flash.now[:notice] = "Cannot send messages";
      render :new
    end
  end
end
