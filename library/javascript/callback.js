$(function() {
  for (var i=0; i<2; i++) {
    $.get('http://www.google.com/', function() {
      alert(i);
    });
  }
});

/**
 * protect var
 */
function sendRequest(i) {
    $.get('http://www.google.com/', function() {
        alert(i);
    });
}

for (var i = 0; i < 2; i++) {
    sendRequest(i);
}
