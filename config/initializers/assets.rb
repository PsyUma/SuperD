# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
Rails.application.config.assets.precompile += %w( filterdropdowns.css sb-admin-datatables.min.js jquery.dataTables.js dataTables.bootstrap4.js sb-admin.min.js Chart.min.js sb-admin-charts.min.js dataTables.bootstrap4.css
sb-admin.css jquery.easing.min.js font-awesome.min.css jquery.min.js popper.min.js bootstrap.min.js bootstrap.min.css business-casual.css )
