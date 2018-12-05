class FeedbackNotificationMailer < ApplicationMailer
  
  def feedback_notification name, voting_summary, total, email
    @name = name
    @sim = voting_summary[:sim]
    @nao = voting_summary[:nao]
    @nao_sei = voting_summary[:nao_sei]
    @justificativas = voting_summary[:justificativas]
    @total = total
    mail(to: email, subject: 'Agile Coach Camp 2018 - Feedback de Participação')
  end
    
    
end
