module ApplicationHelper
  def element_nation
    [
      ['Air Nomads', 'Air+Nomads'],
      ['Earth Kingdom', 'Earth+Kingdom'],
      ['Fire Nation', 'Fire+Nation'],
      ['Water Tribes', 'Water+Tribe'],
    ]
  end

  def format_relations(relations)
    if relations.count > 0
      relations * ", "
    else
      "None"
    end
  end
end
