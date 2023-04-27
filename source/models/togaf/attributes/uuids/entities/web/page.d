module models.togaf.attributes.uuids.entities.web.page;

@safe:
import models.togaf;

class DWebPageIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("WebPageIdAttribute"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("webPageId")
      .registerPath("webPageId");
  }  
}
mixin(AttributeCalls!("WebPageIdAttribute"));

version(test_domain_togaf) {
  unittest {
    testAttribute(new DWebPageIdAttribute);
    testAttribute(WebPageIdAttribute);
  }
}