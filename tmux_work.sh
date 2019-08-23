tmux has-session -t WORK

if [ $? != 0 ]
then
	# Start session + main window
	tmux new -s WORK -n MCM -d

	# MCM
	tmux split-window -h -t WORK
	tmux send-keys -t WORK:1.1 'cd ~/WORK/mcmCompiler' C-m
	tmux send-keys -t WORK:1.2 'cd ~/WORK/mcmCompiler/python' C-m

	# POC + MDK
	tmux new-window -n POC -t WORK
	tmux split-window -h -t WORK
	tmux send-keys -t WORK:2.1 'cd ~/WORK/mdk/projects/Fathom/src2' C-m
	tmux send-keys -t WORK:2.2 'cd ~/WORK/mdk/' C-m

	# MigNetworkZoo
	tmux new-window -n MigZoo -t WORK
	tmux send-keys -t WORK:3.1 'cd ~/WORK/migNetworkZoo' C-m

	# Other
	tmux new-window -n Other -t WORK
	tmux split-window -h -t WORK
	tmux send-keys -t WORK:4.1 'bc -l' C-m

	# Select MCM as main window
	tmux select-window -t WORK:1
fi
tmux attach -t WORK
