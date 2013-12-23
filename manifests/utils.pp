class env::utils
{
	define install($packages = $title)
	{
		package {$packages: ensure => latest}
	}

	define uninstall($packages = $title)
	{
		package {$packages: ensure => absent}
	}
}
