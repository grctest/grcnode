$(document).ready(function(){
	//Start of NYC

	$.getJSON('/Stats/Servers/NYC/NYC.json', function (data) {
	  $("#NYCconnections").text(data.connections);  
	  $("#NYCversion").text(data.version);  
	  $("#NYCblocks").text(data.blocks);
	  $("#NYCmoneysupply").text(data.moneysupply);
	  var robohash = "https://robohash.org/" + data.ip + ".jpg"
	  $("#NYCRobohash").attr("src", robohash);	});

	$.getJSON('/Stats/Servers/NYC/NYC-Blocks.json', function (data) {
	  $("#NYCbestblockhash").text(data);  
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

	$.getJSON('/Stats/Servers/NYC/NYC-Blocks-Sub1.json', function (data) {
  	    jdenticon.update("#NYCidenticon-1", data);
	});

	$.getJSON('/Stats/Servers/NYC/NYC-Blocks-Sub2.json', function (data) {
  	    jdenticon.update("#NYCidenticon-2", data);
	});

	$.getJSON('/Stats/Servers/NYC/NYC-Blocks-Sub3.json', function (data) {
  	    jdenticon.update("#NYCidenticon-3", data);
	});

	$.getJSON('/Stats/Servers/NYC/NYC-Peers.json', function (data) {
		for ( var i in data) {
			var addr1 = data[i].addr;
			var pre = "<div class='col-xs-1'><img width='50' height='50' src=";
			var robohash = 'https://robohash.org/' + addr1 + '.jpg?size=50x50';
			var end = "></div>"
		    $("#NYCPeerRoboHashes").append(pre + robohash + end);
		}
	});
	
setTimeout(function() { window.location=window.location;},180000);

	//End of NYC
});