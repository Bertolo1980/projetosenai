<?php include(erLhcoreClassDesign::designtpl('lhchat/onlineusers/section_map_online_tab_pre.tpl.php')); ?>
<?php if ($chat_onlineusers_section_map_online_tab_enabled == true && $currentUser->hasAccessTo('lhchat', 'use_onlineusers') == true) : ?>
<li role="presentation" class="nav-item"><a class="nav-link" id="map-activator" href="#map" aria-controls="map" role="tab" data-bs-toggle="tab" title="<?php echo erTranslationClassLhTranslation::getInstance()->getTranslation('chat/onlineusers','Online visitors on map');?>"><i class="material-icons me-0">place</i></a></li>
<?php endif;?>
