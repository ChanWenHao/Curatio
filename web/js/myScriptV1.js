var trigger = document.getElementById("selectAll");
var checkbox = document.getElementsByClassName("categoryCheck");

trigger.addEventListener('change', function(e) {
    for(var i = 0; i < checkbox.length; i++) {
        checkbox[i].checked = trigger.checked;
    }
})


for(var i = 0; i < checkbox.length; i++) {
    checkbox[i].addEventListener('change', function(e) {
        if(this.checked == false) {
            trigger.checked = false;
        }
    })
}
