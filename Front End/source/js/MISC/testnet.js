$(document).ready(function(){
	//Start of Testnet

	$.getJSON('/Stats/Servers/Testnet/testnet.json', function (data) {
	  $("#Testnetconnections").text(data.connections);  
	  $("#Testnetversion").text(data.version);  
	  $("#Testnetblocks").text(data.blocks);
	  $("#Testnetmoneysupply").text(data.moneysupply);
	  var robohash = "https://robohash.org/" + data.ip + ".jpg"
	  $("#TestnetRobohash").attr("src", robohash);
	});

	$.getJSON('/Stats/Servers/Testnet/testnet-Blocks.json', function (data) {
	  $("#Testnetbestblockhash").text(data); 
	});

	$.getJSON('/Stats/Servers/Testnet/testnet-Blocks.json', function (data) {
	  $("#TestnetRoboBlockHash").append('<img src="https://robohash.org/' + data + '.png" width="100" height="100" border="1" />'); 
	});

//node's bestblockhash identicons
	$.getJSON('/Stats/Servers/Testnet/testnet-Blocks.json', function (data) {
  	    jdenticon.update("#Testnetidenticon", data);
	});
//other identicon end

	$.getJSON('/Stats/Servers/Testnet/testnet-Peers.json', function (data) {
		for ( var i in data) {
			var addr1 = data[i].addr;
			var pre = "<div class='col-xs-1'><img width='50' height='50' src=";
			var robohash = 'https://robohash.org/' + addr1 + '.jpg?size=50x50';
			var end = "></div>"
		    $("#TestnetPeerRoboHashes").append(pre + robohash + end);
		}
	});

setTimeout(function() { window.location=window.location;},180000);

	//End of Testnet
});