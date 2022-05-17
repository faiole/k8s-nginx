# Automação via Terraform
Automação realizada com Terraform para a criação de containers através do Elastic Kubernetes Service (Amazon EKS) para rodar a aplicação NGINX.

## Requirementos

| Nome | Versão |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 2.0 |
| <a name="requirement_aws-iam-authenticator"></a> [aws](#requirement\_aws-iam-authenticator) | >= 1.21 |
| <a name="requirement_kubectl"></a> [kubectl](#requirement\_kubectl) | >= 1.0 |

## AWS

Antes de começar com o Terraform, você deve ter configurado suas credenciais na pasta AWS em seu sistema (AWS CLI), conforme mostrado abaixo.

```
[default]
aws_access_key_id = 
aws_secret_access_key = 
[prod]
aws_access_key_id =
aws_secret_access_key =
```

O nome das contas pode ser o que você quiser, mas certifique-se de que no arquivo "variables.tf" está usando o nome apropriado para o perfil ao configurar.


## Provisionar o EKS
para provisionar o EKS basta executar os seguintes comandos com o Terraform:

```
terraform init
terraform plan
terraform apply
```

O cluster está disponível em até 20 minutos.

O kubeconfig estará disponível também no diretório atual.



## Comandos kubectl

Para acessar o cluster após a criação, rode os seguintes comandos:

Para verificar os nodes ativos:
```sh
KUBECONFIG=./kubeconfig_my-cluster kubectl get nodes --all-namespaces
```
Para verificar os pods ativos e seu status:
```sh
KUBECONFIG=./kubeconfig_my-cluster kubectl get pods --all-namespaces
```

## Conectar ao cluster

```sh

$ aws eks --region $(terraform output -raw region) update-kubeconfig --name $(terraform output -raw cluster_name)

```
