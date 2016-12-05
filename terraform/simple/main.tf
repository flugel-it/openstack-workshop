resource "openstack_compute_instance_v2" "basic" {
  name = "basic"
  image_id = "bfe8f24c-226e-4e74-81d9-ce514a874e99"
  flavor_id = "2"
  key_pair = "diegows"
  security_groups = ["default"]

  metadata {
    this = "that"
  }

  network {
    name = "demo-net"
  }
}
