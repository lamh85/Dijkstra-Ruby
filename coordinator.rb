class Coordinator
  attr_accessor :graph,
                :scoreboard,
                :unvisited,
                :node_current

  def self.call
    new().run_coordinator
  end

  def initialize
  end

  private

  def run_coordinator
    build_graph
    initialize_scoreboard
    run_overall_path
  end

  def initialize_scoreboard
  end

  def run_overall_path
  end
end