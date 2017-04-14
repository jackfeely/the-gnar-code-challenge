require 'test_helper'

class JobsControllerTest < ActionDispatch::IntegrationTest

  setup do
    @job = jobs(:one)
  end

  test 'should get index' do
    get jobs_url
    assert_response :success
  end

  test 'should get new' do
    get new_job_url
    assert_response :success
  end

  test 'should create job' do
    assert_difference('Job.count') do
      post '/jobs', job: { poster: @job.poster, category: @job.category, location: @job.location, status: @job.status }
    end
    assert_redirected_to job_path(assigns(:job))
  end

  test 'should show job' do
    # get '/jobs/', params: { id: @job.id }
    get "/jobs/#{@job.id}"
    assert_response :success
  end

  test 'should get edit' do
    get "/jobs/#{@job.id}/edit"
    assert_response :success
  end

  test 'should update job' do
    put "/jobs/#{@job.id}", job: { poster: @job.poster, category: @job.category, location: @job.location, status: @job.status }
    assert_redirected_to job_path(assigns(:job))
  end

  test 'should destroy job' do
    assert_difference('Job.count', -1) do
      delete "/jobs/#{@job.id}"
    end
    assert_redirected_to jobs_path
  end

end
