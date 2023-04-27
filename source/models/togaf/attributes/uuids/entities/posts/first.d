module models.togaf.attributes.uuids.entities.posts.first;

@safe:
import models.togaf;

class DFirstPostIdAttribute : DPostIdAttribute {
  mixin(AttributeThis!("FirstPostIdAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("firstPostId")
      .registerPath("firstPostId");
  }  
}
mixin(AttributeCalls!("FirstPostIdAttribute"));

version(test_domain_togaf) {
  unittest {
    testAttribute(new DFirstPostIdAttribute);
    testAttribute(FirstPostIdAttribute);
  }
}