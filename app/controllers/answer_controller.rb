class AnswerController < ApplicationController
  http_basic_authenticate_with name: "Visitor", password: "secret"
  def index
    @name = 'Anitha Palanisamy'
    @email = 'anithavel.palanisamy@gmail.com'
    @github = 'https://github.com/AnithaPal'
    @linkedin = 'https://www.linkedin.com/in/anithapalanisamy'
  end
end
