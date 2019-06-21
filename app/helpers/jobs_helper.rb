module JobsHelper
  def apply_url
    if I18n.locale == :es
      "https://joy.aviontego.com/portals/main.aspx?App=1&Companyid=JoynusStaffing&Lang=Spanish"
    elsif
      "https://joy.aviontego.com/portals/main.aspx?App=1&Companyid=JoynusStaffing"
    end
  end
end
