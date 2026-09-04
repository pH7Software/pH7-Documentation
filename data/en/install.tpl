<h2>Install pH7Builder in 5 steps</h2>

<p>For pH7Builder 19.0.0, start with PHP 8.2+, MySQL 8.0+, and the
    <a href="{site_url}en/requirements">required extensions</a>. Allow around 20–30 minutes once the server, database,
    and DNS are ready. Follow the <a href="https://github.com/pH7Software/pH7-Social-Dating-CMS/blob/18.x/docs/QUICK_START.md">maintained Quick Start</a>
    for copy-paste server commands.</p>

<h3>1. Download and extract the release</h3>
<p>Download the versioned <code>pH7Builder-v19.0.0.zip</code> and its checksum from the
    <a href="https://github.com/pH7Software/pH7-Social-Dating-CMS/releases/tag/v19.0.0">GitHub release</a>.
    Verify the checksum before extracting it with a tool such as <a href="https://www.7-zip.org/download.html">7-Zip</a>.
    This ZIP includes dependencies; GitHub's separate source-code archives do not. Third-party download catalogues may offer older versions.</p>

<h3>2. Upload all release files</h3>
<p>Use SFTP or your hosting file manager. Include hidden files such as <code>.htaccess</code> and all dependency directories.
    For a source checkout, run <code>composer install --no-dev --prefer-dist --optimize-autoloader</code> from the project root.</p>

<h3>3. Configure HTTPS and protected directories</h3>
<p>Configure the final HTTPS hostname before installing. Use the release's Apache or nginx rules to deny direct access to
    <code>_protected</code> and other private paths. Do not move or rename directories without updating their configured paths.</p>

<h3>4. Set narrow file permissions</h3>
<p>Keep application code owned by the deployment account. Grant the PHP web-server user or group write access only to the
    runtime directories and specific configuration/editor files listed in the
    <a href="https://github.com/pH7Software/pH7-Social-Dating-CMS/blob/18.x/docs/QUICK_START.md#4-set-narrow-filesystem-permissions">permission instructions</a>.
    The installer also needs temporary write access to create its configuration.</p>
<p class="warning">Do not apply <code>777</code> to directories or <code>666</code> to files across the site.
    Ask your host to correct ownership and group access if the installer reports a permission problem.</p>

<h3>5. Run and remove the installer</h3>
<p>From the application root, create the access token as the deployment user:</p>
<pre>php _install/create-install-token.php</pre>
<p>Keep the printed token private. Open <code>https://YOUR-WEBSITE.com/_install/</code>, enter it, and complete the wizard.
    If your host has no terminal, ask it to run the token command; do not disable the access check.</p>
<p>Record the admin URL, remove the installer through its final screen, and verify that <code>_install</code> is gone.
    Remove temporary directory write access as described in the
    <a href="https://github.com/pH7Software/pH7-Social-Dating-CMS/blob/18.x/docs/QUICK_START.md#6-lock-the-installation-down">lockdown instructions</a>.
    Then configure mail, cron, and business settings and complete the
    <a href="https://github.com/pH7Software/pH7-Social-Dating-CMS/blob/18.x/docs/LAUNCH_CHECKLIST.md">Launch Checklist</a>.</p>

<h3>Earlier installation walkthrough</h3>
<p>This video shows an older release. Use the instructions above for current requirements, permissions, and installer access.</p>
<p><iframe width="600" height="400" src="https://www.youtube.com/embed/fFSI-AEMQwY?rel=0&amp;controls=0&amp;showinfo=0" title="Earlier pH7Builder installation walkthrough" frameborder="0" allowfullscreen></iframe></p>
