<?php

namespace App\Repository;

use App\Entity\ZoneType;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Common\Persistence\ManagerRegistry;

/**
 * @method ZoneType|null find($id, $lockMode = null, $lockVersion = null)
 * @method ZoneType|null findOneBy(array $criteria, array $orderBy = null)
 * @method ZoneType[]    findAll()
 * @method ZoneType[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ZoneTypeRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, ZoneType::class);
    }
}
