module Services
  class DataInserter
    def self.call
      context = Services::DataModifier.get_data('test.json')

      platform_data = Services::DataModifier.get_platform_data(context)
      project_data = Services::DataModifier.get_project_data(context)
      capture_detail_data = Services::DataModifier.get_capture_detail_data(context)

      @platform = Platform.create(platform_data)
      if @platform.save
        @project = @platform.projects.create(project_data)
      else
        @platform = Platform.where(company_name: platform_data[:company_name]).first
        @project = @platform.projects.create(project_data)
      end

      if @project.save
        @capture_detail = @project.capture_details.create(time: capture_detail_data[:time], amount: capture_detail_data[:amount], platform_id: @platform.id)
      else
        @project = Project.where({name: project_data[:name], platform_id: @platform.id}).first
        @capture_detail = @project.capture_details.create(time: capture_detail_data[:time], amount: capture_detail_data[:amount], platform_id: @platform.id)
      end
      if @capture_detail.save
        pp "sucessfuly store the record"
      else
        pp "the record couldn't be stored"
      end

    end
  end
end
