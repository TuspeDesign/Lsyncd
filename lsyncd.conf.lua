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
	target = 'double:/home',
	delete = 'running',
	delay = 5,
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
		rsh = "/usr/bin/ssh -i /home/user/.ssh/id_double -o StrictHostKeyChecking=no",
		_extra = {"--temp-dir=/tmp/"}
	}
}

sync {
	default.rsync,
	source = '/var/lib/mysql',
	target = 'double:/var/lib/mysql',
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
		rsh = "/usr/bin/ssh -i /home/user/.ssh/id_double -o StrictHostKeyChecking=no",
		_extra = {"--temp-dir=/tmp/"}
	}
}

sync {
	default.rsync,
	source = '/etc/apache2',
	target = 'double:/etc/apache2',
	delete = 'running',
	delay = 20,
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
		rsh = "/usr/bin/ssh -i /home/user/.ssh/id_double -o StrictHostKeyChecking=no",
		_extra = {"--temp-dir=/tmp/"}
	}
}
