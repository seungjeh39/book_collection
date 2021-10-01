# location: spec/feature/integration_spec.rb
require 'rails_helper'

#1
RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'Harry Potter'
    fill_in 'Author', with: 'JK Rowling'
    fill_in 'Price', with: 10
    fill_in 'Published date', with: Date.new(2001, 01, 02)
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('Harry Potter')
    expect(page).to have_content('JK Rowling')
    expect(page).to have_content(10)
    expect(page).to have_content('2001-01-02')
  end
end

#2
RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'The Hunger Games'
    fill_in 'Author', with: 'Suzanne Collins'
    fill_in 'Price', with: 15
    fill_in 'Published date', with: Date.new(2008, 10, 04)
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('The Hunger Games')
    expect(page).to have_content('Suzanne Collins')
    expect(page).to have_content(15)
    expect(page).to have_content('2008-10-04')
  end
end

#3
RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'To Kill a Mockingbird'
    fill_in 'Author', with: 'Harper Lee'
    fill_in 'Price', with: 20
    fill_in 'Published date', with: Date.new(1960, 07, 11)
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('To Kill a Mockingbird')
    expect(page).to have_content('Harper Lee')
    expect(page).to have_content(20)
    expect(page).to have_content('1960-07-11')
  end
end

#4
RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'The Great Gatsby'
    fill_in 'Author', with: 'F. Scott Fitzgerald'
    fill_in 'Price', with: 25
    fill_in 'Published date', with: Date.new(1925, 04, 10)
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('The Great Gatsby')
    expect(page).to have_content('F. Scott Fitzgerald')
    expect(page).to have_content(25)
    expect(page).to have_content('1925-04-10')
  end
end

