<?php

			if (!isset($gCms)) exit;
							
			$this->smarty->assign('startform', $this->CreateFormStart($id,'update', $returnid,'post'));
			$this->smarty->assign('endform', $this->CreateFormEnd());
			$this->smarty->assign('formtitle', $this->Lang('formtitle'));
			$this->smarty->assign('inputsummary', $this->CreateTextArea(true, $id, $this->Lang('textbx'), 'summary', '', '', '', '', '80', '12'));
			$this->smarty->assign('submit', $this->CreateInputSubmit($id, 'submit', $this->Lang('submit')));
			$this->smarty->assign('cancel', $this->CreateInputReset($id, 'cancel', $this->Lang('cancel')));
					
			echo $this->ProcessTemplate('edit_form.tpl');		
?>