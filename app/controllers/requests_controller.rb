class RequestsController < ApplicationController

  def show
    f1 = params['f1'].capitalize
    f2 = params['f2'].capitalize
    f3 = params['f3'].capitalize

    response = RestClient::Request.execute(
      method:  :get,
      url:     "http://0.0.0.0:3000/prediction/api/v1.0/some_prediction?f1=#{f1}&f2=#{f2}&f3=#{f3}")

    @result = response

    puts @result

    respond_to do |format|
      format.js {render layout: false}
    end
  end

end
