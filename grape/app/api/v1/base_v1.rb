module API
  module V1
    class BaseV1 < Grape::API
      mount API::V1::Users
    end
  end
end
