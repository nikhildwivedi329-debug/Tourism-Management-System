<%@page import="java.util.*"%>
<%
    String place = request.getParameter("place");

    HashMap<String,String> img = new HashMap<>();
    
    img.put("Kedarnath","https://upload.wikimedia.org/wikipedia/commons/5/56/Kedarnath_Temple_in_Rainy_season.jpg");
    img.put("Somnath temple","https://namandarshan.com/wp-content/uploads/2024/03/6.1-1024x697.jpg");
    img.put("Mallikarjuna","https://img.traveltriangle.com/blog/wp-content/uploads/2024/05/Mallikarjuna-Temple-7-Essential-Things-To-Know-About-The-Temple-og.jpg");
    img.put("Omkareshwar Jyotirlinga","https://www.poojn.in/wp-content/uploads/2025/03/Omkareshwar-Temple-Architecture-and-Design-Explained.jpeg.jpg");
    img.put("Baidyanath Temple","https://www.poojn.in/wp-content/uploads/2025/03/Baba-Baidyanath-Dham-A-Spiritual-Journey-History-Significance-and-Travel-Guide.jpeg.jpg");
    img.put("Bhimashankar","https://bhimashankar.akeworld.com/assets/images/bhimashankar/1.jpg");
    img.put("Nageshwar","https://s7ap1.scene7.com/is/image/incredibleindia/nageshwar-Jyotirlinga-temple-02-attr-hero?qlt=82&ts=1726734769619");
    img.put("Kashi Vishwanath","https://www.poojn.in/wp-content/uploads/2025/03/Kashi-Vishwanath-Temple-Architecture-Design-A-Timeless-Legacy.jpeg.jpg");
    img.put("Trimbakeshwar","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSM3LQGIhaFQ2M4rB3kxnpLb-54tUOtLKWZmQ&s");
    img.put("Grishneshwar","https://www.poojn.in/wp-content/uploads/2025/06/Grishneshwar-Temple-A-Guide-to-HistoryArchitectureand-Significance.jpeg.jpg");
    img.put("Manali","https://manalitourism.co.in/images/places-to-visit/headers/one-day-manali-top-places-to-visit-header-manali-tourism.jpg.jpg");
    img.put("Shimla","https://www.justahotels.com/wp-content/uploads/2023/10/Best-Places-To-Visit-in-Shimla.jpg");
    img.put("Goa","https://images.travelandleisureasia.com/wp-content/uploads/sites/3/2024/04/15151106/palm-beach-1-1600x900.jpeg");
    img.put("Jaipur","https://www.indianholiday.com/wordpress/wp-content/uploads/2025/06/places-to-visit-jaipur.jpeg");
    img.put("Kashmir","https://www.tripsavvy.com/thmb/RAUfNgve9F4adGgSv9OTOyKi0PQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-584374227-58ac1d273df78c345b154d7a.jpg");
    img.put("Ladakh","https://www.holidify.com/images/cmsuploads/compressed/2999_20190305160539.jpg");
    img.put("Badrinath","https://t3.ftcdn.net/jpg/10/69/70/46/360_F_1069704628_ENkDEOvO7tKx6Qj42F0oA6UDKHcRu70R.jpg");
    img.put("Haridwar","https://cdn.tourradar.com/s3/tour/750x400/126439_9a329c11.jpg");
    img.put("Rishikesh","https://s7ap1.scene7.com/is/image/incredibleindia/laxman%20jhula-rishikesh-uttrakhand-hero?qlt=82&ts=1726646312953");
    img.put("Rudrapur","https://www.hlimg.com/images/places2see/738X538/1_1538630751m.jpeg");
    img.put("Mussoorie","https://www.shutterstock.com/image-photo/breathtaking-beauty-mountains-mussoorie-india-260nw-1255683439.jpg");
    img.put("Nainital","https://images.travelandleisureasia.com/wp-content/uploads/sites/2/2025/03/10153331/Places-to-visit-in-Nainital-FI--1600x900.jpg");
    img.put("Auli","https://media.istockphoto.com/id/1255138914/photo/top-hill-view-of-auli-uttarakhand-india.jpg?s=612x612&w=0&k=20&c=3MNCH1VfdFl4UA5lhrvyKp8MXoNMLN8eixGKD6LuiaU=");
    img.put("Mana Village","https://thumbs.dreamstime.com/b/river-sarasvati-mana-village-uttarakhand-india-holy-described-ancient-scriptures-its-origin-runs-78090779.jpg");
    img.put("Ranikhet","https://res.cloudinary.com/dyiffrkzh/image/upload/c_fill,f_auto,fl_progressive.strip_profile,g_center,h_400,q_auto,w_700/v1692861163/bbj/bkpcm2soe7ursfkclsss.webp");
    img.put("Haldwani","https://s3.india.com/wp-content/uploads/2025/06/Haldwani-Photography-Enthusiasts.jpg##image/jpg");
    img.put("Roorkee","https://images.unsplash.com/photo-1599634874901-e919c4fe1400?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8aWl0fGVufDB8fDB8fHww");
    img.put("Dehradun","https://theholidaysclubs.com/wp-content/uploads/2023/11/Dehradun.jpg");
    img.put("Bhimashankar","https://t4.ftcdn.net/jpg/09/06/91/27/360_F_906912735_jYYqoIMXkErVijbo9AQdo1e3Qb8wBwGD.jpg");
    img.put("Lonavala","https://t3.ftcdn.net/jpg/17/43/81/22/360_F_1743812289_gniJ1dDDbVfqiXN9tLKIZq6gXKh3ZlSA.jpg");
    img.put("Diveagar","https://w0.peakpx.com/wallpaper/132/198/HD-wallpaper-sunset-at-diveagar-beach-sunset-water-sky.jpg");
    img.put("Pune","https://media.istockphoto.com/id/1265056529/photo/beautiful-evening-sky-during-sunset-in-the-city.jpg?s=612x612&w=0&k=20&c=YpO0J-Gg02RqMea0bROR72JcAdSX72yfLCmv0AbNBa4=");
    img.put("Matheran","https://images.travelandleisureasia.com/wp-content/uploads/sites/2/2024/01/03111053/1-7-1600x900.jpg");
    img.put("Nashik","https://media.istockphoto.com/id/480807998/photo/ramkund-at-panchavati-in-nasik-india.jpg?s=612x612&w=0&k=20&c=gm8AKjg4rtroT9jDZ-tUHvccZT_ORXrwApwO_4QwaTs=");
    img.put("Karjat","https://static.vecteezy.com/system/resources/previews/034/319/223/large_2x/the-beautiful-city-of-karjat-in-india-ai-generated-free-photo.jpg");
    img.put("Lavasa","https://thumbs.dreamstime.com/b/view-beautiful-lavasa-city-pune-india-mountains-landscape-valley-267550124.jpg");
    img.put("Marine Drive","https://media.istockphoto.com/id/1008831236/photo/panoramic-view-of-marine-drive-at-dusk-mumbai-india.jpg?s=612x612&w=0&k=20&c=gZ_wmR5bWHCnbeGsXaXxPcv1XTmfGsYVcrzNzIr-aOY=");
    img.put("Rameshwaram","https://discoverindiabycar.com/wp-content/uploads/2025/02/Rameshwaram-Temple-in-Tamil-Nadu-India-1024x585.webp");
    img.put("Ooty","https://t3.ftcdn.net/jpg/04/10/13/22/360_F_410132299_FcexXOF2dC0j73CGr4lm9jY9oNhNEpsK.jpg");
    img.put("Madurai","https://globalexcursionindia.com/images/maduraiintro.jpg");
    img.put("Srirangam","https://media.istockphoto.com/id/1324051482/photo/srirangam-near-tiruchirappalli-india.jpg?s=612x612&w=0&k=20&c=FUlEyFytk3yQQALuajsxX-Q1GDwTErkjfcXxz1fmeqY=");
    img.put("kanchipuram","https://res.cloudinary.com/dyiffrkzh/image/upload/c_fill,f_auto,fl_progressive.strip_profile,g_center,h_400,q_auto,w_700/v1693573996/banbanjara/qlrtkrswa3wxhvuqo0p8.webp");
    img.put("Vellore","https://hblimg.mmtcdn.com/content/hubble/img/tvdestinationimages/mmt/activities/m_Vellore_tv_destination_img_6_l_750_1000.jpg");
    img.put("chennai","https://media.istockphoto.com/id/469550423/photo/chennai-nightscape.jpg?s=612x612&w=0&k=20&c=ZcUQgu91G7Z31ru3UPVPWhwaPJYmLEHyln8iyXQgPX8=");
    img.put("kanyakumari","https://media.istockphoto.com/id/1293613951/photo/kanyakumari-vivekananda-rock-memorial-thiruvalluvar-statue-in-the-evening-with-a-colorful-and.jpg?s=612x612&w=0&k=20&c=8j9tZW__yx3IBlV9IANRTJwDBkL0lfSBfgqw4NnaO5c=");
    img.put("Coimbatore","https://live.staticflickr.com/65535/50941532368_0d5fd2b8c7_b.jpg");
    img.put("Gir Forest","https://t3.ftcdn.net/jpg/07/62/61/00/360_F_762610001_y1x4RkOCx0FC3zEkuCR701FFXFVeoTUj.jpg");
    img.put("Rann of Kutch","https://thumbs.dreamstime.com/b/silhouette-decorated-camel-sunset-rann-kutch-gujarat-india-stunning-landscape-photography-witness-breathtaking-355140478.jpg");
    img.put("Laxmi Vilas Palace","https://pbs.twimg.com/media/E6PJQe0VoAAdNig.jpg");
    img.put("Junagadh","https://media.istockphoto.com/id/1383968693/photo/beautiful-view-of-clouds-and-fog-on-top-of-girnar-hills-during-monsoon-view-of-the-dattatreya.jpg?s=612x612&w=0&k=20&c=7S5jKEGTtc9t40c3YufWTV1ddIMLpRNphgZBSQ_pB5A=");
    img.put("Jhulta Minar","https://media1.thrillophilia.com/filestore/c4anerd7tn4xjfa0oik18o4wrjs1_1580986560_5c76748c8ffbf-Jhulta_Minar_Attractions.jpg?w=400&dpr=2");
    img.put("Ahemdabad","https://media.istockphoto.com/id/1273109690/photo/bird-eye-view-a-city-of-ahmedabad-and-blue-of-sky-with-clouds-in-the-evening.jpg?s=612x612&w=0&k=20&c=FmrG2K1VBHyJazx1A4RJzA5GtrvyNP02XufDfxSkl64=");
    img.put("Statue Of Unity","https://res.cloudinary.com/kmadmin/image/upload/v1717495908/kiomoi/statue_of_unity_7419.jpg");
    img.put("Mahakaleshwar Jyotirlinga","https://upload.wikimedia.org/wikipedia/commons/7/75/Mahakaleshwar_Temple%2C_Ujjain.jpg");
    img.put("Khajuraho Group of Monuments","https://media.istockphoto.com/id/508628776/photo/sunset-over-kandariya-mahadeva-temple.jpg?s=612x612&w=0&k=20&c=YOpVZmLiY4ccl_aoWRJhfqLpNEDgjyOGuTAKbobCO-U=");
    img.put("Kanha National Park","https://travelseewrite.com/wp-content/uploads/2020/12/Barasingha-Kanha-Tiger-Reserve.JPG-1-of-1.jpg");
    img.put("Gwalior Fort","https://media.istockphoto.com/id/481494314/photo/gwalior-fort.jpg?s=612x612&w=0&k=20&c=Jb2GScmEwEwP0FplZswTCa4kmGUqOExjcWFY5H3vT4c=");
    img.put("Sanchi Stupa","https://t3.ftcdn.net/jpg/16/66/45/34/360_F_1666453400_WLrjc0bbe3SF972dZ48CEZTvXSDRPGh7.jpg");
    img.put("Khandwa","https://img.traveltriangle.com/blog/wp-content/uploads/2023/07/Khandwa-Og.jpg");
    img.put("Bandhavgarh National Park","https://www.bandhavgarh-national-park.com/images/safaribanner.jpg");
    img.put("Bhimbetka rock shelters","https://cdn.elebase.io/173fe953-8a63-4a8a-8ca3-1bacb56d78a5/10728bea-b164-4454-a8f7-65971b891e8b-bhimbetka-gallery-01-michaelturtle.jpg?w=1000&h=500&fit=crop&q=75");
    img.put("Jaipur","https://media.istockphoto.com/id/1398087835/photo/pink-palace-hawa-mahal-jaipur-india-beautiful-sunset-view.jpg?s=612x612&w=0&k=20&c=S8X6bk4Mdp0xu624dFZCHfobotdwdIp7K1FEQJV6hkI=");
    img.put("Chittorgarh","https://th-thumbnailer.cdn-si-edu.com/ExuZagw_qysyC7fuBZ0IXEUr3gI=/fit-in/1072x0/https://tf-cmsv2-photocontest-smithsonianmag-prod-approved.s3.amazonaws.com/54e5b81f-ff9d-4b15-b030-6e48c43909c8.jpg");
    img.put("Puskar","https://thumbs.dreamstime.com/b/pushkar-lake-night-29408905.jpg");
    img.put("Ranthambore","https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Indian_Peacock_in_Tholpetty_Wildlife_Sanctuary_02.JPG/1280px-Indian_Peacock_in_Tholpetty_Wildlife_Sanctuary_02.JPG");
    img.put("Jodhpur","https://media.istockphoto.com/id/805563154/photo/mehrangharh-fort-and-jaswant-thada-mausoleum-in-jodhpur-rajasthan-india.jpg?s=612x612&w=0&k=20&c=5r9UxPkz9mIkfAIFPLyTwqBQyqSO7mcAdQtcqGHOboA=");
    img.put("Mount Abu","https://media.istockphoto.com/id/1206472415/photo/toad-rock-in-mount-abu-india.jpg?s=612x612&w=0&k=20&c=U2YgMLCYL6PjxRLeEzLc-3v8MyBdFJz2-OksJnBedzY=");
    img.put("Bikaner","https://media.istockphoto.com/id/96913441/photo/red-sandtone-palace-in-india.jpg?s=612x612&w=0&k=20&c=9iKzxjVocgwYnp_bJNGp5Aup_MpWWg81lvEnQG9uc-w=");
    img.put("Manali","https://static.thehosteller.com/blogimage/Rohtang%20Pass%201-1703738533072.jpg");
    img.put("Chamba","https://www.shutterstock.com/image-photo/beautiful-view-village-bharmour-district-600nw-2565213237.jpg");
    img.put("Palampur","https://thumbs.dreamstime.com/b/view-palampur-himachal-pradesh-india-348618330.jpg");
    img.put("Dalhousie","https://www.shutterstock.com/image-photo/landscape-khajjiar-mini-switzerland-india-600nw-1100785625.jpg");
    img.put("Kasol","https://images.unsplash.com/photo-1581791534721-e599df4417f7?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8a2Fzb2x8ZW58MHx8MHx8fDA%3D");
    img.put("Spiti valley","https://t3.ftcdn.net/jpg/05/37/17/02/360_F_537170263_5F7rM9l2jURI7qBVJqTzLER004eZ7awN.jpg");
    img.put("Amritsar","https://media.istockphoto.com/id/535570117/photo/golden-temple-in-amritsar-punjab-india.jpg?s=612x612&w=0&k=20&c=TAgZK64Qz6YsljOK1rXZrrW1u1YSlb9e_YBEmm2pfBw=");
    img.put("Partition Museum","https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/46/af/45/the-partition-museum.jpg?w=1200&h=-1&s=1");
    img.put("Sheesh Mahal","https://png.pngtree.com/thumb_back/fh260/background/20241217/pngtree-hawa-mahal-with-reflective-beauty-and-intricate-windows-image_16793737.jpg");
    img.put("Akal Takht","https://www.shutterstock.com/image-photo/night-time-shot-akal-takht-600nw-1382106764.jpg");
    img.put("Durgiana Temple","https://media.istockphoto.com/id/943663210/photo/durgiana-temple.jpg?s=612x612&w=0&k=20&c=Ivc65477c6sz2H1mA_tMd3OEWkE9BLuGj1cOOK5PrwI=");
    img.put("Sundarbans","https://cdn.pixabay.com/photo/2018/09/12/19/21/deer-3673017_1280.jpg");
    img.put("kolkata","https://media.assettype.com/outlooktraveller/2024-01/8d2a9edd-f204-42fe-bee1-bba7c4c7474c/kolkata___6.jpg?w=1200&h=900&auto=format%2Ccompress&fit=max&enlarge=true");
    img.put("Shantiniketan","https://media.istockphoto.com/id/1142003222/photo/santiniketan-griha-one-of-the-oldest-building-inside-the-visva-bharati-university-campus-at.jpg?s=612x612&w=0&k=20&c=QoWKX0qA0kQk360rEP4GqgcgURMnSzAD58v9pQ_AIP8=");
    img.put("Mahabalipuram","https://www.shutterstock.com/image-photo/shore-temple-world-heritage-wonder-260nw-2544840591.jpg");
    img.put("Uttarkashi","https://t.eucdn.in/tourism/lg/uttarkashi-9774058.webp");
    img.put("Mahableshwar","https://media.istockphoto.com/id/2111438496/photo/24-march-2024-pratapgad-historic-maratha-fort-one-of-the-most-crucial-forts-of-shivaji.jpg?s=612x612&w=0&k=20&c=jtJFE-7cCr9udBcsxmDp988M7v0RqHyYtNX5IxQbGYc=");
    img.put("Mumbai","https://media.istockphoto.com/id/860528756/photo/the-bandraworli-sea-link-mumbai-india.jpg?s=612x612&w=0&k=20&c=xT9TK7oYkP6TP62lHqP0H-9mfz9cWva4OcYEnt06cjc=");
    img.put("Dwarka","https://media.istockphoto.com/id/924919352/photo/ghats-of-river-gomti-in-dwarka.jpg?s=612x612&w=0&k=20&c=_B5eWFQWzVDIcfc-h0kOv7oI5LdV5MpM8CvXcF2-X8A=");
    img.put("Saputara","https://media.istockphoto.com/id/1340310516/photo/beautiful-view-of-gira-waterfall-with-green-mountain-in-background-during-monsoon-season-at.jpg?s=612x612&w=0&k=20&c=jNZZJ0asz7hLpTjWLlZeYJIZ5qDmTxzq5oolWsRCToE=");
    img.put("Kankaria Lake","https://thumbs.dreamstime.com/b/beautiful-colorful-lights-reflected-water-kankaria-lake-ahmedabad-gujarat-central-structure-beautifully-decked-154356139.jpg");
    img.put("Udaipur","https://plus.unsplash.com/premium_photo-1697729789803-48b0c82365ff?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y2l0eSUyMHBhbGFjZSUyMHVkYWlwdXIlMjBpbmRpYXxlbnwwfHwwfHx8MA%3D%3D");
    img.put("Shimla","https://plus.unsplash.com/premium_photo-1697729690458-2d64ca777c04?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8c2hpbWxhJTIwaW5kaWF8ZW58MHx8MHx8fDA%3D");
    img.put("Dharmshala","https://scontent.fidr4-2.fna.fbcdn.net/v/t39.30808-6/301150082_481915803941078_5564410008217439595_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=Pxgsd3QJdGgQ7kNvwEpUQ-v&_nc_oc=AdmP3-HIOJb_1k3Kst9NdKNlodj-5NL1s-R4vGS8TcbaOEzs0rf3mcF2ZQixC3umzKU_ML_Sr9ysrpyQtAXSZ_Hs&_nc_zt=23&_nc_ht=scontent.fidr4-2.fna&_nc_gid=bkzcOEP2QZglwJ8NAMz9Sg&oh=00_AfkUc8YHbThSw3PC6PRb9kAyy6ysriKw7EVF0mkxUJcLzA&oe=694701EC");
    img.put("Sundar Nagar","https://res.cloudinary.com/chasset/hbimages/desktop/1716545667429-Sunder-Nagar-Mandi-Himachal-Pradesh.jpg");
    img.put("Chandigarh","https://www.shoutlo.com/uploads/articles/header-img-chandigarh-de-nazaareya-ne-patteya.jpg");
    img.put("Wagah Border","https://media.istockphoto.com/id/1378612330/photo/view-to-the-main-gates-of-attari-wagah-border-with-the-flags-of-india-and-pakistan.jpg?s=612x612&w=0&k=20&c=JMO36TlceFjmNs90KfDuSNXiFL7nLiYoTIH_PHEO2-0=");
    img.put("Darjeeling","https://media.istockphoto.com/id/896324660/photo/toy-train.jpg?s=612x612&w=0&k=20&c=z2BYZhzj3RhUNSfDeAnFwfkm-jPU-CNU4lTdQxRqMQM=");
    img.put("Digha","https://media.istockphoto.com/id/1165042145/photo/fishing-boats.jpg?s=612x612&w=0&k=20&c=xh2X98Z_Rj6bBBjUIThzU4FoJm3HhZSQP46QN1l8kN0=");
    img.put("Siliguri","https://thetraveloholic.com/wp-content/uploads/2025/10/Siliguri-Darjeeling-3.jpg");
    img.put("Kalimpong","https://anywherebuthere.travel/wp-content/uploads/2023/01/image6.png");
    img.put("Dooars","https://www.dooarsnaturecent.com/wp-content/uploads/2024/10/DNC-Banner-Indian-Jungle-YouTube-Thumbnail.webp");
    img.put("Bishnupur (West Bengal)","https://www.shutterstock.com/image-photo/beautiful-view-rasmancha-famous-terracotta-600nw-1790874611.jpg");
    img.put("Kangchenjunga","https://media.istockphoto.com/id/543183018/photo/sunrise-on-mount-kanchenjugha-at-dawn-sikkim.jpg?s=612x612&w=0&k=20&c=ONnlaZ9ny-HD9P3li-5t0tzpm0dHdahYRdmN_WxrMsc=");
    img.put("Deoghar","https://www.incredibleindia.gov.in/content/dam/incredible-india/images/trips/jharkhand/deoghar/2-days-trip-deoghar-the-abode-of-god/naulakha-mandir-deoghar-odisha-tri-iter-day1.jpg");
    img.put("Netarhat","https://thumbs.dreamstime.com/b/netarhat-jharkhand-india-picture-one-best-place-which-very-beautiful-located-km-ranchi-s-coldest-166749429.jpg");
    img.put("Hundru Falls","https://img.freepik.com/premium-photo/beautiful-view-hundru-water-fall-located-jharkhand_193751-53.jpg");
    img.put("Patratu Valley","https://media-cdn.tripadvisor.com/media/photo-s/0e/5e/c0/46/drone-shot-of-the-valley.jpg");
    img.put("Ranchi","https://media.istockphoto.com/id/1325410596/photo/swami-vivekananda-memorial-at-sunrise-located-at-ranchi-jharkhand-tourism.jpg?s=612x612&w=0&k=20&c=R4NW7dSlvMzvShXlG1zz3VMrrcSPfxIzwuXu6BuQWuA=");
    img.put("Jamshedpur","https://t3.ftcdn.net/jpg/05/20/56/44/360_F_520564447_UQ96m4wmSD5ImhkttphYooKGZwtfwLsz.jpg");
    img.put("Parasnath Hill","https://www.shutterstock.com/image-photo/parasnath-hills-giridih-jharkhand-india-260nw-2358292903.jpg");
    img.put("Maithon Dam","https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/Maithon_Dam.jpg/1024px-Maithon_Dam.jpg");
    img.put("Bengaluru","https://media.istockphoto.com/id/1382384282/photo/bangalore-or-bengaluru.jpg?s=612x612&w=0&k=20&c=6pxwL3JxNV2B_NZSLMZLhrSLqAbyCPlGuSZYKImpjKQ=");
    img.put("Mysore","https://images.pexels.com/photos/4124381/pexels-photo-4124381.jpeg?cs=srgb&dl=pexels-mohit-suthar-1271363-4124381.jpg&fm=jpg");
    img.put("Coorg","https://www.incredibleindia-tourism.org/images/weekend-getaways/coorg.jpg");
    img.put("Hampy","https://t4.ftcdn.net/jpg/03/75/40/73/360_F_375407347_spt4AF5sxsIt9gBIKVzJl95tiQhEGNXy.jpg");
    img.put("Badami","https://media.istockphoto.com/id/1742429799/photo/entrance-to-the-ancient-rock-cut-caves-of-badami-karnataka-india.jpg?s=612x612&w=0&k=20&c=Vi9quFLEXAD8EfBM8ICOBWxyI2lwM4EyH0jq4JZqeIQ=");
    img.put("Udupi","https://w0.peakpx.com/wallpaper/55/603/HD-wallpaper-kapu-beach-indian-ocean-coast-lighthouse-beach-udupi-karnataka-india.jpg");
    img.put("Jatayu","https://media.assettype.com/deccanherald%2Fimport%2Fsites%2Fdh%2Ffiles%2Fgallery_images%2F2021%2F10%2F20%2FJatayu%2520Park_4.jpg");
    img.put("Bekal Fort","https://peopleplaces.in/wp-content/uploads/2023/04/Bekal-fort-climate.jpg");
    img.put("Kollam","https://media.istockphoto.com/id/843721966/photo/thangassery-lighthouse-on-the-cliff-surrounded-by-palm-trees-and-big-sea-waves-on-the-kollam.jpg?s=612x612&w=0&k=20&c=CG4V_t7mKope5g7XsMHyZmVeHOCX6DZK8SAv651NmHU=");
    img.put("kovalam","https://media.istockphoto.com/id/1150059940/photo/kovalam-beach-sunset.jpg?s=612x612&w=0&k=20&c=H0yfOqRkOXYaFxajF8pcHVJ3ONckf7L5cTLTvabZGRU=");
    img.put("Varkala","https://media.istockphoto.com/id/480488320/photo/varkala-beach.jpg?s=612x612&w=0&k=20&c=5SYA2c16CxBsFo_DHEM0nF21n3ZeUpImpYkqnGzHTUU=");
    img.put("Kumarakom","https://www.keralatourism.org/responsible-tourism/uploads/large-desktop/kumarakom1920x1080_1-20230603094913197633.webp");
    img.put("Kochi","https://media.istockphoto.com/id/1225173869/photo/house-boat-anchored-in-lake-with-jungle-background-backwaters-kerala-india.jpg?s=612x612&w=0&k=20&c=uo-bsRQjhlT9AgeWBs_pkSvHQwStCelMC75EUpzwjHU=");
    img.put("Wayanad","https://t4.ftcdn.net/jpg/04/89/49/37/360_F_489493754_MNJqXjaaBI9INlZ7c9xWsgEG8mW56ogl.jpg");
    img.put("Thekkady","https://www.dtpcidukki.com/uploads/picture_gallery/gallery_images/thekkady-1920-20230329172714447577.webp");
    img.put("Alleppey","https://media.istockphoto.com/id/177447843/photo/house-boat-in-backwaters.jpg?s=612x612&w=0&k=20&c=9RnNr22SKJiNKuOukgfo82TtSgvSLMIZALXNf4m_VPM=");
    img.put("Munnar","https://media.istockphoto.com/id/511119924/photo/tea-plantations-and-river-in-hills-kerala-india.jpg?s=612x612&w=0&k=20&c=pYHem1q8SIdCC7t7pv3s6QM1ZrmU3nkCoSaEQMg8vqg=");
    img.put("Vrindavan","https://images.unsplash.com/photo-1583134993393-07aa230888f9?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dnJpbmRhdmFuJTJDJTIwaW5kaWF8ZW58MHx8MHx8fDA%3D");
    img.put("Jhansi","https://media.istockphoto.com/id/2154297645/photo/facade-of-jhansi-fort-in-jhansi-budelkhand-uttar-pradesh-india-asia.jpg?s=612x612&w=0&k=20&c=ddtAyISrgq4KGIy-1EFC-0CvK6IsSwVPZzNet31v4D8=");
    img.put("Chitrakoot","https://www.soil2soulexpeditions.com/admin/public/images/blog/image_file/42/Places-to-visit-in-Chitrakoot-2025.jpg");
    img.put("Prayagraj","https://media.istockphoto.com/id/1479317502/photo/aerial-view-of-sangam-prayagraj.jpg?s=612x612&w=0&k=20&c=GTTUcHAv6XXKQx9_pHdbvEUdwxbfZH7u49jqhHzDYVs=");
    img.put("Ayodhya","https://www.baltana.com/files/wallpapers-39/Ayodhya-Ram-Mandir-Background-Wallpaper.jpeg");
    img.put("Sarnath","https://media.istockphoto.com/id/1219094441/photo/a-beautiful-buddhist-temple-in-sarnath-india.jpg?s=612x612&w=0&k=20&c=MBmv-wZ8m1rtcx0P2LMnI2wXqpBmKs-EsSP5Wps5Ry4=");
    img.put("Mathura","https://media.istockphoto.com/id/516012630/photo/kusum-sarovar-in-mathura-uttar-pradesh-india.jpg?s=612x612&w=0&k=20&c=_vie62mCyw4-6SVRRMXiyhvLKayJj94eQBWy3S9aqc8=");
    img.put("Dudheshwar Nath","https://dudheshwarnath.org/wp-content/uploads/elementor/thumbs/beautiful-dudeshwarnath-ozh1efgurq4vq4dn7r9om9486mqdq52canaaxq33s6.jpg");
    img.put("Devi Patan","https://temple.yatradham.org/public/Product/temple/temple_Ge8FjUEc_202507091452380.webp");
    img.put("Hanumat Dham","https://t.eucdn.in/tourism/lg/shri-hanuman-dham-1044772.webp");
    img.put("Bhitargaon Temple","https://d3sftlgbtusmnv.cloudfront.net/blog/wp-content/uploads/2024/11/Bhitargaon-Temple-Cover-Photo--840x425.jpg");
    img.put("Guwahati","https://d3sftlgbtusmnv.cloudfront.net/blog/wp-content/uploads/2024/08/Guwahati-City-view-Cover-Photo-840x424.jpg");
    img.put("Betla National Park","https://www.tataneu.com/pages/travel/_next/image?url=https%3A%2F%2Fd1msew97rp2nin.cloudfront.net%2Fprodin%2Ftntravel%2Fblogimages%2Fhow-to-explore-betla-national-park-jharkhand-like-a-pro-689fe413-050d-48f2-b831-c43b4ca5ca3c.webp&w=3840&q=75");
    img.put("Jorhat","https://www.shutterstock.com/image-photo/sunset-borosola-beel-jorhat-assam-260nw-1486746365.jpg");
    img.put("Kamakhya Temple","https://s7ap1.scene7.com/is/image/incredibleindia/kamakhya-temple-dispur-assam-3-attr-hero?qlt=82&ts=1742199541045");
    img.put("Kakochang Water Fall","https://blog-img-dev.s3.ap-south-1.amazonaws.com/blog/wp-content/uploads/2025/03/Kakochang-Cover-Photo-840x425.jpg");
    img.put("Chandubi Lake","https://www.northeastbullet.com/wp-content/uploads/2023/10/featured-image_20231011_133450_0000.png");
    img.put("Kaziranga National Park","https://www.andbeyond.com/wp-content/uploads/sites/5/iStock_100620995_XLARGE.jpg");
    img.put("Brahmaputra River","https://www.shutterstock.com/image-photo/linzhi-city-tibet-river-600nw-2578362589.jpg");
    img.put("Majuli","https://media.istockphoto.com/id/1219436845/photo/beautiful-scenery-of-majuli-island-assam.jpg?s=612x612&w=0&k=20&c=wOF4KQPUZOKSs8nuE4MDGwKL3PkIA-9GxWdALjJL6ns=");
    img.put("Gangtok","https://media.istockphoto.com/id/1129899951/photo/darjeeling-and-kangchenjunga-on-the-background-kanchenjunga-is-the-third-highest-mountain-in.jpg?s=612x612&w=0&k=20&c=p3mD29QG5VMkOtG3DhqbcJXEuVBCZjHOtdbWQFqmAJY=");
    img.put("Nathula Pass","https://www.flamingotravels.net/_next/image?url=https%3A%2F%2Fimgcdn.flamingotravels.co.in%2FImages%2FPlacesOfInterest%2FNathula-Pass-Gangtok-3.jpg&w=828&q=90");
    img.put("Sky Walk Pelling","https://travellingslacker.com/wp-content/uploads/2019/01/Pelling-Sky-Walk-25.jpg");
    img.put("Kanchenjunga Falls","https://res.cloudinary.com/kmadmin/image/upload/v1618571060/kiomoi/Pelling_Kanchenjunga_Falls_1618571058852.png");
    img.put("Ravangla","https://thumbs.dreamstime.com/b/beautiful-view-ravangla-sikkim-india-mountains-background-beautiful-view-ravangla-sikkim-167608818.jpg");
    img.put("Lachung","https://media.istockphoto.com/id/608506128/photo/the-stupa-at-yumthang-valley-in-lachung-north-sikkim-india.jpg?s=612x612&w=0&k=20&c=C0njVx_x415mOAEbBRTuhLIkUb_Ya-ugey2aWddY2Wc=");
    img.put("Tsomgo Lake","https://media.istockphoto.com/id/508546723/photo/tsomgo-lake.jpg?s=612x612&w=0&k=20&c=_FyIQE3KLopBsmJUscvdA0XsZXjJ2V_aBDRlKRMMgig=");
    img.put("Golconda Fort","https://thumbs.dreamstime.com/b/golconda-fort-3720711.jpg");
    img.put("Rudreshwara Temple","https://cultureandheritage.org/wp-content/uploads/2022/08/image-622.png");
    img.put("Birla Mandir","https://s7ap1.scene7.com/is/image/incredibleindia/birla-temple-hyderabad-secunderabad-telangana-1-attr-hero?qlt=82&ts=1742170051392");
    img.put("Ramoji Film City","https://cdn1.tripoto.com/media/filter/nl/img/2380291/Image/1693907230_768_512_14287854_132_14287854_1643188765140.jpg.webp");
    img.put("Ananthagiri Hills","https://images.travelandleisureasia.com/wp-content/uploads/sites/2/2024/05/03104208/Ananthagiri-1600x900.jpg");
    img.put("Warangal","https://cdn1.tripoto.com/media/filter/nl/img/2380291/Image/1701841094_msid_59593446_width_96_height_65_cms.jpg.webp");
    img.put("Shree Mangueshi Temple","https://storage.googleapis.com/goa-app-12a91.appspot.com/2022-06-21T10%3A48%3A38.340Ztemple.webp?GoogleAccessId=firebase-adminsdk-zeqcj%40goa-app-12a91.iam.gserviceaccount.com&Expires=16447017600&Signature=D%2BZVB8%2FD9YupQJzDVHZVuiOEfEoPlxQDB03fUhKEtdf4eilds4mptLsD1%2BwyG%2FJqtw4XuEdbW%2FWLt741zzV6U9y2%2But1rbIXocTSaJkuQ3YiQpR1TTAQqkZgXaUtQ4L10Jt%2BabPbGpGUfQDpXXcYM6uEix6OCSqnXT%2FBE3vptOiTJ8qvLWPeeQJnoshX9js8nJkX3EreZfLkR9%2FfnzQtii0EWRbUZ%2Bf67iMIv6uPoRGmfSxTLa7JGGkx2Mfb3vU4FTBnNSyPf8wwADkkDyJzGXE1ViEGFFHZGBzL847nWATB5WwuCO9hpRhfKIsiGfVG5WesI2aVw7YwI49sdtZKxA%3D%3D");
    img.put("Chapora fort","https://goa.tours/wp-content/uploads/2022/02/india-travels-gda952ceac_1920.jpg");
    img.put("Dudhsagar Water Falls","https://i.pinimg.com/736x/cb/b0/93/cbb0932c7e9829997c2ce238b66305cf.jpg");
    img.put("Arambol","https://media.istockphoto.com/id/680199998/photo/beautiful-view-to-goa-beach-from-high-india.jpg?s=612x612&w=0&k=20&c=87MX9StSs_LRsRoLjlExaEijG58OH5csMQBDMeaUVTA=");
    img.put("Baga beach","https://media.istockphoto.com/id/1157048446/photo/aerial-shot-of-the-beach-from-above-showing-sea-beach-mountain-and-a-coconut-plantation-goa.jpg?s=612x612&w=0&k=20&c=BE0ZCnKZj8xi9Zgx5meO77k-o8v8EPT9TwlsPvY3TMc=");
    img.put("Anjuna Beach","https://t4.ftcdn.net/jpg/02/98/58/81/360_F_298588140_b64GR7sc1ql5DF91a4arc2XFyLgHZpv0.jpg");
    img.put("Candolim Beach","https://img.avianexperiences.com/attraction/39f0acbb-1af0-443d-915d-a94f5b3acd88");
    img.put("Kurukshetra","https://wallpapers.com/images/hd/bhagavad-gita-kurukshetra-war-6mqhvc2vk2ab24l3.jpg");
    img.put("Bhima Devi Temple","https://scontent.fidr4-1.fna.fbcdn.net/v/t39.30808-6/471253057_982762500555226_2221309510507253793_n.jpg?stp=dst-jpg_s960x960_tt6&_nc_cat=102&ccb=1-7&_nc_sid=cc71e4&_nc_ohc=9UbR0zGT5GQQ7kNvwH6dyWs&_nc_oc=Adm7Jjkhc3bcxTh1IrMISbIDMFTH4KjJOnCl9e55dQeDolU9yrCOljrbUXf6KKaA5aSNmcB48Qfi_f6qGxSbVFhf&_nc_zt=23&_nc_ht=scontent.fidr4-1.fna&_nc_gid=DZ_esR1LPuMlM9EiCXpyDQ&oh=00_Afklt99Kn1aWp4fymv6IJXsHgaQMJFHbpLTZ4Gz87IRWug&oe=69476342");
    img.put("Panipat","https://www.shutterstock.com/image-photo/alternate-history-scene-showing-marathas-260nw-2528109697.jpg");
    img.put("Gurugram","https://img.freepik.com/free-photo/skyscrapers-sunset_1112-1825.jpg?semt=ais_hybrid&w=740&q=80");
    img.put("Morni Hills","https://media-cdn.tripadvisor.com/media/photo-s/04/92/08/10/morni-hills.jpg");
    img.put("Damdama Lake","https://www.shutterstock.com/image-photo/tourists-arrived-visit-damdama-lake-600nw-2238282745.jpg");
    img.put("Pataudi Palace","https://images.lifestyleasia.com/wp-content/uploads/sites/7/2023/12/08105059/Pataudi-palace-hero-1600x900.jpg");
    img.put("Pinjore Garden","https://www.shutterstock.com/image-photo/panchkula-haryana-india-december-03-260nw-1585111660.jpg");
    img.put("Narnaul","https://www.hlimg.com/images/places2see/738X538/1_1536910524m.jpg");
    img.put("Tawang Buddhist Monastery","https://media.istockphoto.com/id/458127421/photo/sela-pass-district-of-tawang-arunachal-pradesh-india.jpg?s=612x612&w=0&k=20&c=yBg1BRI6_QzIUIDukD6NS_EMfIDG7773UD0pWG8eEOQ=");
    img.put("Bumla Pass","https://s7ap1.scene7.com/is/image/incredibleindia/bumla-pass-tawang-arunachal-pradesh-1-attr-hero?qlt=82&ts=1746757560925");
    img.put("Bhalukpong","https://media.istockphoto.com/id/187438336/photo/kameng-river-and-mountains-bhalukpong-arunachal-pradesh-india.jpg?s=612x612&w=0&k=20&c=IJv4_Dk8sn796dldqhhjMuqc5MFCfNG6FuJwZ7L_u6k=");
    img.put("Zoro Valley","https://s3.india.com/wp-content/uploads/2025/01/Explore-Ziro_-The-Perfect-Budget-Destination-For-Nature-Lovers-And-Adventurers.jpg");
    img.put("Madhuri Lake","https://static.toiimg.com/photo/105334977.cms");
    img.put("Itanagar","https://thumbs.dreamstime.com/b/buddhist-temple-hill-top-itanagar-arunachal-pradesh-indo-china-border-india-mountain-clouds-71368886.jpg");
    img.put("Dirang","https://i0.wp.com/oneday.travel/wp-content/uploads/one-day-dirang-sightseeing-tour-package-by-cab-header.jpg?fit=1920%2C1280&ssl=1");
    img.put("Chitrakote Falls","https://thumbs.dreamstime.com/b/chitrakote-waterfalls-falls-indravati-river-jagdalpur-bastar-district-chhattisgarh-india-217999148.jpg");
    img.put("Teerathagarh waterfalls","https://img.freepik.com/premium-photo/beautiful-scene-tirathgarh-waterfall-kanger-valley-national-park-chhattisgarh-i_665346-36410.jpg");
    img.put("Mainpat","https://inditales.com/wp-content/uploads/2012/06/takpo-buddhist-monastery-mainpat.jpg");
    img.put("National park","https://chhattisgarhpedia.com/upload/blog/exploring-the-untamed-beauty-of-kanger-valley-national-park-32.webp");
    img.put("Kanger Valley National Park","https://chhattisgarhpedia.com/upload/blog/exploring-the-untamed-beauty-of-kanger-valley-national-park.webp");
    img.put("Jagdalpur","https://media.tripinvites.com/places/jagdalpur/beautiful-waterfall-in-jagdalpur-featured.jpg");
    img.put("Raipur","https://i0.wp.com/www.manjulikapramod.com/wp-content/uploads/2018/10/More-Raipur-Marine-Drive.jpg?resize=1024%2C683&ssl=1");
    img.put("Bastar","https://www.shutterstock.com/image-photo/close-tribal-dancing-male-female-260nw-1744102775.jpg");
    img.put("Sirpur","https://www.odishavacations.com/chhattisgarhtours.com/assets/image/Sirpur-Mahasamund-in-Chhatishgarh-BIG.jpg");
    img.put("Vaipuanpho Falls","https://evendo-location-media.s3.amazonaws.com/AttractionImages/a9d86e59-2485-41e1-96a8-dd691fe3d5e9");
    img.put("Champhai","https://banasri.in/wp-content/uploads/2024/07/Champhai-in-Mizoram.jpg");
    img.put("Phawngpui","https://i.pinimg.com/736x/56/bc/8d/56bc8dc73db663110f49ec7496104a28.jpg");
    img.put("Tam Dil","https://s7ap1.scene7.com/is/image/incredibleindia/tamdil-aizawl-mizoram-3-attr-hero?qlt=82&ts=1726665792689");
    img.put("Palak Lake","https://mizoramtourism.com/post_images/626bdb1307952_Palak%20lake.jpg");
    img.put("Serchhip","https://www.theindiatourism.com/images/Mizoram.jpg");
    img.put("Reiek","https://banasri.in/wp-content/uploads/2024/07/Reiek-in-Mizoram-1.jpg");
    img.put("Aizwal","https://s7ap1.scene7.com/is/image/incredibleindia/reiek-tlang-mountain-aizawl-mizoram-blog-ntr-hero?qlt=82&ts=1726674874262");
    img.put("Loktak Lake","https://img-cdn.publive.online/fit-in/1200x675/filters:format(webp)/bw-travel/media/media_files/2025/05/15/Ixn6qd9m52TpTViMKO5N.png");
    img.put("Imphal","https://media.istockphoto.com/id/1173722009/photo/assembly-imphal-manipur.jpg?s=612x612&w=0&k=20&c=cNGEbAcf1kdA28heK6Lu1HTlKUpDSHpDAYMgmfoaqTs=");
    img.put("Manipur State Museum","https://shop.museumsofindia.org/sites/default/files/2017-11/_IMG9707.jpg");
    img.put("Kangla Fort","https://oddessemania.in/wp-content/uploads/2024/05/Kangla-fort-featured.jpg");
    img.put("Moirang","https://localtourism.in/wp-content/uploads/2024/03/Exploring_Moirang_m5au3q.webp");
    img.put("Andro Village","https://static.india.com/wp-content/uploads/2018/08/Andro-village.jpg");
    img.put("Thoubal","https://tripandtales.com/wp-content/uploads/2025/10/waithou-2.webp");
    img.put("Keibul Lamjao National park","https://www.travelandtourworld.com/wp-content/uploads/2025/11/Keibul-Lamjao-National-Park.jpg");
    img.put("Tonglon Caves","https://www.exploreourindia.com/backend/web/images/post/big/6351_Tharon%20Cave%20manipur.webp");
    img.put("Nartiang Durga Temple","https://famoustemplesofindia.com/wp-content/uploads/2023/09/Nartiang-Durga-Temple-4-1024x768.jpg");
    img.put("Nohkalikai Falls","https://res.cloudinary.com/kmadmin/image/upload/v1618830540/kiomoi/Cherrapunji_Nohkalikai_Waterfalls_1618830538568.jpg");
    img.put("Mahadev Khola Dham","https://devdhamyatra.com/wp-content/uploads/2024/07/mahadev-khola-dham.webp");
    img.put("Matri Mandir","https://media.istockphoto.com/id/1316082626/photo/arial-view-of-auroville.jpg?s=612x612&w=0&k=20&c=nEFCZWYL8O92P-Fx7ZimZ63yj0YaWAOpLp3ExdJdsjw=");
    img.put("Barapathar Shiv Temple","https://www.shutterstock.com/image-photo/shiva-lingam-balenciaga-logo-cobra-260nw-2625082847.jpg");
    img.put("Living Root Bridges","https://media.istockphoto.com/id/540129900/photo/living-root-bridges-in-nongriat-meghalaya-india.jpg?s=612x612&w=0&k=20&c=BrZBaaQiHGkfr4H1osT7dQEKNamyD_yib2hvZSokgEw=");
    img.put("Mawlynnong","https://yehsafarhamarahai.com/wp-content/uploads/2025/03/mawlynnong.png?w=1024");
    img.put("Shillong","https://www.savaari.com/blog/wp-content/uploads/2024/01/rasheda-akter-H1j7GqWsfpI-unsplash-1.jpg");
    img.put("Umiam Lake","https://media.istockphoto.com/id/1256329737/photo/the-umiam-lake-in-shillong-meghalaya-india.jpg?s=612x612&w=0&k=20&c=dey70PLVOf2V6WDJkAxrVl_7Bobpri4-GBNjz6vRcjU=");
    img.put("Mawsmai","https://www.indiantempletour.com/wp-content/uploads/2023/05/maw-1592276654.jpg");
    img.put("Dawki River","https://i.pinimg.com/736x/4a/6c/62/4a6c628ff4f5427a27de3310058d689a.jpg");
    img.put("Nalanda University","https://historified.in/wp-content/uploads/2022/05/993796b85215fa53c86d83c4d457282d.jpg");
    img.put("Bodh Gaya","https://memorymuseum.net/wp-content/uploads/2020/04/bodh-gaya-1.jpg");
    img.put("Kesaria Stupa","https://pwonlyias.com/wp-content/uploads/2024/04/untitled-2024-04-20t121629155-1-66238db9aa2a9.webp");
    img.put("Patna","https://i.ytimg.com/vi/yGp_o04GYF8/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLAilUPuFk1RIpjA0y-MFJefEO2M6A");
    img.put("Vaishali","https://tourism.bihar.gov.in/content/dam/bihar-tourism/images/category_a/vaishali/vishwa_shanti_stupa__vaishali/vishwa-shanti-stupa-Vaishali.jpg/jcr:content/renditions/cq5dam.web.480.480.webp");
    img.put("Bhagalpur","https://scontent.fidr4-1.fna.fbcdn.net/v/t39.30808-6/482216259_608860141968583_1818451580704678959_n.jpg?stp=dst-jpg_s960x960_tt6&_nc_cat=103&ccb=1-7&_nc_sid=cc71e4&_nc_ohc=mkscfU_obMwQ7kNvwGPSthz&_nc_oc=AdlSBNnpf00CYBlXsyaU8ogSPI_C3bdJcFK6BfR6dNa5aqaUS2jq2tcNQhgjVOHCI1ZkbX8nkg8rUcyYsF3U2OMz&_nc_zt=23&_nc_ht=scontent.fidr4-1.fna&_nc_gid=9MXYLkb9LQe3LOCfdA8Pzg&oh=00_AfmmCU_sNB7Q_xgtnMAJDmD6yMU5gEqfwATlS9Chd3DBWg&oe=69477321");
    img.put("purnia","https://angdesh.com/wp-content/uploads/2022/07/Panchmukhi_Mandir_Purnea.jpg");
    img.put("Buxar","https://s7ap1.scene7.com/is/image/incredibleindia/buxar-fort-arrah-bihar-2-attr-hero?qlt=82&ts=1726740560966");
    img.put("Sasaram","https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/%22_Tomb_of_Sher_Shah_Suri_%22.jpg/1200px-%22_Tomb_of_Sher_Shah_Suri_%22.jpg");
    img.put("Dzukou Velly","https://static.toiimg.com/img/97834455/Master.jpg");
    img.put("Kohima","https://d26dp53kz39178.cloudfront.net/media/uploads/Travel_Guide_Images/Kohima_result.webp");
    img.put("Mokochung","https://s7ap1.scene7.com/is/image/incredibleindia/2-chuchuinlang-village-mokokchung-nagaland-city-hero?qlt=82&ts=1726664310604");
    img.put("Kisama Heritage Village","https://s7ap1.scene7.com/is/image/incredibleindia/naga-heritage-village-kohima-nagaland-1-attr-hero?qlt=82&ts=1727012342520");
    img.put("Wokha","https://www.nativeplanet.com/photos/412x309x100/2018/12/photo-91-170816-1.jpg");
    img.put("Phek","https://www.hlimg.com/images/things2do/738X538/phek_1511353328t.jpg");
    img.put("Ujjayanta Palace","https://cdn.s3waas.gov.in/s3185c29dc24325934ee377cfda20e414c/uploads/bfi_thumb/2018050537-olw72z9gkjnuai7xu4tyu2689xolhwewytgze97ekq.jpgs");
    img.put("Tirupati","https://images.hindustantimes.com/img/2022/11/06/550x309/_098bfa70-ba9b-11e9-ab59-a9539248f706_1667733284898_1667733284898.png");
    img.put("Vizag","https://www.abhibus.com/blog/wp-content/uploads/2023/05/Top-10-Places-to-Visit-in-Vizag-for-2-Days-1024x683.jpg");
    img.put("Amravati","https://sceneloc8.com/wp-content/uploads/2024/10/Amravati-Photography-locations.jpg");
    img.put("Araku valley","https://blogs.tripzygo.in/wp-content/uploads/2025/03/things-to-do-in-araku-valley.jpg");
    img.put("Gandikota","https://masalabox.co.in/wp-content/uploads/2019/09/rsz_gandikota_rocks.jpg");
    img.put("Srisailam","https://www.poojn.in/wp-content/uploads/2025/06/Srisailam-Online-Booking-Made-Easy-Your-2025-Guide-to-Simple-Darshan-Bookings.jpeg.jpg");
    img.put("Vijaywada","https://www.indiantempletour.com/wp-content/uploads/2023/03/Vijayawada-Tour.jpeg");
    img.put("Horsley hills","https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiIuL0mhkibUM45BkO2wYHpoHGB1wvsBP0lEXN85s2xVjttLnXGnJzKWrp-odnllVfQW1bVVA0Sk0x93hyphenhyphenO4a3GT_3O3Ekv8dzsmgACQimG1eZorp85fxOZA58a5TBdh1lIa3X07Ix5r0Xc/");
    img.put("Jagannath Temple, Puri","https://admin.stayatpurijagannatha.in/images/frontend/main-slider-2_1670308972.jpg");
    img.put("Konark Sun Temple","https://kirtankar.com/wp-content/uploads/2025/04/konark-sun-temple-1024x576.webp");
    img.put("Bhubaneswar","https://s7ap1.scene7.com/is/image/incredibleindia/1-lingaraj-temple-bhubaneshwar-odisha-city-hero?qlt=82&ts=1742167192930");
    img.put("Chilika Lake","https://localdrive.in/wp-content/uploads/2025/07/Chilika-Lake-Odisha-A-Journey-Through-Heritage-Legends-Scenic-Beauty.webp");
    img.put("Simlipal National Park","https://www.similipal.org/assets/images/gate1.jpg");
    img.put("Mypadu beach","https://xploringdestinations.com/wp-content/uploads/2023/03/Mypadu-Beach-Nellore.jpg");
    img.put("Gopalpur Beach","https://www.go2india.in/orissa/images/b-gopalpur-beach.JPG");
    img.put("Dhauli Shanti Stupa","https://www.dhauli.net/images/about-dhauli.jpg");
    img.put("Gundicha Temple","https://www.mypuritour.com/wp-content/uploads/2025/06/Gundicha-Temple.webp");
    img.put("Goldan Beach","https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/f6/57/f1/golden-beach-view-from.jpg?w=1200&h=-1&s=1");
    img.put("Sudarshan Crafts Musium","https://res.cloudinary.com/kmadmin/image/upload/v1724154716/kiomoi/sudarshan_crafts_museum_3733.jpg");
    img.put("Alarnatha Mandira","https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/35/f6/8e/alarnath-temple.jpg?w=900&h=500&s=1");
    img.put("Swargadwara","https://purimarkets.com/images/slide21.JPG");
    img.put("Somnath","");

    
%>

<!DOCTYPE html>
<html>
<head>
    <title><%=place %>Tourism Info</title>

 <style>
 body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background: url("<%= img.get(place) %>") no-repeat center/cover;
            height: 100vh;
            color: white;
            overflow:hidden;
        }

        .details-box {
            width: 50%;
            padding: 30px;
            margin: 80px auto;
            text-align: center;
        }

        h1 { font-size: 3rem; }

        p {
            font-size: 1.3rem;
            line-height: 1.6;
        }

        a.btn {
            background: #ffdd00;
            padding: 10px 20px;
            color: black;
            border-radius: 10px;
            text-decoration: none;
            margin-top: 20px;
            display: inline-block;
        }

    </style>
</head>
<body>

<div class="details-box">

    <h1><%=place %></h1>
    
    <br><br>
    <br><br>
    <br><br>
    <br><br>
    <br><br>
    <br><br>
    <br><br>
    <br><br>

    <p>
        <%=place %> is one of the most beautiful tourist destinations in India.
        You can enjoy nature, adventure, local food, sightseeing and much more.
        This location offers breathtaking views and amazing travel experiences.
    </p>
    
    <a href="https://en.wikipedia.org/wiki/<%= place %>" 
    class="btn"
       class="more-btn" target="_blank">
       Know More About <%= place %>
    </a>


    <a href="index.jsp"></a>

    <a href="locations.jsp" class="btn">Back</a>
</div>

</body>
</html>
