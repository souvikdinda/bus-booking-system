$(document).ready(function(){
    $("#navbar").toggle(
        function(){$("#mySidenav").css({"width": "250px"});},
        function(){$("#mySidenav").css({"width": "0px"});
    });
});

function insert()
{
    x=document.getElementById("passN").value;
    a=document.getElementById("demo");
    table = document.createElement("table");
    a.appendChild(table);
    for(z=0;z<x;z++)
    {
    tr = document.createElement("tr");
    td1 = document.createElement("td");
    b=document.createElement("input");
    b.setAttribute("type","text");
    b.setAttribute("id","i"+(z));
    b.setAttribute("name","passName"+(z));
    b.setAttribute("placeholder","Enter your Name");
    td1.appendChild(b);
    
    td2 = document.createElement("td");
    c=document.createElement("input");
    c.setAttribute("type","number");
    c.setAttribute("id","j"+(z));
    c.setAttribute("name","age"+(z));
    c.setAttribute("placeholder","Enter your Age");
    td2.appendChild(c);

    td3 = document.createElement("td");
    d=document.createElement("input");
    d.setAttribute("type","text");
    d.setAttribute("id","k"+(z));
    d.setAttribute("name","gender"+(z));
    d.setAttribute("placeholder","Enter your Gender");
    td3.appendChild(d);
    
    tr.appendChild(td1);
    tr.appendChild(td2);
    tr.appendChild(td3);
    table.appendChild(tr);
    }

}


$(document).ready(function(){

    $("#bookingDate").datepicker({
        dateFormat: "dd-mm-yy",
        minDate: 0,
        maxDate: 0
    });
});
