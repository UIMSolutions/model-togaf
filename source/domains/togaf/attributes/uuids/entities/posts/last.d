module models.togaf.attributes.uuids.entities.posts.last;

@safe:
import models.togaf;

class DLastPostIdAttribute : DPostIdAttribute {
  mixin(AttributeThis!("LastPostIdAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("lastPostId")
      .registerPath("lastPostId");
  }  
}
mixin(AttributeCalls!("LastPostIdAttribute"));

version(test_model_portals) {
  unittest {
    testAttribute(new DLastPostIdAttribute);
    testAttribute(LastPostIdAttribute);
  }
}