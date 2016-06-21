//Code Starts
$(document).ready(function(){
  table.PopulatePage();
  table.init();
});
//Code Ends
var table = {
  PopulatePage: function() {
  //alert('2');
  //Opening 
    $.getJSON('/Stats/Reports/NNReport.json', function (data) {
      for ( var i in data) {
        var CPID = data[i].CPID;

        //json contains a hash of the nn which breaks the code - skip this json entry.
        if (CPID.indexOf('Hash') !== -1) {
          continue;
        }

        var Address = data[i].Address;
        var NNLocalMag = data[i].LocalMagnitude;
        var NNMag = data[i].NeuralMagnitude;

        if (NNMag == 0) {
          continue;
        }

        var CPIDValidity = data[i].CPID_Valid;
        var TotalRAC = data[i].TotalRAC;
        var SyncedTil = 'Synced Til';
        var SyncedUntilDate = data[i][SyncedTil];
        //Creating rows
        var ROW = "<tr id='" + CPID + "'></tr>";
        $(ROW).html('<td><a href="http://www.gridresearchcorp.com/gridcoin/?cpid_dashboard&CPID=' + CPID + '">' + CPID + '</a></td>' + "<td id='" + CPID + '_Address' + "'>" + Address + "</td>" + '<td>' + TotalRAC + '</td>' + '<td>' + NNLocalMag + '</td>' + "<td id='" + CPID + "_NNMag" + "'>" + NNMag + '</td>' + '<td>' + CPIDValidity + '</td>' + '<td>' + SyncedUntilDate + '</td>'+ '<td><a href="http://gridcoin.co/?cpid=' + CPID + '">' + '$' + '</a>').appendTo("#Table_Tbody");
        
        //inserting addresses into cells
        $('#' + CPID + '_Address').text(Address);
      }

      $("#myTable").tablesorter( {sortList: [[3,1]]} );
    });
  //End-of-Address
  },

  init: function() {
    $("#myTable").tablesorter( {sortList: [[3,1]]} );
  }
};