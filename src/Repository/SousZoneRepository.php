<?php

namespace App\Repository;

use App\Entity\SousZone;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Common\Persistence\ManagerRegistry;

/**
 * @method SousZone|null find($id, $lockMode = null, $lockVersion = null)
 * @method SousZone|null findOneBy(array $criteria, array $orderBy = null)
 * @method SousZone[]    findAll()
 * @method SousZone[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class SousZoneRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, SousZone::class);
    }
}
