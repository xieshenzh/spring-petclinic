# Spring Pet Clinic integration with Red Hat OpenShift Database Access (RHODA)

This repo contains a container-ready implementation of the iconic Spring Petclinic application. Specifically, Crunchy Bridge is set up via RHODA for the persistent database configuration of the application.

### Crunchy Bridge

Follow the [instructions](https://docs.crunchybridge.com/quickstart/provision/) to create an account.

![Crunchy Bridge Account](images/3-crunchy-bridge-account.png)

Then [create an API key](https://docs.crunchybridge.com/api-concepts/getting-started/#authentication), which generates an application ID and application secret for your use.

![Create API Key](images/4-create-api-key.png)

### Administrator Console

Make sure you are in the Administrator perspective:

![Admin Perspective](images/1-admin-perspective.png)

Create a project with name `spring-petclinic`.

![Spring Project](images/2-spring-petclinic-project.png)

In the OperatorHub, install the OpenShift Database Access operator.

![RHODA Operator](images/5-rhoda-operator.png)

Then create an RHODA tenant from the CustomResourceDefinitions for the `spring-petclinic` project.

```
apiVersion: dbaas.redhat.com/v1alpha1
kind: DBaaSTenant
metadata:
  name: spring-petclinic-tenant
spec:
  authz:
    groups:
      - 'system:authenticated'
  connectionNamespaces:
    - '*'
  inventoryNamespace: spring-petclinic
```

![Create Tenant](images/6-create-tenant.png)

In the RHODA operator, create a Provider Account, select Crunchy Bridge as the provider, and enter the Crunchy Bridge API key as Account Credentials.

![Create Inventory](images/7-create-inventory.png)

### Dev Console

Make sure you are in the Developer perspective:

![Dev Perspective](images/8-dev-perspective.png)

Connect to a database by selecting Crunchy Bridge and Connect.

![Connect Database](images/9-connect-database.png)

Create a database instance with name `spring-petclinic-instance`.

![Create Instance](images/10-create-instance.png)

Then select the instance just created.

![Create Connection](images/11-create-connection.png)

Scroll to the bottom of the instance list and Connect.

![Create Connection](images/22-connect.png)

In the Topology view, a connection to the database instance is created.

![Connection](images/12-connection.png)

### Deploy Pet Clinic App

Click the `+Add` button and choose `From Git` type:

Fill the git repo with the following value `https://github.com/xieshenzh/spring-petclinic.git`, enter `rhoda` as Git reference and build the project as Java project:

![Git](images/13-git-repo.png)

![Java Builder](images/14-java-builder.png)

![Application Info](images/15-application.png)

Select the `Deployment Configuration` and add the following environment variables:

```
SPRING.PROFILES.ACTIVE=postgres 
ORG.SPRINGFRAMEWORK.CLOUD.BINDINGS.BOOT.ENABLE=true
```

![Deployment Env](images/16-deployment-env.png)

Then click the `Create` button. 

In the Topology view, drag an arrow from the application to the database connection, which creates a Service Binding.

![Service Binding](images/17-service-binding.png)

Wait for the application build and deployment to finish, which takes around 5 minutes. Then click Open URL from the application to launch the application UI.

![Open URL](images/18-open-url.png)


![Pet Clinic UI](images/19-pet-clinic-application.png)

If you visit the application deployment's Terminal, you can get the database connection information.

![Database Connection](images/20-pod-terminal.png)

Then you can connect to the database with the connection information by using the `psql` command line interface.

```shell
psql -U postgres -p 5432 -h <host> postgres
```

```
select * from vets;
```

![PSQL](images/21-psql.png)

