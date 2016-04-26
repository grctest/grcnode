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

	$.getJSON('/Stats/Servers/SF/SF-Blocks-Sub1.json', function (data) {
  	    jdenticon.update("#SFidenticon-1", data);
	});

	$.getJSON('/Stats/Servers/SF/SF-Blocks-Sub2.json', function (data) {
  	    jdenticon.update("#SFidenticon-2", data);
	});

	$.getJSON('/Stats/Servers/SF/SF-Blocks-Sub3.json', function (data) {
  	    jdenticon.update("#SFidenticon-3", data);
	});
	
	$.getJSON('/Stats/Servers/SF/SF-Peers.json', function (data) {
		for ( var i in data) {
			var addr1 = data[i].addr;
			var pre = "<div class='col-xs-1'><img width='50' height='50' src=";
			var robohash = 'https://robohash.org/' + addr1 + '.jpg?size=50x50';
			var end = "></div>"
		    $("#SFPeerRoboHashes").append(pre + robohash + end);
		}
	});

setTimeout(function() { window.location=window.location;},180000);


	//End of SF
});