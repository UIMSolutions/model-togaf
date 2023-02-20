module models.togaf.attributes.uuids.entities.ads.ad;

@safe:
import models.togaf;

class DAdIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("AdIdAttribute"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .name("adId")
      .registerPath("adId");
  }  
}
mixin(AttributeCalls!("AdIdAttribute"));

version(test_model_portals) {
  unittest {
    testAttribute(new DAdIdAttribute);
    testAttribute(AdIdAttribute);
  }
}