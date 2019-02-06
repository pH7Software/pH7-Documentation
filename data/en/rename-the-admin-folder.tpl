<h2>How to rename the "admin123" folder</h2>

<p>To ensure an excellent safety and protect the administration of your site, you can rename the "admin123" folder.</p>
<p>To do this, rename the folder with the name of your choice, then edit the file <em>~/YOUR_PROTECTED_FOLDER/app/configs/constants.php</em> and change</p>
<pre><code class="php">define('PH7_ADMIN_MOD', 'admin123');</code></pre>
<p>by the new admin folder name.</p>

<p>
    Finally, since <a href="https://ph7cms.com/ph7cms-12-1-released/">pH7CMS, v12.1</a>), all URL lookups are cached for optimization purpose.
</p>
<p>
    Because of that, you will also have to to delete the "~/YOUR-PROTECTED-FOLDER/data/cache/pH7_cache/str/uri/" folder in order to take into account the new admin URL.<br />
    This folder will be regenerated and the URIs cached recreated.
</p>
