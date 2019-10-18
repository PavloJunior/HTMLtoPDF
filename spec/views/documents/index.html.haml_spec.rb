# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'documents/index', type: :view do
  before(:each) do
    assign(:documents, [
             Document.create!(
               name: 'Name',
               code: 'Code'
             ),
             Document.create!(
               name: 'Name',
               code: 'Code'
             )
           ])
  end

  it 'renders a list of documents' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Code'.to_s, count: 2
  end
end
