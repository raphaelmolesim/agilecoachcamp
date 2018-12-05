namespace :notification_center do
  desc "Send feedback to all participants"
  task send_feedback: :environment do
    require 'csv'
    feedback_csv = File.join(Rails.root, 'lib','tasks','FeedbackdeParticipao_Data_1543974168.csv')
    header = true
    summary = []
    total = 0
    CSV.read(feedback_csv).each do |row|
      if header
        names = row - ["Browser", "IP Address", "Unique ID", "Location", "Por que você não recomendaria?", "Time", "Quem é você?"]
        header = false
        names.each { |name| summary << { name => {sim: 0, nao: 0, nao_sei: 0, justificativas: []} } }
        #puts summary
        next
      end
      #puts summary.size
      offset = 2
      i = 0
      summary.each_with_index do | item, index | 
        #puts row.inspect
        #puts item
        #puts "index[#{offset}+#{i}]"
        feedbacks = item.values.first
        resposta = row[offset+i]
        #puts "Resposta: #{resposta}"
        if resposta == "Sim"
          feedbacks[:sim] += 1
        elsif resposta == "Não"
          feedbacks[:nao] += 1
          feedbacks[:justificativas] << row[offset+i+1]
        elsif resposta == "Não Sei"
          feedbacks[:nao_sei] += 1
        else
          #raise Exception.new("Resposta inválida: #{resposta}")
        end
        i += 2 
      end
      total += 1
    end
    #puts summary
      
    emails_csv = File.join(Rails.root, 'lib','tasks','emails.csv')
    emails = CSV.read(emails_csv).first
    
    summary.each do | entry |
      name = entry.keys.first
      email =  emails.select { |e| e.include? name.split(' ').last.downcase }.first 
      if not email
        email =  emails.select { |e| e.include? name.split(' ').first.downcase }.first 
      end
      if name.split(' ').first.downcase == "eraldo"
        email =  emails.select { |e| e.include? name.split(' ').first.downcase }.first
      end
      
      puts "Sending to #{email}" 
      FeedbackNotificationMailer.feedback_notification(entry.keys.first, entry.values.first, total, email).deliver_now
      
    end
    
    
  end

end
