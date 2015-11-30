require_relative '../../lib/company'

# TestWorld is included in Cucumber environment. Provides access to site model
module TestWorld
  def site
    @site ||= Company::Site.new
  end

  def tv_page
    site.televisions_page
  end

  def wait_for(message = 'waiting failed', wait_time = 3, retry_time = 0.1)
    Timeout.timeout(wait_time) do
      loop do
        return true if !!yield
        sleep retry_time
      end
    end
  rescue TimeoutError
    raise message if message
    return false
  end
end
