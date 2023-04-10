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

4. You should see an error rejecting any params that are not allowed for wkhtmltopdf. The trouble here is that the params were not meant for wkhtmltopdf, they were meant for pdfkit. 
5. If you look at the source code of the pdfkit ruby gem, you will see the PDFKit initializer is meant to accept options object as second argument. The trouble is that those same options are passed to wkhtmltopdf's initializer where they are not allowed. 
