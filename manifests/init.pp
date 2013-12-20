class env(
  $cp_prompt       = $env::params::cp_prompt,
  $mv_prompt       = $env::params::mv_prompt,
  $rm_prompt       = $env::params::rm_prompt,
  $ls_colors       = $env::params::ls_colors,
  $bash_completion = $env::params::bash_completion,
  $clear_on_logout = $env::params::clear_on_logout,
  $ps1             = $env::params::ps1,
  $root_chmod      = $env::params::root_chmod,
  $home_chmod      = $env::params::home_chmod,
  $dirs_in_home    = $env::params::dirs_in_home,
  $aliases         = $env::params::aliases,
  $utils           = $env::params::utils,
) inherits env::params {

	# Creating aliases
	env::aliases::prompt {
		'aliases-prompts':
		cp => $cp_prompt,
		mv => $mv_prompt,
		rm => $rm_prompt,
	}
	env::aliases::array{$aliases:}
	# Creating aliases

}
