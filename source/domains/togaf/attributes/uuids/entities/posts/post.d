module models.togaf.attributes.uuids.entities.posts.post;

@safe:
import models.togaf;

class DPostIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("PostIdAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("postId")
      .registerPath("postId");
  }  
}
mixin(AttributeCalls!("PostIdAttribute"));

version(test_model_portals) {
  unittest {
    testAttribute(new DPostIdAttribute);
    testAttribute(PostIdAttribute);
  }
}