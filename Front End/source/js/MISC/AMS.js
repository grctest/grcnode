$(document).ready(function(){
	//Start of AMS

	$.getJSON('/netdata/amsterdam/getinfo.json', function (data) {
	  $("#AMSconnections").text(data.connections);  
	  $("#AMSversion").text(data.version);  
	  $("#AMSblocks").text(data.blocks);
	  $("#AMSmoneysupply").text(data.moneysupply);
	  $("#AMSRobohash").attr("src", data.ip);
	  var robohash = "https://robohash.org/" + data.ip + ".jpg"
	  $("#AMSRobohash").attr("src", robohash);
	});

	$.getJSON('/netdata/amsterdam/getbestblockhash.json', function (data) {
	  $("#AMSbestblockhash").text(data);  
	});

//node's bestblockhash identicons

	$.getJSON('/netdata/frankfurt/getbestblockhash.json', function (data) {
  	    jdenticon.update("#GERidenticon", data);
	});

	$.getJSON('/netdata/amsterdam/getbestblockhash.json', function (data) {
  	    jdenticon.update("#AMSidenticon", data);
	});

	$.getJSON('/netdata/nyc/getbestblockhash.json', function (data) {
  	    jdenticon.update("#NYCidenticon", data);
	});

	$.getJSON('/netdata/sf/getbestblockhash.json', function (data) {
  	    jdenticon.update("#SFidenticon", data);
	});
//other identicon end

	$.getJSON('/netdata/amsterdam/getbestblockhash.json', function (data) {
		for ( var i in data) {
			var addr1 = data[i].addr;
			var pre = "<div class='col-xs-1'><img width='50' height='50' src=";
			var robohash = 'https://robohash.org/' + addr1 + '.jpg?size=50x50';
			var end = "></div>"
		    $("#AMSPeerRoboHashes").append(pre + robohash + end);
		}
	});

setTimeout(function() { window.location=window.location;},180000);

	//End of AMS
});