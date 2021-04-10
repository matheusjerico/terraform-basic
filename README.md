# terraform-basic

Repositório para implementação de IaC com Terraform. Criação de VM, Banco de Dados, Load Balancer, Firewall e DNS com o Terraform na Cloud Digital Ocean.

## Estrutura
```bash
.
├── main.tf
├── modules
│   ├── compute
│   │   ├── compute.tf
│   │   ├── output.tf
│   │   ├── variables.tf
│   │   └── version.tf
│   ├── database
│   │   ├── database.tf
│   │   ├── output.tf
│   │   ├── variables.tf
│   │   └── version.tf
│   └── network
│       ├── domain.tf
│       ├── firewall.tf
│       ├── loadbalancer.tf
│       ├── locals.tf
│       ├── output.tf
│       ├── variables.tf
│       └── version.tf
├── output.tf
├── provider.tf
├── README.md
├── terraform.tfvars
├── variables.tf
└── versions.tf
```

# Como reproduzir?

Para utilizar o `provider` da digital ocean, é necessário configurar a variável de ambiente DIGITALOCEAN_ACCESS_TOKEN:
```bash
export DIGITALOCEAN_ACCESS_TOKEN="ALGUMA_COISA_AQUI"
```

Agora podemos seguir =)

1. Terraform init
```bash
terraform init
```

2. Terraform plan
```bash
terraform plan
```

3. Terraform apply
```bash
terraform apply
```

4. Terraform delete
```bash
terraform delete
```