#!/bin/bash

# MIT License

# Copyright (C) 2019, Ehtools Team. All Rights Reserved.

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

CE="\033[0m"
RS="\033[1;31m"
YS="\033[1;33m"

WHO="$( whoami )"

if [[ "$WHO" != "root" ]]
then
sleep 1
echo -e "$RS"run it as"$CE" "$YS"root"$CE"
sleep 1
echo -e "$RS"or use"$CE" "$YS"sudo"$CE"
sleep 1
exit
fi

if [[ -d /etc/ehtsh ]]
then
cd /etc/ehtsh
{
cp ehtsh /bin
cp ehtsh /usr/local/bin
chmod +x /bin/ehtsh
chmod +x /usr/local/bin/ehtsh
} &> /dev/null
cd /etc/ehtsh
else
cd /etc
{
git clone https://github.com/entynetproject/ehtsh.git
cd /etc/ehtsh
cp ehtsh /bin
cp ehtsh /usr/local/bin
chmod +x /bin/ehtsh
chmod +x /usr/local/bin/ehtsh
} &> /dev/null
cd /etc/ehtsh
fi
