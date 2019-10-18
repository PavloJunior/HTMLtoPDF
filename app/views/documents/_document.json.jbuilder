# frozen_string_literal: true

json.extract! document, :id, :name, :code, :created_at, :updated_at
json.url document_url(document, format: :json)
