class LandingPageController < ApplicationController
  def index
    user = AdminUser.first
    @cv = {
        user: {
            name: user.name,
            biography: user.biography
        },
        research_interest: {
            subjects: ResearchInterest.all
        }
    }
  end
end
