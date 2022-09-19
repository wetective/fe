class Investigation
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
              :dates_of_birth_used,
              :poster

  def initialize(data)
    @files = nil_to_s(data[:files][0][:url])
    @reward_text = nil_to_s(data[:reward_text])
    @aliases = nil_to_a(data[:aliases])
    @warning_message = nil_to_s(data[:warning_message])
    @field_offices = nil_to_s(data[:field_offices])
    @sex = nil_to_s(data[:sex])
    @scars_and_marks = nil_to_s(data[:scars_and_marks])
    @caution = nil_to_s(data[:caution])
    @race = nil_to_s(data[:race])
    @hair = nil_to_s(data[:hair])
    @weight = nil_to_s(data[:weight])
    @description = nil_to_s(data[:description])
    @title = nil_to_s(data[:title])
    @uid = nil_to_s(data[:uid])
    @eyes = nil_to_s(data[:eyes])
    @status = nil_to_s(data[:status])
    @subjects = nil_to_s(data[:subjects])
    @dates_of_birth_used = nil_to_s(data[:dates_of_birth_used])
    @poster = data[:url] + "/@@screenshot.gif"
  end

  def nil_to_s(key)
    key == nil ? key.to_s : key
  end

  def nil_to_a(key)
    key == nil ? key.to_a : key
  end
end
