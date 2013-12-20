class env::skel
{
	define mkdir($dirs = $title)
	{
		file {$dirs:
			ensure => directory,
			owner  => root,
			group  => root,
			mode   => 0755,
		}
	}
}
