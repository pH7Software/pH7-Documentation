<h2>Installer pH7Builder en 5 étapes</h2>

<p>pH7Builder 19.0.0 nécessite PHP 8.2+, MySQL 8.0+ et les
    <a href="{site_url}en/requirements">extensions requises (en anglais)</a>. Comptez environ 20 à 30 minutes une fois
    le serveur, la base de données et le DNS prêts. Le
    <a href="https://github.com/pH7Software/pH7-Social-Dating-CMS/blob/18.x/docs/QUICK_START.md">guide de démarrage maintenu (en anglais)</a>
    fournit les commandes détaillées.</p>

<h3>1. Télécharger et extraire la version</h3>
<p>Téléchargez <code>pH7Builder-v19.0.0.zip</code> et son fichier de somme de contrôle depuis la
    <a href="https://github.com/pH7Software/pH7-Social-Dating-CMS/releases/tag/v19.0.0">publication GitHub</a>.
    Vérifiez la somme de contrôle avant d'extraire l'archive, par exemple avec <a href="https://www.7-zip.org/download.html">7-Zip</a>.
    Ce ZIP inclut les dépendances, contrairement aux archives de code source séparées. Les autres catalogues peuvent proposer une ancienne version.</p>

<h3>2. Transférer tous les fichiers</h3>
<p>Utilisez SFTP ou le gestionnaire de fichiers de votre hébergeur. Incluez les fichiers cachés comme <code>.htaccess</code>
    et les dossiers de dépendances. Pour une installation depuis les sources, exécutez
    <code>composer install --no-dev --prefer-dist --optimize-autoloader</code> à la racine du projet.</p>

<h3>3. Configurer HTTPS et les dossiers protégés</h3>
<p>Configurez le domaine HTTPS définitif avant l'installation. Conservez les règles Apache ou nginx de la version pour
    bloquer l'accès direct à <code>_protected</code> et aux autres chemins privés. Ne déplacez pas les dossiers sans adapter les chemins configurés.</p>

<h3>4. Limiter les permissions</h3>
<p>Le code doit appartenir au compte de déploiement. Accordez au processus PHP uniquement les droits d'écriture nécessaires
    sur les dossiers et fichiers indiqués dans les
    <a href="https://github.com/pH7Software/pH7-Social-Dating-CMS/blob/18.x/docs/QUICK_START.md#4-set-narrow-filesystem-permissions">instructions de permissions</a>.
    L'installateur a également besoin de droits temporaires pour créer sa configuration.</p>
<p class="warning">N'appliquez pas <code>777</code> aux dossiers ni <code>666</code> aux fichiers de tout le site.
    Si l'installateur signale un problème, demandez à votre hébergeur de vérifier le propriétaire et le groupe des fichiers.</p>

<h3>5. Lancer puis supprimer l'installateur</h3>
<p>À la racine de l'application, créez le jeton d'accès avec le compte de déploiement :</p>
<pre>php _install/create-install-token.php</pre>
<p>Gardez le jeton affiché confidentiel. Ouvrez <code>https://VOTRE-SITE.com/_install/</code>, saisissez-le et suivez l'assistant.
    Si vous n'avez pas de terminal, demandez à votre hébergeur d'exécuter cette commande ; ne désactivez pas la protection.</p>
<p>Notez l'URL d'administration, supprimez l'installateur depuis son écran final et vérifiez que <code>_install</code> a disparu.
    Retirez les droits d'écriture temporaires selon les
    <a href="https://github.com/pH7Software/pH7-Social-Dating-CMS/blob/18.x/docs/QUICK_START.md#6-lock-the-installation-down">instructions de sécurisation</a>.
    Configurez ensuite les e-mails, les tâches cron et les paramètres du site, puis suivez la
    <a href="https://github.com/pH7Software/pH7-Social-Dating-CMS/blob/18.x/docs/LAUNCH_CHECKLIST.md">checklist de lancement (en anglais)</a>.</p>

<h3>Ancienne démonstration</h3>
<p>Cette vidéo présente une version antérieure. Pour les prérequis, permissions et jetons d'accès actuels, suivez les instructions ci-dessus.</p>
<p><iframe width="600" height="400" src="https://www.youtube.com/embed/fFSI-AEMQwY?rel=0&amp;controls=0&amp;showinfo=0" title="Ancienne démonstration d'installation de pH7Builder" frameborder="0" allowfullscreen></iframe></p>
