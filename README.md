# PDFKit test

## This test is based on the following libraries
1. pdfkit ruby gem: https://github.com/pdfkit/pdfkit
2. pdfkit: https://pdfkit.org/

## To run this PDFKit test
1. Install wkhtmltopdf
For local testing, wkhtmltopdf is installed globally using homebrew:
`brew install --cask wkhtmltopdf`

2. Install dependencies (just pdfkit)
`bundle install`

3. Run generate.rb
`ruby generate.rb`

4. Notice options meant for pdfkit are being rejected by wkhtmltopdf
5. Look at the source code of the pdfkit ruby gem to see PDFKit initializer is meant to accept options object as second argument