<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Contacto */

$this->title = $model->endereco;
$this->params['breadcrumbs'][] = ['label' => 'Contactos', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="panel panel-default">
    <div class="list-group-item active">
        <h3 class="panel-title">Contacto</h3>
    </div>
        <div class="panel-body">

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->endereco], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->endereco], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'endereco',
            'email:email',
            'telefone',
        ],
    ]) ?>

</div></div>
