# save history in irb and rails console
#
require 'irb/ext/save-history'
IRB.conf[:SAVE_HISTORY] = 200
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"

# print active record sql to stdout
#
if defined? ActiveRecord
  ActiveRecord::Base.logger = Logger.new(STDOUT)
end
