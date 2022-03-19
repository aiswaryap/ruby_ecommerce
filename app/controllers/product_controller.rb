class ProductController < ApplicationController

    def createproduct
        product = Product.new(product_params)
        if product.save
            redirect_to '/viewproducts'
        else
            flash[:register_errors] = user.errors.full_messages
            redirect_to '/'
        end
    end

    def addproduct
    end

    def ecommerce
    end

    def viewproduct
        @product = Product.all
    end

    def productdetails
        @product=Product.where(id: params[:productid])
    end

    def editproduct
        @product=Product.where(id: params[:productid])
    end

    def update
        product = Product.find(params[:productid])
        if product.update(product_params)
            redirect_to '/viewproducts'
        else
            flash[:login_errors] = ['invalid credentials']
            redirect_to '/'
        end
    end

    def destroy
        product = Product.find(params[:productid])
        product.destroy
        redirect_to '/viewproducts'
    end

    private
        def product_params
            params.require(:product).permit(:name, :price, :description, :specification, :brand, :image)
        end

end
