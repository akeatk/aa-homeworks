console.log("Hello from the JavaScript console!");

// Your AJAX request here
$.ajax({
  url: 'http://api.openweathermap.org/data/2.5/weather?q=London,uk&appid=bcb83c4b54aee8418983c2aff3073b3b',
  type: 'GET',
  success: function(data) {
    console.log('data');
    console.log(data);
  },
  error: function(err) {

    console.log(err);
    $.ajax({
      url: 'http://api.openweathermap.org/data/2.5/weather?q=London,uk&appid=bd5e378503939ddaee76f12ad7a97608',
      type: 'GET',
      success: function(data) {
        console.log('backup plan data');
        console.log(data);
      },
      error: function(err) {
        console.log(err);
      }
    });
  }
});

// Add another console log here, outside your AJAX request
console.log("bottom of file.")
