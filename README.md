This project bootstraps harness infrastructure creation for a demo.

TODO

- [ ] Add .gitignore
- [ ] Add s3 backend - not sharing the state file anywhere - manual, no state file anywhere
- [ ] Add Bootstrap role to create a IAM role (DemoRoleForHarnessBootstrap) - manual, uses state file 1
- [ ] Add creation of s3 bucket to store artifacts to infra pipeline - uses state file 2 (will be automated via pipeline)
- [ ] Add creation of harness secret and connector to infra pipeline - uses state file 2 (will be automated via pipeline)
- [ ] Add harness demo project - uses state file 2 (will be automated via pipeline)
- [ ] Add harness demo pipeline for infra - uses state file 2 (will be automated via pipeline)
- [ ] Add harness bootstrap project - manual, uses state file 1
- [ ] Add harness pipeline in harness bootstrap project - manual, uses state file 1
