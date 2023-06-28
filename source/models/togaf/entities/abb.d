module models.togaf.entities.abb;

@safe:
import models.togaf;

// 
class DTogafAbbEntity : DEntity {
  mixin(EntityThis!("TogafAbbEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "id": StringAttribute, 
        "name": StringAttribute
      ])
      .registerPath("togaf_abbs");    
  }
}
mixin(EntityCalls!("TogafAbbEntity"));