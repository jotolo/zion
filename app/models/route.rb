class Route < ApplicationRecord
  validates_presence_of :passphrase, :source, :start_node, :end_node, :start_time, :end_time
end
