class env::params
{
	$cp_prompt       = false
	$mv_prompt       = false
	$rm_prompt       = false
	$ls_colors       = false
	$bash_completion = false
	$clear_on_logout = false
	$ps1             = '[\u@\h \W]'
	$dirs_in_home    = ['tmp']
	$utils           = []
	$aliases         = []
	$aliases_path    = '/etc/profile.d'
	$skel_path       = '/etc/skel'
    $home_chmod      = 755
	$root_path       = '/root'
	$root_chmod      = 700
}
