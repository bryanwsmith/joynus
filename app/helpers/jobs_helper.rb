module JobsHelper
  def apply_url
    if I18n.locale == :es
      "https://joy.aviontego.com/portals/main.aspx?App=1&Companyid=JoynusStaffing&Lang=Spanish"
    else
      "https://joy.aviontego.com/portals/main.aspx?App=1&Companyid=JoynusStaffing"
    end
  end
end
