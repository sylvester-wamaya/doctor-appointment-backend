User.create(name: 'Junior')
User.create(name: 'John')

Doctor.create(name: 'clint', specialization: 'surgery', consultation_fee: 4, prescription_fee: 5, photo: "url", user_id: User.first.id)
Doctor.create(name: 'clinton', specialization: 'surgery', consultation_fee: 4, prescription_fee: 5, photo: "url", user_id: User.first.id)

Appointment.create(doctor_id: Doctor.first.id, user_id: User.first.id, date: DateTime.now, location: 'lagos')
Appointment.create(doctor_id: Doctor.second.id, user_id: User.first.id, date: DateTime.now, location: 'cambleville')
Appointment.create(doctor_id: Doctor.first.id, user_id: User.first.id, date: DateTime.now, location: 'igun')
Appointment.create(doctor_id: Doctor.second.id, user_id: User.first.id, date: DateTime.now, location: 'capetown')

Appointment.create(doctor_id: Doctor.first.id, user_id: User.second.id, date: DateTime.now, location: 'lagos')
Appointment.create(doctor_id: Doctor.second.id, user_id: User.second.id, date: DateTime.now, location: 'cambleville')
Appointment.create(doctor_id: Doctor.first.id, user_id: User.second.id, date: DateTime.now, location: 'igun')
Appointment.create(doctor_id: Doctor.second.id, user_id: User.second.id, date: DateTime.now, location: 'capetown')
