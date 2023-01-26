var link = document.querySelectorAll(".description .des_nav a")
var linkArr = Array.from(link)
var select = document.querySelectorAll(".des_content .select")
var selectArr = Array.from(select) 

linkArr.forEach((ele)=>{
    ele.addEventListener("click",function(e){
        linkArr.forEach((ele) =>
        {
            ele.classList.remove("active")
        })
        e.currentTarget.classList.add("active")
        selectArr.forEach((select) =>
        {
            select.style.display= 'none'
        })
        document.querySelector(e.target.dataset.cont).style.display = "block"
    })
})

var minus = document.getElementsByClassName('btn_minus')
var plus = document.getElementsByClassName('btn_plus')
// console.log(minus)
// console.log(plus)
for(var i=0; i<plus.length; i++){
    var button = plus[i]
    button.addEventListener('click',function(event){
        var buttonClicked = event.target;
        // console.log(buttonClicked)
        var input = buttonClicked.parentElement.parentElement.children[1]
        // console.log(input)
        var inputValue = input.value
        var newVal = parseInt(inputValue)+1
        // console.log(newVal)
        input.value = newVal
    })
}
for(var i=0; i<minus.length; i++){
    var button = minus[i]
    button.addEventListener('click',function(event){
        var buttonClicked = event.target;
        // console.log(buttonClicked)
        var input = buttonClicked.parentElement.parentElement.children[1]
        // console.log(input)
        var inputValue = input.value
        var newVal = parseInt(inputValue)-1
        // console.log(newVal)
        if(newVal <=0 )
        {
            input.value = 0
        }
        else
        {
            input.value = newVal 
        }
    })
}