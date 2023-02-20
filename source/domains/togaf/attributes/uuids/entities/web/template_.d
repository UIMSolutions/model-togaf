module models.togaf.attributes.uuids.entities.web.template_;

@safe:
import models.togaf;

class DWebTemplateIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("WebTemplateIdAttribute"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("webTemplateId")
      .registerPath("webTemplateId");
  }  
}
mixin(AttributeCalls!("WebTemplateIdAttribute"));

version(test_domain_togaf) {
  unittest {
    testAttribute(new DWebTemplateIdAttribute);
    testAttribute(WebTemplateIdAttribute);
  }
}