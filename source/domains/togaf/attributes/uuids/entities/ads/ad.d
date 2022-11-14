module models.togaf.attributes.uuids.entities.ads.ad;

@safe:
import models.togaf;

class DAdIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("AdIdAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("adId")
      .registerPath("adId");
  }  
}
mixin(AttributeCalls!("AdIdAttribute"));

version(test_domain_togaf) {
  unittest {
    testAttribute(new DAdIdAttribute);
    testAttribute(AdIdAttribute);
  }
}