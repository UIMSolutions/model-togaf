module models.togaf.attributes.uuids.entities.polls.submission;

@safe:
import models.togaf;

class DPollSubmissionIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("PollSubmissionIdAttribute"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .name("pollSubmissionId")
      .registerPath("pollSubmissionId");
  }  
}
mixin(AttributeCalls!("PollSubmissionIdAttribute"));

version(test_model_portals) {
  unittest {
    testAttribute(new DPollSubmissionIdAttribute);
    testAttribute(PollSubmissionIdAttribute);
  }
}