require 'spec_helper'

  describe 'Uploading photos' do

    xit 'displays an image on the post page' do
      visit '/posts/new'
      fill_in 'Description', with: 'Cool magic set'
      attach_file 'Picture', Rails.root.join('spec/images/magicset.jpg')
      click_button 'Create Post'

      expect(page).to have_css 'img.uploaded-pic'
    end
  end