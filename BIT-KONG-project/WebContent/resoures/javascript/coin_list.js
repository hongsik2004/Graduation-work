let list = ["XRP","BTC","ETH","WEMIX","APM","MVC","XNO","JST","CON","SUN","SAND","SOL",
                "ANKR","ANV","TITAN","ETC","CTC","ADA","DOGE"]
const options = {method: 'GET', headers: {accept: 'application/json'}};
let data  = []
setInterval(() => {
    fetch('https://api.bithumb.com/public/ticker/ALL_KRW', options)
  .then(response => response.json())
  .then(response => draw(response.data))
  .catch(err => console.error(err));    
}, 1000);

function draw(data) {
    let table = document.querySelector(".scrolld>table");
    table.innerHTML = "";
        let i = 0
    for (let key in list) {
        key = list[key]	
        if( i > 20) break;
        i++;
        let tr = document.createElement("tr");
        tr.dataset.coin=key;
        let cl = "up"
       
        let changeM = Math.round((data[key].closing_price - data[key].prev_closing_price)*100)/100 
        if(changeM < 0) {
            cl = "down"
        }else if(changeM == 0){
            cl = ""
        }
        tr.innerHTML = `<td class="name">${key}</td>
			<td class="price">${data[key].closing_price}</td>
			<td class="cent price-${cl}">
			${Math.floor(changeM / data[key].closing_price * 100*100)/100}% <br>
			${changeM}
			</td>
			<td class="deal">${Math.floor(data[key].acc_trade_value_24H/1000000)}백만</td>`;
        
        table.appendChild(tr)
    }
}   