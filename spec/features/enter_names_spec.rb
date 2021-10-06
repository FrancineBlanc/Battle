feature "entering player names" do
  scenario "when a player joins the game" do
    visit "/"
    within("#session") do
      fill_in "player1_name", with: "John Doe"
      fill_in "player2_name", with: "Jane Doe"
    end
    click_button "Submit"
    expect(page).to have_content("John Doe")
    expect(page).to have_content("Jane Doe")
  end
end