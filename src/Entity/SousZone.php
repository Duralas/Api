<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\SousZoneRepository")
 */
class SousZone
{
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
    private $libelle;

    /**
     * @var Zone
     *
     * @ORM\ManyToOne(targetEntity="App\Entity\Zone", inversedBy="sousZones")
     * @ORM\JoinColumn(referencedColumnName="code", name="zone", nullable=false)
     */
    private $zone;

    /**
     * @var string
     *
     * @ORM\Column(type="string", length=255)
     */
    private $lien;

    /**
     * @var ZoneType|null
     *
     * @ORM\ManyToOne(targetEntity="App\Entity\ZoneType")
     * @ORM\JoinColumn(referencedColumnName="code", name="type")
     */
    private $type;

    /**
     * @var SousZone|null
     *
     * @ORM\ManyToOne(targetEntity="App\Entity\SousZone")
     * @ORM\JoinColumn(referencedColumnName="code", name="parent")
     */
    private $parent;

    /**
     * SousZone constructor.
     *
     * @param string        $code
     * @param string        $libelle
     * @param Zone          $zone
     * @param string        $lien
     * @param ZoneType|null $type
     * @param SousZone|null $parent
     */
    public function __construct(string $code, string $libelle, Zone $zone, string $lien, ?ZoneType $type = null, ?SousZone $parent = null)
    {
        $this->code = $code;
        $this->libelle = $libelle;
        $this->zone = $zone;
        $this->lien = $lien;
        $this->type = $type;
        $this->parent = $parent;
    }

    public function getCode(): string
    {
        return $this->code;
    }

    public function setCode(string $code): self
    {
        $this->code = $code;

        return $this;
    }

    public function getLibelle(): string
    {
        return $this->libelle;
    }

    public function setLibelle(string $libelle): self
    {
        $this->libelle = $libelle;

        return $this;
    }

    public function getZone(): Zone
    {
        return $this->zone;
    }

    public function setZone(Zone $zone): self
    {
        $this->zone = $zone;

        return $this;
    }

    /**
     * @return string
     */
    public function getLien(): string
    {
        return $this->lien;
    }

    /**
     * @param string $lien
     */
    public function setLien(string $lien): void
    {
        $this->lien = $lien;
    }

    public function getType(): ?ZoneType
    {
        return $this->type;
    }

    public function setType(?ZoneType $type): self
    {
        $this->type = $type;

        return $this;
    }

    /**
     * @return SousZone|null
     */
    public function getParent(): ?SousZone
    {
        return $this->parent;
    }

    /**
     * @param SousZone|null $parent
     */
    public function setParent(?SousZone $parent): void
    {
        $this->parent = $parent;
    }
}
