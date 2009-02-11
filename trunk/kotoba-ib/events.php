<?php
/*************************************
 * Этот файл является частью Kotoba. *
 * Файл license.txt содержит условия *
 * распространения Kotoba.           *
 *************************************/
/*********************************
 * This file is part of Kotoba.  *
 * See license.txt for more info.*
 *********************************/

// Формат событий:
// (Тип события) Сообщение. (Дата и время наступления)

// Заметки:
//
// Префиксы ERR_, WARN_, INFO_ в именах констант соотвествуют различным типам событий.
//
// Объявляя константы, зависящие от параметров, обязательно указывайте в комментариях, что значат эти параметры.
// Описывайте параметры в том порядке, в котором они встречаются в значении константы.

// TODO Убрать из названий констант слова типа FALTURE, FAILED. Масло маленное.
// TODO Переписать тексты ошибок.

define('ERR_BOARD_NOT_SPECIFED', '(Ошибка) Не задано имя доски.');
define('ERR_BOARD_BAD_FORMAT', '(Ошибка) Имя доски имеет не верный формат.');

// 1. Имя доски.
define('ERR_BOARD_NOT_FOUND', '(Ошибка) Доски с именем %s не существует.');

// 1. Имя доски.
// 2. Причина неудачи проверки существания доски.
define('ERR_BOARD_EXIST_CHECK', '(Ошибка) Не удалось проверить существание доски с именем %s. Прична: %s.');
define('ERR_BOARDS_NOT_EXIST', '(Ошибка) Не создано ни одной доски.');

// 1. Причина неудачи получения списка досок.
define('ERR_BOARDS_LIST', '(Ошибка) Невозможно получить список досок. Причина: %s');

define('ERR_FILE_TOO_SMALL', '(Ошибка) Загружаемый файл имеет слишком маленький размер.');
define('ERR_TEXT_TOO_LONG', '(Ошибка) Текст сообщения слишком длинный.');
define('ERR_THEME_TOO_LONG', '(Ошибка) Тема слишком длинная.');
define('ERR_NAME_TOO_LONG', '(Ошибка) Имя пользователя слишком длинное.');
define('ERR_WRONG_FILETYPE', '(Ошибка) Недопустимый тип файла.');
define('ERR_FILE_NOT_SAVED', '(Ошибка) Файл не удалось сохранить.');
define('ERR_FILE_ALREADY_EXIST', '(Ошибка) Картинка уже была запощена.');

// 1. Имя доски.
// 2. Причина неудачи проверки существания картинки.
define('ERR_FILE_EXIST_FAILED', '(Ошибка) Не удалось проверить существание картинки на доске с именем %s. Прична: %s.');
define('ERR_FILE_LOW_RESOLUTION', '(Ошибка) Разрешение загружаемого изображения слишком маленькое.');
define('ERR_THUMB_CREATION', '(Ошибка) Не удалось создать уменьшенную копию изображения.');
define('ERR_PASS_BAD_FORMAT', '(Ошибка) Пароль для удаления имеет не верный формат.');

// 1. Причина неудачи начала транзакции.
define('ERR_TRAN_FAILED', '(Ошибка) Невозможно начать транзакцию. Причина: %s.');

// 1. Имя доски.
// 2. Причина неудачи подсчёта количества постов.
define('ERR_POST_COUNT_CALC', '(Ошибка) Невозможно подсчитать количество постов доски %s. Причина: %s.');

// 1. Причина неудачи поиска треда.
define('ERR_ARCH_THREAD_SEARCH', '(Ошибка) Невозможно найти тред для сброса в архив. Причина: %s.');

// 1. Причина неудачи пометки треда.
define('ERR_ARCH_THREAD_MARK', '(Ошибка) Невозможно пометить тред для архивирования. Причина: %s.');

// 1. Номер треда.
// 2. Число постов в треде.
// 3. Номер доски.
// 4. Количество постов доски после того как тред утонул.
define('INFO_THREAD_ARCHIVED', '(Информация) Утонул тред %s с числом постов %s с доски %s и теперь количество постов доски %s.');

// 1. Причина неудачи вычисления номера нового оп поста.
define('ERR_NEW_OPPOSTNUM_CALC', '(Ошибка) Невозможно вычислить номер нового оп поста. Причина: %s.');

// 1. Причина неудачи вычисления номера нового поста.
define('ERR_NEW_POSTNUM_CALC', '(Ошибка) Невозможно вычислить номер нового поста. Причина: %s.');

// 1. Причина неудачи создания нового оп поста.
define('ERR_NEW_OPPOST_CREATE', '(Ошибка) Невозможно создать новый оп пост. Причина: %s.');
//
//// 1. Причина неудачи создания нового оп поста.
define('ERR_NEW_POST_CREATE', '(Ошибка) Невозможно создать новый пост. Причина: %s.');

// 1. Причина неудачи создания нового оп поста.
define('ERR_NEW_THREAD_CREATE', '(Ошибка) Невозможно создать новый тред. Причина: %s.');

// 1. Причина неудачи установки номера.
define('ERR_SET_MAXPOST', '(Ошибка) Невозможно установить наибольший номер поста доски. Причина: %s.');

// 1. Причина неудачи начала транзакции.
define('ERR_TRAN_COMMIT_FAILED', '(Ошибка) Невозможно завершить транзакцию. Причина: %s.');
define('ERR_PAGE_BAD_FORMAT', '(Ошибка) Номер страницы имеет не верный формат.');
define('ERR_PAGE_BAD_RANGE', '(Ошибка) Страница находится вне допустимого диапазона.');

// 1. Причина неудачи подсчета.
define('ERR_THREADS_CALC_FALTURE', '(Ошибка) Невозможно подсчитать количество тредов просматриваемой доски. Причина: %s');

// 1. Причина неудачи получения номеров.
define('ERR_THREADS_NUMS_FALTURE', '(Ошибка) Невозможно получить номера тредов. Причина: %s');

// 1. Номер треда.
// 2. Причина неудачи подсчета.
define('ERR_THREAD_POSTS_CALC', '(Ошибка) Невозможно подсчитать количество постов треда %s для предпросмотра. Причина: %s');

// 1. Номер треда.
define('ERR_THREAD_NO_POSTS', '(Ошибка) В треде %s нет ни одного поста.');

// 1. Номер треда.
// 2. Имя доски.
// 3. Причина неудачи получения постов.
define('ERR_GET_THREAD_POSTS', '(Ошибка) Невозможно получить посты для предпросмотра треда %s доски %s. Причина: %s.');
define('ERR_THREAD_NOT_SPECIFED', '(Ошибка) Не задан номер треда.');
define('ERR_THREAD_BAD_FORMAT', '(Ошибка) Номер треда имеет не верный формат.');
define('ERR_THREAD_NOT_FOUND', '(Ошибка) Треда с номером %s на доске %s не найдено.');	// 1. Номер треда. 2. Имя доски.
define('ERR_THREAD_EXIST_CHECK', '(Ошибка) Не удалось проверить существание треда с номером %s на доске %s. Прична: %s');	// 1. Номер треда. 2. Имя доски. 3. Причина неудачи поиска треда.
define('ERR_NO_FILE_AND_TEXT', '(Ошибка) Файл не был загружен и пустой текст сообщения.');
?>