$(document).ready(function(){
	//Start of NYC

	$.getJSON('/netdata/nyc/getinfo.json', function (data) {
	  $("#NYCconnections").text(data.connections);  
	  $("#NYCversion").text(data.version);  
	  $("#NYCblocks").text(data.blocks);
	  $("#NYCmoneysupply").text(data.moneysupply);
	  var robohash = "https://robohash.org/" + data.ip + ".jpg"
	  $("#NYCRobohash").attr("src", robohash);	});

	$.getJSON('/netdata/nyc/getbestblockhash.json', function (data) {
	  $("#NYCbestblockhash").text(data);  
	});

//node's bestblockhash identicons

	$.getJSON('/netdata/frankfurt/getbestblockhash.json', function (data) {
  	    jdenticon.update("#GERidenticon", data);
	});

	$.getJSON('/netdata/amsterdam/getbestblockhash.json', function (data) {
  	    jdenticon.update("#AMSidenticon", data);
	});

	$.getJSON('/netdata/NYC/getbestblockhash.json', function (data) {
  	    jdenticon.update("#NYCidenticon", data);
	});

	$.getJSON('/netdata/sf/getbestblockhash.json', function (data) {
  	    jdenticon.update("#SFidenticon", data);
	});
//other identicon end
	$.getJSON('/netdata/NYC/getbestblockhash.json', function (data) {
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