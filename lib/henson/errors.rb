module Henson
  class Error < StandardError
    def self.exit_code(i)
      define_method(:exit_code) { i }
    end
  end

  class PuppetfileError          < Error; exit_code(14); end
  class PuppetfileNotFound       < Error; exit_code(16); end
  class ModulefileError          < Error; exit_code(14); end
  class ModulefileNotFound       < Error; exit_code(16); end
  class ModuleNotFound           < Error; exit_code(18); end

  class VersionMissingError      < Error; exit_code(22); end
  class RequirementNotSatisfied  < Error; exit_code(20); end

  class GitNotInstalled          < Error; exit_code(30); end
  class GitRefNotFound           < Error; exit_code(32); end
  class GitInvalidRef            < Error; exit_code(34); end

  class APIError                 < Error; exit_code(36); end
  class GitHubAPIError           < APIError; end
  class PuppetForgeAPIError      < APIError; end

  class GitHubTarballNotFound    < Error; exit_code(40); end
  class GitHubDownloadError      < Error; exit_code(44); end

  class PuppetModuleNotFound     < Error; exit_code(50); end
  class PuppetForgeDownloadError < Error; exit_code(52); end
end
