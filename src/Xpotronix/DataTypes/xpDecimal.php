<?php

/**
 * @package xpotronix
 * @version 2.0 - Areco 
 * @copyright Copyright &copy; 2003-2011, Eduardo Spotorno
 * @author Eduardo Spotorno
 *
 * Licensed under GPL v3
 * @license http://www.gnu.org/licenses/gpl-3.0.txt
 */

namespace Xpotronix\DataTypes;

class xpDecimal extends \Xpotronix\Attr {

	function serialize( $value = NULL ) {/*{{{*/

		global $xpdoc;
	
		if ( $value === NULL ) 
			$value = $this->value;

		// M()->debug( 'valor: '. $value );

		return $value;

		if ( $value === NULL )

			return null;

		else return number_format( $value, 
			$xpdoc->config->decimal_precision,
			$xpdoc->config->decimal_separator );


	}/*}}}*/

}

?>
