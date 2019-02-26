class UserProjectsController < ApplicationController
  belongs_to :project
  belongs_to :user
end
