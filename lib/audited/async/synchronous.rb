require 'audited/audit'

# Only useful for testing.
module Audited
  module Async
    class Synchronous
      def self.enqueue(audits)
        audits.each do |attrs|
          Audited::Adapters::ActiveRecord::Audit.create(attrs)
        end
      end
    end
  end
end
