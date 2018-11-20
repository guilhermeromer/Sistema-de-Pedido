class ProdutosController < ApplicationController
	   $request_date = Date.today
    def index
		@produtos = Produto.where(data: $request_date)
	end

	def create
		@produtos = Produto.new(produto_params)
        if @produtos.save
            $request_date = @produtos.data
            redirect_to root_url
        else
          render :new
        end
    end

	def new
		@produtos = Produto.new
	end

	def destroy
		id = params[:id]
		Produto.destroy id
		redirect_to root_url
	end


    def entregue
        @Produtos = Produto.find(params[:id])
        if @Produtos.entregue == false
            @Produtos.entregue = true
            @Produtos.save
            redirect_to root_url
        end
    end

    def edit
        @produtos = Produto.find(params[:id])
    end

   def update
        @produtos = Produto.find(params[:id])
        if @produtos.update(produto_params)
            $request_date = @produtos.data
            redirect_to root_url
        else
          render :edit
        end
    end

    def show
        @produt = Produto.find(params[:id])
    end

    def amanha
        $request_date += 1.day
        redirect_to produtos_path
    end

    def ontem
        $request_date -= 1.day
        redirect_to produtos_path
    end

    def hoje
        $request_date = Date.today
        redirect_to root_url
    end


    private
        def produto_params
            params.require(:produto).permit(:data, :descricao, :valor)
        end

    
    
end
