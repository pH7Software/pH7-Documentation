<h1>pH7Builder requirements</h1>

<p>These requirements apply to pH7Builder 19.0.0. Check the
    <a href="https://github.com/pH7Software/pH7-Social-Dating-CMS/blob/18.x/docs/QUICK_START.md#1-confirm-the-requirements">maintained Quick Start</a>
    before choosing hosting. The browser installer checks requirements again before setting up the database.</p>

<h2>Server</h2>
<ul>
    <li>Linux with Apache or nginx, URL rewriting, and HTTPS for production.</li>
    <li>MySQL 8.0 or newer, with InnoDB and utf8mb4. Older MySQL versions and MariaDB are unverified and unsupported for this release.</li>
    <li>PHP 8.2 or newer, with cURL, DOM, EXIF, Fileinfo, GD with FreeType and WebP, hash, iconv, JSON, mbstring, OpenSSL, PDO MySQL, SimpleXML, XML, XMLWriter, ZIP, and zlib.</li>
    <li>Composer 2 for a source checkout. The versioned release ZIP includes production dependencies.</li>
    <li>A working hosting mail transport or SMTP credentials supplied through <code>PH7_MAILER_DSN</code> in the PHP web-process environment.</li>
    <li>Disk space for the application, uploaded media, temporary files, and backups. Size it for your expected usage and keep backups off-server.</li>
</ul>

<h2>Uploads and optional features</h2>
<p>Enable PHP file uploads. Keep the web-server request limit, PHP upload and POST limits, and application limits consistent.
    The current nginx example allows 50 MB requests and the default video limit is 45 MB; use at least
    <code>upload_max_filesize = 50M</code> and a larger <code>post_max_size</code>, such as <code>52M</code>, for that configuration.</p>
<p><a href="https://ffmpeg.org">FFmpeg</a> and permission to execute it are needed only for local video processing.
    Leave its installer path blank when it is not installed. Do not enable unrelated execution features to satisfy an old guide.</p>

<h2>Security and hosting checks</h2>
<p>Keep production error display and <code>allow_url_include</code> disabled. Do not make the whole site writable or disable
    ModSecurity globally. If a legitimate request is blocked, ask the host to inspect the matching rule and apply a narrow exception.</p>
<p>Use the <a href="https://github.com/pH7Software/pH7-Social-Dating-CMS/blob/18.x/docs/QUICK_START.md">Quick Start</a>
    for the exact permission, HTTPS, mail, and cron setup, then complete the
    <a href="https://github.com/pH7Software/pH7-Social-Dating-CMS/blob/18.x/docs/LAUNCH_CHECKLIST.md">Launch Checklist</a>.</p>
