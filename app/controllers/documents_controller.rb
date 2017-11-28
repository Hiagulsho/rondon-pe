class DocumentsController < ApplicationController
  

  def certificados
    @document = Document.all
  end

  def show
  	@document = Document.find(params[:document_id])
  end


  def new
  	@document = Document.new
  end

  def create
  	@document = Document.create(document_params)
	if @document.save
	  redirect_to root_path
	end
  end

  def delete

  end

  def document_params
  	params.require(:document).permit(:title, :file)
  end

  private :document_params


end
