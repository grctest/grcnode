$(document).ready(function(){

	//Start of SF

	$.getJSON('/netdata/sf/getinfo.json', function (data) {
	  $("#SFconnections").text(data.connections);  
	  $("#SFversion").text(data.version);  
	  $("#SFblocks").text(data.blocks);      
	  $("#SFmoneysupply").text(data.moneysupply);
	  var robohash = "https://robohash.org/" + data.ip + ".png"
	  $("#SFRobohash").attr("src", robohash);
	});

	$.getJSON('/netdata/sf/getbestblockhash.json', function (data) {
	  $("#SFbestblockhash").text(data);
	});

	$.getJSON('/netdata/sf/getbestblockhash.json', function (data) {
	  jdenticon.update("#SFidenticon", data);
	});

	//End of SF
	//Start of AMS

	$.getJSON('/netdata/amsterdam/getinfo.json', function (data) {
	  $("#AMSconnections").text(data.connections);  
	  $("#AMSversion").text(data.version);  
	  $("#AMSblocks").text(data.blocks);
	  $("#AMSmoneysupply").text(data.moneysupply);
	  $("#AMSRobohash").attr("src", data.ip);
	});

	$.getJSON('/netdata/amsterdam/getbestblockhash.json', function (data) {
	  $("#AMSbestblockhash").text(data);
	});

	$.getJSON('/netdata/amsterdam/getbestblockhash.json', function (data) {
  	  jdenticon.update("#AMSidenticon", data);
	});

	//End of AMS
	//Start of GER

	$.getJSON('/netdata/frankfurt/getinfo.json', function (data) {
	  $("#GERconnections").text(data.connections);  
	  $("#GERversion").text(data.version);  
	  $("#GERblocks").text(data.blocks);
	  $("#GERmoneysupply").text(data.moneysupply);
	  $("#GERRobohash").attr("src", data.ip);
	});

	$.getJSON('/netdata/frankfurt/getbestblockhash.json', function (data) {
	  $("#GERbestblockhash").text(data);
	});

	$.getJSON('/netdata/frankfurt/getbestblockhash.json', function (data) {
  	    jdenticon.update("#GERidenticon", data); 
	});

	//End of GER
	//Start of NYC

	$.getJSON('/netdata/nyc/getinfo.json', function (data) {
	  $("#NYCconnections").text(data.connections);  
	  $("#NYCversion").text(data.version);  
	  $("#NYCblocks").text(data.blocks);
	  $("#NYCmoneysupply").text(data.moneysupply);
	  $("#NYCRobohash").attr("src", data.ip);
	});

	$.getJSON('/netdata/nyc/getbestblockhash.json', function (data) {
	  $("#NYCbestblockhash").text(data);
	});

	$.getJSON('/netdata/nyc/getbestblockhash.json', function (data) {
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
	  jdenticon.update("#Testnetidenticon", data);
	});

	//End of Testnet

setTimeout(function() { window.location=window.location;},50000);

});