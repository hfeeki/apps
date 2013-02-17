###

ownCloud - App Framework

@author Bernhard Posselt
@copyright 2012 Bernhard Posselt nukeawhale@gmail.com

This library is free software; you can redistribute it and/or
modify it under the terms of the GNU AFFERO GENERAL PUBLIC LICENSE
License as published by the Free Software Foundation; either
version 3 of the License, or any later version.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU AFFERO GENERAL PUBLIC LICENSE for more details.

You should have received a copy of the GNU Affero General Public
License along with this library.  If not, see <http://www.gnu.org/licenses/>.

###


# A filter for returning a list with all elements unequal to the provided one
angular.module('OC').factory '_UnequalFilter', ['_ModelFilter', 
(_ModelFilter) ->

	class UnequalFilter extends _ModelFilter

		constructor: (@field, @value) ->
			name = 'unequal'
			super(name, [@field, @value])


		exec: (data) ->
			unequal = []
			for entry in data
				if entry[@field] != @value
					unequal.push(entry)

			return unequal


	return UnequalFilter
]
