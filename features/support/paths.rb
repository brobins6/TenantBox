# TL;DR: YOU SHOULD DELETE THIS FILE
#
# This file is used by web_steps.rb, which you should also delete
#
# You have been warned
#module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
#  def path_to(page_name)
#    case page_name

#    when /^the (RottenPotatoes )?home\s?page$/ then '/movies'
#    when /^the movies page$/ then '/movies'

    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))
    

#    else
#      begin
#        page_name =~ /^the (.*) page$/
#        path_components = $1.split(/\s+/)
#        self.send(path_components.push('path').join('_').to_sym)
#      rescue NoMethodError, ArgumentError
#        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
 #         "Now, go and add a mapping in #{__FILE__}"
#      end
#    end
#  end
#end
module NavigationHelpers
 def path_to(page_name)
   case page_name
    when /^home page$/ then '/home'
    when /^messages page$/ then '/messages'
    when /^dashboard$/ then '/LandLord'
    when /^messages tab$/ then '/messages'
    when /^profile tab$/ then '/profile'
    when /^documents tab$/ then '/documents'
    when /^maintenance requests tab$/ then '/tenant_maintenance'
    when /^settings tab$/ then '/settings'
    when /^payments tab$/ then '/pay_rent'
    when /^login page$/ then '/'
    when /^logout tab$/ then '/logout'
    when /^tenant page$/ then '/LandLord/TennantList'
    when /^requests page$/ then '/requestform'
     
      
   else
    begin
     page_name =~ /the (.*) page/
     path_components = $1.split(/\s+/)
     self.send(path_components.push('path').join('_').to_sym)
    rescue Object => e
     raise "can't find mapping from \"#{page_name}\" to a path. \n" + "Now, go and add a mapping in #{__FILE__}" 
    end
   end
 end
end
World(NavigationHelpers)
