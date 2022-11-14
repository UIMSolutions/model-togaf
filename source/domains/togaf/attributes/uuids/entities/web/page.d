module models.togaf.attributes.uuids.entities.web.page;

@safe:
import models.togaf;

class DWebPageIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("WebPageIdAttribute"));

  override void initialize() {
    super.initialize;

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