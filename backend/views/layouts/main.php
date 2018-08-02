<?php

/* @var $this \yii\web\View */
/* @var $content string */

use backend\assets\AppAsset;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use common\widgets\Alert;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googlespis.com/ajax/libs/jquery/3.11/jquery.min.js"></script>
    <script src="js.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script> 

    <title>Frut&Pao</title>
    <?php $this->head() ?>
</head>
<body>
<?php $this->beginBody() ?>

<div class="wrap">
    <div class="row">
        <div id="sidebar">
            <div class="toggle-btn" onclick="toggleSidebar()">
                <span></span>
                <span></span>
                <span></span>
            </div>
            <div class="logo1"><!-- logo a esquerda -->
                <img src="img/logo.png">
            </div>
            <ul>
                <li><a href="index.php">Dashboard</a></li>
                <li><a href="index.php?r=homegaleria/index">Home</a></li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Frut&Pão
                    <span class="caret"></span></a>
                    <ul class="dropdown-menu" style="background-color: #122b40">
                      <li><a href="#">xxxxxxxxx</a></li>
                      <li><a href="#">xxxxxxxxx</a></li>
                      <li><a href="#">xxxxxxxxx</a></li>
                      <li><a href="#">xxxxxxxxx</a></li>
                    </ul>
                </li> 
                <li><a href="index.php?r=promocaogaleria/index">Promoções</a></li>
                <li><a href="index.php?r=contacto/index">Contactos</a></li>
            </ul>
        </div>

        <nav class="nav-logo">
            <div class="logo">
                <img src="@web/img/logo.png">
            </div>
        </nav>

        <!-- USER -->
        <div class="direita">
            <ul class="menu-pricipal">
                <li><span class="perfil"></span><a href="#user"><img src="img/avatar.png" style="width: 50px;"></a>
                    <ul class="submenu">
                        <li><a href="index.php?r=usuario/index" style="margin-top: 15px;">Meus Dados</a></li>
                        <?php 
                        if (Yii::$app->user->isGuest) {
                            $menuItems[] = ['label' => 'Login', 'url' => ['/site/login']];
                        } else {
                            $menuItems[] = '<li>'
                            . Html::beginForm(['/site/logout'], 'post')
                            . Html::submitButton(
                                'Logout (' . Yii::$app->user->identity->username . ')',
                                ['class' => 'btn btn-link logout']
                            )
                            . Html::endForm()
                            . '</li>';
                        }
                        echo Nav::widget([
                            'options' => ['class' => 'navbar-center '],
                            'items' => $menuItems,
                        ]); ?>
                    </ul>
                </li>
            </ul>
        </div>

        <!-- carregar index -->
        <div class="col-md-9 col-md-offset-2" style="margin-top: 15px">
            <?= Breadcrumbs::widget([
                'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
            ]) ?>
            <?= Alert::widget() ?>
            <?= $content ?> 
        </div><!-- fim de index -->

    </div><!-- fim de row -->
</div><!-- fim de warp -->

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
