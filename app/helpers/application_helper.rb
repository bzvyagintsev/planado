module ApplicationHelper
	def fio person
		[person.surname, person.name, person.patronymic].join(' ') 		
	end
end
