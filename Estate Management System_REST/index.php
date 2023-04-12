<!DOCTYPE html>
<html> 
    <head>
        <title>
            Estate Management System
        </title>
        <style>
            *{
                box-sizing: border-box;
            }
            
            .column {
                float: left;
                width:50%;
                padding: 10px;
                height: 600px; /* Should be removed. Only for demonstration */
                background-color:#bee0ec;
                opacity:0.7;
            }
            .row:after {
                content: "";
                display: table;
                clear: both;              
            }


            table{width:100%; border-collapse:collapse; table-layout:auto; vertical-align:top; margin-bottom:15px; border:1px solid #CCCCCC;}
table thead th{color:#FFFFFF; background-color:#666666; border:1px solid #CCCCCC; border-collapse:collapse; text-align:center; table-layout:auto; vertical-align:middle;}
table tbody td{vertical-align:top; border-collapse:collapse; border-left:1px solid #CCCCCC; border-right:1px solid #CCCCCC;}
table thead th, table tbody td{padding:5px; border-collapse:collapse;}
table tbody tr.light{color:#666666; background-color:#F7F7F7;}
table tbody tr.dark{color:#666666; background-color:#E8E8E8;}

html{overflow-y:scroll;}
body{margin:0; padding:0; font-size:14px; font-family:Georgia, "Times New Roman", Times, serif; color:black; background-color:#145369;}

.justify{text-align:justify;}
.bold{font-weight:bold;}
.center{text-align:center;}
.right{text-align:right;}
.nostart{margin:0; padding:0; list-style-type:none;}

        </style>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script>
            $(document).ready(function(){
                $.getJSON('http://localhost/a14/read.php',function(json){
                    var tr=[];
                    for(var i = 0;i<json.length;i++){
                        tr.push('<tr>');
                        tr.push('<td>'+json[i].address+'</td>');
                        tr.push('<td>'+json[i].zip+'</td>');
                        tr.push('<td>'+json[i].price+'</td>');
                        tr.push('<td>'+json[i].type+'</td>');
                        tr.push('<td>'+json[i].name+'</td>');
                        tr.push('<td>'+json[i].status+'</td>');
                        tr.push('<td>'+json[i].agent_name+'</td>');
                        tr.push('<td><button class=\'update\' id='+json[i].homeid+'>Update</button><button class=\'delete\' id='+json[i].homeid+'>Delete</button></td>')
                        tr.push('</tr>');
                    }
                    $('table').append($(tr.join('')));
                });
                
                $(document).delegate('#Add','click',function(ev){
                    ev.preventDefault();
                    var address = $('#address').val();
                    var zip = $('#zip').val();
                    var type = $('#type').val();
                    var price = $('#price').val();
                    var owner = $('#owner').val();
                    var status = $('#status').val();
                    var agentid = $('#agentid').val();
                    if(address == "" ||owner ==""||zip==""||price==""||agentid==""){
                        alert("Missing Fields");
                        return;
                    }
                    $.ajax({
                        type : "POST",
                        contentType :"application/json;charset=utf-8",
                        url:"http://localhost/a14/create.php",
                        data:JSON.stringify({'address':address,'zip':zip,'type':type,'price':price,'agentid':agentid,'owner':owner,'status':status}),
                        cache:false,
                        success:function(result){
                            alert("Estate Added");
                            location.reload(true);
                        },
                        error:function(err) {
                            alert(err);
                        }
                    
                    });
    
                });
                $(document).delegate('.delete','click',function(){
                    if(confirm('Record will be permanently deleted. Click Yes to proceed.')) {
                        var homeid = $(this).attr('id');
                        $.ajax({
                            type : "DELETE",
                            url:"http://localhost/a14/delete.php?id="+homeid,
                            success:function() {
                                alert("Estate Deleted");
                                location.reload(true);
                            },
                            error:function(err){
                                alert(err);
                            }
                        });
                    }
                });
                $(document).delegate('.update','click',function(){
                    var homeid = $(this).attr('id');
                    $(".edit").empty();
                    $(".edit").append("<p>Address:<input type='text' id= 'edit_address'></p><p>Owner:<input type='text' id= 'edit_owner'></p>");
                    $(".edit").append("<p>Zip Code : <input type = 'text' id = 'edit_zip'></p>");
                    $(".edit").append("<p>Price :Rs <input type = 'text' id = 'edit_price'></p>");
                    $(".edit").append("<p><label>Estate Type</label><select id = 'edit_type'><option value = 'single'>Single</option><option value = 'double'>Double</option></select></p>");
                    $(".edit").append("<label>Availability</label><select id = 'edit_status'><option value = 'available'>Available</option><option value = 'sold'>Sold</option><option value = 'offmarket'>Offmarket</option></select>");
                    $(".edit").append("<p>Agent ID : <input type = 'text' id = 'edit_agentid'></p>");
                    $(".edit").append("<p><button type='button' class = 'save' id='"+homeid+"'>Save</button></p>");
                    
                });
                $(document).delegate('.save','click',function(){
                    
                    var hid = $(this).attr('id');
                    var add = $('#edit_address').val();
                    var zip = $('#edit_zip').val();
                    var price = $('#edit_price').val();
                    var type = $('#edit_type').val();
                    var own = $('#edit_owner').val();
                    var stat = $('#edit_status').val();
                    var agentid = $('#edit_agentid').val();
                    if(add == "" ||own ==""||price==""||agentid==""){
                        alert("Missing Fields");
                        return;
                    }
                    $.ajax({
                        type:"PUT",
                        contentType:"application/json; charset=utf-8",
                        url:"http://localhost/a14/update.php",
                        data:JSON.stringify({'id':hid,'address':add,'zip':zip,'price':price,'type':type,'agentid':agentid,'owner':own,'status':stat}),
                        success:function() {
                            alert("Data Updated Successfully");
                            location.reload(true);
                        },
                        error:function(err) {
                            alert(err);
                        }
                    });
                });
                $('#search').on('change', function(){
                    var value = $(this).val();
                    $('#estate-list td').remove();
                    var src = "http://localhost/a14/read.php?sortby="+value;
                    $.getJSON(src,function(json){
                    var tr=[];
                    for(var i = 0;i<json.length;i++){
                        tr.push('<tr>');
                        tr.push('<td>'+json[i].address+'</td>');
                        tr.push('<td>'+json[i].zip+'</td>');
                        tr.push('<td>'+json[i].price+'</td>');
                        tr.push('<td>'+json[i].type+'</td>');
                        tr.push('<td>'+json[i].name+'</td>');
                        tr.push('<td>'+json[i].status+'</td>');
                        tr.push('<td>'+json[i].agent_name+'</td>');
                        tr.push('<td><button class=\'update\' id='+json[i].homeid+'>Update</button><button class=\'delete\' id='+json[i].homeid+'>Delete</button></td>')
                        tr.push('</tr>');
                    }
                    $('#estate-list').append($(tr.join('')));
                });
                });

                
                
            });
        </script>

    </head>
    <body><h1>ESTATE MANAGEMENT SYSTEM</h1>
        
        <div class = "row" >
            <div class = "column">
            <h3>Add New Estate</h3>
                <p>Address : <input type = "text" id = "address"></p>
                <p>Zip Code : <input type = "text" id = "zip"></p>
                <p>Price : Rs <input type = "text" id = "price"></p>
                <p>Owner : <input type = "text" id = "owner"></p>
                <p><label>Estate Type : </label>
                    <select id = "type">
                    <option value = "single">Single</option>
                    <option value = "double">Double</option>
                    </select>
                </p>
                <p><label>Availability : </label>
                    <select id = "status">
                    <option value = "available">Available</option>
                    <option value = "sold">Sold</option>
                    <option value = "offmarket">Offmarket</option>
                    </select>
                </p>
                <p>Agent : <input type = "text" id = "agentid"></p>
                <p><button type="button" id="Add">Add</button></p>

            <br>
            <div id = "filter">
            <span>Filter by</span>
            <select name="search" id="search">
                <option value ="" disabled="" selected="">Select Filter</option>
                <option value ="type">Estate Type</option>
                <option value ="zip">Zip Code</option>
                <option value ="price">Price</option>
                <option value ="agentid">Agent Listings</option>
            </select>
            </div>
            </div> 
                       
            <div class ="column">
            <h3>Properties</h3>
           <table id="estate-list">
                <tr>
                    <th>Address</th>
                    <th>Zip Code</th>
                    <th>Price</th>
                    <th>Type</th>
                    <th>Owner</th>
                    <th>Status</th>
                    <th>Agent Name</th>
                    <th>Update/Delete</th>
                </tr>

            </table>
            <br>
            <div class="edit"></div>
            </div>
            
        </div> 
         
    </body>
</html>