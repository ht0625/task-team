class OwnerMailer < ApplicationMailer
  def owner_mail(team)
    @team = team
    mail to: team.owner.email, subject: "リーダー権限が付与されました"
  end
end
