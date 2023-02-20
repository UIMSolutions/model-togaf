module models.togaf.attributes.uuids.entities.polls.poll;

@safe:
import models.togaf;

class DPollIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("PollIdAttribute"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .name("pollId")
      .registerPath("pollId");
  }  
}
mixin(AttributeCalls!("PollIdAttribute"));

version(test_model_portals) {
  unittest {
    testAttribute(new DPollIdAttribute);
    testAttribute(PollIdAttribute);
  }
}