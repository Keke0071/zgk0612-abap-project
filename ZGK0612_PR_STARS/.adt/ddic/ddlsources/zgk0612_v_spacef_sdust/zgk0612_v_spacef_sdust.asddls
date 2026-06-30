@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Spacefarer Stardust Collection'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZGK0612_V_SPACEF_SDUST as select from zgk0612_t_spacef as sf
join zgk0612_t_sdust as sd on sf.stardust_collection = sd.collection_id
{
  key sd.id,
  sf.spacef_name,
  sd.collection_id,
  sd.color,
  sd.weight,
  sd.state_of_matter,
  sd.value
}  
