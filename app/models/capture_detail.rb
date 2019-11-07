class CaptureDetail < ApplicationRecord
  belongs_to :project
  validates_uniqueness_of :time, scope: [:project_id, :platform_id]

  def get_formated_date
    sec = (self.time.to_f / 1000).to_s
    Date.strptime(sec, '%s')
  end

end
