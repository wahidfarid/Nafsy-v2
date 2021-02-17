class ForceCreatePointUuidConstraint < ActiveGraph::Migrations::Base
  def up
    add_constraint :Point, :uuid, force: true
  end

  def down
    drop_constraint :Point, :uuid
  end
end
