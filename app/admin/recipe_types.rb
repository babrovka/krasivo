ActiveAdmin.register RecipeType do
   config.batch_actions = false
   config.clear_sidebar_sections!
   menu :parent => I18n.t('recipes')

   index do 
     column :title
     default_actions
   end

   form do |f|  
     f.inputs t('properties') do
       f.input :title
     end
     f.actions
   end

  show do
    attributes_table do
      row :title
    end  
   end  
end
