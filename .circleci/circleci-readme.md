CI Debug Notes
================
To validate some circleci stuff, I was able to run a “build locally” using the steps below.
The local build runs in a docker container.

  * (Once) Install circleci client (`brew install circleci`)

  * Convert the “real” config.yml into a self contained (non-workspace) config via:

        circleci config process .circleci/config.yml > .circleci/local-config.yml

  * Run a local build with the following command:
          
        circleci local execute -c .circleci/local-config.yml --job 'job-nightly'

    Typically, both commands should be run together:

        circleci config process .circleci/config.yml > .circleci/local-config.yml && circleci local execute -c .circleci/local-config.yml --job 'job-nightly'

    With the above command, operations that cannot occur during a local build will show an error like this:
     
      ```
      ... Error: FAILED with error not supported
      ```
    
      However, the build will proceed and can complete “successfully”, which allows you to verify scripts in your config, etc.
      
      If the build does complete successfully, you should see a happy yellow `Success!` message.


  * The nightly CI build will attempt to update the `README.md` file with any changes created by running 
    [update-reproducibility-summary.sh](../update-reproducibility-summary.sh). Write access for this `git push` was 
    configured according to [Creating a GitHub deploy key](https://circleci.com/docs/2.0/gh-bb-integration/#creating-a-github-deploy-key)

Miscellaneous
-------------

To allow your CI build to push changes back to github (e.g. release tags, etc), you need to create
a GitHub "Deploy Key" with write access. The command below will create such a key. Use an empty password.
See: https://circleci.com/docs/2.0/add-ssh-key/#steps

    ssh-keygen -t ed25519 -C "deploy-key@reproducible-central.org" -f reproducible-central_gh_deploy.key

Paste the public key into a new "write" enabled GitHub deploy key with Title: `CircleCI Write reproducible-central`

Be sure you check the "Allow write access" option.

    cat reproducible-central_gh_deploy.key.pub | pbcopy

In the CircleCI Web UI, under Permissions -> SSH Permissions -> Add SSH Key, enter "Hostname": github.com

Paste the private key.

    cat reproducible-central_gh_deploy.key | pbcopy        

As a sanity check, the private key should end with `-----END OPENSSH PRIVATE KEY-----`.

Also update the `ssh-fingerprints:` tag in your config.yml to append the fingerprint of the write key. The fingerprint
will be shown in the CircleCI web page under the "Additional Keys" section, with the "Hostname" equal `githumb.com`.
