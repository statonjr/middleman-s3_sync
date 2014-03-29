Feature: Sync to S3

  @announce
  Scenario: Content-Type set
    Given a successfully built app at "test-app"
    When I run `middleman s3_sync`
    Then the files in my bucket should have a Content-Type of "application/gzip"

  @announce @nuke
  Scenario: Content-Type set with nuke option
    Given a successfully built app at "test-app"
    When I run `middleman s3_sync --nuke`
    Then the files in my bucket should have a Content-Type of "application/gzip"

  Scenario: Image files should have proper expiration dates

  Scenario: ACLs should be set properly
