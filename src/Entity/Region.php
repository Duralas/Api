<?php

namespace App\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\RegionRepository")
 */
class Region
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
     * @var string
     *
     * @ORM\Column(type="string", length=255)
     */
    private $lien;

    /**
     * @var Zone[]|Collection
     *
     * @ORM\OneToMany(targetEntity="App\Entity\Zone", mappedBy="region")
     */
    private $zones;

    /**
     * Region constructor.
     *
     * @param string $code
     * @param string $libelle
     * @param string $lien
     */
    public function __construct(string $code, string $libelle, string $lien)
    {
        $this->code = $code;
        $this->libelle = $libelle;
        $this->lien = $lien;
        $this->zones = new ArrayCollection();
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

    public function getLien(): string
    {
        return $this->lien;
    }

    public function setLien(string $lien): self
    {
        $this->lien = $lien;

        return $this;
    }

    /**
     * @return Collection|Zone[]
     */
    public function getZones(): Collection
    {
        return $this->zones;
    }
}
