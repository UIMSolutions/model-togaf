module models.togaf.attributes.uuids.entities.web.file;

@safe:
import models.togaf;

class DWebFileIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("WebFileIdAttribute"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("webFileId")
      .registerPath("webFileId");
  }  
}
mixin(AttributeCalls!("WebFileIdAttribute"));

version(test_domain_togaf) {
  unittest {
    testAttribute(new DWebFileIdAttribute);
    testAttribute(WebFileIdAttribute);
  }
}