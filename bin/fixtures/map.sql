USE duralas;

INSERT INTO region (`code`, `libelle`, `lien`) VALUES
     ('NORD',     'Nord de Dùralas',   '/c2-nord-de-duralas')
    ,('OUEST',    'Ouest de Dùralas',  '/c3-ouest-de-duralas')
    ,('CENTRE',   'Centre de Dùralas', '/c4-centre-de-duralas')
    ,('EST',      'Est de Dùralas',    '/c5-est-de-duralas')
    ,('SUD',      'Sud de Dùralas',    '/c6-sud-de-duralas')
    ,('M&O',      'Mers & Océans',     '/c7-mers-oceans')
    ,('WYSTÉRIA', 'Île de Wystéria',   '/c8-ile-de-wysteria')
;

INSERT INTO zone (`code`, `libelle`, `region`, `lien`) VALUES
     ('GRAND_NORD', 'Le Grand Nord',                   'NORD', '/f132-le-grand-nord')
    ,('ARÀN',       'Les plaines d\'Aràn',             'NORD', '/f3-les-plaines-d-aran')
    ,('KASTALINN',  'Ville de Kastalinn',              'NORD', '/f4-ville-de-kastalinn')
    ,('KANAAN',     'Les sombres montagnes de Kanaan', 'NORD', '/f14-les-sombres-montagnes-de-kanaan')

    ,('SYLFAËN',  'Forêt Sylfaën',        'OUEST', '/f17-foret-sylfaen')
    ,('ENDORIAL', 'Ville d\'Endorial',    'OUEST', '/f23-ville-d-endorial')
    ,('MAËNOR',   'Le château de Maënor', 'OUEST', '/f28-le-chateau-de-maenor')
    ,('HUKUTAV',  'Les marais Hukutav',   'OUEST', '/f35-les-marais-hukutav')

    ,('DÉSERT',    'Désert de Harena',       'CENTRE', '/f40-desert-de-harena')
    ,('STELLARAË', 'Ville de Stellaraë',     'CENTRE', '/f44-ville-de-stellarae')
    ,('SPELUNCA',  'Cavernes de Spelunca',   'CENTRE', '/f52-cavernes-de-spelunca')
    ,('CAVERNE',   'La Caverne mystérieuse', 'CENTRE', '/f57-la-caverne-mysterieuse')
    ,('SAVANE',    'Savane de Tzengah',      'CENTRE', '/f237-savane-de-tzengah')

    ,('PERRACIE',   'La Perracie',         'EST', '/f10-la-perracie')
    ,('BALDOR',     'Montagnes du Baldor', 'EST', '/f63-montagnes-du-baldor')
    ,('BALDORHEIM', 'Ville de BaldorHeim', 'EST', '/f64-ville-de-baldorheim')
    ,('LAC',        'Lac Fresha',          'EST', '/f77-lac-fresha')

    ,('TERRES', 'Terres désolées du Sud', 'SUD', '/f85-terres-desolees-du-sud')
    ,('RED',    'Red Sun Belt',           'SUD', '/f87-red-sun-belt')
    ,('PLAGE',  'La plage',               'SUD', '/f82-la-plage')
    ,('ISHTAR', 'Village d\'Ishtar',      'SUD', '/f90-village-d-ishtar')

    ,('VAN_HALLEN', 'La mer Van Hallen',             'M&O', '/f96-la-mer-van-hallen')
    ,('SITLANTÀ',   'Ville sous-marine de Sitlantà', 'M&O', '/f213-ville-sous-marine-de-sitlanta')
    ,('MAUDITES',   'Les Mers maudites',             'M&O', '/f100-les-mers-maudites')

    ,('LONNES',   'Les sables de Lonnes', 'WYSTÉRIA', '/f102-les-sables-de-lonnes')
    ,('MAZONIE',  'La Mazonie',           'WYSTÉRIA', '/f104-la-mazonie')
    ,('GUILLAËD', 'Guillaëd',             'WYSTÉRIA', '/f105-guillaed')
    ,('HIRADOR',  'La grotte Hirador',    'WYSTÉRIA', '/f111-la-grotte-hirador')
;

INSERT INTO zone_type (`code`, `designation`) VALUES
     ('COMPET',  'Zone de compétition')
    ,('DONJON',  'Zone de donjon')
    ,('EVENT',   'Zone spécifique aux événements')
    ,('FACTION', 'Zone spécifique aux factions')
    ,('GUILDE',  'Zone spécifique aux guildes')
    ,('METIER',  'Zone de récolte ou d\'artisanat')
    ,('QUÊTE',   'Zone de quête')
    ,('VILLE',   'Zone de ville')
;

INSERT INTO sous_zone (`code`, `libelle`, `zone`, `lien`, `type`, `parent`) VALUES
    ('GRAND_NORD', 'Grand Nord', 'GRAND_NORD', '/f132-le-grand-nord', null, null)
    ,('FIMBULVETR', 'Fimbulvetr', 'GRAND_NORD', '/f176-fimbulvetr', 'VILLE', null)
    ,('PANTHÉON_JARLS', 'Le Panthéon des Jarls', 'GRAND_NORD', '/f180-le-pantheon-des-jarls', null, null)
    ,('BANQUISE', 'La banquise', 'GRAND_NORD', '/f16-la-banquise', null, null)
    ,('GLIMA', 'Le Glima', 'GRAND_NORD', '/f185-le-glima', null, null)

    ,('ARÀN', 'Les plaines d\'Aràn', 'ARÀN', '/f3-les-plaines-d-aran', null, null)
    ,('FJORDS', 'Les Fjords', 'ARÀN', '/f145-les-fjords', null, null)
    ,('TOUNDRA', 'La Toundra', 'ARÀN', '/f146-la-toundra', null, null)
    ,('DRAGONNIERS', 'Campement des Dragonniers', 'ARÀN', '/f147-campement-des-dragonniers-guilde', 'GUILDE', null)
    ,('PERRACKS_ARÀN', 'Campement des Perracks (1/3)', 'ARÀN', '/f6-campement-des-perracks-1-3', null, null)

    ,('KASTALINN', 'Kastalinn', 'KASTALINN', '/f7-kastalinn', 'VILLE', null)
    ,('KASTALINN_ALENTOURS', 'Alentours de Kastalinn', 'KASTALINN', '/f5-alentours-de-la-ville', 'VILLE', null)
    ,('LOGIS_CHASSEUR', 'Logis du Chasseur [Zone communautaire]', 'KASTALINN', '/f212-logis-du-chasseur-zone-communautaire', 'VILLE', null)
    ,('CHASSE', 'Lieu d\'artisanat - La chasse', 'KASTALINN', '/f88-lieu-d-artisanat-la-chasse', 'METIER', null)
    ,('MILICE', 'Le Pavillon de Thrud', 'KASTALINN', '/f135-le-pavillon-de-thrud-faction', 'FACTION', null)
    ,('SKJALDMÖHEIM', 'Skjaldmöheim [Zone communautaire privée]', 'KASTALINN', '/f175-skjaldmoheim-zone-communautaire-privee', 'VILLE', null)

    ,('KANAAN', 'Les sombres montagnes de Kanaan', 'KANAAN', '/f14-les-sombres-montagnes-de-kanaan', null, null)
    ,('VULKAR', 'Le Vulkar', 'KANAAN', '/f15-le-vulkar', null, null)
    ,('DJÖLLFULIN', 'Le village des Djöllfulins', 'KANAAN', '/f186-le-village-des-djollfulins-zone-restreinte-djollfulins-invites', 'QUÊTE', null)

    ,('SYLFAËN', 'Forêt Sylfaën', 'SYLFAËN', '/f17-foret-sylfaen', null, null)
    ,('CENTAURES', 'Clairière des centaures', 'SYLFAËN', '/f19-clairiere-des-centaures', null, null)
    ,('ELFES', 'Village des elfes', 'SYLFAËN', '/f18-village-des-elfes', null, null)
    ,('BOSQUET', 'Bosquet maléfique', 'SYLFAËN', '/f169-bosquet-malefique', null, null)
    ,('SANCTUAIRE', 'Sanctuaire forestier', 'SYLFAËN', '/f259-sanctuaire-forestier', null, null)
    ,('MAGIE', 'Institut de magie', 'SYLFAËN', '/f148-institut-de-magie-guilde', 'GUILDE', null)

    ,('ENDORIAL', 'Endorial', 'ENDORIAL', '/f25-endorial', 'VILLE', null)
    ,('ENDORIAL_ALENTOURS', 'Alentours d\'Endorial', 'ENDORIAL', '/f24-alentours-de-la-ville', 'VILLE', null)
    ,('GRAND_PLACE', 'La Grand-Place [Zone communautaire]', 'ENDORIAL', '/f205-la-grand-place-zone-communautaire', 'VILLE', null)
    ,('REMÈDES', 'Atelier des remèdes', 'ENDORIAL', '/f252-atelier-des-remedes', 'MÉTIER', null)
    ,('BOIS', 'Lieu d\'artisanat - Les bois', 'ENDORIAL', '/f26-lieu-d-artisanat-les-bois', 'MÉTIER', null)
    ,('VIRTUOSES', 'Boutique des virtuoses', 'ENDORIAL', '/f181-boutique-des-virtuoses', 'VILLE', null)

    ,('MAËNOR', 'Le châtau de Maënor', 'MAËNOR', '/f28-le-chateau-de-maenor', null, null)
    ,('MAËNOR_ALENTOURS', 'Alentours du château', 'MAËNOR', '/f29-alentours-du-chateau', null, null)
    ,('JARDINS', 'Les jardins', 'MAËNOR', '/f30-les-jardins', null, null)
    ,('ZÉPHYR', 'Sous le rocher', 'MAËNOR', '/f133-sous-le-rocher-faction', 'FACTION', null)
    ,('GRANDE_SALLE', 'La grande salle', 'MAËNOR', '/f31-la-grande-salle', null, null)

    ,('HUKUTAV', 'Les marais Hukutav', 'HUKUTAV', '/f35-les-marais-hukutav', null, null)
    ,('ALQUATERAZE', 'Les ruines d\'Alquateraze', 'HUKUTAV', '/f37-les-ruines-d-alquateraze', null, null)
    ,('CŒUR_MARAIS', 'Cœur du marais', 'HUKUTAV', '/f260-coeur-du-marais', null, null)
    ,('TEMPLE_NAGAS', 'Temple des Nagas [Zone communautaire]', 'HUKUTAV', '/f38-temple-des-nagas-zone-communautaire', null, null)
    ,('PRISON', 'La prison', 'HUKUTAV', '/f36-la-prison-zone-speciale', 'QUÊTE', null)

    ,('DÉSERT', 'Désert de Harena', 'DÉSERT', '/f40-desert-de-harena', null, null)
    ,('OPHITES', 'Ophiuchus', 'DÉSERT', '/f188-ophiuchus', 'GUILDE', null)
    ,('OASIS', 'Oasis', 'DÉSERT', '/f41-oasis', null, null)
    ,('CAMPEMENT_ORCS', 'Campement principal des orcs [Zone communautaire]', 'DÉSERT', '/f42-campement-principal-des-orcs-zone-communautaire', null, null)
    ,('TORAMARUSAMA', 'Pyramide de Toramarusama', 'DÉSERT', '/f223-pyramide-de-toramarusama', null, null)
    ,('TOUR_ROUGEPIERRE', 'Ruines de la tour Rougepierre', 'DÉSERT', '/f230-ruines-de-la-tour-rougepierre', null, null)
    ,('PERRACKS_DÉSERT', 'Campement des Perracks (2/3)', 'DÉSERT', '/f242-campement-des-perracks-2-3', null, null)

    ,('STELLARAË', 'Stellaraë - Les rues et ruelles', 'STELLARAË', '/f50-les-rues-et-ruelles', 'VILLE', null)
    ,('STELLARAË_ALENTOURS', 'Alentours de Stellaraë', 'STELLARAË', '/f45-alentours-de-la-ville', 'VILLE', null)
    ,('CANARI_JAUNE', 'Au Canari jaune [Zone communautaire]', 'STELLARAË', '/f206-au-canari-jaune-zone-communautaire', 'VILLE', null)
    ,('FORGES', 'Lieu d\'artisanat - Les forges', 'STELLARAË', '/f49-lieu-d-artisanat-les-forges', 'MÉTIER', null)
    ,('GARDIENS', 'La Tour stellaroïse', 'STELLARAË', '/f136-la-tour-stellaroise-faction', 'FACTION', null)
    ,('CIRQUE', 'Le Cirque de l\'Éclipse', 'STELLARAË', '/f222-le-cirque-de-l-eclipse-guilde', 'GUILDE', null)

    ,('SPELUNCA', 'Cavernes de Spelunca', 'SPELUNCA', '/f52-cavernes-de-spelunca', null, null)
    ,('SPELUNCA_OUEST', 'Ouest du massif', 'SPELUNCA', '/f53-ouest-du-massif', null, null)
    ,('SPELUNCA_CENTRE', 'Centre du massif [Zone communautaire]', 'SPELUNCA', '/f207-centre-du-massif-zone-communautaire', null, null)
    ,('SPELUNCA_EST', 'Est du massif', 'SPELUNCA', '/f54-est-du-massif', null, null)
    ,('SANS_FIN', 'La caverne sans fin', 'SPELUNCA', '/f55-la-caverne-sans-fin', null, null)
    ,('TOMBES', 'Tombes dynastiques', 'SPELUNCA', '/f189-tombes-dynastiques', null, null)

    ,('CAVERNE', 'La Caverne mystérieuse', 'CAVERNE', '/f57-la-caverne-mysterieuse', null, null)
    ,('DASIKON_TERAS', 'Dasikon Teras', 'CAVERNE', '/f58-dasikon-teras', 'VILLE', null)
    ,('LAC_LIMNÏ', 'Le lac Limnï', 'CAVERNE', '/f59-le-lac-limni', null, null)
    ,('TUNGSTÈNE', 'Le gîte Tungstène', 'CAVERNE', '/f60-le-gite-de-tungstene', null, null)

    ,('SAVANE', 'Savane de Tzengah', 'SAVANE', '/f237-savane-de-tzengah', null, null)
    ,('KOTHEMBA', 'Village de Kothemba [Zone communautaire]', 'SAVANE', '/f238-village-de-kothemba-zone-communautaire', null, null)
    ,('TERRES_ANCESTRALES', 'Terres ancestrales', 'SAVANE', '/f239-terres-ancestrales', null, null)
    ,('TEMPLE_TZENGARAH', 'Temple de Tzengarah', 'SAVANE', '/f240-temple-de-tzengarah', null, null)

    ,('PERRACIE', 'La Perracie', 'PERRACIE', '/f10-la-perracie', null, null)
    ,('CASHLIPPE', 'Forêt de Cashlippe', 'PERRACIE', '/f11-foret-de-cashlippe', null, null)
    ,('HAMEAU', 'Le Hameau', 'PERRACIE', '/f202-le-hameau', 'ÉVENT', null)
    ,('MOTCH_HOLLOW', 'Château du Motch\'Hollow', 'PERRACIE', '/f12-chateau-du-motch-hollow-donjon', 'DONJON', null)
    ,('PERRACKS', 'Tribu des Perracks', 'PERRACIE', '/f13-tribu-des-perracks', null, null)

    ,('BALDOR', 'Montagnes du Baldor', 'BALDOR', '/f63-montagnes-du-baldor', null, null)
    ,('SAPINS', 'Forêt de sapins', 'BALDOR', '/f62-foret-de-sapins', null, null)
    ,('TAGNE', 'Le mont Tagne', 'BALDOR', '/f65-le-mont-tagne', null, null)
    ,('KOBOLD', 'Grotte koboldienne', 'BALDOR', '/f191-grotte-koboldienne', null, null)
    ,('KHAZARIENS', 'Grotte Khazarienne', 'BALDOR', '/f137-grotte-kazharienne-faction', 'FACTION', null)
    ,('PERRACKS_BALDOR', 'Campement des Perracks (3/3)', 'BALDOR', '/f243-campement-des-perracks-3-3', null, null)

    ,('BALDORHEIM', 'BaldorHeim', 'BALDORHEIM', '/f70-baldorheim', 'VILLE', null)
    ,('BALDORHEIM_ALENTOURS', 'Alentours de BaldorHeim', 'BALDORHEIM', '/f69-alentours-de-la-ville', 'VILLE', null)
    ,('FOURRÉ_MYRTILLE', 'Au fourré à la myrtille', 'BALDORHEIM', '/f75-au-fourre-a-la-myrtille-zone-communautaire', 'VILLE', null)
    ,('MINE', 'Lieu d\'artisanat - Les mines', 'BALDORHEIM', '/f71-lieu-d-artisanat-les-mines', 'MÉTIER', null)
    ,('TECHNOPHILES', 'Atelier des technophiles', 'BALDORHEIM', '/f47-atelier-des-technophiles', 'VILLE', null)
    ,('ARÈNE', 'Arène', 'BALDORHEIM', '/f72-arene', 'COMPET', null)
    ,('STADIUM', 'Stadium', 'BALDORHEIM', '/f73-stadium', 'COMPET', null)
    ,('BALDORHEIM_BOUTIQUES', 'Boutiques secrètes', 'BALDORHEIM', '/f74-boutiques-secretes', 'VILLE', null)

    ,('LAC', 'Lac Fresha', 'LAC', '/f77-lac-fresha', null, null)
    ,('TOUR_NOIRE', 'La Tour Noire', 'LAC', '/f79-la-tour-noire', null, null)
    ,('TOUR_BLANCHE', 'La Tour Blanche', 'LAC', '/f80-la-tour-blanche', null, null)
    ,('TOUR_GRISE', 'Ruines de la Tour Grise [Zone communautaire]', 'LAC', '/f208-ruines-de-la-tour-grise-zone-communautaire', null, null)

    ,('TERRES', 'Terres désolées du Sud', 'TERRES', '/f85-terres-desolees-du-sud', null, null)
    ,('CO', 'Lédéhi, la forteresse interdite', 'TERRES', '/f138-ledehi-la-forteresse-interdite-faction', 'FACTION', null)
    ,('MARIONNETTISTE', 'Demeure du marionnettiste', 'TERRES', '/f174-demeure-du-marionnettiste', null, null)
    ,('FATA_MORGANA', 'Ruines de Fata Morgana', 'TERRES', '/f142-ruines-de-fata-morgana', null, null)
    ,('DONJON_LICHE', 'Antre de la liche', 'TERRES', '/f193-antre-de-la-liche-donjon', 'DONJON', null)

    ,('RED', 'Red Sun Belt', 'RED', '/f87-red-sun-belt', null, null)
    ,('OASIS_PERDU', 'Oasis perdu', 'RED', '/f264-oasis-perdu', null, null)
    ,('VOLIÈRE', 'La Volière', 'RED', '/f261-la-voliere-guilde', 'GUILDE', null)

    ,('PLAGE', 'La plage', 'PLAGE', '/f82-la-plage', null, null)
    ,('DELTA', 'Delta de Hukutav', 'PLAGE', '/f83-delta-de-hukutav', null, null)

    ,('ISHTAR', 'Ishtar', 'ISHTAR', '/f93-ishtar', 'VILLE', null)
    ,('ISHTAR_ALENTOURS', 'Alentours d\'Ishtar', 'ISHTAR', '/f91-alentours-du-village-carrefour-commercial', 'VILLE', null)
    ,('PORT_ISHTAR', 'Port d\'Ishtar [Zone communautaire]', 'ISHTAR', '/f209-port-d-ishtar-zone-communautaire', 'VILLE', null)
    ,('SCULPTURE', 'Lieu d\'artisanat - Ateliers des sculpteurs', 'ISHTAR', '/f92-lieu-d-artisanat-ateliers-des-sculpteurs', 'MÉTIER', null)
    ,('POISONS', 'Atelier des poisons', 'ISHTAR', '/f251-atelier-des-poisons', 'MÉTIER', null)

    ,('VAN_HALLEN', 'La mer Van Hallen', 'VAN_HALLEN', '/f96-la-mer-van-hallen', null, null)
    ,('ABYSSES', 'Les Abysses', 'VAN_HALLEN', '/f98-les-abysses', null, null)

    ,('SITLANTÀ', 'Sitlantà', 'SITLANTÀ', '/f220-sitlanta', 'VILLE', null)
    ,('SITLANTÀ_ALENTOURS', 'Alentours de Sitlantà', 'SITLANTÀ', '/f219-alentours-de-la-cite-sous-marine', 'VILLE', null)
    ,('YNATLATT', 'Ynatlatt', 'SITLANTÀ', '/f233-ynatlatt', 'ÉVENT', null)

    ,('MAUDITES', 'Les Mers maudites', 'MAUDITES', '/f100-les-mers-maudites', null, null)
    ,('ISHTARIEN_VOLANT', 'L\'Ishtarien volant', 'MAUDITES', '/f245-l-ishtarien-volant', null, null)
    ,('PIRATES', 'L\'Ombre des côtes', 'MAUDITES', '/f134-l-ombre-des-cotes-faction', 'FACTION', null)

    ,('LONNES', 'Les sables de Lonnes', 'LONNES', '/f102-les-sables-de-lonnes', null, null)
    ,('CHASSE_WYSTÉRIA', 'Lieu d\'artisanat - Repaire des wyvernes', 'LONNES', '/f168-lieu-d-artisanat-repaire-des-wyvernes', 'MÉTIER', null)

    ,('MAZONIE', 'La Mazonie', 'MAZONIE', '/f104-la-mazonie', null, null)
    ,('BOIS_WYSTÉRIA', 'Lieu d\'artisanat - Clairière aux baobabs', 'MAZONIE', '/f94-lieu-d-artisanat-clairiere-aux-baobabs', 'MÉTIER', null)

    ,('GUILLAËD', 'Guillaëd', 'GUILLAËD', '/f108-guillaed', 'VILLE', null)
    ,('GUILLAËD_ALENTOURS', 'Alentours de Guillaëd', 'GUILLAËD', '/f107-alentours-de-la-ville', 'VILLE', null)
    ,('BOUTIQUES_WYSTÉRIA', 'Boutiques secrètes wystériennes', 'GUILLAËD', '/f144-boutiques-secretes-wysteriennes', 'VILLE', null)
    ,('HÔPITAL', 'Hôpital [Zone communautaire]', 'GUILLAËD', '/f109-hopital-zone-communautaire', 'VILLE', null)

    ,('HIRADOR', 'La grotte Hirador', 'HIRADOR', '/f111-la-grotte-hirador', null, null)
    ,('KASHAY', 'Temple Kashay', 'HIRADOR', '/f161-temple-kashay', 'QUÊTE', null)
    ,('MINE_WYSTÉRIA', '!lieu d\'artisanat - Mine de diamants', 'HIRADOR', '/f97-lieu-d-artisanat-mine-de-diamants', 'MÉTIER', null)
;