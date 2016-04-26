$(document).ready(function(){
	//Start of Texas

	$.getJSON('/Stats/Servers/Texas/Texas.json', function (data) {
	  $("#Texasconnections").text(data.connections);  
	  $("#Texasversion").text(data.version);  
	  $("#Texasblocks").text(data.blocks);
	  $("#Texasmoneysupply").text(data.moneysupply);
	  var robohash = "https://robohash.org/" + data.ip + ".jpg"
	  $("#TexasRobohash").attr("src", robohash);
	});

	$.getJSON('/Stats/Servers/Texas/Texas-Blocks.json', function (data) {
	  $("#Texasbestblockhash").text(data); 
	});

	$.getJSON('/Stats/Servers/Texas/Texas-Blocks.json', function (data) {
	  $("#TexasRoboBlockHash").append('<img src="https://robohash.org/' + data + '.png" width="100" height="100" border="1" />'); 
	});

//node's bestblockhash identicons
	$.getJSON('/Stats/Servers/Texas/Texas-Blocks.json', function (data) {
  	    jdenticon.update("#Texasidenticon", data);
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

	$.getJSON('/Stats/Servers/Texas/Texas-Blocks-Sub1.json', function (data) {
  	    jdenticon.update("#Texasidenticon-1", data);
	});

	$.getJSON('/Stats/Servers/Texas/Texas-Blocks-Sub2.json', function (data) {
  	    jdenticon.update("#Texasidenticon-2", data);
	});

	$.getJSON('/Stats/Servers/Texas/Texas-Blocks-Sub3.json', function (data) {
  	    jdenticon.update("#Texasidenticon-3", data);
	});

	$.getJSON('/Stats/Servers/Texas/Texas-Peers.json', function (data) {
		for ( var i in data) {
			var addr1 = data[i].addr;
			var pre = "<div class='col-xs-1'><img width='50' height='50' src=";
			var robohash = 'https://robohash.org/' + addr1 + '.jpg?size=50x50';
			var end = "></div>"
		    $("#TexasPeerRoboHashes").append(pre + robohash + end);
		}
	});

setTimeout(function() { window.location=window.location;},180000);

	//End of Texas
});