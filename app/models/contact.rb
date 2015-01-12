class Contact < ActiveRecord::Base
  SUBJECTS = [I18n.t("contact.looking-for-job"), I18n.t("contact.an-employer"), I18n.t("contact.general-inquiry")]
end
