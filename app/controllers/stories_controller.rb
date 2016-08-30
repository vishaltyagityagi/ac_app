class StoriesController < ApplicationController
	def index
    @stories = Story.all
    @contact = Contact.new
    @comment = Comment.new
    @inquiry = Inquiry.new
  end

  def create_contact
  	@contact = Contact.create(contact_params)
  	redirect_to root_path
  end
def create_inquiry
    @contact = Inquiry.create(inquiry_params)
    redirect_to root_path
  end


  def show
    @story = Story.find(params[:id])
  end
end


private

def contact_params
      params.require(:contact).permit!
   end


def inquiry_params
      params.require(:inquiry).permit!
   end