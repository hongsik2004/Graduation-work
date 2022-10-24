const options = {
    method: 'GET',
    headers: {accept: 'application/json', 'content-type': 'application/json'},
    
  };  
let se;
  function coin(co) {
	  console.log(co);
	  if(se != null) {clearInterval(se)}
	  fetch(`https://api.bithumb.com/public/orderbook/${co}_KRW`, options)
      .then(response => response.json())
      .then(response => {draw(response.data)})
      .catch(err => console.error(err));
	  se = setInterval(() => {
		  fetch(`https://api.bithumb.com/public/orderbook/${co}_KRW`, options)
	        .then(response => response.json())
	        .then(response => {draw(response.data)})
	        .catch(err => console.error(err));     
	  }, 1000);
  }
  function draw(data) {
    let div = document.querySelector(".asking-price-table > table > tbody");
    div.innerHTML = ""
    for (let i = 29; i >= 0; i--) {
      let dom = document.createElement("tr");
      dom.className = "down"
      dom.innerHTML= `<td class="bar">
		        		<div class="ty01">${data.asks[i].quantity}</div>
		        		</td>
		        		<td class="downe">
		        		<a href="#">
		        		<div class="ty03">${data.asks[i].price}</div>
		        		<div class="ty02">-0.43%</div>
		        		</a>
		        		</td>`;
      div.append(dom);
    }
    for (let i = 0; i < 30; i++) {
      let dom = document.createElement("tr");
      dom.className = "up"
          dom.innerHTML= `<td class="bar">
      		<div class="ty01">${data.bids[i].quantity}</div>
      		</td>
      		<td class="downe">
      		<a href="#">
      		<div class="ty03">${data.bids[i].price}</div>
      		<div class="ty02">-0.43%</div>
      		</a>
      		</td>`;
      div.append(dom);
    }
  }
  
 export default coin