<h2>Mettre à jour pH7Builder en toute sécurité</h2>

<p class="warning">La mise à jour automatique sur place est actuellement indisponible. Testez une mise à jour manuelle sur
    une copie de préproduction avant de modifier le site public. Suivez le
    <a href="https://github.com/pH7Software/pH7-Social-Dating-CMS/blob/18.x/docs/UPGRADING.md">guide maintenu (en anglais)</a>
    correspondant à votre version de départ.</p>

<h3>Sauvegarder et vérifier les prérequis</h3>
<p>Notez la version et le schéma SQL installés. Lisez les notes de version et vérifiez PHP 8.2+ et MySQL 8.0+.
    Sauvegardez la base de données, la configuration, les médias, les modules, thèmes et traductions personnalisés,
    ainsi que les identifiants des services de paiement. Testez la restauration sur une copie séparée avant de passer le site en maintenance.</p>

<h3>Déployer la version cible</h3>
<p>Utilisez le ZIP versionné et sa somme de contrôle depuis les
    <a href="https://github.com/pH7Software/pH7-Social-Dating-CMS/releases">publications GitHub</a>.
    Préservez la configuration et les contenus locaux ; ne les écrasez pas aveuglément.
    Déployez le fichier <code>_protected/framework/Security/Version.class.php</code> de la version cible avec le reste du code.</p>
<p>Depuis les sources, exécutez <code>composer install --no-dev --prefer-dist --optimize-autoloader</code> avec le fichier
    de verrouillage de la version cible. Ne laissez pas le dossier <code>_install</code> accessible sur un site existant.</p>

<h3>Appliquer les migrations nécessaires</h3>
<p>La version 19.0.0 conserve le schéma SQL <code>1.6.6</code> : aucune migration n'est nécessaire depuis 18.6.0, 18.6.1 ou 18.6.2.
    Pour une version plus ancienne, appliquez chaque migration intermédiaire dans l'ordre. La version 18.5.1 nécessite
    la migration <code>18.5.1-18.6.0</code>. Vérifiez le préfixe des tables avant d'exécuter le SQL.
    Si le schéma de départ est incertain, identifiez-le avant de continuer.</p>

<h3>Vérifier les permissions et le fonctionnement</h3>
<p>Suivez les <a href="https://github.com/pH7Software/pH7-Social-Dating-CMS/blob/18.x/docs/QUICK_START.md#4-set-narrow-filesystem-permissions">permissions limitées du guide</a>.
    N'utilisez pas <code>777</code> ou <code>666</code> sur tout le site. Le code doit rester en lecture seule pour PHP,
    avec des droits d'écriture uniquement sur les fichiers et dossiers prévus.</p>
<p>Videz les caches depuis Admin → Tools → Caches. Confirmez la version affichée, puis testez l'inscription, la connexion,
    les profils, les notes, les médias, les e-mails, les tâches cron et les notifications de paiement.
    Examinez les journaux avant de rouvrir le site. En cas d'échec, restaurez ensemble les anciens fichiers et la base de données.</p>
