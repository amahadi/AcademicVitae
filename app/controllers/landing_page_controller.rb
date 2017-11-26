class LandingPageController < ApplicationController
  def index
    user = AdminUser.first
    @cv = {
        user: {
            name: user.name,
            biography: user.biography
        },
        research_interests: ResearchInterest.all,
        academic_backgrounds: AcademicBackground.all
    }
  end
end
