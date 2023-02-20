module models.togaf.attributes.uuids.entities.web.file;

@safe:
import models.togaf;

class DWebFileIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("WebFileIdAttribute"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .name("webFileId")
      .registerPath("webFileId");
  }  
}
mixin(AttributeCalls!("WebFileIdAttribute"));

version(test_model_portals) {
  unittest {
    testAttribute(new DWebFileIdAttribute);
    testAttribute(WebFileIdAttribute);
  }
}