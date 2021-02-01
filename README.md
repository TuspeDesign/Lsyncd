# Lsyncd

[Lsyncd](https://axkibe.github.io/lsyncd/) uses a filesystem event interface (inotify or fsevents) to watch for changes to local files and directories. Lsyncd collates these events for several seconds and then spawns one or more processes to synchronize the changes to a remote filesystem. The default synchronization method is rsync. A light-weight live mirror solution.

## Disclaimer

Tuspe Design and Timo Anttila do not take responsibility for any damage or data losses caused by this example or lsyncd. The example works for me, but always remember to backup your important files before starting testing random scripts or new services. Lsyncd is awesome.
