##
## try / else
##
for arg in sys.argv[1:]:
    try:
        f = open(arg, 'r')
    except IOError:
        print 'cannot open', arg
    else:
        """ if the try clause does not raise an exception """
        print arg, 'has', len(f.readlines()), 'lines'
        f.close()

##
## Custom Error
##
class MyError(Exception):
    def __init__(self, value):
        self.value = value
    def __str__(self):
        return repr(self.value)

try:
    raise MyError(2*2)
except MyError as e:
    print('My exception occurred, value:', e.value)

raise MyError('oops!') // prints traceback

print "fer";

