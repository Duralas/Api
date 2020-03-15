<?php

namespace App\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\ZoneRepository")
 */
class Zone
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
     * @var Region
     *
     * @ORM\ManyToOne(targetEntity="App\Entity\Region", inversedBy="zones")
     * @ORM\JoinColumn(referencedColumnName="code", name="region", nullable=false)
     */
    private $region;

    /**
     * @var string
     *
     * @ORM\Column(type="string", length=255)
     */
    private $lien;

    /**
     * @var SousZone[]|Collection
     *
     * @ORM\OneToMany(targetEntity="App\Entity\SousZone", mappedBy="zone")
     */
    private $sousZones;

    /**
     * Zone constructor.
     *
     * @param string $code
     * @param string $libelle
     * @param Region $region
     * @param string $lien
     */
    public function __construct(string $code, string $libelle, Region $region, string $lien)
    {
        $this->code = $code;
        $this->libelle = $libelle;
        $this->region = $region;
        $this->lien = $lien;
        $this->sousZones = new ArrayCollection();
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

    public function getRegion(): Region
    {
        return $this->region;
    }

    public function setRegion(Region $region): self
    {
        $this->region = $region;

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

    /**
     * @return Collection|SousZone[]
     */
    public function getSousZones(): Collection
    {
        return $this->sousZones;
    }
}
