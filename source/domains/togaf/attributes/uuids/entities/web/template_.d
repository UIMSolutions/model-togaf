module models.togaf.attributes.uuids.entities.web.template_;

@safe:
import models.togaf;

class DWebTemplateIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("WebTemplateIdAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("webTemplateId")
      .registerPath("webTemplateId");
  }  
}
mixin(AttributeCalls!("WebTemplateIdAttribute"));

version(test_model_portals) {
  unittest {
    testAttribute(new DWebTemplateIdAttribute);
    testAttribute(WebTemplateIdAttribute);
  }
}