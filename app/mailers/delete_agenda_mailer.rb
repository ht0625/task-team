class DeleteAgendaMailer < ApplicationMailer
  def delete_agenda_mail(agenda)
    @agenda = agenda
    mail to: @agenda.team.members.pluck(:email), subject: "アジェンダが削除されました"
  end
end
