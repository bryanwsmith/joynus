class Contact < ActiveRecord::Base
  SUBJECTS = [I18n.t("contact.looking-for-job"), I18n.t("contact.an-employer"), I18n.t("contact.general-inquiry")]
  BRANCHES = [I18n.t("contact.branch-norcross"), I18n.t("contact.branch-dalton"), I18n.t("contact.branch-lagrange"), I18n.t("contact.branch-opelika"),I18n.t("contact.branch-greenville"),I18n.t("contact.branch-manteca"),I18n.t("contact.branch-others")]
end
