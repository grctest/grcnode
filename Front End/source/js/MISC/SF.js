$(document).ready(function(){
	//Start of SF

	$.getJSON('/netdata/sf/getinfo.json', function (data) {
	  $("#SFconnections").text(data.connections);  
	  $("#SFversion").text(data.version);  
	  $("#SFblocks").text(data.blocks);      
	  $("#SFmoneysupply").text(data.moneysupply);
	  var robohash = "https://robohash.org/" + data.ip + ".png"
	  $("#SFRobohash").attr("src", robohash);
	});

	$.getJSON('/netdata/sf/getbestblockhash.json', function (data) {
	  $("#SFbestblockhash").text(data);  
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
	$.getJSON('/netdata/sf/getbestblockhash.json', function (data) {
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