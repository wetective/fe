class Wanted
  attr_reader :files,
              :reward_text,
              :aliases,
              :warning_message,
              :field_offices,
              :sex,
              :scars_and_marks,
              :caution,
              :race,
              :hair,
              :weight,
              :description,
              :title,
              :uid,
              :eyes,
              :status,
              :subjects,
              :dates_of_birth_used

  def initialize(data)
    @files = data[:files][0][:url]
    @reward_text = data[:reward_text]
    @aliases = data[:aliases] ? data[:aliases] : nil
    @warning_message = data[:warning_message]
    @field_offices = data[:field_offices]
    @sex = data[:sex]
    @scars_and_marks = data[:scars_and_marks]
    @caution = data[:caution]
    @race = data[:race]
    @hair = data[:hair]
    @weight = data[:weight]
    @description = data[:description]
    @title = data[:title]
    @uid = data[:uid]
    @eyes = data[:eyes]
    @status = data[:status]
    @subjects = data[:subjects]
    @dates_of_birth_used = data[:dates_of_birth_used]
  end
end