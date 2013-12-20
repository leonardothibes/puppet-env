class env::aliases
{
	define prompt(
		$cp = false,
		$mv = false,
		$rm = false,
	) {
		if $cp { create {'cp': command => 'cp -i'} } else { destroy {'cp':} }
		if $mv { create {'mv': command => 'mv -i'} } else { destroy {'mv':} }
		if $rm { create {'rm': command => 'rm -i'} } else { destroy {'rm':} }
	}

	define create(
		$file    = $title,
		$command = '',
	) {
		file {"${env::params::aliases_path}/${file}.sh":
			ensure  => present,
			owner   => root,
			group   => root,
			mode    => 0644,
			content => "alias ${file}='${command}'",
		}
	}

	define destroy($file = $title)
	{
		file {"${env::params::aliases_path}/$file.sh": ensure => absent}
	}
}
