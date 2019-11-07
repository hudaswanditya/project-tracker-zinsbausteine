module PlatformsHelper
  def total_amount_of_invesment(platform)
    sum = CaptureDetail.where(platform_id: platform.id).sum(:amount)
    number_to_currency(sum, :unit=>'€ ')
  end

  def fastest_project(platform)
    max = CaptureDetail.where(platform_id: platform.id).order(:amount).last
    Project.find(max.project_id).name
  end

  def fastest_platform
    id = CaptureDetail.group(:platform_id).sum(:amount).sort.first.first
    Platform.find(id)
  end

end
