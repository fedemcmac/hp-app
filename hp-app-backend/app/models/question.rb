class Question < ApplicationRecord
    has_many :answers

    def is_answer_correct?(answer_id)
        is_correct = Answer.find_by(question_id: self.id, correct: true).id == answer_id.to_i
        return is_correct
    end

    # # /questions/1 {"answer_id": "2"}
    # return json: {"is_answer_correct?(answer_id)": is_correct}

end
