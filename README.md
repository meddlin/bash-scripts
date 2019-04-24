## bash-script Notes

This is a collection of bash scripts I wrote while learning:

- bash
- a lot of random things about Linux/how-to-write-these-things

For the record, I didn't pick up a book or take a course. I just...Google'd. 

...*a lot*. You've been warned.

#### That weird "bang" thing

It's called a "shebang".

```bash
#!/bin/bash
```

[https://bash.cyberciti.biz/guide/Shebang](https://bash.cyberciti.biz/guide/Shebang)

#### Checking for 'root'

`$EUID` is a read-only variable *very difficult* to spoof after OS boot.

```bash
if (( $EUID != 0 )); then
	echo "Please run as root."
	exit
fi
```

[https://stackoverflow.com/questions/18215973/how-to-check-if-running-as-root-in-a-bash-script](https://stackoverflow.com/questions/18215973/how-to-check-if-running-as-root-in-a-bash-script)


#### Checking if a program exists, (more than `-v`)

Has information on:

- `command -v`
- `hash`
- `type`

[https://stackoverflow.com/questions/592620/how-to-check-if-a-program-exists-from-a-bash-script](https://stackoverflow.com/questions/592620/how-to-check-if-a-program-exists-from-a-bash-script)


#### Setting variables

It appears `cmd = prog-name` is different from `cmd="prog-name"`.

[http://tldp.org/HOWTO/Bash-Prog-Intro-HOWTO-5.html](http://tldp.org/HOWTO/Bash-Prog-Intro-HOWTO-5.html)


#### What is 'smartmontools'

Note: `smartctl` is included with `smartmontools`.

[https://www.smartmontools.org/](https://www.smartmontools.org/)