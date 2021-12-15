document.getElementById("showcart").style.display="none";
var giohang = new Array();

    function themvaogiohang(x) {
        var boxsp = x.parentElement.children;
         var hinh = boxsp[0].children[0].src;
        var gia = boxsp[1].children[0].innerText;
        var tensp = boxsp[2].innerText;
         var soluong = parseInt(boxsp[3].value);
        var sp = new Array( hinh,gia, tensp,soluong);

        var kt =0;
        for(let i=0;i<giohang.length;i++){
            if(giohang[i][2]==tensp){
                kt=1;
              soluong+=parseInt(giohang[i][3]);
              giohang[i][3]=soluong;
              break;
            }
        }
        if(kt==0){
            giohang.push(sp);
        }

      

        console.log(giohang);
        showcountsp();
        sessionStorage.setItem("giohang",JSON.stringify(giohang));

    }

    function showcountsp() {
        document.getElementById("countsp").innerHTML = giohang.length;


    }
    function showMyCart(){
        var ttgh ="";
       
        var tong=0;
        for(let i =0;i<giohang.length;i++){
            var tt =parseInt(giohang[i][1])*parseInt(giohang[i][3]);
            tong+=tt;
            ttgh += '<tr>'+
           '<td>'+(i+1)+'</td>'+
            '<td><img src="'+giohang[i][0]+'" alt=""></td>'+
            '<td>'+giohang[i][2]+'</td>'+
            '<td>'+giohang[i][1]+'</td>'+
            '<td>'+giohang[i][3]+'</td>'+
            '<td>'+
                '<div>'+tt+'</div>'+
            '</td>'+
            '<td>'+
            '<button  onclick="xoasp(this)" style="border-radius: 5px;">Xóa</button>'+
        '</td>'+
        '</tr>';
        
        }
        ttgh +='<tr>'+
        '<th colspan="6">Tổng đơn hàng</th>'+
        '<th>'+
            '<div>' + tong + '</div>'+
        '</th>'+

    '</tr>';
         document.getElementById("myCart").innerHTML=ttgh;
        
    }
    function xoasp(x){
        var tr = x.parentElement.parentElement;
        var tensp= tr.children[2].innerText;
        tr.remove();
        for(let i=0;i<giohang.length;i++){
            if(giohang[i][2]==tensp){
                giohang.splice(i,1);
            }
            
        }
       showMyCart();
        showcountsp();
 
     
    }
    function xoatatca() {
        giohang=[];
        showMyCart();
        showcountsp();
    }
    function showcart(){
       
        var  x=document.getElementById("showcart");
        
        if(x.style.display=="block"){
            x.style.display="none";

        }else{
            x.style.display="block"
           
        }
        showMyCart();
    }
   function showgh_tt(){
       var gh =sessionStorage.getItem("giohang");
       var giohang =JSON.parse(gh);
       var ttgh ="";
       
       var tong=0;
       for(let i =0;i<giohang.length;i++){
           var tt =parseInt(giohang[i][1])*parseInt(giohang[i][3]);
           tong+=tt;
           ttgh += '<tr>'+
          '<td>'+(i+1)+'</td>'+
           '<td><img src="'+giohang[i][0]+'" style="" alt=""></td>'+
           '<td>'+giohang[i][2]+'</td>'+
           '<td>'+giohang[i][1]+'</td>'+
           '<td>'+giohang[i][3]+'</td>'+
           '<td>'+
               '<div>'+tt+'</div>'+
           '</td>'+
       '</tr>';
       
       }
       ttgh +='<tr>'+
       '<th colspan="5">Tổng đơn hàng</th>'+
       '<th>'+
           '<div>' + tong + '</div>'+
       '</th>'+

   '</tr>';
        document.getElementById("myCart").innerHTML=ttgh;

   }
   function dongydathang(){
     var ttnh=  document.getElementById("thongtinnhanhang").children;
     var ht=ttnh[0].children[1].children[0].value;
     var dc=ttnh[1].children[1].children[0].value;
     var dt=ttnh[2].children[1].children[0].value;
     var email=ttnh[3].children[1].children[0].value;
     var nguoinhan=new Array(ht,dc,dt,email);
     sessionStorage.setItem("nguoinhan",JSON.stringify(nguoinhan));
     console.log(nguoinhan);
    window.location.assign("donhang.html")
   }
   function showttnn(){
       var nn=sessionStorage.getItem("nguoinhan");
       var tt=JSON.parse(nn);
       var ttin='<tr>'+
       '<td width="20%">Họ tên</td>'+
       '<td>'+tt[0]+'</td>'+
   '</tr>'+
   '<tr>'+
       '<td>Địa chỉ</td>'+
       '<td>'+tt[1]+'</td>'+
   '</tr>'+
   '<tr>'+
       '<td>Điện thoại</td>'+
       '<td>'+tt[2]+'</td>'+
   '</tr>'+
   '<tr>'+
       '<td>Email</td>'+
       '<td>'+tt[3]+'</td>'+
   '</tr>';
   document.getElementById("thongtinnhanhang").innerHTML=ttin;
  
   }
   function thongbao(){
    alert("Đặt hàng thành công !");
   }
   