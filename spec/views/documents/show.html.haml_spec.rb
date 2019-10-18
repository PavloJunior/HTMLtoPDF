# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'documents/show', type: :view do
  before(:each) do
    @document = assign(:document, Document.create!(
                                    name: 'Name',
                                    code: 'Code'
                                  ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Code/)
  end
end
