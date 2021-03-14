Rails.application.routes.draw do
  namespace :api do
    get "/blog_posts" => "blog_posts#index"
    get "/blog_posts/:id" => "blog_posts#show"
  end
end
