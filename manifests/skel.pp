class env::skel
{
	define mkdir($dir = $title)
	{
		$dirs = [
			"${env::params::skel_path}/${dir}",
			"${env::params::root_path}/${dir}",
		]
		file {$dirs:
			ensure => directory,
			owner  => root,
			group  => root,
			mode   => 0755,
		}
	}

	define chmod($root, $skel)
	{
		exec {[
			"chmod $root ${env::params::root_path}",
			"chmod $skel ${env::params::skel_path}",
			"chmod $skel /home/*",
		]: path => '/bin'}
	}

	define clear($flag = $title)
	{
		$files = [
			"${env::params::skel_path}/.bash_logout",
			"${env::params::root_path}/.bash_logout",
		]
		if $flag {
			file {$files:
				ensure  => present,
				owner   => root,
				group   => root,
				mode    => 0644,
				content => 'clear'
			}
		} else {
			file {$files: ensure => absent}
		}
	}
}
