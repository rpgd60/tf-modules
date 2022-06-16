Creates three test backends using different versions of the module
- referring to source in local development machine  (../../../modules/s3-backend)
- referring to github generic
- referring to github and a specific release/tag 



Structure of directories for this module and its example

modules
├── examples
│   └── backend
│       ├── main.tf
│       ├── providers.tf
│       ├── README.md    <<<--- this file 
│       ├── terraform.tfvars
│       └── variables.tf
├── README.md
└── s3-backend   <<<- the local module we refer to here
    ├── main.tf
    ├── outputs.tf
    ├── README.md
    └── variables.tf
