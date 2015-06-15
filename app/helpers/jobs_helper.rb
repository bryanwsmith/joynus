module JobsHelper
  def apply_url
    url = ""
    if I18n.locale == :es
      url =  "https://joy.aviontego.com/portals/main.aspx?App=1&Companyid=JoynusStaffing&Lang=Spanish"
    elsif
      url = "https://joy.aviontego.com/portals/main.aspx?App=1&Companyid=JoynusStaffing"
    end
    url
  end
end
