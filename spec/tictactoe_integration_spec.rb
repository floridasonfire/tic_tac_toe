require('capybara/rspec')
require('./app')
require('pry')

Capybara.app = Sinatra::Application

describe('add players path', {:type=> :feature}) do
  it('processes input and adds player to new game') do
    visit('/')
    click_button('Play!')
    expect(page).to have_content("Lets play Tic Tac Toe")
  end
end
