<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\ZoneTypeRepository")
 */
class ZoneType
{
    public const CODE_COMPET  = 'COMPET';
    public const CODE_EVENT   = 'EVENT';
    public const CODE_FACTION = 'FACTION';
    public const CODE_GUILDE  = 'GUILDE';
    public const CODE_METIER  = 'METIER';
    public const CODE_VILLE   = 'VILLE';

    /**
     * @var string
     *
     * @ORM\Id()
     * @ORM\Column(type="string", length=50)
     */
    private $code;

    /**
     * @var string
     *
     * @ORM\Column(type="string", length=255)
     */
    private $designation;

    public function getCode(): string
    {
        return $this->code;
    }

    public function setCode(string $code): self
    {
        $this->code = $code;

        return $this;
    }

    public function getDesignation(): string
    {
        return $this->designation;
    }

    public function setDesignation(string $designation): self
    {
        $this->designation = $designation;

        return $this;
    }
}
