<?php
/**
 * @author      Pierre-Henry Soria
 * @email       pierrehs@hotmail.com
 * @link        http://github.com/pH-7/Nav-Doc-Script-V2
 * @copyright   (c) 2012-2022, Pierre-Henry Soria. All Rights Reserved.
 * @license     CC-BY - http://creativecommons.org/licenses/by/3.0/
 */

namespace PH7\Doc;

define('PH7', 1);

include __DIR__ . '/inc/conf.const.php';
include ROOT_PATH . 'inc/scripts/fns.php';
include ROOT_PATH . 'inc/scripts/fns.html.php';

define('LANG', get_lang());

ob_start();

echo get_page(ROOT_PATH . 'themes/' . TPL . '/tpl/header.tpl');
echo get_page(ROOT_PATH . 'themes/' . TPL . '/tpl/ads/header.tpl');

if (!empty($_GET['p'])) {
    $sPage = DATA_PATH . LANG . '/' . $_GET['p'] . '.tpl';
    echo get_page($sPage);
    echo get_page(DATA_PATH . LANG . '/core/include/github-edit-page.tpl');
} else {
    echo get_page(DATA_PATH . LANG . '/core/welcome.tpl');
    echo get_page(ROOT_PATH . 'themes/' . TPL . '/tpl/menu.tpl');
}

echo get_page(ROOT_PATH . 'themes/' . TPL . '/tpl/ads/footer.tpl');
echo get_page(ROOT_PATH . 'themes/' . TPL . '/tpl/footer.tpl');

ob_end_flush();
