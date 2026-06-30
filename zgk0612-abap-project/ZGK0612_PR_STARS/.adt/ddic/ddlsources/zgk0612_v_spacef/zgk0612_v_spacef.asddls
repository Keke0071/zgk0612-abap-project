@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Spacefarers View'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZGK0612_V_SPACEF as select from zgk0612_t_spacef
{
  key id,
  spacef_name,
  stardust_collection,
  wormhole_skill,
  reputation,
  origin_planet,
  suit_color,
  credits
}
