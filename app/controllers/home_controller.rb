# frozen_string_literal: true

class HomeController < ApplicationController
  def index; end

  def showlink
    @code = params[:text1]
    pdf = WickedPdf.new.pdf_from_string(params[:text1])
    send_data(pdf, filename: 'document.pdf', type: 'application/pdf')
  end

  def show
    if params[:commit] == 'Convert from link'
      @link = params[:text1]
      pdf = WickedPdf.new.pdf_from_url(params[:text1])
      send_data(pdf, filename: 'document.pdf', type: 'application/pdf')
    elsif params[:commit] == 'Convert from code'
      @code = params[:text1]
      pdf = WickedPdf.new.pdf_from_string(params[:text1])
      send_data(pdf, filename: 'document.pdf', type: 'application/pdf')
    end
  end
end
