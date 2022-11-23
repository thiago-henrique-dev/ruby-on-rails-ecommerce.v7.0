module Admin
    class ProductsController < BaseController
        before_action :set_product, only: %i[ show edit update destroy ]

        def index
            @products = Product.all    
        end   

        def edit 

        end  
        
        def new
            @product = Product.new
        end  

        def show

        end  
        
        def update
            respond_to do |format|
            if @product.update(product_params)
                  format.html { redirect_to admin_products_path(@category), notice: "Produto atualizado com sucesso." }
            else
                  format.html { render :edit, status: :unprocessable_entity }
            end
          end
        end

        def destroy
            @product.destroy

            respond_to do |format|
                format.html { redirect_to admin_products_path, notice: "Categoria excluida com sucesso." }
                format.json { head :no_content }
            end
        end

        def create
            @product = Product.new(product_params)

            respond_to do |format|
            if @product.save
                  format.html { redirect_to admin_products_path(@product), notice: 'Produto criado com sucesso.' }
            else
                  format.html { render :new, status: :unprocessable_entity }
            end
          end
        end

        private

        def product_params
            params.require(:product).permit(:name, :description, :price, :publish, :category_id)
        end

        def set_product
            @product = Product.find(params[:id])
        end
        
        
    end
end