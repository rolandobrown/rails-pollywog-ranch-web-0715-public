class Tadpole < ActiveRecord::Base
  belongs_to :frog
  delegate :pond, :to => :frog

  def become!(adult)
    destroy
    adult.create(self.slice(:name, :color, :pond))
  end
end

#dependancy injection
