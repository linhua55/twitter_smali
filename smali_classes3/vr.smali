.class public Lvr;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final a:J

.field private static final b:J


# instance fields
.field private final c:Lcom/twitter/library/client/l;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 56
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lvr;->a:J

    .line 61
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lvr;->b:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lcom/twitter/library/client/l;

    const-string/jumbo v1, "tpm_id_sync"

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    iput-object v0, p0, Lvr;->c:Lcom/twitter/library/client/l;

    .line 94
    return-void
.end method

.method public static a(Landroid/content/Context;J)Lvr;
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lvr;

    invoke-direct {v0, p0, p1, p2}, Lvr;-><init>(Landroid/content/Context;J)V

    return-object v0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 79
    const-string/jumbo v0, "performance_ads_tpm_id_sync_android_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b()J
    .locals 4

    .prologue
    .line 97
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string/jumbo v1, "performance_ads_tpm_id_sync_encryption_interval_in_seconds"

    sget-wide v2, Lvr;->a:J

    invoke-static {v1, v2, v3}, Lcom/twitter/config/d;->a(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 118
    invoke-virtual {p0}, Lvr;->d()Ljava/lang/String;

    move-result-object v0

    .line 119
    if-nez v0, :cond_0

    .line 141
    :goto_0
    return-object p1

    .line 123
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 124
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 125
    const-string/jumbo v3, "https"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "analytics.twitter.com"

    .line 126
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "mob_idsync_click"

    .line 127
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "slug"

    .line 128
    invoke-virtual {v3, v4, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v3, "idb"

    .line 129
    invoke-virtual {v1, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 131
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->j()Lcom/twitter/model/account/UserSettings;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_1

    .line 133
    const-string/jumbo v1, "tailored_ads"

    iget-boolean v0, v0, Lcom/twitter/model/account/UserSettings;->q:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 136
    :cond_1
    sget-object v0, Lcom/twitter/library/client/u;->a:Lcom/twitter/library/client/u;

    invoke-virtual {v0}, Lcom/twitter/library/client/u;->a()Lcom/twitter/library/api/d;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_2

    .line 138
    const-string/jumbo v1, "ad_tracking"

    invoke-virtual {v0}, Lcom/twitter/library/api/d;->b()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 141
    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 138
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lvr;->c:Lcom/twitter/library/client/l;

    .line 111
    invoke-virtual {v0}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "ids"

    sget-object v2, Lcom/twitter/util/serialization/i;->j:Lcom/twitter/util/serialization/ah;

    .line 112
    invoke-static {v2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/library/client/n;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/twitter/library/client/n;->apply()V

    .line 114
    return-void
.end method

.method public c()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 102
    iget-object v2, p0, Lvr;->c:Lcom/twitter/library/client/l;

    const-string/jumbo v3, "last_redirect_timestamp"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/twitter/library/client/l;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 103
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string/jumbo v3, "performance_ads_tpm_id_sync_click_interval_in_seconds"

    sget-wide v6, Lvr;->b:J

    invoke-static {v3, v6, v7}, Lcom/twitter/config/d;->a(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    .line 105
    invoke-virtual {p0}, Lvr;->e()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    .line 106
    :goto_0
    if-eqz v2, :cond_1

    add-long v2, v4, v6

    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 105
    goto :goto_0

    :cond_1
    move v0, v1

    .line 106
    goto :goto_1
.end method

.method d()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p0}, Lvr;->e()Ljava/util/List;

    move-result-object v0

    .line 148
    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 160
    :goto_0
    return-object v0

    .line 151
    :cond_0
    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v1

    .line 152
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 153
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    iget-object v2, p0, Lvr;->c:Lcom/twitter/library/client/l;

    .line 155
    invoke-virtual {v2}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v2

    const-string/jumbo v3, "ids"

    sget-object v4, Lcom/twitter/util/serialization/i;->j:Lcom/twitter/util/serialization/ah;

    .line 156
    invoke-static {v4}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/library/client/n;

    move-result-object v1

    const-string/jumbo v2, "last_redirect_timestamp"

    .line 157
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;J)Lcom/twitter/library/client/n;

    move-result-object v1

    .line 158
    invoke-virtual {v1}, Lcom/twitter/library/client/n;->apply()V

    goto :goto_0
.end method

.method e()Ljava/util/List;
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lvr;->c:Lcom/twitter/library/client/l;

    const-string/jumbo v1, "ids"

    sget-object v2, Lcom/twitter/util/serialization/i;->j:Lcom/twitter/util/serialization/ah;

    .line 167
    invoke-static {v2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v2

    .line 166
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/l;->a(Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
