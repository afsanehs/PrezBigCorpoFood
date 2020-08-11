class AttendanceMailer < ApplicationMailer
  default from: 'audeliasender@gmail.com'

  def new_attendance(attendance)

    @attendance = attendance
    @admin = User.find(@attendance.event.admin_id)

    @url  = 'https://event-thp.herokuapp.com/login' 

    mail(to: @admin.email, subject: 'Nouvelle participation à votre évenement') 
  end
end
