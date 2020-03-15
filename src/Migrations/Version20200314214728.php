<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20200314214728 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('CREATE TABLE region (code VARCHAR(50) NOT NULL, libelle VARCHAR(255) NOT NULL, lien VARCHAR(255) NOT NULL, PRIMARY KEY(code)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE sous_zone (code VARCHAR(50) NOT NULL, zone VARCHAR(50) NOT NULL, type VARCHAR(50) DEFAULT NULL, parent VARCHAR(50) DEFAULT NULL, libelle VARCHAR(255) NOT NULL, lien VARCHAR(255) NOT NULL, INDEX IDX_2EE69E4BA0EBC007 (zone), INDEX IDX_2EE69E4B8CDE5729 (type), INDEX IDX_2EE69E4B3D8E604F (parent), PRIMARY KEY(code)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE zone (code VARCHAR(50) NOT NULL, region VARCHAR(50) NOT NULL, libelle VARCHAR(255) NOT NULL, lien VARCHAR(255) NOT NULL, INDEX IDX_A0EBC007F62F176 (region), PRIMARY KEY(code)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE zone_type (code VARCHAR(50) NOT NULL, designation VARCHAR(255) NOT NULL, PRIMARY KEY(code)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE sous_zone ADD CONSTRAINT FK_2EE69E4BA0EBC007 FOREIGN KEY (zone) REFERENCES zone (code)');
        $this->addSql('ALTER TABLE sous_zone ADD CONSTRAINT FK_2EE69E4B8CDE5729 FOREIGN KEY (type) REFERENCES zone_type (code)');
        $this->addSql('ALTER TABLE sous_zone ADD CONSTRAINT FK_2EE69E4B3D8E604F FOREIGN KEY (parent) REFERENCES sous_zone (code)');
        $this->addSql('ALTER TABLE zone ADD CONSTRAINT FK_A0EBC007F62F176 FOREIGN KEY (region) REFERENCES region (code)');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE zone DROP FOREIGN KEY FK_A0EBC007F62F176');
        $this->addSql('ALTER TABLE sous_zone DROP FOREIGN KEY FK_2EE69E4B3D8E604F');
        $this->addSql('ALTER TABLE sous_zone DROP FOREIGN KEY FK_2EE69E4BA0EBC007');
        $this->addSql('ALTER TABLE sous_zone DROP FOREIGN KEY FK_2EE69E4B8CDE5729');
        $this->addSql('DROP TABLE region');
        $this->addSql('DROP TABLE sous_zone');
        $this->addSql('DROP TABLE zone');
        $this->addSql('DROP TABLE zone_type');
    }
}
