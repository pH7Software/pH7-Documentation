<h2>How to translate my site to another language</h2>

<p><a href="http://ph7builder.com/why-ph7cms-name">pH7Builder</a> uses gettext libraries and tools for internationalization.</p>

<p>
    You can create a translation to your language using the global POT file (available <a href="https://github.com/pH7Software/pH7-Internationalization/blob/master/global.pot">here</a>, in <a href="https://github.com/pH7Software/pH7-Internationalization">pH7-Internationalization</a> repo).<br />
    You can also create a new translation from the 'global.po' file located in pH7Builder project "_protected/app/langs/en_US/LC_MESSAGES/global.po"
</p>

<p>
    You will also have to translate "language.php" located in "_protected/app/langs/en_US/language.php" (replace "en_US" to your language).<br />
    and edit "_protected/app/langs/en_US/config/config.ini" (like changing "<code>lang = id</code>" located in the beginning of the file).
</p>

<p>
    The language folder name conforms to the <a href="http://www.loc.gov/standards/iso639-2/php/code_list.php">ISO 639-2</a> (language code + _ + country code).<br />
    So, for instance, "German" language will be "de_DE", "Dutch" will be "nl_NL", "Italian" will be "it_IT", "Spanish" will be "es_ES", "Russian" will be "ru_RU", and so on.
</p>

<p>
   pH7Builder is already (partially) translated into Spanish, Italian, German, Dutch, Brazilian Portuguese, Indonesian and French. You can find those translations <a href="https://github.com/pH7Software/pH7-Internationalization">here</a>.<br />
   <a href="https://github.com/pH7Software/pH7-Internationalization#how-to-install-those-languages">How to install them</a> and <a href="https://github.com/pH7Software/pH7-Internationalization#troubleshooting">troubleshooting</a>.<br />
   <em>Please note that the software is in constant evolution, giving new language strings over time. Taking this into account, you may have to translate new strings from the translated `global.po` file.</em>
</p>

<p>
    Finally, in order to translate the gettext files easily, the recommended software is <a href="https://poedit.net">PoEdit software</a>.
    It is available on Windows, Linux and Mac OS.<br />
    You can also find paid solutions such as <a href="https://phraseapp.com">PhraseApp</a> or <a href="https://www.transifex.com">Transifex</a>.
</p>

<figure>
    <a href="{site_url}static/img/language-directory-structure.png" target="_blank">
        <img
            src="{site_url}static/img/language-directory-structure.png"
            alt="Language Directory Structure"
            title="Example of where to upload the language folder. Language directory structure" />
    </a>
    <figcaption>Example of where to upload the language folder</figcaption>
</figure>

<p>
    P.S. <strong>Terms</strong> and <strong>Privacy</strong> pages aren't translatable, because of their big size.<br />
    However, you can change the text of those pages easily through the <em>Admin Panel -> File/Page -> Page Module</em>.
</p>
