APP_PATH = File.join(Rails.root, 'config', 'application')
require APP_PATH
Rails.application.require_environment!

namespace :page_cache do
  desc 'Update the Page Cache'
  task :update => :environment do
    PageCache::CacheUpdater.execute
  end
end
