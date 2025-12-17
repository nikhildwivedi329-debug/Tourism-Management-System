<%@page import="java.util.*"%>
<%
String state = request.getParameter("state");

HashMap<String, List<String>> places = new HashMap<>();

places.put("Uttarakhand", Arrays.asList("Kedarnath", "Badrinath", "Haridwar", "Rishikesh", "Uttarkashi", "Rudrapur", "Mussoorie", "Nainital", "Auli", "Mana Village", "Ranikhet", "Haldwani", "Roorkee", "Dehradun"));
places.put("Maharashtra", Arrays.asList("Mahableshwar", "Bhimashankar", "Mumbai", "Lonavala", "Diveagar", "Pune", "Matheran", "Nashik", "Karjat", "Lavasa", "Marine Drive"));
places.put("Tamil Nadu", Arrays.asList("Rameshwaram", "Ooty", "Madurai", "Srirangam", "kanchipuram", "Vellore", "Mahabalipuram", "chennai", "kanyakumari", "Coimbatore"));
places.put("Gujarat", Arrays.asList("Somnath temple", "Dwarka ", "Nageshwar" , "Gir Forest", "Rann of Kutch", "Saputara", "Laxmi Vilas Palace", "Junagadh", "Kankaria Lake", "Jhulta Minar", "Ahemdabad", "Statue Of Unity"));
places.put("Madhya Pradesh", Arrays.asList("Mahakaleshwar Jyotirlinga", "Omkareshwar Jyotirlinga", "Khajuraho Group of Monuments", "Kanha National Park", "Pachmarhi", "Gwalior Fort", "Sanchi Stupa", "Bhedaghat", "Khandwa", "Bandhavgarh National Park", "Jai Vilas Palace", "Bhimbetka rock shelters", ""));
places.put("Rajasthan", Arrays.asList("Jaipur", "Udaipur", "Chittorgarh", "Puskar", "Ranthambore", "Jaisalmer", "Jodhpur", "Mount Abu", "Bikaner"));
places.put("Himachal Pradesh", Arrays.asList("Manali", "Shimla", "Chamba", "Palampur", "Dharmshala", "Dalhousie", "Kasol", "Sundar Nagar", "Spiti valley", ""));
places.put("Punjab", Arrays.asList("Amritsar", "Chandigarh", "Partition Museum", "Wagah Border", "Sheesh Mahal", "Akal Takht", " Gobindgarh Fort", "Durgiana Temple", "", ""));
places.put("Bangal", Arrays.asList("Sundarbans", "Darjeeling", "kolkata", "Shantiniketan", "Digha", "Siliguri", "Kalimpong", "Dooars", "Bishnupur (West Bengal)", "Kangchenjunga", "", ""));
places.put("Jharkhand", Arrays.asList("Deoghar", "Netarhat", "Baidyanath Temple", "Hundru Falls", "Patratu Valley", "Ranchi", "Jamshedpur", "Parasnath Hill", "Betla National Park", "Maithon Dam"));
places.put("Karnatak", Arrays.asList("Bengaluru", "Mysore", "Coorg", "Hampy", "Badami", "Udupi"));
places.put("Kerala", Arrays.asList("Jatayu", "Bekal Fort", "Kollam", "kovalam", "Varkala", "Kumarakom", "Kochi", "Wayanad", "Thekkady", "Alleppey", "Munnar"));
places.put("Uttar Pradesh", Arrays.asList("Vrindavan", "Kashi Vishwanath", "Jhansi", "Chitrakoot", "Prayagraj", "Ayodhya", "Sarnath", "Mathura", "Dudheshwar Nath", "Devi Patan", "Hanumat Dham", "Bhitargaon Temple"));
places.put("Assam", Arrays.asList("Guwahati", "Jorhat", "Kamakhya Temple", "Kakochang Water Fall", "Chandubi Lake", "Kaziranga National Park", "Brahmaputra River", "Majuli"));
places.put("Sikkim", Arrays.asList("Gangtok", "Nathula Pass", "Sky Walk Pelling", "Kanchenjunga Falls", "Ravangla", "Lachung", "Tsomgo Lake"));
places.put("Telangana", Arrays.asList(" Golconda Fort", "Rudreshwara Temple", "Birla Mandir", "Ramoji Film City", "Ananthagiri Hills", "Warangal"));
places.put("Goa", Arrays.asList("Shree Mangueshi Temple", "Chapora fort", "Dudhsagar Water Falls", "Arambol", " Baga beach", "Anjuna Beach", "Candolim Beach"));
places.put("Haryana", Arrays.asList("Kurukshetra", "Bhima Devi Temple", "Panipat", "Gurugram", "Morni Hills", "Damdama Lake", "Pataudi Palace", "Pinjore Garden", "Narnaul"));
places.put("Arunachal Pradesh", Arrays.asList("Tawang Buddhist Monastery", "Bumla Pass", "Bhalukpong", "Zoro Valley", "Madhuri Lake", "Itanagar", "Dirang"));
places.put("Chhattisgarh", Arrays.asList("Chitrakote Falls", "Teerathagarh waterfalls", "Mainpat", "National park", "Raipur", "Jagdalpur", "Bastar", "Sirpur", "Kanger Valley National Park"));
places.put("Mizoram", Arrays.asList("Vaipuanpho Falls", "Champhai", "Phawngpui", "Tam Dil", "Palak Lake", "Serchhip", "Reiek", "Aizwal"));
places.put("Manipur", Arrays.asList("Loktak Lake", "Imphal", "Manipur State Museum", "Kangla Fort", "Moirang", "Andro Village", "Thoubal", "Keibul Lamjao National park", "Tonglon Caves"));
places.put("Meghalaya", Arrays.asList("Nartiang Durga Temple", "Nohkalikai Falls", "Mahadev Khola Dham", "Matri Mandir", "Barapathar Shiv Temple", "Umiam Lake", "Living Root Bridges", "Mawlynnong", "Shillong", "Mawsmai", "Dawki River"));
places.put("Bihar", Arrays.asList("Nalanda University", "Bodh Gaya", "Kesaria Stupa", "Patna", "Vaishali", "Bhagalpur", "purnia", "Buxar", "Sasaram"));
places.put("Nagaland", Arrays.asList("Dzukou Velly", "Kohima", "Mokochung", "Kisama Heritage Village", "Wokha", "Phek"));
places.put("Andhra Pradesh", Arrays.asList("Tirupati", "Vizag", "Amravati", "Araku valley", "Gandikota", "Srisailam", "Vijaywada ", "Horsley hills", "Mypadu beach", "Mallikarjuna"));
places.put("Odisha", Arrays.asList("Jagannath Temple, Puri", "Konark Sun Temple", "Bhubaneswar", "Chilika Lake", "Simlipal National Park", "Gopalpur Beach", "Dhauli Shanti Stupa", "Gundicha Temple", "Goldan Beach", "Sudarshan Crafts Musium", "Alarnatha Mandira", "Swargadwara"));
places.put("Tripura", Arrays.asList("Ujjayanta Palace", "Neermahal Palace", "Unakoti", "Tripura Government Museum", "Agartala", "Jampui Hills", "Dhalai district", "Sepahijala Wildlife Sanctuary"));



List<String> list = places.get(state);

HashMap<String, List<String>> bg = new HashMap<>();

bg.put("Madhya Pradesh", Arrays.asList(
    "https://www.tourism-of-india.com/blog/wp-content/uploads/2018/07/chitrakoot.jpg",
    "https://cdn.pixabay.com/photo/2020/01/21/08/09/indian-temple-4782305_1280.jpg"
));

bg.put("Uttarakhand", Arrays.asList(
    "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/30/3a/3c/mesmerizing.jpg?w=1200&h=-1&s=1",
    "https://captureatrip-cms-storage.s3.ap-south-1.amazonaws.com/Weather_in_Uttarakhand_in_June_12a9266f68.webp"
));

bg.put("Gujarat", Arrays.asList(
    "https://www.tourmyindia.com/blog//wp-content/uploads/2020/11/Akshardham-Temple-Gujarat-7.jpg",
    "https://img.freepik.com/premium-photo/famous-historical-buildings-gujarat-india-gujarat-day-celebration_1102-12190.jpg"
));

bg.put("Maharashtra", Arrays.asList(
    "https://www.fabhotels.com/blog/wp-content/uploads/2018/03/Mumbai-1.jpg",
    "https://www.holidify.com/images/bgImages/RAJMACHI.jpg"
));

bg.put("Tamil Nadu", Arrays.asList(
    "https://www.hlimg.com/images/stories/738X538/sri-lank_1501048293m.png",
    "https://www.holidify.com/images/bgImages/TUTICORIN.jpg"
));

bg.put("Rajasthan", Arrays.asList(
    "https://www.tusktravel.com/blog/wp-content/uploads/2019/10/Gadi-Sagar-Lake-Jaisalmer.jpg",
    "https://hikerwolf.com/wp-content/uploads/2021/02/istockphoto-635726330-612x612-1.jpg"
));

bg.put("Himachal Pradesh", Arrays.asList(
    "https://www.anubhavvacations.in/blog/wp-content/uploads/2024/12/top-5-tourist-places-himachal-pradesh.webp",
    "https://assets-news.housing.com/news/wp-content/uploads/2022/07/28105830/Top-10-tourist-places-to-visit-in-Himachal-Pradesh-09.jpg"
));

bg.put("Punjab", Arrays.asList(
	    "https://images.travelandleisureasia.com/wp-content/uploads/sites/3/2025/04/30202211/golden-temple-amritsar-1600x900.jpeg",
	    "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/13/3f/72/nara-forest-dam-is-just.jpg?w=1200&h=-1&s=1"
));

bg.put("Bangal", Arrays.asList(
	    "https://s7ap1.scene7.com/is/image/incredibleindia/howrah-bridge-howrah-west-bengal-city-1-hero?qlt=82&ts=1742154305591",
	    "https://s7ap1.scene7.com/is/image/incredibleindia/cubbon-park-bangalore-karnataka-hero?qlt=82&ts=1742189840078"
));

bg.put("Jharkhand", Arrays.asList(
	    "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/e2/a5/9a/jubilee-park.jpg?w=500&h=400&s=1",
	    "https://media1.thrillophilia.com/filestore/b03q8ku36po31n2dg2kmamf2065h_1589282960_Tagore_Hill.jpg?w=753&h=450&dpr=2.0"
));


bg.put("Karnatak", Arrays.asList(
	    "https://www.asparkholidays.com/uploads/45331_palaces-heaven-on-earth-1.jpg",
	    "https://www.fabhotels.com/blog/wp-content/uploads/2019/09/Hampi-1.jpg"
));

bg.put("Kerala", Arrays.asList(
	    "https://www.ekeralatourism.net/wp-content/uploads/2018/03/Alleppey.jpg",
	    "https://resources.thomascook.in/images/holidays/staticPage/ThingsToDo/trivandrum5.jpg"
));

bg.put("Uttar Pradesh", Arrays.asList(
	    "https://media2.thrillophilia.com/images/photos/000/178/561/original/1573563364_up.jpg?width=975&height=600",
	    "https://www.godigit.com/content/dam/godigit/directportal/en/contenthm/vrindavan-up.jpg"
));


bg.put("Assam", Arrays.asList(
	    "https://www.tusktravel.com/blog/wp-content/uploads/2023/05/Places-to-Visit-in-Assam-in-June.jpg",
	    "https://nexplore.org/blog/wp-content/uploads/2019/12/haflong.jpg"
));

bg.put("Sikkim", Arrays.asList(
	    "https://www.indianholiday.com/wordpress/wp-content/uploads/2025/06/Sikkim.jpg",
	    "https://www.tusktravel.com/blog/wp-content/uploads/2021/08/Handcrafted-items-from-Directorate-of-Handicrafts-Handlooms-Sikkim.jpg"
));

bg.put("Telangana", Arrays.asList(
	    "https://www.tourmyindia.com/blog//wp-content/uploads/2018/01/Warangal.jpg",
	    "https://www.fabhotels.com/blog/wp-content/uploads/2018/08/Mahabubnagar.jpg"
));

bg.put("Tripura", Arrays.asList(
	    "https://www.holidaylandmark.com/blog/wp-content/uploads/2024/08/image-564.png",
	    "https://i0.wp.com/www.tusktravel.com/blog/wp-content/uploads/2021/02/10-Best-Places-to-Visit-in-Tripura.jpg?fit=1200%2C800&ssl=1"
));

bg.put("Goa", Arrays.asList(
	    "https://media2.thrillophilia.com/images/photos/000/039/882/original/1513670399_arambol_beach.jpg?w=753&h=450&dpr=1.5",
	    "https://media1.thrillophilia.com/filestore/cpgu2im9j2oecrb5vm2vg4efz7mn_the-leela-goa-21488673-1485343339-ImageGalleryLightboxLarge.jpg?w=753&h=450&dpr=2.0"
));

bg.put("Haryana", Arrays.asList(
	    "https://www.godigit.com/content/dam/godigit/directportal/en/contenthm/karnal.jpg",
	    "https://hblimg.mmtcdn.com/content/hubble/img/destimg/mmt/activities/m_Destinatoin_img_Gurgaon_1_l_689_1034.jpg"
));

bg.put("Arunachal Pradesh", Arrays.asList(
	    "https://jetsettersush.com/wp-content/uploads/2025/05/Tawang-has-the-top-spot-in-best-places-to-visit-in-Arunachal-Pradesh.jpg",
	    "https://www.kipepeo.in/blog/wp-content/uploads/2019/07/tawang-monastery-1024x683.jpg"
));

bg.put("Chhattisgarh", Arrays.asList(
	    "https://s7ap1.scene7.com/is/image/incredibleindia/2-chitrakote-jagdalpur-city-hero?qlt=82&ts=1726738436494",
	    "https://media2.thrillophilia.com/images/photos/000/103/304/original/1479388363_Barnawapara-wildlife-sanctuary-4.jpg?w=753&h=450&dpr=1.5"
));

bg.put("Mizoram", Arrays.asList(
	    "https://static.wixstatic.com/media/762265_3a336285bc984cca969938ab1b1777f6~mv2.jpg/v1/fill/w_1000,h_667,al_c,q_85/762265_3a336285bc984cca969938ab1b1777f6~mv2.jpg",
	    "https://s3.india.com/wp-content/uploads/2024/05/Feature-Image-_-Aizwal.jpg"
));

bg.put("Manipur", Arrays.asList(
	    "https://i0.wp.com/www.tusktravel.com/blog/wp-content/uploads/2021/02/Sanamahi-Temple-Manipur.jpg?fit=800%2C450&ssl=1",
	    "https://www.adotrip.com/public/images/state/contentImg/5f450f92a6339.jpg"
));

bg.put("Meghalaya", Arrays.asList(
	    "https://oddessemania.in/wp-content/uploads/2024/07/Dawki-shnongpdeng-how-to-reach-cherrapunjee-1024x683.jpg",
	    "https://media1.thrillophilia.com/filestore/s3qn155qg6uuqqiylem58yq9x1l2_shutterstock_2321755807.jpg?w=753&h=450&dpr=2.0"
));


bg.put("Bihar", Arrays.asList(
	    "https://www.tourmyindia.com/blog//wp-content/uploads/2015/08/gaya-bihar.jpg",
	    "https://assets-news.housing.com/news/wp-content/uploads/2022/11/25114008/Bihar-FEATURE-compressed.jpg"
));

bg.put("Nagaland", Arrays.asList(
	    "https://www.tourmyindia.com/blog//wp-content/uploads/2020/12/Mokokchung-Nagaland.jpg",
	    "https://s7ap1.scene7.com/is/image/incredibleindia/hornbill-festival-nagaland-blog-art-exp-cit-pop?qlt=82&ts=1726674724135"
));

bg.put("Tripura", Arrays.asList(
	    "https://www.holidaylandmark.com/blog/wp-content/uploads/2024/08/image-564.png",
	    "https://media2.thrillophilia.com/images/photos/000/380/915/original/1647425391_shutterstock_1151226422.jpg?w=753&h=450&dpr=1.5"
));

bg.put("Andhra Pradesh", Arrays.asList(
	    "https://blog.swiggy.com/wp-content/uploads/2024/03/Pesarattu-1-1024x538.png",
	    "https://images.travelandleisureasia.com/wp-content/uploads/sites/3/2024/07/16174029/gandikota.jpeg"
));

bg.put("Odisha", Arrays.asList(
	    "https://www.tourmyindia.com/blog//wp-content/uploads/2022/05/Best-Places-to-Visit-in-Odisha.jpg",
	    "https://www.fabhotels.com/blog/wp-content/uploads/2022/07/600X400-Odisha-min.jpg:cf-webp:w-450:h-240"
));






List<String> bgImages = bg.get(state);
%>

<!DOCTYPE html>
<html>
<head>
<title><%=state%> – Places</title>

<style>
body{
    margin:0;
    font-family:Poppins, sans-serif;
    color:white;
    overflow-x:hidden;
}

.bg-slide{
    position:fixed;
    top:0; left:0;
    width:100%;
    height:100%;
    z-index:-1;
    animation: slide 14s infinite alternate ease-in-out;
    background-size:cover;
    background-position:center;
}

@keyframes slide{
    0%{ background-image:url("<%=bgImages.get(0)%>"); }
    50%{ background-image:url("<%=bgImages.get(1)%>"); }
    100%{ background-image:url("<%=bgImages.get(0)%>"); }
}

.container{
    width:80%;
    margin:auto;
    text-align:center;
    margin-top:60px;
}

.place-list{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:25px;
}

.place{
    padding:20px;
    background:rgba(0,0,0,0.55);
    border-radius:12px;
    text-decoration:none;
    font-size:1.4rem;
    color:yellow;
    font-weight:bold;
    backdrop-filter:(4px);
    transition:0.3s;
    box-shadow:0 0 10px black;
}
.place:hover{
    background:white;
    color:black;
    transform:scale(1.13);
}

.back-btn{
    margin-top:40px;
    padding:12px 25px;
    background:#ffcc00;
    color:black;
    border-radius:10px;
    display:inline-block;
    text-decoration:none;
    font-size:1.2rem;
    font-weight:bold;
    transition:0.3s;
}
.back-btn:hover{
    background:white;
    transform:scale(1.11);
}
</style>

</head>
<body>

<div class="bg-slide"></div>

<div class="container">
<h1>Places in <%=state%></h1>

<div class="place-list">
<%
for(String p : list){ %>

    <a href="place-details.jsp?place=<%=p%>" class="place"><%=p%></a>
<% } %>
</div>

<a href="locations.jsp" class="back-btn">Back</a>

</div>

</body>
</html>
