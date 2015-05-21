class GambarsController < ApplicationController
  def index
    @gambars = Gambar.all
  end

  def new
    @gambar = Gambar.new
  end

  def create
    @gambar = Gambar.new(params_gambar)
    if @gambar.save
      flash[:notice] = "Success Add Records"
      redirect_to action: 'index'
    else flash[:error] = "Data not valid"
    	render 'new'
    end
  end

  def show
    @gambar = Gambar.find_by_id(params[:id])
  end

  def edit
    @gambar = Gambar.find_by_id(params[:id])
  end

  def update
    @gambar = Gambar.find_by_id(params[:id])
    if @gambar.update(params_gambar)
      flash[:notice] = "Success Update Records"
      redirect_to action: 'index'
    else
      flash[:error] = "data not valid"
      render 'edit'
    end
  end

  def destroy
    @gambar = Gambar.find_by_id(params[:id])
    if @gambar.destroy
      flash[:notice] = "Success Delete a Records"
      redirect_to action: 'index'
    else
      flash[:error] = "fails delete a records"
      redirect_to action: 'index'
    end
  end

  private 
  def params_gambar
      params.require(:gambar).permit(:title,:nama_gambar)
  end

end
