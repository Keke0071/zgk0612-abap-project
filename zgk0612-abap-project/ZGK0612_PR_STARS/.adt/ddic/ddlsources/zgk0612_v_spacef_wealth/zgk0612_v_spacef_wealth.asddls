@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Spacefarer Wealth'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZGK0612_V_SPACEF_WEALTH as select from zgk0612_t_spacef as sf
left outer join zgk0612_t_sdust as sd on sf.stardust_collection = sd.collection_id
{
  key sf.id,
  sf.spacef_name,
  sf.credits,
  ( sf.credits + coalesce(sum(sd.value), 0) ) as total_wealth
}
group by sf.id, sf.spacef_name, sf.credits
