$(document).ready(function(){
	//Start of HK

	$.getJSON('/Stats/Servers/HK/HK.json', function (data) {
	  $("#HKconnections").text(data.connections);  
	  $("#HKversion").text(data.version);  
	  $("#HKblocks").text(data.blocks);
	  $("#HKmoneysupply").text(data.moneysupply);
	  var robohash = "https://robohash.org/" + data.ip + ".jpg"
	  $("#HKRobohash").attr("src", robohash);
	});

	$.getJSON('/Stats/Servers/HK/HK-Blocks.json', function (data) {
	  $("#HKbestblockhash").text(data); 
	});

	$.getJSON('/Stats/Servers/HK/HK-Blocks.json', function (data) {
	  $("#HKRoboBlockHash").append('<img src="https://robohash.org/' + data + '.png" width="100" height="100" border="1" />'); 
	});

//node's bestblockhash identicons
	$.getJSON('/Stats/Servers/HK/HK-Blocks.json', function (data) {
  	    jdenticon.update("#HKidenticon", data);
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

	$.getJSON('/Stats/Servers/HK/HK-Blocks-Sub1.json', function (data) {
  	    jdenticon.update("#HKidenticon-1", data);
	});

	$.getJSON('/Stats/Servers/HK/HK-Blocks-Sub2.json', function (data) {
  	    jdenticon.update("#HKidenticon-2", data);
	});

	$.getJSON('/Stats/Servers/HK/HK-Blocks-Sub3.json', function (data) {
  	    jdenticon.update("#HKidenticon-3", data);
	});

	$.getJSON('/Stats/Servers/HK/HK-Peers.json', function (data) {
		for ( var i in data) {
			var addr1 = data[i].addr;
			var pre = "<div class='col-xs-1'><img width='50' height='50' src=";
			var robohash = 'https://robohash.org/' + addr1 + '.jpg?size=50x50';
			var end = "></div>"
		    $("#HKPeerRoboHashes").append(pre + robohash + end);
		}
	});

setTimeout(function() { window.location=window.location;},180000);

	//End of HK
});