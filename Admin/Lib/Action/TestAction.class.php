<?php
class TestAction extends Action{
	public $arr  = 1;
	public function _initialize(){
		$this->arr = 3;
	}
	public function get(){
		dump($this->arr);
	}
}