class MenusController < ApplicationController
  skip_before_action :authenticate_user!, only: [:menu, :index, :show, :search]

  def home
      # @pizzas = policy_scope(Pizza)
      @pizzas = Pizza.all
      # sort the services according to how many orders the have (desc). Get the first 10
      # @top_pizzas = @pizzas.sort_by { |pizza| -pizza.orders.size }.first(8)
      @top_pizzas = @pizzas.last(8).reverse
      # get the last uploaded services in the database
      @last_pizzas = @pizzas.last(8).reverse
      # pegar os usuarios que mais vendem serviços
      # @orders = Order.all
    end

    def search
    end

    def index
      @pizzas = Pizza.all
      #@pizzas = policy_scope(Service)
      if params[:category]
        @pizzas = @pizzas.where(category_id: params[:category])
      end
      if params[:query].present?
        sql_query = " \
              pizzas.name @@ :query \
              OR pizzas.description @@ :query \
            "
        @pizzas = @pizzas.where(sql_query, query: "%#{params[:query]}%")
      end
    end

    def show
      @pizza = Pizza.find(params[:id])
      # @review = Review.new
      @user = current_user
      # authorize @pizza
    end

end
