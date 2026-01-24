<?php

/*
 * This file is part of Twig.
 *
 * (c) Fabien Potencier
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace Twig\Node\Expression\Binary;

use Twig\Compiler;

class EqualBinary extends AbstractBinary
{
<<<<<<< HEAD
    public function operator(Compiler $compiler)
=======
    public function compile(Compiler $compiler): void
    {
        if (\PHP_VERSION_ID >= 80000) {
            parent::compile($compiler);

            return;
        }

        $compiler
            ->raw('(0 === CoreExtension::compare(')
            ->subcompile($this->getNode('left'))
            ->raw(', ')
            ->subcompile($this->getNode('right'))
            ->raw('))')
        ;
    }

    public function operator(Compiler $compiler): Compiler
>>>>>>> 3.0.4.2
    {
        return $compiler->raw('==');
    }
}

class_alias('Twig\Node\Expression\Binary\EqualBinary', 'Twig_Node_Expression_Binary_Equal');
