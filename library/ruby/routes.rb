resources :photos
# GET	      /photos	      photos#index	    list of all photos
# GET	      /photos/new	  photos#new	      return an HTML form for creating a new photo
# POST	    /photos	      photos#create	    create a new photo
# GET	      /photos/:id	  photos#show	      display a specific photo
#           /photos/:id.json
# GET	      /photos/:id/edit	photos#edit	  return an HTML form for editing a photo
# PATCH/PUT	/photos/:id	  photos#update	    update a specific photo
#           /photos/:id.json
# DELETE    /photos/:id	  photos#destroy	  delete a specific photo

'create':  { method: 'POST' },
'index':   { method: 'GET', isArray: true },
'show':    { method: 'GET', isArray: false },
'update':  { method: 'PUT' },
'destroy': { method: 'DELETE' }
