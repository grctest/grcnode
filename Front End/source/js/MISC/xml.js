//Code Starts
$(document).ready(function(){
  table.teamstats();
});
//Code Ends
var table = {
  teamstats: function() {
    //alert('1');
    var TeamStatsURL = $('#Teamstats_URL').attr('href');
    //Team Stats
    $.ajax({
      type: "GET",
      url: TeamStatsURL,
      dataType: "xml",
      success: function(xml){
        $(xml).find('user').each(function(){
          var CPID = $(this).find('cpid').text();
          var total_credit = $(this).find('total_credit').text();
          var name = $(this).find('name').text();
          var RAC = $(this).find('expavg_credit').text();
           if(RAC < 1) 
               return;
          var ROW = "<tr id='" + CPID + "'></tr>";
          $(ROW).html('<td><a href="http://www.gridresearchcorp.com/gridcoin/?cpid_dashboard&CPID=' + CPID + '">' + CPID + '</a></td>' + "<td id='" + CPID + '_Address' + "'><span style='color:red;'>ISSUE: No Beacon!</span></td>" + '<td>' + name + '</td>' + '<td>' + RAC + '</td>' + '<td></td>' + "<td><span style='color:red;'>N/A</span>" + '</td>' + "<td id='" + CPID + "_NNMag" + "'><span style='color:red;'>N/A</span>" + '</td>' + '<td>' + total_credit + '</td>' + '<td><a href="http://gridcoin.co/?cpid=' + CPID + '">' + '$' + '</a>').appendTo("#Table_Tbody");
        });
        table.addresses();
        window.setTimeout('table.init();',2500);
      },
      error: function() {
        alert("An error occurred while processing Team Stats XML file.");
      }
    });
    //End of Team Stats
  },

  addresses: function() {
  //alert('2');
  //Address
    $.getJSON('/Stats/Reports/NNReport.json', function (data) {
      for ( var i in data) {
        var CPID = data[i].CPID;
        var Cell = CPID + '_Address';
        //json contains a hash of the nn which breaks the code - skip this json entry.
        if (CPID.indexOf('Hash') !== -1) {
          continue;
        }
        var Address = data[i].Address;
        var NNLocalMag = data[i].LocalMagnitude;
        //inserting addresses into cells
        $('#' + CPID + '_Address').text(Address);
        $('#' + CPID + '_NNMag').text(NNLocalMag);
      }
    });
  //End-of-Address
  },

  init: function() {
    $("#myTable").tablesorter( {sortList: [[3,1]]} );
    $('#RAC_Tfoot').text(calculations.RowTotal(4));
    $('#TRAC_Tfoot').text(calculations.RowTotal(8));
    $('#RAC2_Tfoot').text(calculations.TotalsMinusInvalid(4));
    $('#TRAC2_Tfoot').text(calculations.TotalsMinusInvalid(8));
    $('#PMAG_Tfoot').text(calculations.ProjectMag());
    $('#Percent_Tfoot').text(calculations.Percent());
  }
};

var calculations = {
    RowTotal: function (Column) {
      var rowCount = $('#Table_Tbody tr').length;
      //alert(rowCount);
      var RowTotal = 0;

      for (var i = 1; i <= rowCount; i++) {
        //alert('loop start');
        var RowValue = $('#Table_Tbody tr:nth-child(' + i + ') td:nth-child(' + Column + ')').text();
        //alert(RAC);
        RowTotal = RowTotal + parseInt(RowValue);
        //alert(RowTotal + ' loop end ' + i);
      }
      //alert(RowTotal + ' outside loop');
      return RowTotal;
      //$('#' + TFoot_Cell).text(RACTotal);
    },

    TotalsMinusInvalid: function (Column) {
      var rowCount = $('#Table_Tbody tr').length;
      //alert('ping');
      //alert('RowCount: ' + rowCount);
      var RowTotal = 0;

      for (var i = 1; i <= rowCount; i++) {
        //Detect users not in the NN & skip to next row.
        var RecipientAddress = $('#Table_Tbody tr:nth-child(' + i + ') td:nth-child(2)').text();
        //alert(i);
        if (RecipientAddress.indexOf('ISSUE') !== -1) {
          //alert('derp');
          continue;
        } else if (RecipientAddress.length < 5) {
          //alert('Address NA: ' + i);
          continue;
        } else {
          var RowValue = $('#Table_Tbody tr:nth-child(' + i + ') td:nth-child(' + Column + ')').text();
          //alert('RowValue: ' + RowValue);
          RowTotal = RowTotal + parseInt(RowValue);
          //alert(RowTotal + ' loop end ' + i);
        }
      }
      //alert(RowTotal + ' outside loop');
      //alert('Exit loop: ' + RowTotal);
      //alert('pong');
      return RowTotal;
      //$('#' + TFoot_Cell).text(RACTotal);
    },

    ProjectMag: function () {

      var rowCount = $('#Table_Tbody tr').length;
      //alert('row count: ' + rowCount);
      var RowTotal = 0;

      //Neural Network Multiplier: 115000 
      //Current number of white-listed projects: 37 
      //Current Magnitude Unit: 0.2 
      //The above 'Current Magnitude unit' is variable/dynamic - it changes as the day's output coins nears the daily maximum.
      //ProjectMagnitude= ((CPIDRAC/TotalRAC)/37)*115000;
      //Total Magnitude = Sum of all project magnitudes
      //Gridcoins emitted per day = Total Magnitude * Current Magnitude Unit

      var TotalRAC = $('#RAC_Tfoot').text();
      //alert('TotalRAC: ' + TotalRAC);

      for (var i = 1; i <= rowCount; i++) {
        //alert('loop start');
        var CPIDRAC = $('#Table_Tbody tr:nth-child(' + i + ') td:nth-child(4)').text();
        //alert('CPID RAC: ' + CPIDRAC);
        var ProjectMagnitude = ((CPIDRAC/TotalRAC)/37)*115000;
        $('#Table_Tbody tr:nth-child(' + i + ') td:nth-child(6)').text(ProjectMagnitude);
        RowTotal = RowTotal + parseFloat(ProjectMagnitude);
        //alert(RowTotal + ' loop end ' + i);
        //Insterting calculated project magnitude into the appropriate field
        //$('#' + CPID + '_ProjectMag').text(variable);
      }
      //alert('Project mag column total: ' + RowTotal);
      return RowTotal;
    },

    SendMany: function() {
      //Onclick!
      //CONFIRMATIONS = number
      //sendmany "" '{"Address":COINS}' CONFIRMATIONS "Message"
      //Grab each address
      //COINS = (RAC/TotalRAC)
      //If address = NA || 'Issue' { continue; }
      //SendManyCalc: function(TotalLoc, coin_input, message, account, Column) {
      var coin_input = document.getElementById("coins_input").value;
      var message = document.getElementById("rain_message").value;
      var account = document.getElementById("rain_account").value;
      var confirmations = document.getElementById("rain_confirmations").value;

      if (!message) {
        //Check a message has been input into the message field
        alert('Include a message!');
      } else if (!account) {
        //Check an input account is present in the account field
        alert('Include sending address (account)');
      } else if (!confirmations) {
            alert('Include confirmation quantity');
      } else if (coin_input >= 1) {
          //Check coin quantity >= 1
          if(document.getElementById('RAC_Radio').checked) {
            //alert('RAC');
            calculations.SendManyCalc('RAC2_Tfoot', coin_input, message, account, 4, confirmations);
          } else if (document.getElementById('TRAC_Radio').checked) {
            //alert('TRAC');
            calculations.SendManyCalc('TRAC2_Tfoot', coin_input, message, account, 8, confirmations);
          }
      } else {
        alert('Insufficient rain!');
      }
    },

    SendManyCalc: function(TotalLoc, coin_input, message, account, Column, confirmations) {
      //RAC distribution
      var rowCount = $('#Table_Tbody tr').length;
      //alert(rowCount);
      var RowTotal = 0;
      var TotalRAC = $('#' + TotalLoc).text();
      var Recipients = '';
      var CoinRain = coin_input;
      var InputAccount = account;
      var RainMessage = message;
      //alert(RainMessage);
      //
      //alert('1');
      for (var i = 1; i <= rowCount; i++) {
        //alert(rowCount);
        //alert('loop start');
        //alert('Row: ' + i);
        var RecipientAddress = $('#Table_Tbody tr:nth-child(' + i + ') td:nth-child(2)').text();
        //alert('Address: ' + RecipientAddress);
        if (RecipientAddress.indexOf('ISSUE') !== -1) {
          //alert('Address issue: ' + i);
          continue;
        }
        if (RecipientAddress.length < 5) {
          //alert('Address NA: ' + i);
          continue;
        }
        var CPIDRAC = $('#Table_Tbody tr:nth-child(' + i + ') td:nth-child(' + Column + ')').text();
        //alert('CPID RAC: ' + CPIDRAC);
        //alert('coin input: ' + coin_input);
        //alert('TotalRAC' + TotalRAC);
        var CPIDCoins = (CPIDRAC/TotalRAC)*coin_input;
        //alert('Coins: ' + CPIDCoins);
        //
        if (i == 1) {
          //alert('normal');
          Recipients = Recipients + '"' + RecipientAddress + '"' + ':' + CPIDCoins;
        } else {
          //alert('final');
          Recipients = Recipients + ',' + '"' + RecipientAddress + '"' + ':' + CPIDCoins;
        }
      }
      //alert('2');
      //write output command to code section
      var pre = 'sendmany "' + InputAccount + '" \'{';
      var end = '}\' ' + confirmations + ' "' + RainMessage + '"';
      //alert(end);
      //alert(pre + 'middle' + end);
      var ConsoleOutput = pre + Recipients + end; 
      $('#SendMany').text(ConsoleOutput);
      //End of RAC distribution
    },

    Percent: function() {
      var rowCount = $('#Table_Tbody tr').length;
      var RowTotal = 0;
      var TotalRAC = $('#RAC_Tfoot').text();

      for (var i = 1; i <= rowCount; i++) {
        //alert('loop start');
        var CPIDRAC = $('#Table_Tbody tr:nth-child(' + i + ') td:nth-child(4)').text();
        //alert('CPID RAC: ' + CPIDRAC);
        var Percent = (CPIDRAC/TotalRAC)*100;
        RowTotal = RowTotal + parseFloat(Percent);
        //alert(Percent);
        $('#Table_Tbody tr:nth-child(' + i + ') td:nth-child(5)').text(Percent);
      }
      return RowTotal;
    }
};