# Simple Identity

This application is an example of how to implement Omniauth's new `oa-identity` (local username/password) provider. 

  * https://github.com/adambair/omniauth/tree/1.0-beta/oa-identity

## Setup / Installation

Setup is fairly straightforward:

    git clone git://github.com/adambair/simple-identity.git
    cd simple-identity
    bundle install
    rake db:migrate
    rails server

Then browse to http://localhost:3000

## Additional Providers 

This application has been setup to easily accept new providers (twitter/facebook/etc). 

  * https://github.com/intridea/omniauth
  * https://github.com/intridea/omniauth/wiki

## Notes

Please note that `oa-identity` is currently in beta and is only available in the Omniauth `1.0-beta` branch.

  * https://github.com/adambair/omniauth/tree/1.0-beta

## Contributors

Created by Adam Bair (adam@intridea.com) of Intridea (www.intridea.com)

## License

Simple Identity is released under the MIT License.

