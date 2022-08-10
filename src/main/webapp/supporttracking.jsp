<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tickets</title>

	<script src="https://unpkg.com/ag-grid-community/dist/ag-grid-community.min.noStyle.js"></script>
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	   
	   <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>
	 
	    <link rel="stylesheet" href="https://unpkg.com/ag-grid-community/dist/styles/ag-grid.css"/>
	    <link rel="stylesheet" href="https://unpkg.com/ag-grid-community/dist/styles/ag-theme-alpine.css"/>
	    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">


</head>
<body>

<style type="text/css">
		.btn-circle.btn-xl {
			width: 190px;
			height: 190px;
			padding: 13px 18px;
			border-radius: 60px;
			font-size: 12px;
			text-align: center;
		}
</style>

	<div class="container mt-4">
      	 
	</div>
	
	<div class="m-2" >
	
		<button type="button" class="btn btn-primary float-right" id="refresh_data">Refresh Data</button>
		
	</div>
	
	<div class="pl-2" >
	
		<button type="button" class="btn btn-outline-success float-right" id="exportToExcel">Export To Excel</button>
		
	</div>
	<div class="pl-2 " >
	
		<a href="/reportapplication/rest/support/dashboard"><button type="button" class="btn btn-outline-primary float-right" id="exportToExcel">Dashboard</button></a>
		
	</div>
	
	<br>
	<br>
	
	<div class="m-2" >

		<div id="myGrid" class="ag-theme-alpine" style="width: 700px; height: 1100px;"></div>
		
		<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap">New Ticket</button>
		<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap" id="editTicket">Edit Ticket</button>
		
		
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">New Ticket</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        <form>
		        
		          <div class="row">
		          	<div class="col-sm-6">
		          		<label for="recipient-name" class="col-form-label">Client:</label>
		                <input type="text" class="form-control" id="client">
		          	</div>
		          	
		          	<div class="col-sm-6">
			            <label for="recipient-name" class="col-form-label">Week:</label>
			            <input type="text" class="form-control" id="week">
		         	 </div>
		         	 
		          </div>
		          
		          <div class="row">
		          	
		         	 <div class="col-sm-6">
		            	<label for="message-text" class="col-form-label">Platform:</label>
		             	<input type="text" class="form-control" id="platform">
		         	 </div>
		         	 
		         	 <div class="col-sm-6">
		           		 <label for="message-text" class="col-form-label">Bug:</label>
		            	 <input type="text" class="form-control" id="bug">
		       		</div>
		         </div>
		         
		          <div class="form-group">
		            <label for="message-text" class="col-form-label font-weight-bold" id="ticketstatus">Status:</label>
		            
		            <div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="inlineRadioOptions" id="assigned" value="Assigned">
						<label class="form-check-label" for="inlineRadio1">Assigned</label>
					</div>
		             
		             <div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="inlineRadioOptions" id="waitingOnCustomer" value="Waiting On Customer">
						<label class="form-check-label" for="inlineRadio1">Waiting On Customer</label>
					</div>
					
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="investigating" value="Investigating">
					  <label class="form-check-label" for="inlineRadio2">Investigating</label>
					</div>
					
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inProgress" value="In Progress">
					  <label class="form-check-label" for="inlineRadio2">In-Progress</label>
					</div>
					
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="onHold" value="On Hold">
					  <label class="form-check-label" for="inlineRadio2">On-Hold</label>
					</div>
					
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="awaitingAuthorization" value="Awaiting Authorization">
					  <label class="form-check-label" for="awaitingAuthorization">Awaiting Authorization</label>
					</div>
							             
		          </div>
		          
		           <div class="row">
		          	 <div class="col-sm-6">
		           		 <label for="Date Created" class="col-form-label">Date Created:</label>
		             	 <input type="date" class="form-control" id="datecreated">
		             </div>
		             
		             <div class="col-sm-6">
				            <label for="message-text" class="col-form-label">Date Solved:</label>
				            <input type="date" class="form-control" id="datesolved">
		                </div>
		           </div>
		          
		            <div class="row">
		          	   <div class="col-sm-6">
				            <label for="message-text" class="col-form-label">Page:</label>
				            <input type="text" class="form-control" id="page">
		          		</div>
		          		
		          		<div class="col-sm-6">
			             <label for="message-text" class="col-form-label">Ticket link:</label>
			             <input type="text" class="form-control" id="ticketLink">
			           </div>
		          	</div>
		          
		          <div class="row">
		          	   <div class="col-sm-6">
				            <label for="message-text" class="col-form-label">Category/Issue:</label>
				            <textarea class="form-control" id="category"></textarea>
		          		</div>
		          		
		          		<div class="col-sm-6">
				            <label for="message-text" class="col-form-label">Primary Assignee:</label>
				            <input type="text" class="form-control" id="primaryassignee">
		               </div>
		          	</div>
		          
		           <div class="row">
		          	  <div class="col-sm-6">
		                 <label for="message-text" class="col-form-label">Supportive Assignee:</label>
		                 <input type="text" class="form-control" id="supportiveassignee">
		              </div>
		              
		              <div class="col-sm-6">
		            		<label for="message-text" class="col-form-label">User:</label>
		             		<input type="text" class="form-control" id="user">
		         	   </div>
		            </div>
		          
		        </form>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-primary" id="createTicket">Create</button>
		      </div>
		    </div>
		  </div>
		</div>
	
	</div>
	
</body>

<style>

body{
    background-color: #183252;
}

</style>

<script type="text/javascript">

	var user = document.getElementById("user");
	var week = document.getElementById("week");
	var supportiveAssignee = document.getElementById("supportiveassignee");
	var primaryAssignee = document.getElementById("primaryassignee");
	var category = document.getElementById("category");
	var ticketLink = document.getElementById("ticketLink");
	var dateSolved = document.getElementById("datesolved");
	var dateCreated = document.getElementById("datecreated");
	var bug = document.getElementById("bug");
	var platform = document.getElementById("platform");
	var client = document.getElementById("client");
	var page = document.getElementById("page");
	var ticketstatus = document.getElementById("ticketstatus");
	
	document.getElementById("editTicket").disabled = true;


	function deselect(){
		gridOptionsWaitingOnCustomer.api.deselectAll()
	}

	var rowData;
	
    const gridOptionsWaitingOnCustomer = {

     
      columnDefs: [
     	 
        { headerName: "Ticket Id", field: "supportticketid"},
        { headerName: "Client", field: "client" },
        { headerName: "Week", field: "week" },
        { headerName: "Platform", field: "platform" },
        { headerName: "Bug", field: "bug" },
        { headerName: "Date Created", field: "datecreated" },
        { headerName: "Date Solved", field: "datesolved" },
        { headerName: "Ticket Link", field: "ticketlink" },
        { headerName: "Category", field: "category" },
        { headerName: "Page", field: "page" },
        { headerName: "Primary Assignee", field: "primaryassignee" },
        { headerName: "Supportive Assignee", field: "supportiveassignee" },
        { headerName: "User", field: "user" },
        { headerName: "Ticket Status", field: "ticketstatus" },
      ],

      // default col def properties get applied to all columns
      defaultColDef: {sortable: true, filter: true, resizable: true, colResizeDefault: 'shift'}, 

      rowSelection: 'multiple', // allow rows to be selected
      animateRows: true, // have rows animate to new positions when sorted

      // example event handler
      onCellClicked: params => {
    	  
        rowData = params.data
        console.log('cell was clicked!', rowData)
        
        document.getElementById("editTicket").disabled = false;
        
      }
    };

    // get div to host the grid
    var eGridDiv = document.getElementById("myGrid");
    // new grid instance, passing in the hosting DIV and Grid Options
    eGridDiv.style.setProperty('width', '100%');
    
    new agGrid.Grid(eGridDiv, gridOptionsWaitingOnCustomer);
    
    gridOptionsWaitingOnCustomer.api.showNoRowsOverlay();
    
    function onFirstDataRendered(params) {
 	   
 	   params.api.sizeColumnsToFit();
 	   
 	}
    
    function getSelectedRowData() {
    	
    	  const selectedData = this.gridOptionsWaitingOnCustomer.getSelectedRows();
    	  console.log("Row data : " + selectedData);
    	  return selectedData;
    }


    function refresh_grid() {
 	   
        // Fetch data from server
        fetch("http://localhost:8080/reportapplication/rest/support")
        .then(response => response.json())
        .then(data => {
          // load fetched data into grid
          gridOptionsWaitingOnCustomer.api.setRowData(data);
        });
   
     }
    
    function addTicket() {
    	
    	if(bug.value === '' || client.value === '' || category.value === '' || dateCreated.value === '' || dateSolved.value === '' || page.value === ''|| 
    			platform.value === '' || primaryAssignee.value === '' || supportiveAssignee.value === '' || ticketLink.value === ''|| selectedStatus === '' ||
    			user.value === '' || week.value === '') {
    		
    		showAlert("Fill in all the required fields!", "danger");
    		
    	} else {
    		
    		const radioButtons = document.querySelectorAll('input[name="inlineRadioOptions"]');
    	    
            var selectedStatus;
            for (const radioButton of radioButtons) {
                if (radioButton.checked) {
                	selectedStatus = radioButton.value;
                    break;
                }
            }
          
            console.log("Status selected : " + selectedStatus)
    
            
		 	    var jsonObject = {
		 			   
		           bug: bug.value,
		           category: category.value,
		           client: client.value,
		           datecreated: dateCreated.value,
		           datesolved: dateSolved.value,
		           page: page.value,
		           platform: platform.value,
		           primaryassignee: primaryAssignee.value,
		           supportiveassignee: supportiveAssignee.value,
		           ticketlink: ticketLink.value,
		           ticketstatus: selectedStatus,
		 		   user: user.value,
		 		   week: week.value
		 	        
		 	    }
            
	 	    var post_url = "http://localhost:8080/reportapplication/rest/support/add/";
	 	    	   
	 	    var xmlhttp = new XMLHttpRequest();   // new HttpRequest instance 
	 	    	
	 	    xmlhttp.open("POST", post_url);
	 	    xmlhttp.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
	 	    xmlhttp.send(JSON.stringify(jsonObject));
 
	 	   showAlert("Ticket, successfully created!", "success");
    	}
    
    	
    }
    
    
    function updateTicketDetails() {
    	
    	const radioButtons = document.querySelectorAll('input[name="inlineRadioOptions"]');
	    
        var selectedStatus;
        for (const radioButton of radioButtons) {
            if (radioButton.checked) {
            	selectedStatus = radioButton.value;
                break;
            }
        }
        
   
    	for (const key in rowData) {

    	    if (rowData.hasOwnProperty(key)) {
    	    	
    	    	bug.value = rowData.bug;
    	    	client.value = rowData.client;
    	    	category.value = rowData.category;
    	    	dateCreated.value = rowData.datecreated;
    	    	dateSolved.value = rowData.datesolved;
    	    	page.value = rowData.page;
    	    	platform.value = rowData.platform;
    	    	primaryAssignee.value = rowData.supportiveassignee;
    	    	supportiveAssignee.value = rowData.supportiveassignee;
    	    	ticketLink.value = rowData.ticketlink;
    	    	ticketstatus.value = rowData.ticketstatus;
    	    	user.value = rowData.user;
    	    	week.value = rowData.week;
    	       
    	    }
    	}
    	
    	
    	if(bug.value === '' || client.value === '' || category.value === '' || dateCreated.value === '' || dateSolved.value === '' || page.value === ''|| 
    			platform.value === '' || primaryAssignee.value === '' || supportiveAssignee.value === '' || ticketLink.value === ''|| selectedStatus === '' ||
    			user.value === '' || week.value === '') {
    		
    		showAlert("Fill in all the required fields!", "danger");
    		
    	} else {
    		
    	
          
            console.log("Status selected : " + selectedStatus)
    
            
		 	    var jsonObject = {
		 			   
		           bug: bug.value,
		           category: category.value,
		           client: client.value,
		           datecreated: dateCreated.value,
		           datesolved: dateSolved.value,
		           page: page.value,
		           platform: platform.value,
		           primaryassignee: primaryAssignee.value,
		           supportiveassignee: supportiveAssignee.value,
		           ticketlink: ticketLink.value,
		           ticketstatus: selectedStatus,
		 		   user: user.value,
		 		   week: week.value
		 	        
		 	    }
            
	 	 //   var post_url = "http://localhost:8080/reportapplication/rest/support/add/";
	 	    	   
	 	   // var xmlhttp = new XMLHttpRequest();   // new HttpRequest instance 
	 	    	
	 	//    xmlhttp.open("POST", post_url);
	 	  //  xmlhttp.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
	 	 //   xmlhttp.send(JSON.stringify(jsonObject));
 
	 	  // showAlert("Ticket, successfully created!", "success");
    	}
    	
    }
    
    function showAlert(message, className) {
		   
		 const div = document.createElement('div');
		 div.className = 'alert alert-' + className;
		 div.appendChild(document.createTextNode(message));
		    
		 div.style.width = "540px";
		    
	     const container = document.querySelector('.container');
		 const form = document.querySelector('.links');
		   
		container.insertBefore(div, form);
		
		setTimeout(() => document.querySelector('.alert').remove(), 2000);
	 		
	 }
    
    document.getElementById("createTicket").addEventListener('click', (e) => {
		   
			console.log('Clicked!!!');
	 		  
	 		 addTicket();
	 		//NoSpecialCharactersAllowed()

  	   e.preventDefault();
     });
    
    
    document.getElementById("editTicket").addEventListener('click', (e) => {
    	
    	updateTicketDetails();
    	
    	e.preventDefault();
    	
    });
    
    
    document.getElementById("refresh_data").addEventListener('click', (e) => {
 	   
 	   console.log('refresh');
 	   refresh_grid();
 	   
 	   e.preventDefault();
    });
    
    function getBoolean(id) {
    	  return !!document.querySelector('#' + id);
    	}

    	function getParams() {
    	  return {
    	    allColumns: getBoolean('allColumns'),
    	  };
    	}

    
    document.getElementById("exportToExcel").addEventListener('click', (e) => {
  	   
  	   console.log('export');

  	    gridOptionsWaitingOnCustomer.api.exportDataAsExcel(getParams());
  	   
  	   e.preventDefault();
     });
    

</script>

</html>