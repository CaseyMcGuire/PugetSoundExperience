Given /^a user visits the homepage$/ do 
	visit root_path
end

Then /^he should see links to experiences$/ do
    page.should have_selector('a', text: "Virtual Tour")
    page.should have_link("Virtual Tour", href: tour_path)

    page.should have_selector('a', text: "Visit Rainier")
    page.should have_link("Visit Rainier", href: webcam_path)

    page.should have_selector('a', text: "KUPS Radio")
    page.should have_link("KUPS Radio", href: kups_path)

    page.should have_selector('a', text: "Local Highlights")
    page.should have_link("Local Highlights", href: highlights_path)

    page.should have_selector('a', text: "Local Highlights")
    page.should have_link("Local Highlights", href: highlights_path)

end