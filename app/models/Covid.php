<?php
use Phalcon\Mvc\Model;
use Phalcon\Mvc\Model\Query;
use Phalcon\Mvc\Model\Query\Builder;
use Phalcon\Mvc\Model\Manager;

class Covid extends Model
{
    public $id;
    public $id_province;
    public $summary;
 

    public function getAll()
    {
        // Executing a simple query
        $query = $this->modelsManager->createQuery("SELECT covid.*, province.province 
                                                   FROM covid 
                                                   JOIN province ON province.id=covid.id_province");
        
        return $query->execute();
    }
}
?>