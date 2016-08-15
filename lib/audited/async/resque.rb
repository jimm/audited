require 'audited/audit'

module Audited
  module Async
    class Resque
      @queue = :audit

      def self.enqueue(audits)
        Resque.enqueue(self, audits)
      end

      # Takes an array of audit creation attrs and creates audit records from
      # them.
      def self.perform(audits)
        audits.each do |attrs|
          Audited::Adapters::ActiveRecord::Audit.create(attrs)
        end
      end
    end
  end
end
