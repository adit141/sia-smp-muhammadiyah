<?php
require_once APPPATH . 'third_party/tcpdf/tcpdf.php';
class MYPDF extends TCPDF {
	var $israport = false;
	var $walikelas = "";
	public function isRaport($israport,$walikelas = "")
	{
		$this->israport = $israport;
		$this->walikelas = $walikelas;
	}
	
	public function tanggal_indo($tanggal, $cetak_hari = false)
	{
		$hari = array ( 1 =>    'Senin',
					'Selasa',
					'Rabu',
					'Kamis',
					'Jumat',
					'Sabtu',
					'Minggu'
				);
				
		$bulan = array (1 =>   'Januari',
					'Februari',
					'Maret',
					'April',
					'Mei',
					'Juni',
					'Juli',
					'Agustus',
					'September',
					'Oktober',
					'November',
					'Desember'
				);
		$split 	  = explode('-', $tanggal);
		$tgl_indo = $split[2] . ' ' . $bulan[ (int)$split[1] ] . ' ' . $split[0];
		
		if ($cetak_hari) {
			$num = date('N', strtotime($tanggal));
			return $hari[$num] . ' ' . $tgl_indo;
		}
		return $tgl_indo;
	}
	
    public function Footer() {
        $this->SetY(-50);
        $this->SetFont('helvetica', 'N', 10);
		
		if($this->israport)
		{
			$this->writeHTML("Jakarta ".date("d/m/Y"), true, false, true, false, 'R');
			$this->writeHTML("Orang Tua/Wali", false, false, true, false, 'L');
			$this->SetX(20);
			$this->writeHTML("Wali Kelas", false, false, true, false, 'C');
			$this->writeHTML("Kepala Sekolah", false, false, true, false, 'R');
			
			$this->writeHTML("<br/><br/><br/><br/><br/>(..............................)", false, false, true, false, 'L');
			$this->SetX(20);
			$this->writeHTML("(    " .$this->walikelas.   " )", false, false, true, false, 'C');	
			$this->writeHTML("(Aliah, S. Pd)", false, false, true, false, 'R');	
		}
		else
		{	$tanggal = date('Y-m-d');			
			$this->writeHTML("Jakarta," .$this->tanggal_indo ($tanggal, true).   " ", true, false, true, false, 'R');
			$this->writeHTML("Kepala Sekolah <br/><br/><br/><br/><br/>(Aliah, S. Pd)", false, false, true, false, 'R');
		}
		
		
		
    }
}