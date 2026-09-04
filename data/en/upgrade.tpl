<h2>Upgrade pH7Builder safely</h2>

<p class="warning">Automatic in-place upgrades are currently unavailable. Test a manual upgrade on a staging copy before
    changing production. Follow the <a href="https://github.com/pH7Software/pH7-Social-Dating-CMS/blob/18.x/docs/UPGRADING.md">maintained upgrade guide</a>
    for your exact starting version.</p>

<h3>Back up and check compatibility</h3>
<p>Record your installed version and database schema. Read the target release notes and confirm PHP 8.2+ and MySQL 8.0+.
    Back up the database, configuration, uploaded data, custom modules, themes, language packs, and gateway credentials.
    Restore the backup on staging before putting production into maintenance mode.</p>

<h3>Deploy the target release</h3>
<p>Use the versioned ZIP and checksum from the <a href="https://github.com/pH7Software/pH7-Social-Dating-CMS/releases">GitHub release</a>.
    Preserve local configuration and content; do not blindly overwrite them. Deploy the target release's
    <code>_protected/framework/Security/Version.class.php</code> along with its other application files.
    Do not restore an older version file or mix application versions.</p>
<p>For source deployments, run <code>composer install --no-dev --prefer-dist --optimize-autoloader</code> using the target lock file.
    Do not leave the newly uploaded <code>_install</code> directory accessible on an existing site.</p>

<h3>Apply only the required migrations</h3>
<p>Version 19.0.0 keeps SQL schema <code>1.6.6</code>. Sites already on 18.6.0, 18.6.1, or 18.6.2 need no database migration.
    Older sites must apply every applicable intermediate migration in order; 18.5.1 needs the reviewed
    <code>18.5.1-18.6.0</code> migration. Check the installed table prefix before running SQL.
    If the starting schema is uncertain, stop and identify it first.</p>

<h3>Check permissions and verify</h3>
<p>Follow the <a href="https://github.com/pH7Software/pH7-Social-Dating-CMS/blob/18.x/docs/QUICK_START.md#4-set-narrow-filesystem-permissions">narrow permission instructions</a>;
    do not use site-wide <code>777</code> or <code>666</code>. Keep code read-only to the PHP process and preserve the specific writable runtime/configuration targets.</p>
<p>Clear application caches in Admin → Tools → Caches. Confirm the displayed target version, then test signup, login,
    profiles, Notes, uploads, email, cron, and payment callbacks. Review logs before reopening the site.
    If verification fails, restore the previous files and database together.</p>

<h3>Historical upgrade screen</h3>
<p>This image illustrates the order of migrations in older releases; it is not the current upgrade procedure.</p>
<figure>
    <a href="{site_url}static/img/upgrade-page-ph7cms.png" target="_blank" rel="noopener">
        <img src="{site_url}static/img/upgrade-page-ph7cms.png" alt="Historical upgrade screen showing migration order" />
    </a>
    <figcaption>Earlier releases applied migrations from oldest to newest.</figcaption>
</figure>
