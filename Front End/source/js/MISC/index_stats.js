var init = {
  serverstatus: function(Project) {
    var ServerStatusURL = $("#" + Project + "_ServerStatus_URL").attr('href');
    //Asteroids Server Status
    $.ajax({
      type: "GET",
      url: ServerStatusURL,
      dataType: "xml",
      success: function(xml){
        //WU
        $(xml).find('database_file_states').each(function(){
          var results_in_progress = $(this).find('results_in_progress').text();
          var users_with_recent_credit = $(this).find('users_with_recent_credit').text();
          $("<div class='col-xs-12'></div>").html('<b>' + results_in_progress + '</b>').appendTo("#" + Project + "_WUs");
          $("<div class='col-xs-12'></div>").html('<b>' + users_with_recent_credit + '</b>').appendTo("#" + Project + "_RAC");
        });
        //End of WU
      },
      error: function() {
        //alert("An error occurred while processing Server Status XML file.");
          $("<div class='col-xs-12'></div>").html('<span style="color:red;">ERROR: Server XML Failure!</span>').appendTo("#" + Project + "_WUs");
          $("<div class='col-xs-12'></div>").html('<span style="color:red;">ERROR: Server XML Failure!</span>').appendTo("#" + Project + "_RAC");
      }
    });
  },

  seti: function(Project) {
    var ServerStatusURL = $("#" + Project + "_ServerStatus_URL").attr('href');
    //Asteroids Server Status
    $.ajax({
      type: "GET",
      url: ServerStatusURL,
      dataType: "xml",
      success: function(xml){
        //WU
        $(xml).find('database_file_states').each(function(){
          var results_in_progress = $(this).find('results_in_progress').text();
          var users_with_recent_credit = $(this).find('users_with_recent_credit').text();
          $("<div class='col-xs-12'></div>").html('<b>' + results_in_progress + '</b>').appendTo("#" + Project + "_WUs");
          $("<div class='col-xs-12'></div>").html('<b>' + users_with_recent_credit + '</b>').appendTo("#" + Project + "_RAC");
        });
        //End of WU
      },
      error: function() {
        //alert("An error occurred while processing Server Status XML file.");
          $("<div class='col-xs-12'></div>").html('<span style="color:red;">ERROR: Server XML Failure!</span>').appendTo("#" + Project + "_WUs");
          $("<div class='col-xs-12'></div>").html('<span style="color:red;">ERROR: Server XML Failure!</span>').appendTo("#" + Project + "_RAC");
      }
    });
  }
};

//Code Starts
$(document).ready(function(){
  init.serverstatus('Atlas');
  init.serverstatus('Asteroids');
  init.serverstatus('BU');
  init.serverstatus('BURP');
  init.serverstatus('Collatz');
  init.serverstatus('Cosmologyathome');
  init.serverstatus('CSG');
  init.serverstatus('Einstein');
  init.serverstatus('Enigma');
  init.serverstatus('FAH');
  init.serverstatus('GPUGRID');
  init.serverstatus('GridcoinFinance');
  init.serverstatus('LeidenClassic');
  init.serverstatus('LHC');
  init.serverstatus('MalariaControl');
  init.serverstatus('Milkyway');
  init.serverstatus('MindModeling');
  init.serverstatus('Moowrap');
  init.serverstatus('NFS');
  init.serverstatus('Numberfields');
  init.serverstatus('POEM');
  init.serverstatus('Skynet');
  init.serverstatus('Primegrid');
  init.serverstatus('SAT');
  init.seti('SETI');
  init.serverstatus('Wuprop');
  init.serverstatus('YAFU');
  init.serverstatus('YOYO');
});
//Code Ends