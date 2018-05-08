$(function() {
  $('.address').suggestions({
      token: 'e4a6a54a183194300238fd82bab7f94a929e8fa3',
      type: 'ADDRESS',
      count: 5,
      onSelect: function(suggestion) {
        console.log(suggestion);
      }
  });
});

