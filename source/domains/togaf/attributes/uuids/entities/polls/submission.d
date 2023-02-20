module models.togaf.attributes.uuids.entities.polls.submission;

@safe:
import models.togaf;

class DPollSubmissionIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("PollSubmissionIdAttribute"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("pollSubmissionId")
      .registerPath("pollSubmissionId");
  }  
}
mixin(AttributeCalls!("PollSubmissionIdAttribute"));

version(test_domain_togaf) {
  unittest {
    testAttribute(new DPollSubmissionIdAttribute);
    testAttribute(PollSubmissionIdAttribute);
  }
}