module models.togaf.entities.lbb;

@safe:
import models.togaf;

// 
class DTogafLbbEntity : DEntity {
  mixin(EntityThis!("TogafLbbEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "id": StringAttribute, 
        "name": StringAttribute
      ])
      .registerPath("togaf_lbbs");    
  }
}
mixin(EntityCalls!("TogafLbbEntity"));