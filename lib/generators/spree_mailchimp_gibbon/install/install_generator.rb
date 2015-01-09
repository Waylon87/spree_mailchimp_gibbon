module SpreeMailchimpGibbon
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root( File.expand_path(File.dirname(__FILE__)) )
      
      class_option :auto_run_migrations, 
        type: :boolean, 
        default: false
      
      def copy_initializer
        copy_file 'spree_mailchimp_gibbon.rb', 'config/initializers/spree_mailchimp_gibbon.rb'
      end

      def add_javascripts
        append_file "vendor/assets/javascripts/spree/frontend/all.js", "//= require store/spree_mailchimp_gibbon\n"
      end

      def add_stylesheets
        inject_into_file "vendor/assets/stylesheets/spree/frontend/all.css", " *= require store/spree_mailchimp_gibbon\n", :before => /\*\//, :verbose => true
      end

      def add_migrations
        run 'rake railties:install:migrations FROM=spree_mailchimp_gibbon'
      end

      def run_migrations
        run_migrations = options[:auto_run_migrations] || ['', 'y', 'Y'].include?(ask 'Would you like to run the migrations now? [Y/n]')
        if run_migrations
          run 'rake db:migrate'
        else
          puts "Skiping rake db:migrate, don't forget to run it!"
        end
      end
      
    end
  end
end
