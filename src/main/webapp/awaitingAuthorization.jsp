<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Awaiting Authorization</title>

	<script src="https://unpkg.com/ag-grid-community/dist/ag-grid-community.min.noStyle.js"></script>
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	   
	 
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
    
      	  <div class="text-center">
      	  
			    <a href="/reportapplication/rest/support/investigating"><button type="button" class="btn btn-primary btn-circle btn-xl mb-4"><h4>Investigating</h4><h2 class="mt-1"><br>0</br></h2></button></a>
			    <a href="/reportapplication/rest/support/inProgress"><button type="button" class="btn btn-secondary btn-circle btn-xl mb-4"><h4>In-Progress</h4><h2 class="mt-1"><br>0</br></h2></button></a>
			    <a href="/reportapplication/rest/support/onHold"><button type="button" class="btn btn-primary btn-circle btn-xl mb-4"><h4>On-Hold</h4><h2 class="mt-1"><br>0</br></h2></button></a>
				<a href="/reportapplication/rest/support/waitingOnCustomer"><button type="button" class="btn btn-secondary btn-circle btn-xl mb-4"><h4>Waiting On Customer</h4><h2 class="mt-1"><br>0</br></h2></button></a>			    
      	  
      	 		<br>
      	  </div>
	</div>
	
	<div class="m-2" >

		<div id="myGrid" class="ag-theme-alpine" style="width: 700px; height: 500px;"></div>
		
		<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap">New Ticket</button>
		
		
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
		        
		          <div class="form-group">
		            <label for="recipient-name" class="col-form-label">Client:</label>
		            <input type="text" class="form-control" id="recipient-name">
		          </div>
		          
		          <div class="form-group">
		            <label for="message-text" class="col-form-label">Platform:</label>
		             <input type="text" class="form-control" id="recipient-name">
		          </div>
		          
		          <div class="form-group">
		            <label for="message-text" class="col-form-label">Bug:</label>
		             <input type="text" class="form-control" id="recipient-name">
		          </div>
		          
		          <div class="form-group">
		            <label for="message-text" class="col-form-label font-weight-bold">Status:</label>
		            
		            <div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
						<label class="form-check-label" for="inlineRadio1">Assigned</label>
					</div>
		             
		             <div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
						<label class="form-check-label" for="inlineRadio1">Waiting On Customer</label>
					</div>
					
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
					  <label class="form-check-label" for="inlineRadio2">Investigating</label>
					</div>
					
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
					  <label class="form-check-label" for="inlineRadio2">In-Progress</label>
					</div>
					
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
					  <label class="form-check-label" for="inlineRadio2">On-Hold</label>
					</div>
					
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
					  <label class="form-check-label" for="inlineRadio2">Awaiting Authorization</label>
					</div>
							             
		          </div>
		          
		          <div class="form-group">
		            <label for="message-text" class="col-form-label">Date Created:</label>
		             <input type="text" class="form-control" id="recipient-name">
		          </div>
		          
		          <div class="form-group">
		            <label for="message-text" class="col-form-label">Date Solved:</label>
		            <input type="text" class="form-control" id="recipient-name">
		          </div>
		          
		          <div class="form-group">
		            <label for="message-text" class="col-form-label">Ticket link:</label>
		             <input type="text" class="form-control" id="recipient-name">
		          </div>
		          
		          <div class="form-group">
		            <label for="message-text" class="col-form-label">Category/Issue:</label>
		            <textarea class="form-control" id="message-text"></textarea>
		          </div>
		          
		          <div class="form-group">
		            <label for="message-text" class="col-form-label">Primary Assignee:</label>
		            <input type="text" class="form-control" id="recipient-name">
		          </div>
		          
		          <div class="form-group">
		            <label for="message-text" class="col-form-label">Supportive Assignee:</label>
		             <input type="text" class="form-control" id="recipient-name">
		          </div>
		          
		          <div class="form-group">
		            <label for="message-text" class="col-form-label">User:</label>
		             <input type="text" class="form-control" id="recipient-name">
		          </div>
		          
		        </form>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-primary">Create</button>
		      </div>
		    </div>
		  </div>
		</div>
	
	</div>
	
</body>

<script type="text/javascript">

var user = document.getElementById("user");
var supportiveAssignee = document.getElementById("supportiveAssignee");
var primaryAssignee = document.getElementById("primaryAssignee");
var category = document.getElementById("category");
var ticketLink = document.getElementById("ticketLink");
var dateSolved = document.getElementById("dateSolved");
var dateCreated = document.getElementById("dateCreated");
var awaitingAuthorization = document.getElementById("awaitingAuthorization");
var onHold = document.getElementById("onHold");
var inProgress = document.getElementById("inProgress");
var waitingOnCustomer = document.getElementById("waitingOnCustomer");
var assigned = document.getElementById("assigned");
var bug = document.getElementById("bug");
var platform = document.getElementById("platform");
var client = document.getElementById("client");
var page = document.getElementById("page");
var ticketstatus = document.getElementById("ticketstatus");


function deselect(){
	gridOptionsWaitingOnCustomer.api.deselectAll()
}

	   
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
        console.log('cell was clicked', params)
      }
    };

    // get div to host the grid
    var eGridDiv = document.getElementById("myGrid");
    // new grid instance, passing in the hosting DIV and Grid Options
    eGridDiv.style.setProperty('width', '100%');
    
    new agGrid.Grid(eGridDiv, gridOptions);
    
    gridOptions.api.showNoRowsOverlay();
    
    function onFirstDataRendered(params) {
 	   
 	   params.api.sizeColumnsToFit();
 	   
 	}


    function refresh_grid() {
 	   
        // Fetch data from server
        fetch("http://localhost:8080/reportapplication/rest/support/awaitingAuthorization/tickets")
        .then(response => response.json())
        .then(data => {
          // load fetched data into grid
          gridOptions.api.setRowData(data);
        });
   
     }
    
    function addTicket() {
    
 	   
 	   var jsonObject = {
 			   
 		   user: user.value,
 		   supportiveAssignee: supportiveAssignee.value,
 	       primaryAssignee: primaryAssignee.value,
 		   category: category.value,
 		   ticketLink: ticketLink.value,
 		   dateSolved: dateSolved.value,
 		   dateCreated: dateCreated.value,
 		   ticketstatus: waitingOnCustomer.value,
	 	   bug: bug.value,
	 	   platform: platform.value,
	 	   client: client.value,
	 	   page: page.value
 	        
 	    }
 	     
 	    var post_url = "http://localhost:8080/reportapplication/rest/waitingOnCustomer/add/";
 	    	   
 	    var xmlhttp = new XMLHttpRequest();   // new HttpRequest instance 
 	    	
 	    xmlhttp.open("POST", post_url);
 	    xmlhttp.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
 	    xmlhttp.send(JSON.stringify(jsonObject));
 
    }
    
    document.getElementById("createTicket").addEventListener('click', (e) => {
		   
		 // if(taskdescription.value  === '' || taskname.value  === '') {
				
			//showAlert('Fill in the required fields!', 'danger');
			console.log('Clicked!!!');
			
	 	  //} else {
	 		  
	 		 addTicket();
	 		//NoSpecialCharactersAllowed()
	 		
	 	  //}

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

  		 gridOptions.api.exportDataAsExcel(getParams());
  	   
  	   e.preventDefault();
    });
    

</script>

</html>