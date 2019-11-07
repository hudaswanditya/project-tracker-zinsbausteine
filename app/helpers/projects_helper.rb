module ProjectsHelper
  def project_online_date(project)
    (Date.today - project.capture_details.first.get_formated_date).to_i
  end
  def calculate_funding_progress(project)
    differences = calculate_funding_averages(project.capture_details)
    amount = differences.sum/differences.count
    number_to_currency(amount, :unit=>'€ ')
  end

  def overal_funding(project)
    amount = project.capture_details.order(:time).last.amount
    number_to_currency(amount, :unit=>'€ ')
  end

  def calculate_funding_time(project)
    differences = calculate_funding_averages(project.capture_details)
    pp project.funding_amount / project.capture_details.first.amount
    expected_time = project.funding_amount / (differences.sum/differences.count)
  end

  private
    def calculate_funding_averages(capture_details)
      capture_details.count < 2 ? [capture_details.first.amount] : capture_details.order(:time).map{ |e| e.amount  }.each_cons(2).map { |a,b| b-a }
    end

end
