# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'documents/new', type: :view do
  before(:each) do
    assign(:document, Document.new(
                        name: 'MyString',
                        code: 'MyString'
                      ))
  end

  it 'renders new document form' do
    render

    assert_select 'form[action=?][method=?]', documents_path, 'post' do
      assert_select 'input[name=?]', 'document[name]'

      assert_select 'input[name=?]', 'document[code]'
    end
  end
end
