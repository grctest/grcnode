$(document).ready(function(){
	//Start of UK

	$.getJSON('/Stats/Servers/UK/UK.json', function (data) {
	  $("#UKconnections").text(data.connections);  
	  $("#UKversion").text(data.version);  
	  $("#UKblocks").text(data.blocks);
	  $("#UKmoneysupply").text(data.moneysupply);
	  var robohash = "https://robohash.org/" + data.ip + ".jpg"
	  $("#UKRobohash").attr("src", robohash);
	});

	$.getJSON('/Stats/Servers/UK/UK-Blocks.json', function (data) {
	  $("#UKbestblockhash").text(data); 
	});

	$.getJSON('/Stats/Servers/UK/UK-Blocks.json', function (data) {
	  $("#UKRoboBlockHash").append('<img src="https://robohash.org/' + data + '.png" width="100" height="100" border="1" />'); 
	});

//node's bestblockhash identicons
	$.getJSON('/Stats/Servers/UK/UK-Blocks.json', function (data) {
  	    jdenticon.update("#UKidenticon", data);
	});

	$.getJSON('/Stats/Servers/GER/GER-Blocks.json', function (data) {
  	    jdenticon.update("#GERidenticon", data);
	});

	$.getJSON('/Stats/Servers/AMS/AMS-Blocks.json', function (data) {
  	    jdenticon.update("#AMSidenticon", data);
	});

	$.getJSON('/Stats/Servers/NYC/NYC-Blocks.json', function (data) {
  	    jdenticon.update("#NYCidenticon", data);
	});

	$.getJSON('/Stats/Servers/SF/SF-Blocks.json', function (data) {
  	    jdenticon.update("#SFidenticon", data);
	});
//other identicon end

	$.getJSON('/Stats/Servers/UK/UK-Blocks-Sub1.json', function (data) {
  	    jdenticon.update("#UKidenticon-1", data);
	});

	$.getJSON('/Stats/Servers/UK/UK-Blocks-Sub2.json', function (data) {
  	    jdenticon.update("#UKidenticon-2", data);
	});

	$.getJSON('/Stats/Servers/UK/UK-Blocks-Sub3.json', function (data) {
  	    jdenticon.update("#UKidenticon-3", data);
	});

	$.getJSON('/Stats/Servers/UK/UK-Peers.json', function (data) {
		for ( var i in data) {
			var addr1 = data[i].addr;
			var pre = "<div class='col-xs-1'><img width='50' height='50' src=";
			var robohash = 'https://robohash.org/' + addr1 + '.jpg?size=50x50';
			var end = "></div>"
		    $("#UKPeerRoboHashes").append(pre + robohash + end);
		}
	});

setTimeout(function() { window.location=window.location;},180000);

	//End of UK
});