# -*- coding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

locations = [
             {:name => "Wheelock Student Center", 
               :logo_url => "http://www.pugetsound.edu/images/vt/buildings/thumb_dsc_8798.jpg", 
               :short_description => "Wheelock Student Center serves as the central hub of campus activity.",
               :long_description => "Wheelock Student Center serves as the central hub of campus activity. Puget Sound's Mail Services and dining hall are located in the building, along with Diversions Cafe, the Bookstore, and administrative offices for student affairs and student government.",
               :pictures => ["http://www.pugetsound.edu/images/vt/buildings/Wheelock_3.jpg","http://www.pugetsound.edu/images/vt/buildings/_DSC5319.jpg","http://www.pugetsound.edu/images/vt/buildings/WheelockDiversionsTD022.jpg","http://www.pugetsound.edu/images/vt/buildings/wheelockfoodcourt_3057.jpg","http://www.pugetsound.edu/images/vt/buildings/WheelockTD072.jpg","http://www.pugetsound.edu/images/vt/buildings/Wheelock_Celler.jpg"],
               :latitude => "47.263325",
               :longitude => "-122.479282"
               },
               {
                :name => "Jones Circle",
                :logo_url => "/images/location_images/JonesCircle/JonesCircleLogo.jpg",
                :short_description => "Puget Sound's main entrance offers access to McIntyre, Jones, and Howarth halls. A lovely rose garden and fountain lie at the circle's center.",
                :long_description => "Once an empty field, this area carries a special significance for Puget Sound. On May 22, 1923, the entire faculty and student body of then College of Puget Sound trekked from campus at 6th Avenue and Sprague in Tacoma, to a vacant lot at the intersection of N. 15th and N. Warner streets. There, the groundbreaking for Jones Hall took place, and construction on the campus as we know it began.",
                :pictures => ["/images/location_images/JonesCircle/JonesCircle1.jpg", "/images/location_images/JonesCircle/JonesCircle2.jpg", "/images/location_images/JonesCircle/JonesCircle3.jpg","/images/location_images/JonesCircle/JonesCircle2.jpg"],
                :latitude => "47.263575",
                :longitude => "-122.479593"
                },
                {
                  :name => "Howarth Hall",
                  :logo_url => "/images/location_images/HowarthHall/HowarthHallLogo.jpg",
                  :short_description => "Howarth Hall is home to the psychology department, School of Education, Center for Writing, Learning, and Teaching, and Career and Employment Services. ",
                  :long_description => "Howarth Hall was once the original science facility, but is now home to the School of Education, the Center for Writing, Learning and Teaching and Human Resources. Eighty-nine percent of graduates from the School of Education are employed within six months of graduation, the highest placement rate in the state of Washington. The Center for Writing, Learning and Teaching assists students with everything from organic chemistry exams and philosophy papers to fellowship applications. The Center for Writing, Learning and Teaching rewards exceptional undergraduate writing in a variety of disciplines with eight annual prizes funded by the Hearst Endowment for Writing.",
                  :pictures => ["/images/location_images/HowarthHall/HowarthHall1.JPG", "/images/location_images/HowarthHall/HowarthHall2.JPG" ],
                  :latitude => "47.263364",
                  :longitude => "-122.480419"
                },
                {
                  :name => "Jones Hall",
                  :logo_url => "/images/location_images/JonesHall/JonesHallLogo.jpg",
                  :short_description => "The oldest building on campus, Jones Hall is Puget Sound's administrative hub.",
                  :long_description => " Jones Hall is Puget Sound's administrative hub, housing offices for admission, the president, the registrar, financial aid, and more. Jones Hall is located at the eastern end of Jones Circle. Each year, more than 4,000 prospective students and their families tour campus, beginning their visits in Jones Hall at the Office of Admission.",
                  :pictures => ["/images/location_images/JonesHall/JonesHall1.jpg", "/images/location_images/JonesHall/JonesHall2.jpg","/images/location_images/JonesHall/JonesHallLogo.jpg"],
                  :latitude => "47.263651",
                  :longitude => "-122.480823"
                },
                {
                  :name => "McIntyre Hall",
                  :logo_url => "/images/location_images/McIntyreHall/McIntyreHallLogo.jpg",
                  :short_description => "McIntyre Hall houses the comparative sociology and economics departments, as well as the School of Business and Leadership.",
                  :long_description => "Built in 1966, McIntyre Hall was partially funded by the George F. Jewett Foundation, in addition to a gift from Puget Sound Board of Trustees member Norton Clapp.  J. Fritz Jewett, Jr. and alumna Lucy Jewett are the son-in-law and daughter of Charles Edwin McIntyre, for whom the academic building is named.  Mr. McIntyre was a Weyerhaeuser executive. Today, it houses the comparative sociology and economics departments, as well as the School of Business and Leadership",
                  :pictures => ["/images/location_images/McIntyreHall/McIntyreHall1.jpg","/images/location_images/McIntyreHall/McIntyreHall2.jpg","/images/location_images/McIntyreHall/McIntyreHall3.jpg"],
                  :latitude => "47.263889",
                  :longitude => "-122.480240"
                },
            {
               :name => "Kittredge Hall & Art Gallery",
               :logo_url => "/images/location_images/Kittredge/KittredgeLogo.jpg",
               :short_description => "Kittredge Hall houses the University's art deparment as well as its art gallery.",
               :long_description => "Kittredge Hall houses offices for art department faculty, as well as Kittredge Gallery. Puget Sound's art department offers Bachelor of Arts degrees in studio art and art history, and art classes are available for majors and nonmajors alike.",
               :pictures => ["/images/location_images/Kittredge/Kittredge1.jpg","/images/location_images/Kittredge/Kittredge2.jpg","/images/location_images/Kittredge/Kittredge3.jpg","/images/location_images/Kittredge/Kittredge4.jpg","/images/location_images/Kittredge/Kittredge5.jpg","/images/location_images/Kittredge/Kittredge6.jpg","/images/location_images/Kittredge/Kittredge7.jpg"],
               :latitude => "47.263957",
               :longitude => "-122.479164"
             },
            {
               :name => "Sculpture and Ceramics Buildings",
               :logo_url => "/images/location_images/Ceramics/CeramicsLogo.jpg",
               :short_description => "Our Sculpture and Ceramics buildings allows students to pursue coursework in a variety of areas.",
               :long_description => "Studio art majors may concentrate their studies in one of the following areas: ceramics, painting, printmaking, or sculpture. Puget Sound's Ceramics Building is located on the northeast end of campus, next to the Sculpture Building and just north of Kittredge Gallery.Built on a residential scale to blend easily with the homes and buildings surrounding it, the Sculpture Building was built efficiently to include a metal shop, woodworking studio, welding booth, painting booth, and outdoor covered work spaces.",
               :pictures => ["/images/location_images/Ceramics/Ceramics1.jpg", "/images/location_images/Ceramics/Ceramics2.jpg", "/images/location_images/Ceramics/Ceramics3.jpg", "/images/location_images/Ceramics/Ceramics4.jpg", "/images/location_images/Ceramics/Ceramics5.jpg"],
               :latitude => "47.264129",
               :longitude => "-122.478695"
             },
            {
               :name => "University & Smith Residence Halls",
               :logo_url => "/images/location_images/Smith/SmithLogo.jpg",
               :short_description => "The University and Smith Residence Halls house continuing and transfering students.",
               :long_description => "Smith Hall overlooks the north quad, where students can often be found studying, playing Frisbee, and catching up with friends. University Hall houses approximately continuing and transfer students in semi-suites, with three to five students sharing a common bathroom.",
               :pictures => ["/images/location_images/Smith/Smith1.jpg","/images/location_images/Smith/Smith2.jpg","/images/location_images/Smith/Smith3.jpg", "/images/location_images/Smith/Smith4.jpg","/images/location_images/Smith/Smith5.jpg","/images/location_images/Smith/Smith6.jpg","/images/location_images/Smith/Smith7.jpg"],
               :latitude => "47.264549",
               :longitude => "-122.479918"
             },
            {
               :name => "Anderson/Langdon, Harrington, & Smith Residence Halls ",
               :logo_url => "/images/location_images/Anderson/AndersonLogo.jpg",
               :short_description => "These Residence Halls offer both single-gender and coed floors.",
               :long_description => "Anderson/Langdon has a combination of both single-gender and coed floors throughout the building, offering a variety of different living situations. Students living in Anderson/Langdon have a variety of room options: singles, doubles, triples, and quads. Harrington offers mostly two-person rooms, with several larger three-person rooms available. Residents of Schiff Hall participate in adventure education, using outdoor experiences as a forum for teaching important skills and abilities applicable to all aspects of life at the college and beyond. Outdoor experiences include backpacking, canoeing, mountain biking, sea kayaking and cross-country skiing.",
               :pictures => ["/images/location_images/Anderson/Anderson1.jpg","/images/location_images/Anderson/Anderson2.jpg","/images/location_images/Anderson/Anderson3.jpg","/images/location_images/Anderson/Anderson4.jpg","/images/location_images/Anderson/Anderson5.jpg","/images/location_images/Anderson/Anderson6.jpg","/images/location_images/Anderson/Anderson7.jpg"],
               :latitude => "47.264926",
               :longitude => "-122.480403"
             },
                {
                  :name => "Kilworth Memorial Chapel",
                  :logo_url => "/images/location_images/KilworthChapel/KilworthChapelLogo.jpg",
                  :short_description => "A New England-style chapel on the North side of campus.",
                  :long_description => "Commemorating Puget Sound’s Methodist heritage, the classic New England-style chapel houses the Bethel Schneebeck Organ, the first Fritts-Richards organ built for a college. It is used primarily for campus events and vocal concerts, but also is available for wedding ceremonies of members of the Puget Sound community.",
                  :pictures => ["/images/location_images/KilworthChapel/KilworthChapel1.jpg","/images/location_images/KilworthChapel/KilworthChapel2.jpg","/images/location_images/KilworthChapel/KilworthChapel3.jpg"],
                  :latitude => "47.265312",
                  :longitude => "-122.481743"
             },
             {
               :name => "President's House",
               :logo_url => "/images/location_images/PresidentsHouse/PresHouseIcon.jpg",
               :short_description => "The President's House is separated from the main part of campus by a wooded area affectionately known as the President's Woods.",
               :long_description => "The President's House is located on the northwest border of campus, at the intersection of Union Avenue and N. 18t Street. President Ron and Mary Thomas often host events in their home honoring students, alumni, and campus guests.",
               :pictures => ["/images/location_images/PresidentsHouse/PresHouseIcon.jpg","/images/location_images/PresidentsHouse/PresHouse1.jpg"],
               :latitude => "47.265476",
               :longitude => "-122.483109"
             },
                {
                  :name => "Collins Memorial Library",
                  :logo_url => "/images/location_images/CollinsLibrary/CollinsLibraryLogo.jpg",
                  :short_description => "The library offers an ideal location to study with an impressive reading room, extensive multimedia resources, and wireless printing and Internet access.",
                  :long_description => "With more than 550,000 volumes of books and periodicals—and a substantial collection of audiovisual, periodical, electronic, and microfilm units—the library offers an ideal location to study with an impressive reading room, extensive multimedia resources, and wireless printing and Internet access. Collins Memorial Library typically is open about 115 hours per week during the academic year to allow plenty of study time for students. During final exams, the library remains open 24/7. The library offers a comfortable and wireless atmosphere for learning and a range of services, including library instruction, circulation of print and media materials, digital materials, course reserves, interlibrary loans, reference, and a learning commons with computers.",
                  :pictures => ["/images/location_images/CollinsLibrary/CollinsLibrary1.jpg"],
                  :latitude => "47.264271",
                  :longitude => "-122.481756"
                },
               {
               :name => "Alcorn Arboretum",
               :logo_url =>  "http://www.pugetsound.edu/images/vt/buildings/_DSC9465.jpg",
               :short_description => "More than 2,000 trees dot the campus landscape. Meandering paths and walkways create leafy enclaves and resting spots.",
               :long_description => "The grounds of University of Puget Sound are designated an arboretum in honor of longtime biology professor Gordon Dee Alcorn, who was the unofficial landscape recorder during his tenure with the college. The Puget Sound campus is 97 acres of landscaped grounds and traditional Tudor-Gothic architecture. Campus planners have consciously worked to extend the \"wandering glen\" feel created by the canopy of Douglas firs on campus.",
               :pictures => ["http://www.pugetsound.edu/images/vt/buildings/Abor.jpg", "http://www.pugetsound.edu/images/vt/buildings/Abor_3.jpg", "http://www.pugetsound.edu/images/vt/buildings/Abor_4.jpg"],
               :latitude => "47.264203",
               :longitude => "-122.482072"
               
             },
             {
               :name => "Karlen Quad",
               :logo_url => "/images/location_images/KarlenQuad/KarlenQuad3.jpg",
               :short_description => "Stretching from the front entrance of Collins Memorial Library to Todd Field at the center of campus, Karlen Quadrangle is one of Puget Sound's wide-open green spaces.",
               :long_description => "The Color Post stands near the center of Karlen Quad, commemorating past Puget Sound graduating classes. The post serves as a familiar landmark for soon-to-be graduates, as well; seniors line up for Commencement at the post and proceed to Baker Stadium each May.",
               :pictures => ["/images/location_images/KarlenQuad/KarlenQuad1.jpg","/images/location_images/KarlenQuad/KarlenQuad2.jpg","/images/location_images/KarlenQuad/KarlenQuadLogo.jpg","/images/location_images/KarlenQuad/KarlenQuad4.jpg","/images/location_images/KarlenQuad5.jgp"],
               :latitude => "47.263713",
               :longitude => "-122.481678"
             },
             {
               :name => "Music Building & Schneebeck Concert Hall",
               :logo_url => "/images/location_images/MusicHall/MusicHallLogo.jpg",
               :short_description => "Puget Sound's conservatory-quality School of Music is located in the Music Building. Located in the Music Building, Schneebeck Concert Hall is Puget Sound's main performance space.",
               :long_description => "The School of Music is home to one of the premiere music programs in the country. Students in any of the 12 performance groups or members of the distinguished faculty perform in the acoustically superb 500 seat Concert Hall, which hosts over 90 concerts and recitals each year. Musicians hone their talents in either the vocal or instrumental rehearsal halls. There are also 22 practice rooms for use primarily by music students, but available to all. It is not unusual to hear strains of classical violin, a tenor sax or a lone soprano late in the evening and into the early hours of the morning.",
               :pictures => ["/images/location_images/MusicHall/MusicHall1.jpg","/images/location_images/MusicHall/MusicHall2.jpg","/images/location_images/MusicHall/MusicHall3.jpg", "/images/location_images/MusicHall/MusicHall4.jpg", "/images/location_images/MusicHall/MusicHall5.jpg"],
               :latitude => "47.263663",
               :longitude => "-122.482128"
             },
             {
               :name => "Thompson Hall",
               :logo_url => "/images/location_images/ThompsonHall/ThompsonHallLogo.jpg",
               :short_description => "Thompson Hall is Puget Sound's original science building and currently houses its math and computer science departments.",
               :long_description => "Built in 1967 as the new science complex, Thompson Hall was named by the Board of Trustees in honor of the university's tenth president, R. Franklin Thompson, who served from 1942 to 1973 as president then stayed on post-retirement as chancellor, with responsibility for public relations, church relations, and financial development.",
               :pictures => ["/images/location_images/ThompsonHall/ThompsonHall1.jpg","/images/location_images/ThompsonHall/ThompsonHall2.jpg", "/images/location_images/ThompsonHall/ThompsonHall3.jpg","/images/location_images/ThompsonHall/ThompsonHall4.jpg", "/images/location_images/ThompsonHall/ThompsonHall5.jpg", "/images/location_images/ThompsonHall/ThompsonHall6.jpg"],
               :latitude => "47.263549",
               :longitude => "-122.482726"
       
               },
             {
               :name => "Harned Hall",
               :logo_url => "/images/location_images/HarnedHall/HarnedHallLogo.jpg",
               :short_description => "Harned Hall is Puget Sound's 51,000 foot science laboratory building.",
               :long_description => "Harned Hall facilitates the
contemporary study of science and encourages even greater interaction among faculty and students, particularly at the intersection of various scientific disciplines. The building includes laboratory spaces for the study of biology, chemistry, environmental science, geology, and physics, and accommodates an increase in science majors researching projects both in the laboratory setting and in fieldwork throughout Puget Sound. A key feature of the building is Science on Display, where creative demonstrations and artistic representations of the principles of science, mathematics, and technology are employed throughout the building. ",
               :pictures => ["/images/location_images/HarnedHall/HarnedHall1.jpg","/images/location_images/HarnedHall/HarnedHall2.jpg","/images/location_images/HarnedHall/HarnedHall3.jpg","/images/location_images/HarnedHall/HarnedHall4.jpg","/images/location_images/HarnedHall/HarnedHall5.jpg","/images/location_images/HarnedHall/HarnedHall6.jpg","/images/location_images/HarnedHall/HarnedHall7.jpg"],
               :latitude => "47.263656",
               :longitude => "-122.483772"
             },
             {
               :name => "Benefactor Plaza & Todd Field",
               :logo_url => "/images/location_images/ToddField/ToddFieldLogo.jpg",
               :short_description => "Benefactor Plaza honors the many generous donors who have helped make University of Puget Sound the place it is today. Todd Field joins Karlen Quad to form an expansive green space.",
               :long_description => "Todd Field joins Karlen Quad to form an expansive green space on campus perfect for pickup games of ultimate Frisbee, intramural sports practice, hosting LogJam!, our annual welcome-back festival and activity fair, or just drinking in the sunshine while walking from the library to Wallace Gym.",
               :pictures => ["/images/location_images/ToddField/ToddField1.jpg","/images/location_images/ToddField/ToddField2.jpg","/images/location_images/ToddField/ToddField3.jpg","/images/location_images/ToddField/ToddField4.jpg","/images/location_images/ToddField/ToddField5.jpg" ],
               :latitude => "47.263007",
               :longitude => "-122.481172"
             },
             {
               :name => "Wyatt Hall",
               :logo_url => "http://www.pugetsound.edu/images/vt/buildings/WyattTD056.jpg",
               :short_description => "The building houses various humanities departments, as well as offices for politics and government.",
               :long_description => "Built in 2000, Wyatt Hall is named for 23-year Puget Sound board of trustees member Lowry Wyatt. The building is home to offices for the humanities and politics and government departments, as well as classrooms. More than half of Wyatt Hall's classrooms are seminar style, accommodating the discussion-oriented teaching most common at Puget Sound. The building also has state-of-the-art slide lecture facilities, presentation rooms, and cutting-edge “turn-around” classrooms with computer terminals located around the perimeter.",
               :pictures => ["http://www.pugetsound.edu/images/vt/buildings/WyattTD026.jpg","http://www.pugetsound.edu/images/vt/buildings/wyatt_2.jpg","http://www.pugetsound.edu/images/vt/buildings/WyattJenniDenekas%6011.jpg","http://www.pugetsound.edu/images/vt/buildings/WyattTD011.jpg","http://www.pugetsound.edu/images/vt/buildings/Wyatt%20Hall.jpg"],
               :latitude => "47.261800",
               :longitude => "-122.482470"
             },
             {
               :name => "Warner Gymnasium",
               :logo_url => "http://www.pugetsound.edu/images/vt/buildings/Warner+Stadum.jpg",
               :short_description => "Warner Gym is home to Wallace Pool, a 25-meter indoor pool used by the Logger men's and women's swim teams as well as intramural and club teams, such as kayaking and water polo.",
               :long_description => "Though named for a location rather than for specific friends, faculty, or students of the University, Warner Gymnasium was one of the first buildings placed on campus during the university's move to its current location at 15th and Warner. It was completed in 1924 along with Jones Hall.",
               :pictures => ["http://www.pugetsound.edu/images/vt/buildings/Warner+Stadum.jpg","http://www.pugetsound.edu/images/vt/buildings/Warner%20Gym.jpg","http://www.pugetsound.edu/images/vt/buildings/Warner.jpg","http://www.pugetsound.edu/images/vt/buildings/WarnerGym_1.jpg"],
               :latitude => "47.261607",
               :longitude => "-122.481695"
             },
             {
             :name => "Baker Stadium",
             :logo_url => "http://www.pugetsound.edu/images/vt/buildings/Athletics%20stadium.jpg",
             :short_description => "The stadium hosts Logger football, soccer, cross country, track and field, and women's lacrosse, as well as the college's Commencement Ceremony each May.",
             :long_description => "Baker Stadium has a covered seating capacity of 3000, uncovered seating for 500, and is located on the west side of campus, on N. 11th Street. The stadium hosts Logger football, soccer, cross country, track and field, and women's lacrosse, as well as the college's Commencement Ceremony each May. Student-athletes at Puget Sound participate in 23 varsity sports and compete in the NCAA Division III Northwest Conference (NWC). Logger athletic teams collectively and consistently rank in the top 15 percent nationally among more than 400 NCAA Division III teams.",
               :pictures => ["http://www.pugetsound.edu/images/vt/buildings/Athletics%20stadium.jpg", "http://www.pugetsound.edu/images/vt/buildings/stadium.jpg", "http://www.pugetsound.edu/images/vt/buildings/wm%20basketball%20team%6008_09_1.jpg", "http://www.pugetsound.edu/images/vt/buildings/Peytonfieldarial.jpg", "http://www.pugetsound.edu/images/vt/buildings/baker_football.jpg", "http://www.pugetsound.edu/images/vt/buildings/%20Peyton%20field%206814-27a.jpg"],
               :latitude => "47.260901",
               :longitude => "-122.481861"
             },
            {
               :name => "Weyerhaeuser Hall & Mobility Park",
               :logo_url => "/images/location_images/MobilityPark/MobilityParkLogo.jpg",
               :short_description => "This comprehensive center  prepares students for work in health and behavioral sciences.",
               :long_description => "lorem ipsum",
               :pictures => ["/images/location_images/MobilityPark/MobilityPark1.jpg","/images/location_images/MobilityPark/MobilityPark2.jpg","/images/location_images/MobilityPark/MobilityPark3.jpg","/images/location_images/MobilityPark/MobilityPark4.jpg","/images/location_images/MobilityPark/MobilityPark5.jpg" ],
               :latitude => "47.260509",
               :longitude => "-122.480693"
             },
             {
               :name => "Memorial Fieldhouse & Pamplin Sports Center",
               :logo_url => "/images/location_images/Fieldhouse/Fieldhouse1.jpg",
               :short_description => "Memorial Fieldhouse houses basketball, volleyball, badminton, and pickle ball courts",
               :long_description => "Weyerhaeuser Hall is a 42,500 square-foot Center for Health Sciences housing classrooms, patient and teaching clinics (orthopedic, neurology, activities and performance adaptations, prevocational/vocational, and an apartment lab), and teaching laboratories (motion analysis and biomechanics, exercise physiology, animal learning, wet lab and surgery, observation lab, and a computer-based research suite).",
               :pictures => ["/images/location_images/Fieldhouse/Fieldhouse1.jpg", "/images/location_images/Fieldhouse/Fieldhouse2.jpg", "/images/location_images/Fieldhouse/Fieldhouse3.jpg", "/images/location_images/Fieldhouse/Fieldhouse4.jpg", "/images/location_images/Fieldhouse/Fieldhouse5.jpg", "/images/location_images/Fieldhouse/Fieldhouse6.jpg", "/images/location_images/Fieldhouse/Fieldhouse7.jpg","/images/location_images/Fieldhouse/Fieldhouse8.jpg"],
               :latitude => "47.259718",
               :longitude => "-122.481183"
             },
            {
               :name => "Theme House Row",
               :logo_url => "/images/location_images/ThemeHouse/ThemeHouseLogo.jpg",
               :short_description => "The stretch of N. Lawrence Street on the southeast side of campus is home to Theme House Row, a series of theme houses that serve as student residences.",
               :long_description => "Theme houses create unique opportunities for education within the living environment. Every year, residents of each house plan programs relating to the house's theme, inviting the entire campus community. Theme houses are legendary at Puget Sound. A popular housing option, the houses are grouped around language and topical themes, such as the Pura Vida Coffee House, Earth-friendly Gourmet House, or Random Acts of Kindness House.",
               :pictures => ["/images/location_images/ThemeHouse/ThemeHouseLogo.jpg","/images/location_images/ThemeHouse/ThemeHouse1.jpg", "/images/location_images/ThemeHouse/ThemeHouse2.jpg"],
               :latitude => "47.260871",
               :longitude => "-122.479459"
             },
            {
               :name => "Seward & Regester Residence Halls",
               :logo_url => "/images/location_images/SewardRegester/SewardRegesterLogo.jpg",
               :short_description => "Regester and Seward Residence Halls are located on the south side of campus and are coed by floor.",
               :long_description => "Seward Hall is located near the center of campus, just northwest of the intersection of N. 13th and Lawrence streets. Coed by floor, Seward offers mainly double-occupancy rooms and a few triples. Coed by door, Regester offers double-occupancy rooms with several lounge areas.",
               :pictures => ["/images/location_images/SewardRegester/SewardRegester1.jpg","/images/location_images/SewardRegester/SewardRegester2.jpg","/images/location_images/SewardRegester/SewardRegester3.jpg","/images/location_images/SewardRegester/SewardRegester4.jpg","/images/location_images/SewardRegester/SewardRegester5.jpg" ],
               :latitude => "47.262080",
               :longitude => "-122.480403"
             },
            {
               :name => "Todd/Phibbs & Trimble Residence Halls",
               :logo_url => "/images/location_images/ToddPhibbs/ToddPhibbsLogo.jpg",
               :short_description => "Todd/Phibbs Hall offers primarily double-occupancy rooms while Trimble features single rooms in suite-style configuration designed to enhance residential-academic programs. ",
               :long_description => "Centrally located on campus, Todd/Phibbs Hall overlooks both Todd Field and the south quad. Todd/Phibbs Hall offers primarily double-occupancy rooms on its four coed floors. Trimble Hall is located near the center of campus, west of Wheelock Student Center and south of Howarth Hall. Trimble features single rooms in suite-style configuration designed to enhance residential-academic programs.",
               :pictures => ["/images/location_images/ToddPhibbs/ToddPhibbs1.jpg","/images/location_images/ToddPhibbs/ToddPhibbs2.jpg","/images/location_images/ToddPhibbs/ToddPhibbs3.jpg","/images/location_images/ToddPhibbs/ToddPhibbs4.jpg","/images/location_images/ToddPhibbs/ToddPhibbs5.jpg","/images/location_images/ToddPhibbs/ToddPhibbs6.jpg","/images/location_images/ToddPhibbs/ToddPhibbs7.jpg","/images/location_images/ToddPhibbs/ToddPhibbs8.jpg"],
               :latitude => "47.262667",
               :longitude => "-122.479673"
             }
            ]

locations.each do |location|
  Location.create!(location)
end
