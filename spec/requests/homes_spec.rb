require 'rails_helper'

describe "Home" do
  subject { page }

  shared_examples_for "all pages" do

    it {should have_selector('button',text: 'Navigation Menu')}
   
    it { should have_selector('a', text: 'Mt. Rainier') }
    it { should have_link('Mt. Rainier', href: webcam_path) }

    it { should have_selector('a', text: "Tour Home") }
    it { should have_link('Tour Home', href: tour_path) }


    it {should have_selector('a', text: "Tacoma Highlights") }
    it {should have_link('Tacoma Highlights', href: highlights_path) }

    it {should have_selector('a', text: "Home")}
    it {should have_link('Home', href: root_path)}

   # it {should have_selector('a', text: "Admissions Info") }
   # it {should have_link("Admissions Info", href: admission_path) }

    #it {should have_selector('a', text: "Puget Sound Facts") }
    #it {should have_link("Puget Sound Facts", href: puget_sound_fact_path) }

    it {should have_selector('a', text: "KUPS Radio") }
    it {should have_link("KUPS Radio", href: kups_path) }

    it {should have_selector('a', text: "Social Media")}
    it {should have_link("Social Media", href: social_media_path)}

    

    #Add test for twitter feed
    
    
  end


  describe "Home page" do
    before { visit root_path }
    
    it {should have_selector('h1', text: "Puget Sound Experience") } 


    it {should have_selector('h3', text: "Look around campus") }
    it {should have_selector('a', text: "Virtual Tour")}
    it {should have_link("Virtual Tour", href: tour_path)}

    it {should have_selector('h3', text: "The Pacific Northwest") }
    it {should have_selector('a', text: "Visit Rainier")}
    it {should have_link("Visit Rainier", href: webcam_path)}

    it {should have_selector('h3', text: "Learn about student-run radio") }
    it {should have_selector('a', text: "KUPS Radio")}
    it {should have_link("KUPS Radio", href: kups_path)}

    it {should have_selector('h3', text: "Tacoma Life")}
    it {should have_selector('a', text: "Local Highlights")}
    it {should have_link("Local Highlights", href: highlights_path)}

    it {should have_selector('h3', text: "Visit our social media")}
    it {should have_selector('a', text: "Connect")}
    it {should have_link("Connect", href: social_media_path)}


   
  end
  
  describe "Tacoma Highlights" do
    before { visit highlights_path }

    it {should have_selector('h3', text: "Red Hot")}
    it {should have_link("Website", href: "https://redhottacoma.com")}

    it {should have_selector('h3', text: "Metronome Coffee")}
   

    it {should have_selector('h3', text: "Silk Thai")}
   

    it {should have_selector('h3', text: "Point Defiance")}
    it {should have_selector('a', text: "Website")}
   

    it_should_behave_like "all pages"
  end

  describe "Mt Rainier" do
    before { visit webcam_path}
    it {should have_selector('h1', text: "Washington's Outdoors")}
    it {should have_selector('h2', text: "The Pacific Northwest")}
    it {should have_selector('h2', text: "Puget Sound Outdoors")}
    it {should have_selector('h2', text: "Visit Mount Rainier")}
    it_should_behave_like "all pages"
  end

  describe "Virtual Tour" do
    before { visit tour_path}
    
    it {should have_selector('h3', text: "Choose a Location")}
    #it {should have_selector('a', text: "Wheelock Student Center")}
    array = ["Wheelock Student Center", 
             "Jones Circle",
             "Howarth Hall",
             "Jones Hall",
             "McIntyre Hall",
             "Kittredge Hall & Art Gallery",
             "Sculpture and Ceramics Buildings",
             "University & Smith Residence Halls",
             "Anderson/Langdon, Harrington, & Smith Residence Halls",
             "Kilworth Memorial Chapel",
             "President's House",
             "Collins Memorial Library",
             "Alcorn Arboretum",
             "Karlen Quad",
             "Music Building & Schneebeck Concert Hall",
             "Thompson Hall",
             "Harned Hall",
             "Benefactor Plaza & Todd Field",
             "Wyatt Hall",
             "Warner Gymnasium",
             "Baker Stadium",
             "Weyerhaeuser Hall & Mobility Park",
             "Memorial Fieldhouse & Pamplin Sports Center",
             "Theme House Row",
             "Seward & Regester Residence Halls",
             "Todd/Phibbs & Trimble Residence Halls"
            ]

    array.each do |i|
      it {should have_selector('a', text: i)}
    end
      
    #Add these links later...
    it_should_behave_like "all pages"
    
    
    
  end

  describe "KUPS Radio" do
    before {visit kups_path}

    it {should have_selector('h1', text: 'KUPS Radio')}
  


    it_should_behave_like "all pages"
  end

  describe "Social Media" do
    before {visit social_media_path}

    it {should have_selector('h3', text: "Like us on Facebook!")}
    it {should have_selector('h3', text: "Follow us on Instagram!")}

    it_should_behave_like "all pages"
  end

end
