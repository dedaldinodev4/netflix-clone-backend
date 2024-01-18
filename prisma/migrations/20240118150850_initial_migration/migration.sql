-- CreateTable
CREATE TABLE "_users" (
    "id" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "name" TEXT,
    "password" TEXT NOT NULL,
    "status" BOOLEAN NOT NULL DEFAULT true,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "_users_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_catalogs" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "_catalogs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_contents" (
    "id" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "synopsis" TEXT,
    "duration" TEXT NOT NULL,
    "date_publish" TIMESTAMP(3) NOT NULL,
    "id_catalog" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "_contents_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_favorites" (
    "id" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "id_user" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "_favorites_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_playlists" (
    "id" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "id_user" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "_playlists_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_categories" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "_categories_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_categories_contents" (
    "id" TEXT NOT NULL,
    "id_category" TEXT NOT NULL,
    "id_content" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "_categories_contents_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_types_subscriptionPlans" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "_types_subscriptionPlans_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_subscriptionPlans" (
    "id" TEXT NOT NULL,
    "price" DECIMAL(65,30) NOT NULL,
    "description" TEXT,
    "quantity_device" INTEGER NOT NULL,
    "id_typeSubscriptionPlan" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "_subscriptionPlans_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_subscriptions" (
    "id" TEXT NOT NULL,
    "date_start" TIMESTAMP(3),
    "date_final" TIMESTAMP(3) NOT NULL,
    "id_subscriptionPlan" TEXT NOT NULL,
    "id_user" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "_subscriptions_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_payments" (
    "id" TEXT NOT NULL,
    "value" DECIMAL(65,30) NOT NULL,
    "payment_method" TEXT NOT NULL DEFAULT 'Paypal',
    "status" BOOLEAN NOT NULL DEFAULT true,
    "id_subscription" TEXT NOT NULL,
    "id_user" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "_payments_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_devices" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "type" TEXT NOT NULL DEFAULT 'smart Tv',
    "access_history" TEXT NOT NULL,
    "id_user" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "_devices_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_views" (
    "id" TEXT NOT NULL,
    "comment" TEXT NOT NULL,
    "watched_time" TIME NOT NULL,
    "rating" INTEGER NOT NULL,
    "id_user" TEXT NOT NULL,
    "id_content" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "_views_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_recommendations" (
    "id" TEXT NOT NULL,
    "score_relevance" INTEGER NOT NULL,
    "algorithm" TEXT,
    "id_user" TEXT NOT NULL,
    "id_content" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "_recommendations_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_subtitles" (
    "id" TEXT NOT NULL,
    "language" TEXT NOT NULL DEFAULT 'English',
    "format" TEXT NOT NULL DEFAULT 'SRT',
    "id_content" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "_subtitles_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_audios" (
    "id" TEXT NOT NULL,
    "language" TEXT NOT NULL DEFAULT 'English',
    "format" TEXT NOT NULL DEFAULT 'mp3',
    "id_content" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "_audios_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_members" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "character" TEXT NOT NULL DEFAULT 'Protagonista',
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "_members_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_favorites_contents" (
    "id" TEXT NOT NULL,
    "id_favorite" TEXT NOT NULL,
    "id_content" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "_favorites_contents_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_playlists_contents" (
    "id" TEXT NOT NULL,
    "id_playlist" TEXT NOT NULL,
    "id_content" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "_playlists_contents_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_members_contents" (
    "id" TEXT NOT NULL,
    "id_member" TEXT NOT NULL,
    "id_content" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "_members_contents_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "_users_email_key" ON "_users"("email");

-- CreateIndex
CREATE UNIQUE INDEX "_catalogs_name_key" ON "_catalogs"("name");

-- CreateIndex
CREATE UNIQUE INDEX "_devices_name_key" ON "_devices"("name");

-- AddForeignKey
ALTER TABLE "_contents" ADD CONSTRAINT "_contents_id_catalog_fkey" FOREIGN KEY ("id_catalog") REFERENCES "_catalogs"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_favorites" ADD CONSTRAINT "_favorites_id_user_fkey" FOREIGN KEY ("id_user") REFERENCES "_users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_playlists" ADD CONSTRAINT "_playlists_id_user_fkey" FOREIGN KEY ("id_user") REFERENCES "_users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_categories_contents" ADD CONSTRAINT "_categories_contents_id_category_fkey" FOREIGN KEY ("id_category") REFERENCES "_categories"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_categories_contents" ADD CONSTRAINT "_categories_contents_id_content_fkey" FOREIGN KEY ("id_content") REFERENCES "_contents"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_subscriptionPlans" ADD CONSTRAINT "_subscriptionPlans_id_typeSubscriptionPlan_fkey" FOREIGN KEY ("id_typeSubscriptionPlan") REFERENCES "_types_subscriptionPlans"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_subscriptions" ADD CONSTRAINT "_subscriptions_id_subscriptionPlan_fkey" FOREIGN KEY ("id_subscriptionPlan") REFERENCES "_subscriptionPlans"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_subscriptions" ADD CONSTRAINT "_subscriptions_id_user_fkey" FOREIGN KEY ("id_user") REFERENCES "_users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_payments" ADD CONSTRAINT "_payments_id_subscription_fkey" FOREIGN KEY ("id_subscription") REFERENCES "_subscriptions"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_payments" ADD CONSTRAINT "_payments_id_user_fkey" FOREIGN KEY ("id_user") REFERENCES "_users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_devices" ADD CONSTRAINT "_devices_id_user_fkey" FOREIGN KEY ("id_user") REFERENCES "_users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_views" ADD CONSTRAINT "_views_id_user_fkey" FOREIGN KEY ("id_user") REFERENCES "_users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_views" ADD CONSTRAINT "_views_id_content_fkey" FOREIGN KEY ("id_content") REFERENCES "_contents"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_recommendations" ADD CONSTRAINT "_recommendations_id_user_fkey" FOREIGN KEY ("id_user") REFERENCES "_users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_recommendations" ADD CONSTRAINT "_recommendations_id_content_fkey" FOREIGN KEY ("id_content") REFERENCES "_contents"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_subtitles" ADD CONSTRAINT "_subtitles_id_content_fkey" FOREIGN KEY ("id_content") REFERENCES "_contents"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_audios" ADD CONSTRAINT "_audios_id_content_fkey" FOREIGN KEY ("id_content") REFERENCES "_contents"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_favorites_contents" ADD CONSTRAINT "_favorites_contents_id_favorite_fkey" FOREIGN KEY ("id_favorite") REFERENCES "_favorites"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_favorites_contents" ADD CONSTRAINT "_favorites_contents_id_content_fkey" FOREIGN KEY ("id_content") REFERENCES "_contents"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_playlists_contents" ADD CONSTRAINT "_playlists_contents_id_playlist_fkey" FOREIGN KEY ("id_playlist") REFERENCES "_playlists"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_playlists_contents" ADD CONSTRAINT "_playlists_contents_id_content_fkey" FOREIGN KEY ("id_content") REFERENCES "_contents"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_members_contents" ADD CONSTRAINT "_members_contents_id_member_fkey" FOREIGN KEY ("id_member") REFERENCES "_members"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_members_contents" ADD CONSTRAINT "_members_contents_id_content_fkey" FOREIGN KEY ("id_content") REFERENCES "_contents"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
