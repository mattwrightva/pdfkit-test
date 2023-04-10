# frozen_string_literal: true

require 'pdfkit'

myfile = File.read('index.html')
kit = PDFKit.new(myfile, { page_size: 'Letter', pdfVersion: '1.5', tagged: true, displayTitle: true })

kit.to_pdf

kit.to_file('mypdf.pdf')
