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
Код конца страницы просмотра доски.

Описание переменных:
	$DIR_PATH - путь от корня документов к директории, где хранится index.php (см. config.default).
	$board - просматриваемая доска.
	$boards - доски.
	$hidden_threads - скрытые пользователем нити на текущей доске.
	$pages - номера страниц.
	$page - номер просматриваемой страницы.
*}
{if count($hidden_threads) > 0}
Скрытые вами нити:
{section name=i loop=$hidden_threads}
 <a href="{$DIR_PATH}/{$board.name}/u{$hidden_threads[i].number}" title="Нажмите, чтобы отменить скрытие нити.">{$hidden_threads[i].number}</a>
{/section}
{/if}<br>
{include file='pages_list.tpl' board_name=$board.name pages=$pages page=$page}
<br>
<div class="navbar">{include file='board_list.tpl' boards=$boards DIR_PATH=$DIR_PATH} [<a href="{$DIR_PATH}/">Главная</a>]</div>
<div class="footer" style="clear: both;">- Kotoba 0.8 -</div>
{include file='footer.tpl'}