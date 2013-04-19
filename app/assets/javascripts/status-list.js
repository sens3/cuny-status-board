Cuny = {};

Cuny.StatusList = function(select){
  var that = this;

  this.fetchStatusesForUser = function(userId){
    var url = '/users/' + userId + '/statuses';
    var request = $.ajax({ url: url });
    this.bindRequestHandler(request);
  };

  this.fetchStatuses = function(){
    var request = $.ajax({ url: '/statuses'})
    this.bindRequestHandler(request);
  }

  this.bindRequestHandler = function(request){
    request.success(function(data){
      $('#statuses').html(data);
    });

    request.error(function(){
      alert("Error fetching statuses!");
    });
  };

  function init(){
    select.change(function(){
      var userId = select.val();
      if (userId) {
        that.fetchStatusesForUser(userId);
      } else {
        that.fetchStatuses();
      };
    });  
  }

  init();

};