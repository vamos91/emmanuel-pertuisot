class ContactFormsController < ApplicationController


def new
   @contact_form = ContactForm.new
end

def create
  @contact_form = ContactForm.new(contact_page_params)
  if @contact_form.save
    redirect_to root_path
  end
end

# def send_mail
#   @contact_form.attribute = contact_page_params
#    # ContactMailer.contact_email(contact_page_params).deliver_now
#    #  redirect_to contact_path, notice: 'Message sent'
# end

#   def submit_form
#   @contact_page = ContactPage.new

#   if @contact_page.save(contact_page_params)
#    redirect_to action: :success
#   end
# end

private

  def contact_page_params
    params.require(:contact_form).permit(:name, :email, :content)
  end

end
