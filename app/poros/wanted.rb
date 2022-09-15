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
    @reward_text = data[:reward_text] == nil ? data[:reward_text].to_s : data[:reward_text]
    @aliases = data[:aliases] == nil ? [] : data[:aliases]
    @warning_message = data[:warning_message] == nil ? data[:warning_message].to_s : data[:warning_message]
    @field_offices = data[:field_offices] == nil ? data[:field_offices].to_s : data[:field_offices]
    @sex = data[:sex] == nil ? data[:sex].to_s : data[:sex]
    @scars_and_marks = data[:scars_and_marks] == nil ? data[:scars_and_marks].to_s : data[:scars_and_marks]
    @caution = data[:caution] == nil ? data[:caution].to_s : data[:caution]
    @race = data[:race] == nil ? data[:race].to_s : data[:race]
    @hair = data[:hair] == nil ? data[:hair].to_s : data[:hair]
    @weight = data[:weight] == nil ? data[:weight].to_s : data[:weight]
    @description = data[:description] == nil ? data[:description].to_s : data[:description]
    @title = data[:title] == nil ? data[:title].to_s : data[:title]
    @uid = data[:uid] == nil ? data[:uid].to_s : data[:uid]
    @eyes = data[:eyes] == nil ? data[:eyes].to_s : data[:eyes]
    @status = data[:status] == nil ? data[:status].to_s : data[:status]
    @subjects = data[:subjects] == nil ? data[:subjects].to_s : data[:subjects]
    @dates_of_birth_used = data[:dates_of_birth_used] == nil ? data[:dates_of_birth_used].to_s : data[:dates_of_birth_used]
  end
end