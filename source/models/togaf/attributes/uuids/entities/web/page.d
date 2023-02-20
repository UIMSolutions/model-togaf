module models.togaf.attributes.uuids.entities.web.page;

@safe:
import models.togaf;

class DWebPageIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("WebPageIdAttribute"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .name("webPageId")
      .registerPath("webPageId");
  }  
}
mixin(AttributeCalls!("WebPageIdAttribute"));

version(test_model_portals) {
  unittest {
    testAttribute(new DWebPageIdAttribute);
    testAttribute(WebPageIdAttribute);
  }
}