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

  def build_papers_and_publication(paper_and_publication, publication_number)
    publication_detail = "[#{publication_number}]"
    publication_detail += " #{paper_and_publication.author_names}" if paper_and_publication.author_names.present?
    publication_detail += ", \"#{paper_and_publication.publication_title}\"" if paper_and_publication.publication_title.present?
    publication_detail += ", #{paper_and_publication.conference_title}" if paper_and_publication.conference_title.present?
    publication_detail += ", #{paper_and_publication.conference_venue}" if paper_and_publication.conference_venue.present?
    publication_detail += ", #{paper_and_publication.conference_start_date.strftime('%d')}" if paper_and_publication.conference_start_date.present?
    publication_detail += " - #{paper_and_publication.conference_end_date.strftime('%d')}" if paper_and_publication.conference_end_date.present?
    if paper_and_publication.conference_start_date.present?
      publication_detail += " #{paper_and_publication.conference_start_date.strftime('%B')}, #{paper_and_publication.conference_start_date.strftime('%Y')}"
    end

  end
end
