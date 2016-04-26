$(document).ready(function(){

	//Start of SF

	$.getJSON('/Stats/Servers/SF/SF.json', function (data) {
	  $("#SFconnections").text(data.connections);  
	  $("#SFversion").text(data.version);  
	  $("#SFblocks").text(data.blocks);      
	  $("#SFmoneysupply").text(data.moneysupply);
	  var robohash = "https://robohash.org/" + data.ip + ".png"
	  $("#SFRobohash").attr("src", robohash);
	});

	$.getJSON('/Stats/Servers/SF/SF-Blocks.json', function (data) {
	  $("#SFbestblockhash").text(data);  
	});

	$.getJSON('/Stats/Servers/SF/SF-Blocks.json', function (data) {
  	    jdenticon.update("#SFidenticon", data);
	});

	//End of SF
	//Start of UK

	$.getJSON('/Stats/Servers/UK/UK.json', function (data) {
	  $("#UKconnections").text(data.connections);  
	  $("#UKversion").text(data.version);  
	  $("#UKblocks").text(data.blocks);
	  $("#UKmoneysupply").text(data.moneysupply);
	  $("#UKRobohash").attr("src", data.ip);
	});

	$.getJSON('/Stats/Servers/UK/UK-Blocks.json', function (data) {
	  $("#UKbestblockhash").text(data); 
	});

	$.getJSON('/Stats/Servers/UK/UK-Blocks.json', function (data) {
	  $("#UKRoboBlockHash").append('<img src="https://robohash.org/' + data + '.png" width="100" height="100" border="1" />'); 
	});

	$.getJSON('/Stats/Servers/UK/UK-Blocks.json', function (data) {
  	    jdenticon.update("#UKidenticon", data);
	});
	//End of UK
	//Start of AMS

	$.getJSON('/Stats/Servers/AMS/AMS.json', function (data) {
	  $("#AMSconnections").text(data.connections);  
	  $("#AMSversion").text(data.version);  
	  $("#AMSblocks").text(data.blocks);
	  $("#AMSmoneysupply").text(data.moneysupply);
	  $("#AMSRobohash").attr("src", data.ip);
	});

	$.getJSON('/Stats/Servers/AMS/AMS-Blocks.json', function (data) {
	  $("#AMSbestblockhash").text(data);  
	});

	$.getJSON('/Stats/Servers/AMS/AMS-Blocks.json', function (data) {
  	    jdenticon.update("#AMSidenticon", data);
	});

	//End of AMS
	//Start of GER

	$.getJSON('/Stats/Servers/GER/GER.json', function (data) {
	  $("#GERconnections").text(data.connections);  
	  $("#GERversion").text(data.version);  
	  $("#GERblocks").text(data.blocks);
	  $("#GERmoneysupply").text(data.moneysupply);
	  $("#GERRobohash").attr("src", data.ip);
	});

	$.getJSON('/Stats/Servers/GER/GER-Blocks.json', function (data) {
	  $("#GERbestblockhash").text(data);  
	});

	$.getJSON('/Stats/Servers/GER/GER-Blocks.json', function (data) {
  	    jdenticon.update("#GERidenticon", data);
	});

	//End of GER
	//Start of NYC

	$.getJSON('/Stats/Servers/NYC/NYC.json', function (data) {
	  $("#NYCconnections").text(data.connections);  
	  $("#NYCversion").text(data.version);  
	  $("#NYCblocks").text(data.blocks);
	  $("#NYCmoneysupply").text(data.moneysupply);
	  $("#NYCRobohash").attr("src", data.ip);
	});

	$.getJSON('/Stats/Servers/NYC/NYC-Blocks.json', function (data) {
	  $("#NYCbestblockhash").text(data);  
	});

	$.getJSON('/Stats/Servers/NYC/NYC-Blocks.json', function (data) {
  	    jdenticon.update("#NYCidenticon", data);
	});

	//End of NYC

	//Start of Testnet

	$.getJSON('/Stats/Servers/Testnet/testnet.json', function (data) {
	  $("#Testnetconnections").text(data.connections);  
	  $("#Testnetversion").text(data.version);  
	  $("#Testnetblocks").text(data.blocks);
	  $("#Testnetmoneysupply").text(data.moneysupply);
	  $("#TestnetRobohash").attr("src", data.ip);
	});

	$.getJSON('/Stats/Servers/Testnet/testnet-Blocks.json', function (data) {
	  $("#Testnetbestblockhash").text(data);  
	});

	$.getJSON('/Stats/Servers/Testnet/testnet-Blocks.json', function (data) {
  	    jdenticon.update("#Testnetidenticon", data);
	});

	//End of Testnet

setTimeout(function() { window.location=window.location;},50000);

});