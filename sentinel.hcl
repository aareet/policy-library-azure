module "eval" {
  source = "./modules/eval/eval.sentinel"
}

policy "managed-disk-encryption-is-enabled" {
  source = "./policies/compute/7.1/managed-disk-encryption-is-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "only-approved-vm-extensions-are-installed" {
  source = "./policies/compute/7.4/only-approved-vm-extensions-are-installed.sentinel"
  enforcement_level = "advisory"
}
