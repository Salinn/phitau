module RushInterviewsHelper
  def interview_name
    (@rush_interview.user && @rush_interview.user.name) ? @rush_interview.user.name : 'No Name Available'
  end

  def nickname
    interview_questionnaire = @rush_interview.user.interview_questionnaires.last
    if interview_questionnaire.present? && interview_questionnaire.nickname.present?
      "(#{@rush_interview.user.interview_questionnaires.last.nickname})"
    end
  end

  def potentials_picture
    if @rush_interview.user && @rush_interview.user.profile_picture?
      @rush_interview.user.profile_picture_url
    else
      'no-image.png'
    end
  end

  def filled_out_questionnare?
    @rush_interview.user && @rush_interview.user.interview_questionnaires.last.present?
  end
end
