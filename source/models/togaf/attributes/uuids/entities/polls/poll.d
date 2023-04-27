module models.togaf.attributes.uuids.entities.polls.poll;

@safe:
import models.togaf;

class DPollIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("PollIdAttribute"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("pollId")
      .registerPath("pollId");
  }  
}
mixin(AttributeCalls!("PollIdAttribute"));

version(test_domain_togaf) {
  unittest {
    testAttribute(new DPollIdAttribute);
    testAttribute(PollIdAttribute);
  }
}