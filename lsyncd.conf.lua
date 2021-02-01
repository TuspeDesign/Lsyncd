settings {
	logfile = "/var/log/lsyncd/lsyncd.log",
	statusFile = "/tmp/lsyncd.stat",
	statusInterval = 1,
	nodaemon = false,
	insist = true
}

sync {
	default.rsync,
	source = '/home',
	target = 'timo@92.168.0.2:/sites',
	delete = 'running',
	delay = 1,
	rsync = {
		update = true,
		times = true,
		archive = true,
		compress = true,
		owner = true,
		perms = true,
		group = true,
		acls = true,
		verbose = false,
		rsh = "/usr/bin/ssh -i /root/.ssh/id_double -o StrictHostKeyChecking=no",
		_extra = {"--temp-dir=/tmp/"}
	}
}

sync {
	default.rsync,
	source = '/etc/apache2',
	target = 'timo@92.168.0.2:/etc/apache2',
	delete = 'running',
	delay = 1,
	rsync = {
		update = true,
		times = true,
		archive = true,
		compress = true,
		owner = true,
		perms = true,
		group = true,
		acls = true,
		verbose = false,
		rsh = "/usr/bin/ssh -i /root/.ssh/id_double -o StrictHostKeyChecking=no",
		_extra = {"--temp-dir=/tmp/"}
	}
}