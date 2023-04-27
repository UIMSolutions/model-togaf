module models.togaf.attributes.uuids.entities.web.site;

@safe:
import models.togaf;

class DWebSiteIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("WebSiteIdAttribute"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("webSiteId")
      .registerPath("webSiteId");
  }  

  
}
mixin(AttributeCalls!("WebSiteIdAttribute"));

version(test_domain_togaf) {
  unittest {
    testAttribute(new DWebSiteIdAttribute);
    testAttribute(WebSiteIdAttribute);
  }
}