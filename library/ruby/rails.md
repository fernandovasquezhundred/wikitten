* Controller
```
  def search
    query = params[:query]

    # simple search
    @books = Book.where(:title => :query)

    # like search
    q = "%#{query}%"
    @books = Book.where("title like ?", q)

    render "index"
  end
```

* View

```
<%= form_tag search_path do %>
  <%= label_tag "Buscar libros" %>
  <%= text_field_tag "query" %>
<% end %>
```

* Routes
```
  # http://127.0.0.1:3000/search?query=jv
  get "/search" => "books#search", :path => "search"
  post "/search" => "books#search", :path => "search"
```
