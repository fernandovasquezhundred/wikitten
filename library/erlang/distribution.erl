% http://learnyousomeerlang.com/distribunomicon#alone-in-the-dark
% each VM is a node
net_kernel:connect_node(fries@ferdmbp).
node().
nodes().

register(shell, self()).
{shell, fries@ferdmbp} ! {hello, from, self()}.
receive {hello, from, OtherShell} -> OtherShell ! <<"hey there!">> end.
flush().
