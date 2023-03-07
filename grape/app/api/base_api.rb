module API
  class BaseApi < Grape::API
    mount API::v1::BaseV1
  end
end