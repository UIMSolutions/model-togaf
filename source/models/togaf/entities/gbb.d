module models.togaf.entities.gbb;

@safe:
import models.togaf;

// 
class DTogafGbbEntity : DEntity {
  mixin(EntityThis!("TogafGbbEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "id": StringAttribute, 
        "name": StringAttribute
      ])
      .registerPath("togaf_gbbs");    
  }
}
mixin(EntityCalls!("TogafGbbEntity"));