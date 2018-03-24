##
##  Sessions
##
   
# Set a session value:
request.session["color"] = "blue"

# Get a session value -
fav_color = request.session["color"]

# Clear an item from the session:
del request.session["color"]

# Check if the session has a given key:
if "color" in request.session:

##
## Render
##
from django.template import loader, Context

t = loader.get_template('my_template.html')
c = Context({ 'object_list': SomeModel.objects.all() })
rendered = t.render(c)
return HttpResponse(t.render(c))

# another way
return render_to_response('my_template.html', { 'object_list': SomeModel.objects.all() })

# don't want a response
from django.template.loader import render_to_string
email_body = render_to_string("email_template.txt", { 'name': 'Bob', 'message': 'Hello!' })

from django.conf.urls.defaults import *

"""----------------------------------------------------------
    URLconf
----------------------------------------------------------"""

from django.conf.urls.defaults import *    

urlpatterns = patterns('',
    (r'^articles/2003/$',          'news.views.special_case_2003'),
    (r'^articles/(\d{4})/$',       'news.views.year_archive'),
    (r'^articles/(\d{4})/(\d+)/$', 'news.views.month_archive'),
	(r'^user/(?P<username>\w{0,50})/$', 'auth.views.profile',), 
)
/articles/2005/03/ => news.views.month_archive(request, '2005')
/articles/2005/03/ => news.views.month_archive(request, '2005', '3')
/user/theuser/     => auth.views.profile(request, username='username')

urlpatterns = patterns('',
    (r'^articles/(?P<year>\d{4})/$',                'news.views.year_archive'),
    (r'^articles/(?P<year>\d{4})/(?P<month>\d+)/$', 'news.views.month_archive'),
)
/articles/2005/03/    => news.views.month_archive(request, year='2005')
/articles/2003/03/3/  => news.views.article_detail(request, year='2003', month='3')

"""----------------------------------------------------------
    Form Processing
----------------------------------------------------------"""

from django.http import HttpResponse
from django.shortcuts import render_to_response
from mysite.books.models import Book

def search(request):
    error = False
    if 'q' in request.GET:
        q = request.GET['q']
        if not q:
            error = True
        else:
            books = Book.objects.filter(title__icontains=q)
            return render_to_response('search_results.html',
                {'books': books, 'query': q})
    return HttpResponse('Please submit a search term.')
	return render_to_response('search_form.html', {'error': True})


"""----------------------------------------------------------
    Request Response
----------------------------------------------------------"""

if request.method == 'GET':
    do_something()
elif request.method == 'POST':
    do_something_else()

# Response
response = HttpResponse("Here's the text of the Web page.")
response = HttpResponse("Text only, please.", mimetype="text/plain")

# Response as a file-like object:
response = HttpResponse()
response.write("<p>Here's the text of the Web page.</p>")
response.write("<p>Here's another paragraph.</p>")


"""----------------------------------------------------------
    Web Testing
----------------------------------------------------------"""

from django.test.client import Client

c = Client()
response = c.post('/login/', {'username': 'john', 'password': 'smith'})
response.status_code # will give 200
response = c.get('/customer/details/')
response.content # will display the response

################## Web Debugging ##################
return HttpResponse(str("ok"))
request.META['wsgi.errors'].write("testing")



"""----------------------------------------------------------
    South
   ----------------------------------------------------------"""
python manage.py migrate

# Initial
python manage.py schemamigration __app__ --initial
python manage.py migrate __app__
# Update
python manage.py schemamigration __app__ --auto
python manage.py migrate __app__
# then syncdb
python manage.py migrate __app__ --fake 

# --list: Shows what migrations are available, and puts a * next to ones which have been applied.
# --merge: Runs any missed (out-of-order) migrations without rolling back to them.
# --no-initial-data: Doesn't load in any initial data fixtures after a full upwards migration.
# --fake: Records the migration sequence as having been applied, but doesn't actually run it.
# --db-dry-run: this is useful for sanity-testing migrations to check API calls are correct.

