class UserAddressesController < ApplicationController

  def update
    @user_address = UserAddress.find(params[:id])
    if @user_address.update(user_address_params)
      redirect_to root_path, notice: '配送先情報を更新しました'
    else
      render 'users/show'
    end
  end

  private

  def user_address_params
    params.require(:user_address).permit(:address_last_name, :address_first_name, :address_last_name_kana, :address_first_name_kana, :zip_code, :prefecture_id, :city, :street, :building_name, :phone_number)
  end

end
