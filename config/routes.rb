Rails.application.routes.draw do
  root 'coubou#index'
  scope 'api/v1' do
    get '/', to: 'coubou#index'
  end
end
