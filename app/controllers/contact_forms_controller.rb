class ContactFormsController < ApplicationController

def new
   @contact_form = ContactForm.new
end

def create
  @contact_form = ContactForm.new(contact_page_params)
  if @contact_form.save
    redirect_to new_contact_form_path
  end
end

private

  def contact_page_params
    params.require(:contact_form).permit(:name, :email, :content)
  end

end
