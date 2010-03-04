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
Код обычного сообщения.

Описание переменных:
	$DIR_PATH - путь от корня документов к директории, где хранится index.php (см. config.default).
	$ATTACHMENT_TYPE_FILE - тип вложения файл (см. config.default).
	$ATTACHMENT_TYPE_LINK - тип вложения ссылка (см. config.default).
	$ATTACHMENT_TYPE_VIDEO - тип вложения видео (см. config.default).
	$ATTACHMENT_TYPE_IMAGE - тип вложения изображение (см. config.default).
	$board - просматриваемая доска.
    $thread - нить.

	$simple_post - сообщение.
	$simple_attachments - вложения.
*}
    <table>
	<tbody>
    <tr>
		<td class="doubledash">
			&gt;&gt;
		</td>
        <td class="reply">
			<a href="{$DIR_PATH}/remove_post.php?post={$simple_post.id}&submit=1"><img src="{$DIR_PATH}/css/delete.png" alt="[Удалить]" title="Удалить сообщение" border="0"/></a>
			{if $simple_post.with_attachments}
				<a href="{$DIR_PATH}/remove_upload.php?post={$simple_post.id}&submit=1"><img src="{$DIR_PATH}/css/delfile.png" alt="[Удалить файл]" title="Удалить файл" border="0"/></a>
			{/if}
			<a href="{$DIR_PATH}/report.php?post={$simple_post.id}&submit=1"><img src="{$DIR_PATH}/css/report.png" alt="[Пожаловаться]" title="Пожаловаться на сообщение" border="0"/></a>
            <span class="filetitle">{$simple_post.subject}</span> <span class="postername">{$simple_post.name}</span>{if $simple_post.tripcode != null}<span class="postertrip">!{$simple_post.tripcode}</span>{/if} {$simple_post.date_time}
            <span class="reflink"><span onclick="insert('>>{$simple_post.number}');">#</span> <a href="{$DIR_PATH}/{$board.name}/{$thread[0].original_post}#{$simple_post.number}">{$simple_post.number}</a></span>
            {if $is_admin}{include file='mod_mini_panel.tpl' post_id=$simple_post.id ip=$simple_post.ip board_name=$board.name post_num=$simple_post.number}{/if}
            <a name="{$simple_post.number}"></a><br/>
			{if $simple_post.with_attachments}
				{if $simple_attachments[0].attachment_type == $ATTACHMENT_TYPE_FILE}
					<span class="filesize">Файл: <a target="_blank" href="{$simple_attachments[0].file_link}">{$simple_attachments[0].name}</a> -(<em>{$simple_attachments[0].size} Байт</em>)</span>
					<br><a target="_blank" href="{$simple_attachments[0].file_link}"><img src="{$simple_attachments[0].thumbnail_link}" class="thumb" width="{$simple_attachments[0].thumbnail_w}" height="{$simple_attachments[0].thumbnail_h}"></a>
				{elseif $simple_attachments[0].attachment_type == $ATTACHMENT_TYPE_IMAGE}
					<span class="filesize">Файл: <a target="_blank" href="{$simple_attachments[0].image_link}">{$simple_attachments[0].name}</a> -(<em>{$simple_attachments[0].size} Байт {$simple_attachments[0].widht}x{$simple_attachments[0].height}</em>)</span>
					<br><a target="_blank" href="{$simple_attachments[0].image_link}"><img src="{$simple_attachments[0].thumbnail_link}" class="thumb" width="{$simple_attachments[0].thumbnail_w}" height="{$simple_attachments[0].thumbnail_h}"></a>
				{elseif $simple_attachments[0].attachment_type == $ATTACHMENT_TYPE_LINK}
					<span class="filesize">Файл: <a target="_blank" href="{$simple_attachments[0].url}">{$simple_attachments[0].url}</a> -(<em>{$simple_attachments[0].size} Байт {$simple_attachments[0].widht}x{$simple_attachments[0].height}</em>)</span>
					<br><a target="_blank" href="{$simple_attachments[0].url}"><img src="{$simple_attachments[0].thumbnail}" class="thumb" width="{$simple_attachments[0].thumbnail_w}" height="{$simple_attachments[0].thumbnail_h}"></a>
				{elseif $simple_attachments[0].attachment_type == $ATTACHMENT_TYPE_VIDEO}
					<br><br>{$simple_attachments[0].video_link}
				{/if}
			{/if}
            <blockquote>
            {$simple_post.text}
            </blockquote>
			{if $simple_post.text_cutted == 1}<br><span class="omittedposts">Нажмите "Ответ" для просмотра сообщения целиком.</span>{/if}
        </td>
    </tr>
	</tbody>
    </table>