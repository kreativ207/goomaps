<?php
/* @var $this MarkersController */
/* @var $model Markers */

$this->breadcrumbs=array(
	'Markers'=>array('index'),
	$model->name,
);

$this->menu=array(
	array('label'=>'List Markers', 'url'=>array('index')),
	array('label'=>'Create Markers', 'url'=>array('create')),
	array('label'=>'Update Markers', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Markers', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
);
?>

<h1>View Markers #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'name',
		'address',
		'lat',
		'lng',
		'type',
	),
)); ?>
