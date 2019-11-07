module Services
  class DataModifier

    def self.get_data(source)
      # Services::Fetcher.get_data
      JSON.parse(File.read(source))
    end

    def self.get_platform_data(context)
      {company_name: context['platform']}
    end

    def self.get_project_data(context)
      {
        name: context['project'],
        funding_amount: context['project_details']['funding_amount'],
        city: context['project_details']['city'],
        developer_name: context['project_details']['developer'],
        duration_in_months: context['project_details']['duration_in_months'],
        interest_rate: context['project_details']['interest_rate'],
        interest_rate: context['project_details']['interest_rate']
      }
    end

    def self.get_capture_detail_data(context)
      {
        time: context['capture_details']['time'],
        amount: context['capture_details']['amount']
      }
    end
  end
end
