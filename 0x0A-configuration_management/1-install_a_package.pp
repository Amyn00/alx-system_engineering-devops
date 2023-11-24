# Install flask version 2.1.0 using pip3.

package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip',
}

# Ensure Werkzeug version 2.1.1
package { 'Werkzeug':
  ensure   => '2.1.1',
  provider => 'pip',
}
