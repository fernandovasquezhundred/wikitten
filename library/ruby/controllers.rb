class ClientsController < ApplicationController

  # clients: /clients?status=activated
  def index
    if params[:status] == "activated"
      @clients = Client.activated
    else
      @clients = Client.inactivated
    end
  end

  # this RESTful request will be "/clients"
  def create
    @client = Client.new(params[:client])
    if @client.save
      redirect_to @client
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render "new"
    end
  end

  def search
    query = params[:query]

    # simple search
    @books = Book.where(:title => :query)

    # like search
    q = "%#{query}%"
    @books = Book.where("title like ?", q)

    render "index"
  end
end

