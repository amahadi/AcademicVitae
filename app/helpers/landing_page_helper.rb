module LandingPageHelper
  def build_academic_year(academic_background)
    if academic_background.start_date.nil? || academic_background.start_date == ''
      academic_background.end_date.strftime('%Y')
    elsif academic_background.end_date.nil? || academic_background.end_date == ''
      "#{academic_background.start_date.strftime('%Y')} - present"
    else
      "#{academic_background.start_date.strftime('%Y')} - #{academic_background.end_date.strftime('%Y')}"
    end
  end
end
