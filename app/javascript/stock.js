const stock =() => {
  //販売機能
  const sell_item = getElementById("sell-item");
  const sell_quantity = getElementById("sell-quantity");
  const sell_price = getElementById("sell-price");
  const put_stock = document.getElementById("sell-button");
  console.log("test")
  put_stock.addEventListener("click",(e) => {
    //在庫機能
    const stock_item = document.getElementById("stock-item");
    const stock_quantity = document.getElementById("stock-quantity");
    const stock_price = document.getElementById("stock-price");
    stock_item.innerHTML = `${sell_item}`;
    stock_quantity.innerHTML = `${sell_quantity}`;
    stock_price.innerHTML = `${sell_price}`;
    document.getElementById("stock").click();
    console.log("click-stock-button");
  });
};

window.addEventListener("load",stock);