$(document).ready(function(){
	//Start of GER

	$.getJSON('/netdata/frankfurt/getinfo.json', function (data) {
	  $("#GERconnections").text(data.connections);  
	  $("#GERversion").text(data.version);  
	  $("#GERblocks").text(data.blocks);
	  $("#GERmoneysupply").text(data.moneysupply);
	  var robohash = "https://robohash.org/" + data.ip + ".jpg"
	  $("#GERRobohash").attr("src", robohash);
	});

	$.getJSON('/netdata/frankfurt/getbestblockhash.json', function (data) {
	  $("#GERbestblockhash").text(data);  
	});

//node's bestblockhash identicons

	$.getJSON('/netdata/amsterdam/getbestblockhash.json', function (data) {
  	    jdenticon.update("#AMSidenticon", data);
	});

	$.getJSON('/netdata/frankfurt/getbestblockhash.json', function (data) {
  	    jdenticon.update("#AMSidenticon", data);
	});

	$.getJSON('/netdata/nyc/getbestblockhash.json', function (data) {
  	    jdenticon.update("#NYCidenticon", data);
	});

	$.getJSON('/netdata/sf/getbestblockhash.json', function (data) {
  	    jdenticon.update("#SFidenticon", data);
	});
//other identicon end
	$.getJSON('/netdata/frankfurt/getbestblockhash.json', function (data) {
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