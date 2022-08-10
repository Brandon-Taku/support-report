<!DOCTYPE html>
<html lang="en">
 <head>
   <meta charset="UTF-8" />
   <meta http-equiv="X-UA-Compatible" content="IE=edge" />
   <meta
     name="viewport"
     content="width=device-width, initial-scale=1.0"
   />
   
   <title>Dashboard</title>
	
	    <script src="https://unpkg.com/ag-grid-community/dist/ag-grid-community.min.noStyle.js"></script>
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	 
	    <script src="https://cdn.jsdelivr.net/npm/chart.js@3.8.0/dist/chart.min.js"></script>  
	 
	    <link rel="stylesheet" href="https://unpkg.com/ag-grid-community/dist/styles/ag-grid.css"/>
	    <link rel="stylesheet" href="https://unpkg.com/ag-grid-community/dist/styles/ag-theme-alpine.css"/>
	    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	    
 </head>
 
 
 <body>
 <body onload="get_json_data()">
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
      	  
      		    <a href="/reportapplication/rest/support/waitingOnCustomer"><button type="button" class="btn btn-secondary btn-circle btn-xl mb-4"><h4>Waiting On Customer</h4><h2 class="mt-1" ><br><div id="waitingOnCustomerTotal">0</div></br></h2></button></a>
			    <a href="/reportapplication/rest/support/investigating"><button type="button" class="btn btn-primary btn-circle btn-xl mb-4"><h4>Investigating</h4><h2 class="mt-1"><br>0</br></h2></button></a>
			    <a href="/reportapplication/rest/support/inProgress"><button type="button" class="btn btn-secondary btn-circle btn-xl mb-4"><h4>In-Progress</h4><h2 class="mt-1"><br>0</br></h2></button></a>
			    <a href="/reportapplication/rest/support/onHold"><button type="button" class="btn btn-primary btn-circle btn-xl mb-4"><h4>On-Hold</h4><h2 class="mt-1"><br>0</br></h2></button></a>
			    <a href="/reportapplication/rest/support/awaitingAuthorization"><button type="button" class="btn btn-secondary btn-circle btn-xl mb-4"><h4>Awaiting Authorization</h4><h2 class="mt-1"><br>0</br></h2></button></a>
      	  
      	 		 <br>
      	  		 
      	  		 <div class="row my-3">
				        <div class="col">
				    
				        </div>
				    </div>
				    <div class="row my-2">
				        <div class="col-md-6 py-1">
				            <div class="card">
				                <div class="card-body">
				                    <canvas id="chLine"></canvas>
				                </div>
				            </div>
				        </div>
				        <div class="col-md-6 py-1">
				            <div class="card">
				                <div class="card-body">
				                    <canvas id="chBar"></canvas>
				                </div>
				            </div>
				        </div>
				    </div>
				    <div class="row py-2">
				        <div class="col-md-4 py-1">
				            <div class="card">
				                <div class="card-body">
				                    <canvas id="chDonut1"></canvas>
				                </div>
				            </div>
				        </div>
				        <div class="col-md-4 py-1">
				            <div class="card">
				                <div class="card-body">
				                    <canvas id="chDonut2"></canvas>
				                </div>
				            </div>
				        </div>
				        <div class="col-md-4 py-1">
				            <div class="card">
				                <div class="card-body">
				                    <canvas id="chDonut3"></canvas>
				                </div>
				            </div>
				        </div>
				    </div>
      	  		 
      	  		  <br>
      	  		 <a href="rest/tickets/add"><button type="button" class="btn btn-outline-primary btn-lg btn-block">Tablet Report</button></a>
      	  		 
      	  		 <br>
      	  		 
				 <a href="/reportapplication/rest/support/tracking"><button type="button" class="btn btn-outline-secondary btn-lg btn-block">Support Statistics Report</button></a>
      	  		 <br>
  
      	  </div>
      
	</div>
	
 </body>
	
<style>

body{
    background-color: #183252;
}

</style>
	
 <script type="text/javascript">
 
			 
 
			 /* chart.js chart examples */
			
			//chart colors
			var colors = ['#007bff','#28a745','#333333','#c3e6cb','#dc3545','#6c757d'];
			
			/* large line chart */
			var chLine = document.getElementById("chLine");
			var chartData = {
			labels: ["S", "M", "T", "W", "T", "F", "S"],
			datasets: [{
			  data: [589, 445, 483, 503, 689, 692, 634],
			  backgroundColor: 'transparent',
			  borderColor: colors[0],
			  borderWidth: 4,
			  pointBackgroundColor: colors[0]
			}
			// {
			//   data: [639, 465, 493, 478, 589, 632, 674],
			//   backgroundColor: colors[3],
			//   borderColor: colors[1],
			//   borderWidth: 4,
			//   pointBackgroundColor: colors[1]
			// }
			]
			};
			if (chLine) {
			new Chart(chLine, {
			type: 'line',
			data: chartData,
			options: {
			  scales: {
			    xAxes: [{
			      ticks: {
			        beginAtZero: false
			      }
			    }]
			  },
			  legend: {
			    display: false
			  },
			  responsive: true
			}
			});
			}
			
			/* large pie/donut chart */
			var chPie = document.getElementById("chPie");
			if (chPie) {
			new Chart(chPie, {
			  type: 'pie',
			  data: {
			    labels: ['Desktop', 'Phone', 'Tablet', 'Unknown'],
			    datasets: [
			      {
			        backgroundColor: [colors[1],colors[0],colors[2],colors[5]],
			        borderWidth: 0,
			        data: [50, 40, 15, 5]
			      }
			    ]
			  },
			  plugins: [{
			    beforeDraw: function(chart) {
			      var width = chart.chart.width,
			          height = chart.chart.height,
			          ctx = chart.chart.ctx;
			      ctx.restore();
			      var fontSize = (height / 70).toFixed(2);
			      ctx.font = fontSize + "em sans-serif";
			      ctx.textBaseline = "middle";
			      var text = chart.config.data.datasets[0].data[0] + "%",
			          textX = Math.round((width - ctx.measureText(text).width) / 2),
			          textY = height / 2;
			      ctx.fillText(text, textX, textY);
			      ctx.save();
			    }
			  }],
			  options: {layout:{padding:0}, legend:{display:false}, cutoutPercentage: 80}
			});
			}
			
			/* bar chart */
			var chBar = document.getElementById("chBar");
			if (chBar) {
			new Chart(chBar, {
			type: 'bar',
			data: {
			  labels: ["S", "M", "T", "W", "T", "F", "S"],
			  datasets: [{
			    data: [589, 445, 483, 503, 689, 692, 634],
			    backgroundColor: colors[0]
			  },
			  {
			    data: [639, 465, 493, 478, 589, 632, 674],
			    backgroundColor: colors[1]
			  }]
			},
			options: {
			  legend: {
			    display: false
			  },
			  scales: {
			    xAxes: [{
			      barPercentage: 0.4,
			      categoryPercentage: 0.5
			    }]
			  }
			}
			});
			}
			
			/* 3 donut charts */
			var donutOptions = {
			cutoutPercentage: 85, 
			legend: {position:'bottom', padding:5, labels: {pointStyle:'circle', usePointStyle:true}}
			};
			
			//donut 1
			var chDonutData1 = {
			  labels: ['Bootstrap', 'Popper', 'Other'],
			  datasets: [
			    {
			      backgroundColor: colors.slice(0,3),
			      borderWidth: 0,
			      data: [74, 11, 40]
			    }
			  ]
			};
			
			var chDonut1 = document.getElementById("chDonut1");
			if (chDonut1) {
			new Chart(chDonut1, {
			    type: 'pie',
			    data: chDonutData1,
			    options: donutOptions
			});
			}
			
			//donut 2
			var chDonutData2 = {
			  labels: ['Wips', 'Pops', 'Dags'],
			  datasets: [
			    {
			      backgroundColor: colors.slice(0,3),
			      borderWidth: 0,
			      data: [40, 45, 30]
			    }
			  ]
			};
			var chDonut2 = document.getElementById("chDonut2");
			if (chDonut2) {
			new Chart(chDonut2, {
			    type: 'pie',
			    data: chDonutData2,
			    options: donutOptions
			});
			}
			
			//donut 3
			var chDonutData3 = {
			  labels: ['Angular', 'React', 'Other'],
			  datasets: [
			    {
			      backgroundColor: colors.slice(0,3),
			      borderWidth: 0,
			      data: [21, 45, 55, 33]
			    }
			  ]
			};
			var chDonut3 = document.getElementById("chDonut3");
			if (chDonut3) {
			new Chart(chDonut3, {
			    type: 'pie',
			    data: chDonutData3,
			    options: donutOptions
			});
			}
			
			/* 3 line charts */
			var lineOptions = {
			  legend:{display:false},
			  tooltips:{interest:false,bodyFontSize:11,titleFontSize:11},
			  scales:{
			      xAxes:[
			          {
			              ticks:{
			                  display:false
			              },
			              gridLines: {
			                  display:false,
			                  drawBorder:false
			              }
			          }
			      ],
			      yAxes:[{display:false}]
			  },
			  layout: {
			      padding: {
			          left: 6,
			          right: 6,
			          top: 4,
			          bottom: 6
			      }
			  }
			};
			
			var chLine1 = document.getElementById("chLine1");
			if (chLine1) {
			new Chart(chLine1, {
			    type: 'line',
			    data: {
			        labels: ['Jan','Feb','Mar','Apr','May'],
			        datasets: [
			          {
			            backgroundColor:'#ffffff',
			            borderColor:'#ffffff',
			            data: [10, 11, 4, 11, 4],
			            fill: false
			          }
			        ]
			    },
			    options: lineOptions
			});
			}
			var chLine2 = document.getElementById("chLine2");
			if (chLine2) {
			new Chart(chLine2, {
			    type: 'line',
			    data: {
			        labels: ['A','B','C','D','E'],
			        datasets: [
			          {
			            backgroundColor:'#ffffff',
			            borderColor:'#ffffff',
			            data: [4, 5, 7, 13, 12],
			            fill: false
			          }
			        ]
			    },
			    options: lineOptions
			});
			}
			
			var chLine3 = document.getElementById("chLine3");
			if (chLine3) {
			new Chart(chLine3, {
			    type: 'line',
			    data: {
			        labels: ['Pos','Neg','Nue','Other','Unknown'],
			        datasets: [
			          {
			            backgroundColor:'#ffffff',
			            borderColor:'#ffffff',
			            data: [13, 15, 10, 9, 14],
			            fill: false
			          }
			        ]
			    },
			    options: lineOptions
			});
			}
 
  
      var xmlhttp;
       
	  function append_json(data){
           
           data.forEach(function(object) {
           	
        	   document.getElementById('waitingOnCustomerTotal').innerHTML = object.ticketcount;
                 
                 console.log("waitingOnCustomerTotal : " + waitingOnCustomerTotal);
              
           }); 
       }
       
       function get_json_data(){
           
           var service_url = "http://localhost:8080/reportapplication/rest/support/waitingOnCustomer/total";
           
           xmlhttp = new XMLHttpRequest();
           xmlhttp.onreadystatechange = function() { 
               if (this.readyState == 4 && this.status == 200) {//when a good response is given do this

                   var data = JSON.parse(this.responseText); // convert the response to a json object
                   append_json(data);// pass the json object to the append_json function
                   console.log("CALLING,... :  " + data)
                   console.log('clicked!!!!');
               }
           }
           //set the request destination and type
           xmlhttp.open("GET", service_url, true);
           //set required headers for the request
           xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
           // send the request
           xmlhttp.send(); // when the request completes it will execute the code in onreadystatechange section
       }
     
 	   
 	   function showAlert(message, className) {
 		   
 		    const div = document.createElement('div');
 		    div.className = `alert alert-danger`;
 		    div.appendChild(document.createTextNode(message));
 		    
 		    div.style.width = "540px";
 		    
 		    const container = document.querySelector('.container');
 		    const form = document.querySelector('#page-form');
 		   
			container.insertBefore(div, form);
			
			setTimeout(() => document.querySelector('.alert').remove(), 2000);
 	 		
 	 	}
 	   
 	   function NoSpecialCharactersAllowed() {
 		   
 		   var regex = new RegExp("^[a-zA-Z0-9]+$");
 		   var key = String.fromCharCode(!event.charCode ? event.which : event.charCode);
 		   
 		    if (!regex.test(key)) {
 		    	
 		    	console.log("Hii there! " + taskdescription.value);
 		        event.preventDefault();
 		       return false;
 		    }
 		   
 	   }
       
       function addTask() {
    	   
    	   var jsonObject = {
    			   
    		   taskname: taskname.value,
    	       taskdescription: taskdescription.value
    	        
    	    }
    	     
    	    var post_url = "http://localhost:8080/tasks-app/webapi/tasks/add/";
    	    	   
    	    var xmlhttp = new XMLHttpRequest();   // new HttpRequest instance 
    	    	
    	    xmlhttp.open("POST", post_url);
    	    xmlhttp.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
    	    xmlhttp.send(JSON.stringify(jsonObject));
    
       }
       
     
      
      </script>
</html>