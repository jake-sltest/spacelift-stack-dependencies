#Create the necessary stacks
resource "spacelift_space" "new-project-admin" {
  name = var.project_name
  parent_space_id = "root"
  description = "This a child of the root space. It contains all the resources common to the development infrastructure."
  inherit_entities = true
}

resource "spacelift_space" "new-project-dev" {
  name = "development"
  parent_space_id = "root"
  description = "This a child of the root space. It contains all the resources common to the development infrastructure."
  inherit_entities = true
}

resource "spacelift_space" "new-project-staging" {
  name = "staging"
  parent_space_id = "root"
  description = "This a child of the root space. It contains all the resources common to the development infrastructure."
  inherit_entities = true
}

resource "spacelift_space" "new-project-prod" {
  name = "production"
  parent_space_id = "root"
  description = "This a child of the root space. It contains all the resources common to the development infrastructure."
  inherit_entities = true
}

resource "spacelift_stack" "main-stack" {
  administrative               = true
  space_id                     = spacelift_space.new-project-admin.id
  branch                       = "main"
  description                  = "This stack manages the new project space"
  name                         = "main-stack"
  project_root                 = "/terraform/vpc"
  repository                   = "spacelift-stack-dependencies"
  enable_local_preview         = true
  terraform_smart_sanitization = false
  autodeploy                   = true
}