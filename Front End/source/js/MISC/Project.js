$(document).ready(function(){
	//Start of UK

	$.getJSON('/Stats/Servers/' + Location + '/' + Location + '.json', function (data) {
	  $("#" + Location + "connections").text(data.connections);  
	  $("#" + Location + "version").text(data.version);  
	  $("#" + Location + "blocks").text(data.blocks);
	  $("#" + Location + "moneysupply").text(data.moneysupply);
	  var robohash = "https://robohash.org/" + data.ip + ".jpg"
	  $("#" + Location + "Robohash").attr("src", robohash);
	});

	$.getJSON('/Stats/Servers/' + Location + '/' + Location + '-Blocks.json', function (data) {
	  $("#" + Location + "bestblockhash").text(data); 
	});

	$.getJSON('/Stats/Servers/' + Location + '/' + Location + '-Blocks.json', function (data) {
	  $("#" + Location + "RoboBlockHash").append('<img src="https://robohash.org/' + data + '.png" width="100" height="100" border="1" />'); 
	});

//node's bestblockhash identicons
	$.getJSON('/Stats/Servers/' + Location + '/' + Location + '-Blocks.json', function (data) {
  	    jdenticon.update("#" + Location + "identicon", data);
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

	$.getJSON('/Stats/Servers/' + Location + '/' + Location + '-Blocks-Sub1.json', function (data) {
  	    jdenticon.update("#" + Location + "identicon-1", data);
	});

	$.getJSON('/Stats/Servers/' + Location + '/' + Location + '-Blocks-Sub2.json', function (data) {
  	    jdenticon.update("#" + Location + "identicon-2", data);
	});

	$.getJSON('/Stats/Servers/' + Location + '/' + Location + '-Blocks-Sub3.json', function (data) {
  	    jdenticon.update("#" + Location + "identicon-3", data);
	});

	$.getJSON('/Stats/Servers/' + Location + '/' + Location + '-Peers.json', function (data) {
		for ( var i in data) {
			var addr1 = data[i].addr;
			var pre = "<div class='col-xs-1'><img width='50' height='50' src=";
			var robohash = 'https://robohash.org/' + addr1 + '.jpg?size=50x50';
			var end = "></div>"
		    $("#" + Location + "PeerRoboHashes").append(pre + robohash + end);
		}
	});

setTimeout(function() { window.location=window.location;},180000);

	//End of UK
});