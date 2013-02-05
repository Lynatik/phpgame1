<br />
<?=anchor('/', 'Главная')?> | 
<?php if($this->auth->isLogin() == TRUE): ?>
	<?=anchor('log/out', 'Выход')?>
<?php else: ?>
	<?=anchor('log/reg', 'Регистрация')?> | <?=anchor('log/in', 'Вход')?>
<?php endif; ?>
