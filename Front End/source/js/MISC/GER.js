$(document).ready(function(){
	//Start of GER

	$.getJSON('/Stats/Servers/GER/GER.json', function (data) {
	  $("#GERconnections").text(data.connections);  
	  $("#GERversion").text(data.version);  
	  $("#GERblocks").text(data.blocks);
	  $("#GERmoneysupply").text(data.moneysupply);
	  var robohash = "https://robohash.org/" + data.ip + ".jpg"
	  $("#GERRobohash").attr("src", robohash);
	});

	$.getJSON('/Stats/Servers/GER/GER-Blocks.json', function (data) {
	  $("#GERbestblockhash").text(data);  
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

	$.getJSON('/Stats/Servers/GER/GER-Blocks-Sub1.json', function (data) {
  	    jdenticon.update("#GERidenticon-1", data);
	});

	$.getJSON('/Stats/Servers/GER/GER-Blocks-Sub2.json', function (data) {
  	    jdenticon.update("#GERidenticon-2", data);
	});

	$.getJSON('/Stats/Servers/GER/GER-Blocks-Sub3.json', function (data) {
  	    jdenticon.update("#GERidenticon-3", data);
	});

	$.getJSON('/Stats/Servers/GER/GER-Peers.json', function (data) {
		for ( var i in data) {
			var addr1 = data[i].addr;
			var pre = "<div class='col-xs-1'><img width='50' height='50' src=";
			var robohash = 'https://robohash.org/' + addr1 + '.jpg?size=50x50';
			var end = "></div>"
		    $("#GERPeerRoboHashes").append(pre + robohash + end);
		}
	});

setTimeout(function() { window.location=window.location;},180000);

	//End of GER
});