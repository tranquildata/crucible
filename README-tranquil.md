This is a ruby-on-rails application for testing FHIR compliance. Until we can spare the cycles to do a little ruby hacking, this suite will have to be run manually.

## Building Things ##
### By Hand ###
Invoke `docker build .` in the directory where this README is located. There's a lot of ruby gem fetching, so you will need network access for this

### With Gradle ###
The gradle task is named `buildDockerImage`

## Running Stuff ##
### Starting everything ###
`gradle startComplianceTestingServer` will spin things up. This is a ruby-on-rails thing, so it takes it about a minute to get going. Once all the ruby stuff is running, point your favorite web browser over to `http://localhost:3000` and after a few dozen seconds (ruby again), you'll see the testing app page.

### Testing a FHIR Server ###
Type in the URL for the FHIR server, select `R4` as the Version below (unless you want to wait a long time for all the tests), and then click `Begin`. Now you'll be taken to a generated page with a set of test suites on it. Click on the checkmark icon to select all the tests and then run them. The standard R4 test suite takes about 10 minutes to run on my laptop against HAPI, so now might be a good time to get a coffee...

### Stopping Everything ###
`gradle stopComplianceTestingServer` will tear everything down. Ruby takes almost as long to spin down as it does to spin up, so expect this to take dozens of seconds.
