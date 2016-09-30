//Code Starts
$(document).ready(function(){
  table.PopulatePage();
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
    });

    window.setTimeout('table.init();',2500);

  //End-of-Address
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
          //alert('end of sendmany');
          table.SendManyCalc(coin_input, message, account, confirmations);
    } else {
      alert('Insufficient rain!');
    }
  },

  SendManyCalc: function(coin_input, message, account, confirmations) {
    //alert('sendmanycalc');
    //RAC distribution
    var rowCount = $('#Table_Tbody tr').length;
    //alert(rowCount);
    var TotalMAG = 115000;
    var CoinRain = coin_input;
    var InputAccount = account;
    var RainMessage = message;
    //alert(RainMessage);
    //
    //alert('1');
    //
    var AddressArray = [];
    var CPIDCoinsArray = [];
    //
    for (var i = 1; i <= rowCount; i++) {
      //alert(rowCount);
      //alert('loop start');
      //alert('Row: ' + i);
      var RecipientAddress = $('#Table_Tbody tr:nth-child(' + i + ') td:nth-child(2)').text();
      //alert('Address: ' + RecipientAddress);
      var CPIDMAG = $('#Table_Tbody tr:nth-child(' + i + ') td:nth-child(5)').text();
      //alert('CPID RAC: ' + CPIDRAC);
      //alert('coin input: ' + coin_input);
      //alert('TotalRAC' + TotalRAC);
      var CPIDCoins = (CPIDMAG/TotalMAG)*CoinRain;
      //alert('Coins: ' + CPIDCoins);
      //
      AddressArray[i] = RecipientAddress;
      CPIDCoinsArray[i] = CPIDCoins;
      //
    }

    var SendManyQuantity = Math.ceil(rowCount/500);

    for (var CommandLoop = 1; CommandLoop <= SendManyQuantity; CommandLoop++) {
      
      var Recipients = '';
      var pre = '';
      var end = '';
      var ConsoleOutput = '';

      if (CommandLoop == 1) {

        for (var innerloop = 1; innerloop <= 500; innerloop++) {

          if (innerloop == 1) {
            //alert('normal');
            Recipients = Recipients + '"' + AddressArray[innerloop] + '"' + ':' + CPIDCoinsArray[innerloop];
          } else {
            //alert('final');
            Recipients = Recipients + ',' + '"' + AddressArray[innerloop] + '"' + ':' + CPIDCoinsArray[innerloop];
          }

        }

      } else {

        var userloop_start = (CommandLoop - 1)*500;
        var targetloop = CommandLoop * 500;

        for (var userloop = ((CommandLoop - 1)*500)+1; userloop <= targetloop; userloop++) {
          //alert('userloop:' + userloop + ' CommandLoop:' + CommandLoop + ' targetloop:' + targetloop + ' rowcount:' + rowCount);
          if (userloop >= rowCount) {
            break;
            //alert('userloop => rowcount');
          }

          if (userloop == userloop_start) {
            //alert('normal');
            Recipients = Recipients + '"' + AddressArray[userloop] + '"' + ':' + CPIDCoinsArray[userloop];
          } else {
            //alert('final');
            Recipients = Recipients + ',' + '"' + AddressArray[userloop] + '"' + ':' + CPIDCoinsArray[userloop];
          }

        }

      }

      pre = 'sendmany "' + InputAccount + '" \'{';
      end = '}\' ' + confirmations + ' "' + RainMessage + '"';

      //alert(end);
      //alert(pre + 'middle' + end);

      ConsoleOutput = pre + Recipients + end;
      //
      $('#SendMany'+CommandLoop).text(ConsoleOutput);
    }

    //End of RAC distribution
  },

  init: function() {
    $("#myTable").tablesorter( {sortList: [[5,1]]} );
  }
};