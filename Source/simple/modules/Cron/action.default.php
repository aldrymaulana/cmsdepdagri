<?php
if (!isset($gCms)) exit;

/* -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

   Code for Cron "default" action

   -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
   
   Typically, this will display something from a template
   or do some other task.
   
*/
$periods = $this->getPeriods();

foreach ($periods as $period => $time)
{
	//	$this->SetPreference('Last' . $period, 0);
}
//	$gCms->modules['Todo']['object']->SendEvent('ContentEditPost');
	
	$this->Audit( 0, $this->Lang('friendlyname'), $this->Lang('cron_launched'));
	
	foreach ($periods as $period => $time)
	{
		$last = $this->GetPreference('Last'.$period);
		if ($last <= strtotime($time))
		{
			$this->SendEvent('Cron'.$period, array());
			$this->SetPreference('Last'.$period, time());
			$this->Audit( 0, $this->Lang('friendlyname'), $this->Lang('cron_executed',$period));
			echo '<br />Made ' . $period;
		}
	}


?>