<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Corona</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="resources/css/cs.css">
    <script src='https://api.mapbox.com/mapbox-gl-js/v2.1.1/mapbox-gl.js'></script>
    <link href='https://api.mapbox.com/mapbox-gl-js/v2.1.1/mapbox-gl.css' rel='stylesheet' />
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Hind+Siliguri&display=swap" rel="stylesheet">
</head>

<body>
    <nav id="navbar">
        <div id="logo">
            <img src="resources/img/logo2.png" alt="">
        </div>
        <ul>
             <li class="item"><a href="hello">Home</a></li>
            <li class="item"><a href="view">Need Resources</a></li>
            <li class="item"><a href="resource">Resources</a></li>
            <li class="item"><a href="home">Donation</a></li>
            <li class="item"><a href="admin">Admin</a></li>
        </ul>
    </nav>
    <br>
    <br><br>
    <br>
    <div class="cases">
        <div class="row">
            <div class="confirm">
                <h3>Confirmed</h3>
                <h1 id="confirmed"></h1>
            </div>
            <div class="active">
                <h3>Active</h3>
                <h1 id="activated"></h1>
            </div>
            <div class="recover">
                <h3>Recovered</h3>
                <h1 id="recovered"></h1>
            </div>
            <div class="death">
                <h3>Deceased</h3>
                <h1 id="deceased"></h1>
            </div>
        </div>
    </div>
 
    <div class="svgf">
        <div class="para">
                 Coronavirus disease (COVID-19) is an infectious disease caused by a newly discovered
                coronavirus.

                Most people infected with the COVID-19 virus will experience mild to moderate respiratory illness and
                recover without requiring special treatment. Older people, and those with underlying medical problems
                like cardiovascular disease, diabetes, chronic respiratory disease, and cancer are more likely to
                develop serious illness.

                The best way to prevent and slow down transmission is to be well informed about the COVID-19 virus, the
                disease it causes and how it spreads. Protect yourself and others from infection by washing your hands
                or using an alcohol based rub frequently and not touching your face. 

                    <div>
                   <button class="btn"><span><a href="home">Help!</a></span></button>
                </div>
        </div>
        <!-- <div class="insvg"> -->
            <!-- <p>jcdihuihcuiiuyfdgyfudgyuyufd</p> -->
            <?xml version="1.0" ?><svg id="mysvg" style="enable-background:new 0 0 64 64;" version="1.1"
                viewBox="0 0 70 70" xml:space="preserve" xmlns="http://www.w3.org/2000/svg"
                xmlns:xlink="http://www.w3.org/1999/xlink">
                <circle class="c1" cx="32" cy="32" r="21" style="fill:#4d2aac;" />
                <circle class="c2" cx="32" cy="32" r="19" style="fill:#9679e4;" />
                <rect height="8" class="c6" style="fill:#3A4249;" width="2" x="31" y="7" />
                <rect height="8.001" class="c7" style="fill:#3A4249;"
                    transform="matrix(0.9136 -0.4067 0.4067 0.9136 -3.1842 10.6484)" width="2" x="22.458" y="8.815" />
                <rect class="c8" height="8.001" style="fill:#3A4249;"
                    transform="matrix(0.809 -0.5879 0.5879 0.809 -5.069 14.4225)" width="2" x="18.656" y="11.01" />
                <rect height="8" class="c9" style="fill:#3A4249;"
                    transform="matrix(0.5 -0.866 0.866 0.5 -11.7129 22.7126)" width="2" x="12.813" y="17.5" />
                <rect class="c10" height="8.001" style="fill:#3A4249;"
                    transform="matrix(0.1045 -0.9945 0.9945 0.1045 -19.6886 37.745)" width="2" x="10.115" y="25.805" />
                <rect height="2" class="c11" style="fill:#3A4249;"
                    transform="matrix(0.9945 -0.1045 0.1045 0.9945 -3.5119 1.3484)" width="8.001" x="7.114"
                    y="33.195" />
                <rect height="2" class="c12" style="fill:#3A4249;"
                    transform="matrix(0.8661 -0.4999 0.4999 0.8661 -19.3966 12.5975)" width="8" x="9.813" y="41.5" />
                <rect height="2" class="c13" style="fill:#3A4249;"
                    transform="matrix(0.5878 -0.809 0.809 0.5878 -31.5301 36.094)" width="8.001" x="15.656"
                    y="47.989" />
                <rect height="2" class="c14" style="fill:#3A4249;"
                    transform="matrix(0.4067 -0.9135 0.9135 0.4067 -32.8426 51.7971)" width="8.001" x="19.458"
                    y="50.185" />
                <rect height="8" class="c15" style="fill:#3A4249;" width="2" x="31" y="49" />
                <rect height="8.001" class="c16" style="fill:#3A4249;"
                    transform="matrix(0.9136 -0.4067 0.4067 0.9136 -17.3127 20.9128)" width="2" x="39.541" y="47.184" />
                <rect height="8.001" class="c17" style="fill:#3A4249;"
                    transform="matrix(0.809 -0.5879 0.5879 0.809 -20.3275 35.4261)" width="2" x="43.344" y="44.989" />
                <rect height="8" class="c18" style="fill:#3A4249;"
                    transform="matrix(0.5 -0.866 0.866 0.5 -11.7127 64.7131)" width="2" x="49.187" y="38.5" />
                <rect height="8.001" class="c19" style="fill:#3A4249;"
                    transform="matrix(0.1045 -0.9945 0.9945 0.1045 13.3521 83.2179)" width="2" x="51.885" y="30.194" />
                <rect height="2" class="c20" style="fill:#3A4249;"
                    transform="matrix(0.9945 -0.1045 0.1045 0.9945 -2.8246 5.6887)" width="8.001" x="48.885"
                    y="28.805" />
                <rect height="2" class="c21" style="fill:#3A4249;"
                    transform="matrix(0.8661 -0.4999 0.4999 0.8661 -4.0268 27.9688)" width="8" x="46.187" y="20.5" />
                <rect height="2" class="c22" style="fill:#3A4249;"
                    transform="matrix(0.5878 -0.809 0.809 0.5878 6.1341 42.0606)" width="8.001" x="40.343" y="14.01" />
                <rect height="2" class="c23" style="fill:#3A4249;"
                    transform="matrix(0.4067 -0.9135 0.9135 0.4067 12.3449 44.6396)" width="8.001" x="36.541"
                    y="11.815" />
                <path class="c3"
                    d="M44,32c-0.382,0-0.747-0.22-0.913-0.591c-0.473-1.056,0.258-2.017,0.792-2.719  c0.205-0.269,0.63-0.83,0.616-1.015c-0.136-0.034-0.78,0.154-1.123,0.253c-0.832,0.24-1.97,0.566-2.728-0.26  c-0.766-0.738-0.416-1.836-0.134-2.72c0.088-0.274,0.238-0.744,0.256-1.001c-0.19,0.111-0.596,0.43-0.83,0.613  c-0.724,0.568-1.626,1.273-2.621,0.787c-0.98-0.414-1.021-1.564-1.053-2.489c-0.009-0.268-0.025-0.716-0.083-0.972  c-0.132,0.186-0.38,0.589-0.527,0.828c-0.483,0.786-1.082,1.768-2.189,1.642c-1.058-0.059-1.484-1.126-1.827-1.984  c-0.1-0.251-0.269-0.672-0.412-0.895c-0.057,0.217-0.152,0.672-0.208,0.942c-0.189,0.905-0.424,2.032-1.514,2.283  c-1.011,0.299-1.773-0.562-2.388-1.25c-0.186-0.208-0.5-0.562-0.714-0.719c0.015,0.222,0.081,0.695,0.12,0.973  c0.128,0.917,0.289,2.06-0.648,2.676c-0.846,0.632-1.86,0.106-2.674-0.315c-0.27-0.14-0.741-0.384-0.987-0.431  c0.047,0.216,0.301,0.704,0.446,0.98c0.43,0.823,0.964,1.848,0.313,2.776c-0.558,0.912-1.733,0.832-2.59,0.773  c-0.405-0.028-1.161-0.079-1.238,0.093c-0.226,0.504-0.816,0.729-1.321,0.505c-0.504-0.225-0.73-0.816-0.505-1.321  c0.646-1.448,2.244-1.339,3.201-1.273c0.207,0.014,0.485,0.033,0.687,0.028c-0.083-0.203-0.223-0.473-0.319-0.657  c-0.463-0.888-1.163-2.229-0.153-3.329c1.127-1.094,2.542-0.36,3.387,0.078c0.145,0.075,0.327,0.169,0.49,0.245  c-0.017-0.182-0.045-0.389-0.068-0.552c-0.139-0.995-0.35-2.499,0.978-3.151c1.406-0.601,2.42,0.536,3.09,1.288  c0.1,0.112,0.225,0.252,0.343,0.375c0.04-0.162,0.078-0.342,0.108-0.487c0.193-0.923,0.516-2.469,1.982-2.63  c1.509-0.095,2.081,1.317,2.453,2.25c0.054,0.136,0.122,0.305,0.189,0.457c0.093-0.139,0.188-0.295,0.266-0.421  c0.527-0.856,1.327-2.147,2.755-1.818c1.469,0.419,1.524,1.998,1.557,2.941c0.005,0.153,0.012,0.344,0.025,0.516  c0.141-0.102,0.293-0.221,0.415-0.317c0.796-0.624,1.999-1.567,3.243-0.748c1.238,0.915,0.777,2.36,0.472,3.317  c-0.058,0.179-0.132,0.412-0.18,0.605c0.187-0.042,0.41-0.106,0.583-0.156c0.917-0.264,2.454-0.707,3.339,0.56  c0.829,1.339-0.083,2.54-0.687,3.334c-0.174,0.229-0.457,0.601-0.523,0.782c0.163,0.482-0.065,1.019-0.539,1.231  C44.276,31.972,44.137,32,44,32z"
                    style="fill:#F2DAAE;" />
                <circle class="p0" cx="32" cy="5" r="3" style="fill:#62C4C3;" />
                <circle class="p1" cx="8.617" cy="18.5" r="3" style="fill:#62C4C3;" />
                <path class="p2"
                    d="M7.117,42.902C5.683,43.73,5.191,45.566,6.019,47s2.664,1.926,4.098,1.098  c1.434-0.828,1.926-2.664,1.098-4.098S8.551,42.074,7.117,42.902z"
                    style="fill:#62C4C3;" />
                <circle class="p3" cx="32" cy="59" r="3" style="fill:#62C4C3;" />
                <path class="p4"
                    d="M56.883,42.902c-1.434-0.828-3.27-0.336-4.098,1.098s-0.336,3.27,1.098,4.098  c1.434,0.828,3.27,0.336,4.098-1.098S58.317,43.73,56.883,42.902z"
                    style="fill:#62C4C3;" />
                <circle class="p5" cx="55.383" cy="18.5" r="3" style="fill:#62C4C3;" />
            </svg>
        <!-- </div> -->
    </div>
    <!-- <div id='map' style='width: 400px; height: 300px;'></div>
<script>
mapboxgl.accessToken = 'pk.eyJ1IjoiaXNoYWFuMDA3NyIsImEiOiJja29rZm5saDgwMDhlMm9uM2VnZnp6eTh1In0.1aCyjd_mgTpRdOE2olZJng';
var map = new mapboxgl.Map({
container: 'map',
style: 'mapbox://styles/ishaan0077/ckokiifxb2eby18pl56foshhu'
// style: 'mapbox://styles/mapbox/streets-v11'

});
</script> -->

</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"
    integrity="sha512-d8F1J2kyiRowBB/8/pAWsqUl0wSEOkG5KATkVV4slfblq9VRQ6MyDZVxWl2tWd+mPhuCbpTB4M7uU/x9FlgQ9Q=="
    crossorigin="anonymous"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/noframework.waypoints.min.js"
    integrity="sha512-fHXRw0CXruAoINU11+hgqYvY/PcsOWzmj0QmcSOtjlJcqITbPyypc8cYpidjPurWpCnlB8VKfRwx6PIpASCUkQ=="
    crossorigin="anonymous"></script>
<script src="resources/js/script.js"></script>

</html>