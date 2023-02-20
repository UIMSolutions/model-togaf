module models.togaf.attributes.uuids.entities.polls.option;

@safe:
import models.togaf;

class DPollOptionIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("PollOptionIdAttribute"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("pollOptionId")
      .registerPath("pollOptionId");
  }  
}
mixin(AttributeCalls!("PollOptionIdAttribute"));

version(test_domain_togaf) {
  unittest {
    testAttribute(new DPollOptionIdAttribute);
    testAttribute(PollOptionIdAttribute);
  }
}