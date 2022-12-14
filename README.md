# Action for running deployments to CCF

This GitHub action is designed to make it easier to deploy application to a CCF network.  The action is not public at this point so to use this effectively you need to do the following.

- Copy the [actions](actions) folder to your project.

## Pre-reqs

These action require 3 secrets to be stored in GitHub.

- MEMBERCERT - The certificate that has access to the network, which will be used to sign the transactions for CCF.

- MEMBERKEY - The private key associated with the MEMBERCERT.

- CCFURL - The core url for the CCF instance.

These actions are comprised of two parts. 

- __Deployment__ - This action will deploy an application to CCF.  This is effectively wrapping the proposal call to CCF.  
`NOTE: A sample application bundle is included (actions/deploy/set_js_app.json).  The action can be adjusted to use your application bundle.`

- __Voting__ - This action will vote to accept a proposal.

A sample GitHub workflow is included in [.github/workflows](.github/workflows) directory.  To use both actions, the workflow will first proposal the new applcation, then retrieve the proposal_id generated by the network and then vote to accept this proposal.