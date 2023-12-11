module ApplicationHelper
	def icon(shape)
  "<span class='glyphicon glyphicon-#{shape}'></span>".html_safe
end
end
