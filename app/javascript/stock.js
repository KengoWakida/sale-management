const stock =() => {
  const put_stock = document.getElementById("sell-button");
  console.log("test")
  put_stock.addEventListener("click",(e) => {
    // e.preventDefault();
    document.getElementById("stock").click();
    console.log("click-stock-button");
  });
};

window.addEventListener("load",stock);