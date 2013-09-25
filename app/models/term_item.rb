class TermItem < ActiveRecord::Base
  attr_accessible :dataset_id, :term_id, :dataset, :term, :priority
  belongs_to :term
  belongs_to :dataset
  def initialize(term_id,dataset_id)
    @term_id=term_id 
    @dataset_id=dataset_id
  end
end
