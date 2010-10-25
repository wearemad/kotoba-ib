{* Smarty *}
{*************************************
 * Этот файл является частью Kotoba. *
 * Файл license.txt содержит условия *
 * распространения Kotoba.           *
 *************************************
 *********************************
 * This file is part of Kotoba.  *
 * See license.txt for more info.*
 *********************************}
{*
Код панели администратора.

Описание переменных:
    $DIR_PATH - путь от корня документов к директории, где хранится index.php (см. config.default).
    $show_control - показывать ссылку на страницу административных фукнций и фукнций модераторов.
*}
<div class="adminbar">
[<a href="{$DIR_PATH}/edit_settings.php">Настройки</a>]
[<a href="{$DIR_PATH}/search.php">Поиск</a>]
{if $show_control}[<a href="{$DIR_PATH}/manage.php">Управление</a>]
{/if}
</div>
