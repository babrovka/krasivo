module ApplicationHelper
  
  def controller?(*controller)
     controller.include?(params[:controller])
   end

   def action?(*action)
     action.include?(params[:action])
   end
   
   def nav_link(link_text, link_path)
     class_name = current_page?(link_path) ? 'active' : ''
     link_to link_text, link_path, :class => class_name
   end
end
