require File.dirname(__FILE__) + '/../../config/environment.rb'

class HomeController < ApplicationController
  def print
  	report = ODFReport::Report.new("#{Rails.root}/app/reports/template.odt") do |r|
   		r.add_field :user_name, 'User Name'
  		r.add_field :address, "User's address"
  	end
  report_file_name = report.generate
  send_file(report_file_name)
  end
end
