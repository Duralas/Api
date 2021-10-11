<?php

declare(strict_types=1);

namespace App\Controller\HealthCheck;

use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;

final class GetController
{
    #[Route('/health-check', name: 'app.other.health-check.get', methods: ['GET'])]
    public function __invoke(): JsonResponse
    {
        return new JsonResponse(['status' => 'OK', 'message' => 'Ok.']);
    }
}
