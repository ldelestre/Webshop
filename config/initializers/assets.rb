# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')
Rails.application.config.assets.paths << Rails.root.join("vendor", "public", "lib")
Rails.application.config.assets.precompile += %w( js/modernizr-2.6.2.min.js )
Rails.application.config.assets.precompile += %w( js/jquery.min.js )
Rails.application.config.assets.precompile += %w( js/jquery.easing.1.3.js )
Rails.application.config.assets.precompile += %w( js/bootstrap.min.js )
Rails.application.config.assets.precompile += %w( js/jquery.waypoints.min.js )
Rails.application.config.assets.precompile += %w( js/owl.carousel.min.js )
Rails.application.config.assets.precompile += %w( js/jquery.countTo.js )
Rails.application.config.assets.precompile += %w( js/jquery.flexslider-min.js )    
Rails.application.config.assets.precompile += %w( js/main.js )
# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
