crumb :root do
  link "Главная", root_path
end

crumb :books do
  link "Книги", books_path
end
crumb :book do |book|
  link book.name, book_path(book)
  parent :books
end
crumb :edit_book do |book|
  link "Редактирование книги", edit_book_path(book)
  parent book
end
crumb :new_book do
  link "Новая книга", new_book_path
  parent :books
end

crumb :workers do
  link "Сотрудники", workers_path
end
crumb :worker do |worker|
  link worker.name, worker_path(worker)
  parent :workers
end
crumb :new_worker do
  link "Новый сотрудник", new_worker_path
  parent :workers
end
crumb :edit_worker do |worker|
  link "Редактирование сотрудника", edit_worker_path(worker)
  parent worker
end

crumb :libraries do
  link "Библиотеки", libraries_path
end
crumb :library do |library|
  link library.name, library_path(library)
  parent :libraries
end
crumb :edit_library do |library|
  link "Редактирование библиотеки", edit_library_path(library)
  parent library
end
crumb :new_library do
  link "Новая библиотека", new_library_path
  parent :libraries
end


crumb :subscribers do
  link "Абоненты", subscribers_path
end
crumb :subscriber do |subscriber|
  link subscriber.name, subscriber_path(subscriber)
  parent :subscribers
end
crumb :edit_subscriber do |subscriber|
  link "Редактирование абонента", edit_subscriber_path(subscriber)
  parent subscriber
end
crumb :new_subscriber do
  link "Новый абонент", new_subscriber_path
  parent :subscribers
end

crumb :issuances do
  link "Выдачи", issuances_path
end
crumb :issuance do |issuance|
  link issuance.id, issuance_path(issuance)
  parent :issuances
end
crumb :edit_issuance do |issuance|
  link "Редактирование выдачи", edit_issuance_path(issuance)
  parent issuance
end
crumb :new_issuance do 
  link "Новая выдача", new_issuance_path
  parent :issuances
end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).