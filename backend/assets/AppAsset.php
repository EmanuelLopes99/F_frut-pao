<?php

namespace backend\assets;

use yii\web\AssetBundle;

/**
 * Main backend application asset bundle.
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';

    public $css = [
        //'css/site.css',
        'css/style.css',
        'css/bootstrap-theme.css',
        'css/bootstrap-theme.min.css',
        'css/bootstrap.css',
        'css/bootstrap.min.css',
        'css/prettyPhoto.css',
        'css/bootstrap-theme.css.map',
        'css/bootstrap-theme.min.css.map',
        'css/bootstrap.css.map',
        'css/bootstrap.min.css.map',
    ];

    public $js = [
        'js/bootstrap.js',
        'js/bootstrap.min.js',
        'js/npm.js',
    ];

    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];
}
