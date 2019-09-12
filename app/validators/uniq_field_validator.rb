class UniqFieldValidator < ActiveModel::Validator
  def validate(record)
    result = options[:model].to_s.camelcase.constantize.find_by("#{options[:field].to_s}": record.name)
    if result
      record.errors.add(:name, I18n.t('activerecord.errors.messages.already_exist'))
    end
  end
end
