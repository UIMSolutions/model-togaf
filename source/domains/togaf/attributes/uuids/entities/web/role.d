module models.togaf.attributes.uuids.entities.web.role;

@safe:
import models.togaf;

class DWebRoleIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("WebRoleIdAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("webRoleId")
      .registerPath("webRoleId");
  }  
}
mixin(AttributeCalls!("WebRoleIdAttribute"));

version(test_domain_togaf) {
  unittest {
    testAttribute(new DWebRoleIdAttribute);
    testAttribute(WebRoleIdAttribute);
  }
}