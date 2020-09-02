<?php
declare(strict_types=1);
session_start();

use Phalcon\Http\Response as Response;

class IndexController extends ControllerBase
{

    public function indexAction()
    {
        $covid = new Covid();
        $province = Province::find();

        $this->view->covid = $covid->getAll();
        $this->view->province = $province;
    }

    public function saveAction()
    {
        $post = $this->request->getPost();
        
        $covid= Covid::findFirst(
            [
                "id_province = ".$post['province']."",
            ]
        );
        
        if (!is_null($covid)) {
            $last_summary = intval( $covid->summary ) + intval( $post['summary'] );
            
            $covid->id      = $covid->id;
            $covid->summary = $last_summary;

            if ($covid->save()) {
                $message    = "Berhasil menyimpan"; 
                $alert      = "success";
            } else {
                $message    = "Gagal menyimpan";
                $alert      = "danger";
            }

        }else {
            $covid = new Covid();
            $covid->id_province = $post['province'];
            $covid->summary     = $post['summary'];

            if ($covid->save()) {
                $message    = "Berhasil menyimpan"; 
                $alert      = "success";
            }else {
                $message    = "Gagal menyimpan";
                $alert      = "danger";
            }
        }

        $res = new Response;

        $_SESSION['message'] = $message;
        $_SESSION['alert'] = $alert;

        
        return $res->redirect("kirimemail/index");        
    }

    public function editAction($id)
    {
        $covid = Covid::findFirst($id);
        $province = Province::find();
        
        $this->view->covid = $covid;
        $this->view->province = $province;
    }

    public function deleteAction($id)
    {
        $user = Covid::findFirst($id);
                  
        if (! $user->delete()) {
            $alert = "danger";
            $message = "Gagal menghapus";
        }else {
            $alert = "success";
            $message = "Berhasil menghapus";
        }

        $res = new Response;

        $_SESSION['message'] = $message;
        $_SESSION['alert'] = $alert;

        return $res->redirect("kirimemail/index");  
    }
}

