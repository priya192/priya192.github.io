<%@page import="java.io.PrintWriter"%>
<!doctype html>
<html>
<head>
<title>welcome on MySlam</title>

<style>

div.bnn1 {
    margin-left:-100px;

    background: transparent;
    margin-top: -80px;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: horizontal;
  -webkit-box-direction: normal;
      -ms-flex-direction: row;
          flex-direction: row;
  -ms-flex-wrap: wrap;
      flex-wrap: wrap;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  -ms-flex-line-pack: center;
      align-content: center;


}
/* Form opened styles */
.form1.active1 {
  padding: 24px;
  background:transparent;
  border:1px solid silver;
  border-radius: 20px;
  box-shadow: 20px 30px 50px -10px silver;
  overflow: hidden;
  width: 320px;
  cursor:auto;
  height: 380px;
  -webkit-animation: openForm1 1.4s;
  -webkit-animation-timing-function: cubic-bezier(0.9, 0.1, 0.1, 0.9);
  animation: openForm1 1.4s;
  animation-timing-function: cubic-bezier(0.9, 0.1, 0.1, 0.9);
}
.form1.active1 * {
  top: 0;
  opacity: 1;
}
.form1.active1::after,
.form1.active1::before {
  opacity: 0;
}
.submit1 {
  top: 0;
  opacity: 1;
  width: 70px;
  height: 30px;
  
  text-align: center;
  margin: 30px 4px 0 auto;
  background: transparent;
  cursor: pointer;
 
  border-radius: 10px;
  color: goldenrod;
  font-size: 20px;
  box-shadow: 0px 6px 5px -4px silver, 0px 1px 0px b inset, 0px 0px 0px black inset;
  -webkit-transition: all 1.1s 1s ease;
  transition: all 1.1s 1s ease;
}
input {
  top: 0;
  display: block;
  width: 100%;
  border: transparent;
  padding: 10px;
  background: #fefefe;
  margin-top:60px;
  font-style: italic;
  border: 2px solid #bbb;
}
input {
  top: 0; 
  border-top: none;
 
  border-radius: 5px;
}
input:nth-child(1) {
  -webkit-transition: all 0.5s 1s ease;
  transition: all 0.5s 1s ease;
}
input:nth-child(2) {
  -webkit-transition: all 0.7s 1s ease;
  transition: all 0.7s 1s ease;
}

/* Form closed styles */
.form1 {
  width: 250px;
  height: 62px;
  background: #000066;
  border: 4px solid #00cccc;
  border-radius: 10px;
  box-shadow: 0px 10px 20px -5px rgba(0,0,0,0.3);
  cursor: pointer;
  overflow: hidden;
}
.form1 * {
  top: -12px;
  opacity: 0;
}
.form1::before,
.form1::after {
  content: '';
  display: inline-block;
  position: absolute;
  
  width: 10px;
  height: 0px;
  opacity: 1;
  left: 10px;
  z-index: 100;
  -webkit-transition: all 0.1s linear;
  transition: all 0.1s linear;
  -webkit-transform: scale(0.9999, 0.9999);
  transform: scale(0.9999, 0.9999);
}
.form1::before {
  top: 15px;
  -webkit-transform: perspective(1000) rotateX(0deg);
          transform: perspective(1000) rotateX(0deg);
  -webkit-transform-origin: 50% 0;
          transform-origin: 50% 0;
  border-top: 11px solid #fff;
  border-right: 16px solid transparent;
  border-bottom: 11px solid transparent;
  border-left: 16px solid transparent;
}
.form1::after {
  top: 17px;
  border-top: 11px solid transparent;
  border-right: 16px solid #fff;
  border-bottom: 11px solid #fff;
  border-left: 16px solid #fff;
}
.form1:hover::before {
  -webkit-transform: perspective(1000) rotateX(180deg);
          transform: perspective(1000) rotateX(180deg);
  -webkit-transform-origin: 50% 0;
          transform-origin: 50% 0;
}
/* ok mes */
.ok_message1 {
  position: absolute;
  left: 50%;
  top: 50%;
  margin-left: -32px;
  margin-top: -32px;
  width: 64px;
  height: 64px;
  background: #ccffff;
  border:none;
  border-radius: 30px;
  z-index: 100;
  -webkit-transform: scale(0, 0) rotate(-90deg);
  transform: scale(0, 0) rotate(-90deg);
  -webkit-transition: all 0.5s 0.3s cubic-bezier(0.9, 0.1, 0.1, 0.9);
  transition: all 0.5s 0.3s cubic-bezier(0.9, 0.1, 0.1, 0.9);
  line-height: 64px;
  text-align: center;
  cursor: pointer;
}
.ok_message1 span {
 
  font-size: 20px;
  color: silver;
  opacity: 0;
  -webkit-transform: scale(0.2, 0.2);
  transform: scale(0.2, 0.2);
  -webkit-transition: all 0.6s 0.4s ease;
  transition: all 0.6s 0.4s ease;
}
.ok_message1.active1 {
  width: 320px;
  margin-left: -160px;
  -webkit-transform: scale(1, 1) rotate(0deg);
  transform: scale(1, 1) rotate(0deg);
}
.ok_message1.active1 span {
  opacity: 1;
  -webkit-transform: scale(1, 1);
  transform: scale(1, 1);
  left: 0px;
}
@-webkit-keyframes openForm1 {
  0% {
    width: 64px;
    height: 64px;
  }
  50% {
    width: 320px;
    height: 64px;
  }
  100% {
    width: 320px;
    height: 380px;
  }
}
@keyframes openForm1 {
  0% {
    width: 64px;
    height: 64px;
  }
  50% {
    width: 320px;
    height: 64px;
  }
  100% {
    width: 320px;
    height: 380px;
  }
}
   
    









    
    
p.qq{
    margin-left: 120px;
    
    margin-top: 40px;
    
    font-size: 80px;
    font-family: "arial rounded MT";
    color: #000066;
    
    
}
    
    p.qq2{
    margin-left:-650px;
   padding-right: 110px;
    font-size: 80px;
    font-family: "arial rounded MT";
    color: #000066;
    
    
}
    
    
    
    
    
    
    
    
    
    
    
    
*{
margin: 0px;
box-sizing: border-box;
position: relative;
}

.headermenu{
height: 70px;
border-bottom: 2px;
width:1200px;
box-shadow: 2px 4px 5px white;

}

	
span.k1
{
font-size: 65px;
color: #000066;

margin-left: 1%;
font-weight: bold;

font-family:"arial rounded MT";
text-shadow: 2px 2px 2px silver;
}

span.k2
{
font-size: 50px;
color: #00cccc;
height: 800px;
font-weight: bold;
font-family:"arial rounded MT";
text-shadow: 2px 2px 2px silver;
}
span.k3
{
font-size: 65px;
color:#000066;
font-weight: bold;
font-family:"arial rounded MT";
text-shadow: 2px 2px 2px silver;
}
span.k4
{
font-size: 50px;
color:   #00cccc;
font-weight: bold;
font-family:"arial rounded MT";
text-shadow: 2px 2px 2px silver;
}
span.k5
{
font-size: 50px;
color: #00cccc;
font-weight: bold;
font-family:"arial rounded MT";
text-shadow: 2px 2px 2px silver;
}
span.k6
{
font-size: 50px;
color: #00cccc;
font-weight: bold;
font-family:"arial rounded MT";
text-shadow: 2px 2px 2px silver;
}




img#logo1{
   
width:80px;
    
 height: 85px;
}


div.bnn2 {
    padding:30px;
    width:500px;
   
     margin-left: 520px;
     margin-top: 80px;
    background: transparent;
   
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: horizontal;
  -webkit-box-direction: normal;
      -ms-flex-direction: row;
          flex-direction: row;
  -ms-flex-wrap: wrap;
      flex-wrap: wrap;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  -ms-flex-line-pack: center;
      align-content: center;


}
/* Form opened styles */
.form2.active2 {
  padding: 24px;
  background:transparent;
  border:1px solid silver;
  border-radius: 20px;
  box-shadow: 20px 30px 50px -10px silver;
  overflow: hidden;
  width: 500px;
  cursor:auto;
  height: 800px;
  -webkit-animation: openForm2 1.4s;
  -webkit-animation-timing-function: cubic-bezier(0.9, 0.1, 0.1, 0.9);
  animation: openForm2 1.4s;
  animation-timing-function: cubic-bezier(0.9, 0.1, 0.1, 0.9);
}
.form2.active2 * {
  top: 0;
  opacity: 1;
}
.form2.active2::after,
.form2.active2::before {
  opacity: 0;
}
.submit2 {
     top: 0;
  opacity: 1;
  width: 70px;
  height: 30px;
  
  text-align: center;
  margin: 30px 4px 0 auto;
  background: transparent;
  cursor: pointer;
 
  border-radius: 10px;
  color: goldenrod;
  font-size: 20px;
  box-shadow: 0px 6px 5px -4px silver, 0px 1px 0px b inset, 0px 0px 0px black inset;
  -webkit-transition: all 1.1s 1s ease;
  transition: all 1.1s 1s ease;
   
}
input {
  top: 0;
  display: block;
  width: 70%;
  border: transparent;
  padding: 10px;
  background: #fefefe;
  margin-top:60px;
  font-style: italic;
  border: 2px solid #bbb;
}
input {
  top: 0; 
  border-top: none;
 
  border-radius: 5px;
}
input:nth-child(1) {
  -webkit-transition: all 0.5s 1s ease;
  transition: all 0.5s 1s ease;
}
input:nth-child(2) {
  -webkit-transition: all 0.7s 1s ease;
  transition: all 0.7s 1s ease;
}

/* Form closed styles */
.form2 {
  width: 320px;
  height: 62px;
  background: #000066;
  border: 4px solid #00cccc;
  border-radius: 10px;
 width: 250px;
  box-shadow: 0px 10px 20px -5px rgba(0,0,0,0.3);
  cursor: pointer;
  overflow: hidden;
}
.form2 * {
  top: -12px;
  opacity: 0;
}
.form2::before,
.form2::after {
  content: '';
  display: inline-block;
  position: absolute;
  
  width: 10px;
  height: 0px;
  opacity: 1;
  left: 10px;
  z-index: 100;
  -webkit-transition: all 0.1s linear;
  transition: all 0.1s linear;
  -webkit-transform: scale(0.9999, 0.9999);
  transform: scale(0.9999, 0.9999);
}
.form2::before {
  top: 15px;
  -webkit-transform: perspective(1000) rotateX(0deg);
          transform: perspective(1000) rotateX(0deg);
  -webkit-transform-origin: 50% 0;
          transform-origin: 50% 0;
  border-top: 11px solid #fff;
  border-right: 16px solid transparent;
  border-bottom: 11px solid transparent;
  border-left: 16px solid transparent;
}
.form2::after {
  top: 17px;
  border-top: 11px solid transparent;
  border-right: 16px solid #fff;
  border-bottom: 11px solid #fff;
  border-left: 16px solid #fff;
}
.form2:hover::before {
  -webkit-transform: perspective(1000) rotateX(180deg);
          transform: perspective(1000) rotateX(180deg);
  -webkit-transform-origin: 50% 0;
          transform-origin: 50% 0;
}
/* ok mes */
.ok_message2 {
  position: absolute;
  left: 50%;
  top: 50%;
  margin-left: -32px;
  margin-top: -32px;
  width: 64px;
  height: 64px;
  background: #ccffff;
  border:none;
  border-radius: 30px;
  z-index: 100;
  -webkit-transform: scale(0, 0) rotate(-90deg);
  transform: scale(0, 0) rotate(-90deg);
  -webkit-transition: all 0.5s 0.3s cubic-bezier(0.9, 0.1, 0.1, 0.9);
  transition: all 0.5s 0.3s cubic-bezier(0.9, 0.1, 0.1, 0.9);
  line-height: 64px;
  text-align: center;
  cursor: pointer;
}
.ok_message2 span {
 
  font-size: 20px;
  color: silver;
  opacity: 0;
  -webkit-transform: scale(0.2, 0.2);
  transform: scale(0.2, 0.2);
  -webkit-transition: all 0.6s 0.4s ease;
  transition: all 0.6s 0.4s ease;
}
.ok_message2.active2 {
  width: 320px;
  margin-left: -160px;
  -webkit-transform: scale(1, 1) rotate(0deg);
  transform: scale(1, 1) rotate(0deg);
}
.ok_message2.active2 span {
  opacity: 1;
  -webkit-transform: scale(1, 1);
  transform: scale(1, 1);
  left: 0px;
}
@-webkit-keyframes openForm2 {
  0% {
    width: 64px;
    height: 64px;
  }
  50% {
    width: 320px;
    height: 64px;
  }
  100% {
    width: 320px;
    height: 380px;
  }
}
@keyframes openForm2 {
  0% {
    width: 64px;
    height: 64px;
  }
  50% {
    width: 320px;
    height: 64px;
  }
  100% {
    width: 320px;
    height: 380px;
  }
}
   
    
.button1{
    background:#000066;
    color:silver;
    border:none;
    border-radius: 10px;
    width:150px;
    height:40px;
    margin-left: 120px;
    font-size: 20px;
    
}

.button2{
    background:#000066;
    color:silver;
    border:none;
    border-radius: 10px;
    width:150px;
    height:40px;
    margin-left: 120px;
    font-size: 20px;
    
}





</style>

</head>
<body> 
   
    
    


    
    
    
<header class="headermenu">
<span class="k1">M</span>
<span class="k2" style="margin-left:-7px;">y</span>
<span class="k3" style="margin-left:-7px;">S</span>
<span class="k4" style="margin-left:-7px;">l</span>
<span class="k5" style="margin-left:-7px;">a</span>
<span class="k6" style="margin-left:-7px;">m</span>
</header>
 
<img id="logo1"  style="margin-left: 197px; margin-top: -88px;" src="z_1.png"/>
  
    <div class="line"></div><hr/><hr/><hr/><hr/>
<hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/>
<br/><br/>
<p class="qq">Login</p>


<br/>

<div class="bnn1">

<div class="form1">
  <div class="mail1"></div>
 
  <form action ="Check_login" method="post">
    <input type="email" required name="name1" placeholder="Email address"/>
    
    <input type="password" required name="password1" placeholder="Password"/>
   <br/><br/><br/> <button class="button1" type="submit">Login</button>
    <div class="submit1">close</div>
    
  </form>
</div>

<div class="ok_message1">
<span>Click here!</span>
</div>
</div>


<br/>
<br/><br/><br/>
   <hr style="opacity:0.5; margin-left: 60px;margin-right: 60px;"/> 

   
   <div class="bnn2">
<p class="qq2">Log Up</p>
<div class="form2">
  <div class="mail2"></div>
 
  
    
    
    
    <form action="second.jsp"  onsubmit= "return valid()" method="post"  name="f1">
        <table>
            <tr><td><p style="font-size:30px; font-family:monotype corsiva;">Let's make MySlam account.</p></td></tr>       
            <tr><td>

<input type="text" style="width:190px;" placeholder="First name" name="names"/>
                </td><td></td><td></td><td>
<input type="text" style="width:190px;"  placeholder="Surname" name="s_1"/>
                </td></tr><tr><td></table>
        <input type ="email"  style="width:400px;" placeholder="email address" name="e_1" onkeyup="check(this.value);"/><br/>
        <span id="mylocation"></span>
<table><tr><td>
            <input type="radio" name="c1" value="2" id="u_0_i"/><label style="font-size: 20px;" for="u_0_i"><b><i>Female</i></b></label></td><td></td><td></td><td></td><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td><td>
            <input type="radio" value="2" name="c1" id="u_1_i"/><label  style="font-size: 20px;" for="u_1_i"><b><i>Male</i></b></label></td></tr>
</table>
<input type="password" style="width:400px;" placeholder="Your Password" name="p_1"/>
<br/><br/>
<b style="font-size: 20px;"><i>Birthday</i></b>
<br/><br/>
<select name="birthday_day" title="Day"><option value="0" >Day</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option></select>
&nbsp&nbsp<select aria-label="Month" name="birthday_month" id="month" title="Month" class="_5dba"><option value="0" selected="1">Month</option><option value="1">Jan</option><option value="2">Feb</option><option value="3">Mar</option><option value="4">Apr</option><option value="5">May</option><option value="6">Jun</option><option value="7">Jul</option><option value="8">Aug</option><option value="9">Sept</option><option value="10">Oct</option><option value="11">Nov</option><option value="12">Dec</option>
</select>&nbsp&nbsp&nbsp<select aria-label="Year" name="birthday_year" id="year" title="Year" class="_5dba"><option value="0" selected="1">Year</option><option value="2017">2017</option><option value="2016">2016</option><option value="2015">2015</option><option value="2014">2014</option><option value="2013">2013</option><option value="2012">2012</option><option value="2011">2011</option><option value="2010">2010</option><option value="2009">2009</option><option value="2008">2008</option><option value="2007">2007</option><option value="2006">2006</option><option value="2005">2005</option><option value="2004">2004</option><option value="2003">2003</option><option value="2002">2002</option><option value="2001">2001</option><option value="2000">2000</option><option value="1999">1999</option><option value="1998">1998</option><option value="1997">1997</option><option value="1996">1996</option><option value="1995">1995</option><option value="1994">1994</option><option value="1993">1993</option><option value="1992">1992</option><option value="1991">1991</option><option value="1990">1990</option><option value="1989">1989</option><option value="1988">1988</option><option value="1987">1987</option><option value="1986">1986</option><option value="1985">1985</option><option value="1984">1984</option><option value="1983">1983</option><option value="1982">1982</option><option value="1981">1981</option><option value="1980">1980</option><option value="1979">1979</option><option value="1978">1978</option><option value="1977">1977</option><option value="1976">1976</option><option value="1975">1975</option><option value="1974">1974</option><option value="1973">1973</option><option value="1972">1972</option><option value="1971">1971</option><option value="1970">1970</option><option value="1969">1969</option><option value="1968">1968</option><option value="1967">1967</option><option value="1966">1966</option><option value="1965">1965</option><option value="1964">1964</option><option value="1963">1963</option><option value="1962">1962</option><option value="1961">1961</option><option value="1960">1960</option><option value="1959">1959</option><option value="1958">1958</option><option value="1957">1957</option><option value="1956">1956</option><option value="1955">1955</option><option value="1954">1954</option><option value="1953">1953</option><option value="1952">1952</option><option value="1951">1951</option><option value="1950">1950</option><option value="1949">1949</option><option value="1948">1948</option><option value="1947">1947</option><option value="1946">1946</option><option value="1945">1945</option><option value="1944">1944</option><option value="1943">1943</option><option value="1942">1942</option><option value="1941">1941</option><option value="1940">1940</option><option value="1939">1939</option><option value="1938">1938</option><option value="1937">1937</option><option value="1936">1936</option><option value="1935">1935</option><option value="1934">1934</option><option value="1933">1933</option><option value="1932">1932</option><option value="1931">1931</option><option value="1930">1930</option><option value="1929">1929</option><option value="1928">1928</option><option value="1927">1927</option><option value="1926">1926</option><option value="1925">1925</option><option value="1924">1924</option><option value="1923">1923</option><option value="1922">1922</option><option value="1921">1921</option><option value="1920">1920</option><option value="1919">1919</option><option value="1918">1918</option><option value="1917">1917</option><option value="1916">1916</option><option value="1915">1915</option><option value="1914">1914</option><option value="1913">1913</option><option value="1912">1912</option><option value="1911">1911</option><option value="1910">1910</option><option value="1909">1909</option><option value="1908">1908</option><option value="1907">1907</option><option value="1906">1906</option><option value="1905">1905</option></select>
 

<br/><br/><br/> <button class="button2" type="submit">Create Account</button>
    <div class="submit2">close</div>


  </form>
</div>

<div class="ok_message2">
<span>Click here!</span>
</div>
</div>

   <script>

function valid()
{
var h = document.f1.names.value;
if(h.length=="")
{
alert("What's your name");
document.f1.names.focus();
return false;
}

var c=0;
for(i=0;i<h.length; i++)
{

var ch= h.charCodeAt(i);

if((ch>=65&&ch>=90)||(ch>=97&&ch>=122))
c++;
}
if(c!=h.length)
{
alert("Name contains only letter and special charaters(!,@,#,&,*,$,^)");

document.f1.n_1.focus();
return false;
}

var s = document.f1.s_1.value;
if(s.length=="")
{
alert("What's your Surname");
document.f1.s_1.focus();
return false;
}

var c=0;
for(i=0;i<s.length; i++)
{

var ch= s.charCodeAt(i);

if((ch>=65&&ch>=90)||(ch>=97&&ch>=122))
c++;
}
if(c!=s.length)
{
alert("Your Surname contains only letter and special charaters(!,@,#,&,*,$,^)");

document.f1.s_1.focus();
return false;
}




var b = document.f1.p_1.value;
if(b.length<1)
{
    alert("hey, enter your Password");
    document.f1.p_1.focus();
    return false;
  
}
if(b.length<7)
{
    alert("Your Password contains atleast 7 character");
    document.f1.p_1.focus();
    return false;
    
}



var em= document.f1.e_1.value;
if(em.length<1)
 {
alert("Hey, enter your Email");
document.f1.e_1.focus();
return false;
}

var r2= "/[a-zA-Z0-9_-.+]+@[a-zA-Z0-9-]+.[a-zA-Z]+/";
if(!em.match(r2))
{
    alert("enter valid email");
            document.f1.e_1.focus();
            return false;
}


return true;
}

</script>




<script src="jq.js"></script>

<script>
    
    $(document).ready(function()
    {
    $(".form1").on('click', function(){
  $(this).addClass('active1');
});

$(".submit1").on('click', function() {
  $(this).parent().parent().hide(300);
  $(".ok_message1").addClass("active1");
});

$(".ok_message1").on('click', function() {
  $(this).removeClass("active1");
  $(".form1").removeClass("active1").show();
});
  
    
    });
</script>




<script>
    
    $(document).ready(function()
    {
    $(".form2").on('click', function(){
  $(this).addClass('active2');
});

$(".submit2").on('click', function() {
  $(this).parent().parent().hide(300);
  $(".ok_message2").addClass("active2");
});

$(".ok_message2").on('click', function() {
  $(this).removeClass("active2");
  $(".form2").removeClass("active2").show();
});
    });
</script>

<%@ page import="java.sql.*" %>   
<%@ page import="javax.servlet.http.*"%>
<%@ page import="java.io.*"%>
<%@ page import="javax.servlet.RequestDispatcher"%>
<%@ page import="javax.servlet.ServletRequest"%>

    
<%
   try
        {
            response.setContentType("text/html");
            
            
            String a=request.getParameter("names");
           String b=request.getParameter("s_1");
            String c=request.getParameter("e_1");
               String e=request.getParameter("p_1");
            String d=request.getParameter("c1");
         String f=request.getParameter("birthday_day"+"-")+request.getParameter("birthday_month"+"-")+request.getParameter("birthday_year"+"-");
        
            PrintWriter pw=response.getWriter();
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
           PreparedStatement pst=con.prepareStatement("insert into myslam values(?,?,?,?,?,?)");
           pst.setString(1,a);
           pst.setString(2,b);
            pst.setString(3,c);
             pst.setString(4,d);
              pst.setString(5,e);
               pst.setString(6,f);
              
               
           
           int u=pst.executeUpdate();
           if(u>0)
               
           {
          
     HttpSession ob=request.getSession();
     ob.setAttribute("na",a);
     ob.setAttribute("em123",c);
     response.sendRedirect("uploadimage.html");
 
               
       
           }
        }
          catch(Exception ett)
                  {
                 try{
                     PrintWriter pw=response.getWriter();
                     pw.print(ett);
                 }
                 catch(Exception ob)
                 {
                 
        }
  }
%>

 <script>
       
      var z; 
       function disp()
       {
    
           var em = document.f1.e_1.value;
           
           if(window.XMLHttpRequest)
           
                z = new XMLHttpRequest();
            else
               
               z = ActiveXObject("Microsoft.XMLHTTP")
         
z.open("GET","check.jsp?n="+em,true);
               z.send();
              
               z.onreadystatechange = function()
               {
if(z.readyState==4)
{

document.getElementById("r").innerHTML = z.responseText;
       }

}
}
</script>
</body>
</html>