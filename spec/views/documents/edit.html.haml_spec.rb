# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'documents/edit', type: :view do
  before(:each) do
    @document = assign(:document, Document.create!(
                                    name: 'MyString',
                                    code: 'MyString'
                                  ))
  end

  it 'renders the edit document form' do
    render

    assert_select 'form[action=?][method=?]', document_path(@document), 'post' do
      assert_select 'input[name=?]', 'document[name]'

      assert_select 'input[name=?]', 'document[code]'
    end
  end
end
