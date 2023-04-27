module models.togaf.attributes.uuids.entities.posts.post;

@safe:
import models.togaf;

class DPostIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("PostIdAttribute"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("postId")
      .registerPath("postId");
  }  
}
mixin(AttributeCalls!("PostIdAttribute"));

version(test_domain_togaf) {
  unittest {
    testAttribute(new DPostIdAttribute);
    testAttribute(PostIdAttribute);
  }
}