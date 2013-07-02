# Odf-report Example

This project is an example of using the gem odf-report. See more at documentation:

http://sandrods.github.io/odf-report/

## Demo

See demo on Heroku
http://odf-report-example.herokuapp.com/home/print

## To run

Install gem odf-report:

    gem install odf-report

Update the gems of project:

    bundle

Start the server:

    rails s

## To access

Access the page:

http://localhost:3000/home/print

The request will return one file called template.odt

## To customize

Open the template.odt at app/reports with OpenOffice and update the file adding new fields inside the brackets:

    [new_value]

To pass value to the new field, update the method print at controller/home adding the bellow line inside the loop:

    r.add_field :new_value, "Value to insert"

Enjoy ;)
