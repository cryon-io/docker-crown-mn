#!/bin/sh

#  CROWN Masternode docker template
#  Copyright © 2019 cryon.io
#
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU Affero General Public License as published
#  by the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU Affero General Public License for more details.
#
#  You should have received a copy of the GNU Affero General Public License
#  along with this program.  If not, see <https://www.gnu.org/licenses/>.
#
#  Contact: cryi@tutanota.com

BASEDIR=$(dirname "$0")

if [ ! -d "$BASEDIR/../data/blocks" ]; then 
    printf "loading chain bootstrap"
    curl -L "https://nextcloud.crown.tech/nextcloud/s/GtiFnNoakxSyYyk/download" -o "$BASEDIR/../data/bootstrap.zip"
    unzip -o "$BASEDIR/../data/bootstrap.zip" -d "$BASEDIR/../data/"
    rm "$BASEDIR/../data/bootstrap.zip"
    sh "$BASEDIR/fs-permissions.sh"
fi
exit 0