module models.togaf.attributes.uuids.entities.web.sitelanguage;

@safe:
import models.togaf;

class DWebSiteLanguageIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("WebSiteLanguageIdAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("webSiteLanguageId")
      .registerPath("webSiteLanguageId");
  }  
}
mixin(AttributeCalls!("WebSiteLanguageIdAttribute"));

version(test_model_portals) {
  unittest {
    testAttribute(new DWebSiteLanguageIdAttribute);
    testAttribute(WebSiteLanguageIdAttribute);
  }
}