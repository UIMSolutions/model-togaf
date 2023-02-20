module models.togaf.attributes.uuids.entities.posts.last;

@safe:
import models.togaf;

class DLastPostIdAttribute : DPostIdAttribute {
  mixin(AttributeThis!("LastPostIdAttribute"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("lastPostId")
      .registerPath("lastPostId");
  }  
}
mixin(AttributeCalls!("LastPostIdAttribute"));

version(test_domain_togaf) {
  unittest {
    testAttribute(new DLastPostIdAttribute);
    testAttribute(LastPostIdAttribute);
  }
}