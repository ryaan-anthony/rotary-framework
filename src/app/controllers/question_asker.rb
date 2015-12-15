require_relative '../../lib/controller'
class QuestionAsker < Controller

  def ask

    @validator.validate_request(@arguments)

    question, answer = @arguments

    response = ask_question(question)

    puts 'Correct!' if @validator.same(answer, response)

  end

  protected

  def ask_question(question)
    puts question
    get_response
  end

end