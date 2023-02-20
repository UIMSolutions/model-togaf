module models.togaf.attributes.uuids.entities.web.sitelanguage;

@safe:
import models.togaf;

class DWebSiteLanguageIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("WebSiteLanguageIdAttribute"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("webSiteLanguageId")
      .registerPath("webSiteLanguageId");
  }  
}
mixin(AttributeCalls!("WebSiteLanguageIdAttribute"));

version(test_domain_togaf) {
  unittest {
    testAttribute(new DWebSiteLanguageIdAttribute);
    testAttribute(WebSiteLanguageIdAttribute);
  }
}