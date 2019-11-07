namespace :services do
  desc "Request the data from competitor platform"
  task request_data: :environment do
    Services::DataInserter.call
  end

end
