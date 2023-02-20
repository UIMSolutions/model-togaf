module models.togaf.attributes.uuids.entities.polls.option;

@safe:
import models.togaf;

class DPollOptionIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("PollOptionIdAttribute"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .name("pollOptionId")
      .registerPath("pollOptionId");
  }  
}
mixin(AttributeCalls!("PollOptionIdAttribute"));

version(test_model_portals) {
  unittest {
    testAttribute(new DPollOptionIdAttribute);
    testAttribute(PollOptionIdAttribute);
  }
}