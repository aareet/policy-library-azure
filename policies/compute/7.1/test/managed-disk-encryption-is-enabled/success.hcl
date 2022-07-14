module "eval" {
    source = "https://github.com/hcrhall/terraform-foundational-policies-library/raw/master/modules/eval/eval.sentinel"
}

mock "tfplan/v2" {
  module {
    source = "../../testdata/mock-tfplan-success.sentinel"
  }
}

test {
  rules = {
    main = true
  }
}
