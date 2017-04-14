require 'test_helper'

class JobTest < ActiveSupport::TestCase

  setup do
    @job = Job.new
  end

  test 'should not save job without poster' do
    assert_not @job.save, 'Saved job without poster'
  end

  test 'should not save job without category' do
    assert_not @job.save, 'Saved job without category'
  end

  test 'should not save job without location' do
    assert_not @job.save, 'Saved job without location'
  end

  test 'should not save job without status' do
    assert_not @job.save, 'Saved job without status'
  end

end
