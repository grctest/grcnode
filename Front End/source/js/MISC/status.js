var init = {
  serverstatus: function() {
    var ServerStatusURL = $('#ServerStatus_URL').attr('href');
    //Asteroids Server Status
    $.ajax({
      type: "GET",
      url: ServerStatusURL,
      dataType: "xml",
      success: function(xml){
        $(xml).find('daemon').each(function(){
          var command = $(this).find('command').text();
          var status = $(this).find('status').text();
          if (status == 'running') {
            $("<div class='col-xs-12'></div>").html(command + ' : <b style="color:green;">' + status + '</b>').appendTo("#Project_ServerStatus");
          } else {
            $("<div class='col-xs-12'></div>").html(command + ' : <b style="color:red;">' + status + '</b>').appendTo("#Project_ServerStatus");          
          }
        });
        //WU
        $(xml).find('database_file_states').each(function(){
          var results_in_progress = $(this).find('results_in_progress').text();
          var users_with_recent_credit = $(this).find('users_with_recent_credit').text();
          $("<div class='col-xs-12'></div>").html('Results in progress' + ' : <b>' + results_in_progress + '</b>').appendTo("#Project_WU");
          $("<div class='col-xs-12'></div>").html('Users with RAC' + ' : <b>' + users_with_recent_credit + '</b>').appendTo("#Project_WU");
        });
        //End of WU
      },
      error: function() {
        //alert("An error occurred while processing Server Status XML file.");
          $("<div class='col-xs-12'></div>").html('<span style="color:red;">ERROR: Server XML Failure!</span>').appendTo("#Project_WU");
          $("<div class='col-xs-12'></div>").html('<span style="color:red;">ERROR: Server XML Failure!</span>').appendTo("#Project_ServerStatus");
      }
    });
  }
};

//Code Starts
$(document).ready(function(){
  init.serverstatus();
});
//Code Ends