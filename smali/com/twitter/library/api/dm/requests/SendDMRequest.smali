.class public abstract Lcom/twitter/library/api/dm/requests/SendDMRequest;
.super Lcom/twitter/library/api/upload/al;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/api/upload/al;",
        "Lcom/twitter/util/y",
        "<",
        "Lbqy;",
        ">;"
    }
.end annotation


# static fields
.field private static final i:I

.field private static final j:I

.field private static final k:I


# instance fields
.field public a:Lcom/twitter/model/dms/dk;

.field protected final b:Lcom/twitter/library/provider/dm;

.field protected final c:Lcom/twitter/library/provider/b;

.field private final l:Lcom/twitter/library/client/Session;

.field private m:Z

.field private n:Ljava/lang/String;

.field private r:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/twitter/model/dms/bd;

.field private t:Lcom/twitter/model/drafts/DraftAttachment;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 90
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->i:I

    .line 91
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->j:I

    .line 92
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->k:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V
    .locals 5

    .prologue
    .line 119
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/library/api/upload/al;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 120
    new-instance v0, Lcom/twitter/library/service/k;

    invoke-direct {v0}, Lcom/twitter/library/service/k;-><init>()V

    new-instance v1, Lcom/twitter/library/service/l;

    invoke-direct {v1, p1}, Lcom/twitter/library/service/l;-><init>(Landroid/content/Context;)V

    .line 121
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/k;->a(Lcom/twitter/internal/android/service/ac;)Lcom/twitter/library/service/k;

    move-result-object v0

    new-instance v1, Lcom/twitter/library/service/t;

    sget v2, Lcom/twitter/library/api/dm/requests/SendDMRequest;->i:I

    sget v3, Lcom/twitter/library/api/dm/requests/SendDMRequest;->j:I

    sget v4, Lcom/twitter/library/api/dm/requests/SendDMRequest;->k:I

    invoke-direct {v1, v2, v3, v4}, Lcom/twitter/library/service/t;-><init>(III)V

    .line 122
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/k;->a(Lcom/twitter/internal/android/service/ac;)Lcom/twitter/library/service/k;

    move-result-object v0

    .line 124
    invoke-virtual {p0, v0}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->a(Lcom/twitter/internal/android/service/ac;)Lcom/twitter/internal/android/service/AsyncOperation;

    .line 125
    invoke-virtual {p0}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->S()Lcom/twitter/library/provider/dm;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->b:Lcom/twitter/library/provider/dm;

    .line 126
    invoke-virtual {p0}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->T()Lcom/twitter/library/provider/b;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->c:Lcom/twitter/library/provider/b;

    .line 127
    iput-object p3, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->l:Lcom/twitter/library/client/Session;

    .line 128
    return-void
.end method

.method private a(Lcom/twitter/model/dms/bd;Lcom/twitter/model/dms/cf;JLjava/lang/String;Lcom/twitter/library/api/dm/requests/r;)Lcom/twitter/internal/network/HttpOperation;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 229
    invoke-direct {p0}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "1.1"

    aput-object v2, v1, v8

    const/4 v2, 0x1

    const-string/jumbo v3, "dm"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "new"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/twitter/library/network/at;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".json"

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 232
    new-instance v0, Lcom/twitter/library/network/j;

    iget-object v1, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->p:Landroid/content/Context;

    invoke-direct {v0, v1, v7}, Lcom/twitter/library/network/j;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/twitter/internal/network/HttpOperation$RequestMethod;->b:Lcom/twitter/internal/network/HttpOperation$RequestMethod;

    .line 233
    invoke-virtual {v0, v1}, Lcom/twitter/library/network/j;->a(Lcom/twitter/internal/network/HttpOperation$RequestMethod;)Lcom/twitter/library/network/j;

    move-result-object v0

    new-instance v1, Lcom/twitter/library/network/aa;

    .line 234
    invoke-virtual {p0}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->N()Lcom/twitter/library/service/ab;

    move-result-object v2

    iget-object v2, v2, Lcom/twitter/library/service/ab;->d:Lcom/twitter/model/account/OAuthToken;

    invoke-direct {v1, v2}, Lcom/twitter/library/network/aa;-><init>(Lcom/twitter/model/account/OAuthToken;)V

    invoke-virtual {v0, v1}, Lcom/twitter/library/network/j;->a(Lcom/twitter/library/network/a;)Lcom/twitter/library/network/j;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 235
    invoke-direct/range {v1 .. v7}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->a(Lcom/twitter/model/dms/bd;Lcom/twitter/model/dms/cf;JLjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/network/j;->a(Ljava/util/List;)Lcom/twitter/library/network/j;

    move-result-object v0

    .line 236
    invoke-virtual {v0, p6}, Lcom/twitter/library/network/j;->a(Lcom/twitter/internal/network/i;)Lcom/twitter/library/network/j;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->g:Lcom/twitter/internal/android/service/d;

    .line 237
    invoke-virtual {v0, v1}, Lcom/twitter/library/network/j;->a(Lcom/twitter/internal/android/service/d;)Lcom/twitter/library/network/j;

    move-result-object v0

    .line 238
    invoke-virtual {v0, v8}, Lcom/twitter/library/network/j;->a(Z)Lcom/twitter/library/network/j;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Lcom/twitter/library/network/j;->a()Lcom/twitter/internal/network/HttpOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/network/HttpOperation;->c()Lcom/twitter/internal/network/HttpOperation;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/twitter/model/drafts/DraftAttachment;)Lcom/twitter/library/api/upload/h;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v3, 0x1

    .line 499
    new-instance v2, Lbqv;

    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v0, v5, v3}, Lbqv;-><init>(ILjava/lang/String;IZ)V

    .line 501
    invoke-static {}, Lbqx;->a()Lbqx;

    move-result-object v0

    iget-object v3, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->d:Ljava/lang/String;

    invoke-virtual {v0, p0, v3}, Lbqx;->a(Lcom/twitter/util/y;Ljava/lang/String;)V

    .line 502
    new-instance v3, Lcom/twitter/library/api/upload/i;

    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->p:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->N()Lcom/twitter/library/service/ab;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/twitter/library/api/upload/i;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;)V

    .line 505
    invoke-static {}, Lbnv;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/twitter/model/drafts/DraftAttachment;->f:Landroid/net/Uri;

    invoke-static {v0}, Lcom/twitter/util/ap;->e(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p1, Lcom/twitter/model/drafts/DraftAttachment;->f:Landroid/net/Uri;

    iget-object v1, p1, Lcom/twitter/model/drafts/DraftAttachment;->g:Lcom/twitter/media/model/MediaType;

    sget-object v4, Lcom/twitter/library/api/upload/MediaUsage;->d:Lcom/twitter/library/api/upload/MediaUsage;

    invoke-virtual {v3, v0, v1, v4, v2}, Lcom/twitter/library/api/upload/i;->a(Landroid/net/Uri;Lcom/twitter/media/model/MediaType;Lcom/twitter/library/api/upload/MediaUsage;Lcom/twitter/util/y;)Lcom/twitter/library/api/upload/l;

    move-result-object v0

    .line 521
    :goto_0
    invoke-virtual {v0}, Lcom/twitter/library/api/upload/l;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/api/upload/h;

    :goto_1
    return-object v0

    .line 509
    :cond_0
    invoke-virtual {p1, v5}, Lcom/twitter/model/drafts/DraftAttachment;->a(I)Lcom/twitter/model/media/EditableMedia;

    move-result-object v0

    .line 510
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->p:Landroid/content/Context;

    .line 511
    invoke-static {v4, v0}, Lcom/twitter/library/media/util/s;->a(Landroid/content/Context;Lcom/twitter/model/media/EditableMedia;)Lcom/twitter/media/model/MediaFile;

    move-result-object v0

    .line 512
    :goto_2
    if-nez v0, :cond_2

    .line 513
    new-instance v0, Lcom/twitter/library/api/upload/h;

    const/4 v2, 0x0

    new-instance v3, Lcom/twitter/media/util/MediaException;

    const-string/jumbo v4, "media is null or failed to prepare"

    invoke-direct {v3, v4}, Lcom/twitter/media/util/MediaException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/library/api/upload/h;-><init>(Lcom/twitter/media/model/MediaFile;ILjava/lang/Exception;)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 511
    goto :goto_2

    .line 517
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    sget-object v4, Lcom/twitter/library/api/upload/MediaUsage;->d:Lcom/twitter/library/api/upload/MediaUsage;

    .line 515
    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/twitter/library/api/upload/i;->a(Lcom/twitter/media/model/MediaFile;Ljava/util/List;Lcom/twitter/util/y;Lcom/twitter/library/api/upload/MediaUsage;)Lcom/twitter/library/api/upload/l;

    move-result-object v0

    goto :goto_0
.end method

.method private a()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 456
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->p:Landroid/content/Context;

    const-string/jumbo v1, "debug_prefs"

    .line 458
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 459
    const-string/jumbo v1, "dm_staging_enabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    const-string/jumbo v1, "dm_staging_host"

    iget-object v2, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->q:Lcom/twitter/library/network/at;

    iget-object v2, v2, Lcom/twitter/library/network/at;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 464
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->q:Lcom/twitter/library/network/at;

    iget-object v0, v0, Lcom/twitter/library/network/at;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Lcom/twitter/model/dms/bd;Lcom/twitter/model/dms/cf;JLjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/dms/bd;",
            "Lcom/twitter/model/dms/cf;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 247
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Lorg/apache/http/message/BasicNameValuePair;

    const/4 v2, 0x0

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v4, "text"

    .line 248
    invoke-virtual {p1}, Lcom/twitter/model/dms/bd;->m()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v3, "request_id"

    .line 249
    invoke-virtual {p1}, Lcom/twitter/model/dms/bd;->q()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v6

    const/4 v2, 0x2

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v4, "include_cards"

    .line 250
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v4, "cards_platform"

    const-string/jumbo v5, "Android-12"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v4, "dm_users"

    .line 252
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 247
    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->b([Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    move-result-object v0

    .line 255
    invoke-virtual {p1}, Lcom/twitter/model/dms/bd;->E()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 256
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "card_uri"

    invoke-virtual {p1}, Lcom/twitter/model/dms/bd;->E()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 259
    :cond_0
    if-eqz p5, :cond_1

    .line 260
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "media_id"

    invoke-direct {v1, v2, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 263
    :cond_1
    iget-object v1, p1, Lcom/twitter/model/dms/bd;->e:Ljava/lang/String;

    invoke-static {v1}, Lbnx;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 264
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "conversation_id"

    iget-object v3, p1, Lcom/twitter/model/dms/bd;->e:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 272
    :goto_0
    if-eqz p2, :cond_2

    iget-wide v2, p2, Lcom/twitter/model/dms/cf;->d:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 273
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "tweet_id"

    iget-wide v4, p2, Lcom/twitter/model/dms/cf;->d:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 274
    iget-object v1, p2, Lcom/twitter/model/dms/cf;->e:Lcom/twitter/model/core/ay;

    iget-object v1, v1, Lcom/twitter/model/core/ay;->m:Lcss;

    .line 275
    if-eqz v1, :cond_2

    .line 276
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v3, "impression_id"

    iget-object v1, v1, Lcss;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 280
    :cond_2
    invoke-virtual {v0}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 267
    :cond_3
    invoke-virtual {p0}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->S()Lcom/twitter/library/provider/dm;

    move-result-object v1

    iget-object v2, p1, Lcom/twitter/model/dms/bd;->e:Ljava/lang/String;

    .line 268
    invoke-virtual {v1, v2, p3, p4}, Lcom/twitter/library/provider/dm;->a(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v1

    .line 269
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v3, "recipient_ids"

    const-string/jumbo v4, ","

    invoke-static {v4, v1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_0
.end method

.method private a(ILcom/twitter/library/provider/b;)V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->s:Lcom/twitter/model/dms/bd;

    if-eqz v0, :cond_0

    .line 424
    invoke-static {}, Lcom/twitter/util/h;->c()V

    .line 425
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->b:Lcom/twitter/library/provider/dm;

    iget-object v1, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->s:Lcom/twitter/model/dms/bd;

    invoke-virtual {v0, v1, p1, p2}, Lcom/twitter/library/provider/dm;->a(Lcom/twitter/model/dms/bd;ILcom/twitter/library/provider/b;)V

    .line 426
    invoke-virtual {p2}, Lcom/twitter/library/provider/b;->a()V

    .line 428
    :cond_0
    return-void
.end method

.method private a(JLcom/twitter/model/drafts/DraftAttachment;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 11

    .prologue
    const/4 v4, 0x6

    const/4 v8, 0x3

    const/4 v5, 0x1

    const/4 v7, 0x2

    .line 631
    new-instance v3, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v3, p1, p2}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v6, v8, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v9, "app:twitter_service:direct_messages"

    aput-object v9, v6, v2

    if-eqz p5, :cond_2

    const-string/jumbo v2, "retry_dm"

    :goto_0
    aput-object v2, v6, v5

    if-eqz p6, :cond_3

    const-string/jumbo v2, "cancel"

    :goto_1
    aput-object v2, v6, v7

    .line 632
    invoke-virtual {v3, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    const-string/jumbo v3, "has_media"

    .line 636
    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->i(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 637
    invoke-virtual {v2, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->b(I)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 638
    invoke-virtual {v2, p4}, Lcom/twitter/library/scribe/TwitterScribeLog;->d(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 639
    invoke-static {}, Lcom/twitter/util/telephony/TelephonyUtil;->i()Lcom/twitter/util/telephony/TelephonyUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/util/telephony/TelephonyUtil;->h()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "connected"

    :goto_2
    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->f(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 641
    iget-boolean v3, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->m:Z

    if-eqz v3, :cond_0

    .line 642
    invoke-virtual {v2, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;->c(I)Lcom/twitter/library/scribe/ScribeLog;

    .line 644
    :cond_0
    if-eqz p7, :cond_1

    .line 645
    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->k(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 647
    :cond_1
    invoke-static {v2}, Lbjf;->a(Lbjh;)V

    .line 649
    iget-object v2, p3, Lcom/twitter/model/drafts/DraftAttachment;->g:Lcom/twitter/media/model/MediaType;

    iget-object v6, v2, Lcom/twitter/media/model/MediaType;->extension:Ljava/lang/String;

    if-eqz p6, :cond_5

    :goto_3
    if-eqz p6, :cond_6

    :goto_4
    const/4 v9, 0x0

    move-object v3, p0

    move-wide v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->a(JLjava/lang/String;IILcom/twitter/internal/network/k;)V

    .line 654
    return-void

    .line 631
    :cond_2
    const-string/jumbo v2, "send_dm"

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "failure"

    goto :goto_1

    .line 639
    :cond_4
    const-string/jumbo v3, "disconnected"

    goto :goto_2

    :cond_5
    move v7, v5

    .line 649
    goto :goto_3

    :cond_6
    move v8, v4

    goto :goto_4
.end method

.method private a(JLjava/lang/String;IILcom/twitter/internal/network/k;)V
    .locals 7

    .prologue
    const/4 v5, 0x2

    .line 585
    packed-switch p4, :pswitch_data_0

    .line 600
    const-string/jumbo v0, "unknown"

    .line 605
    :goto_0
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v1, p1, p2}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "app:twitter_service:dm_with_media"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    aput-object v0, v2, v5

    .line 606
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const-string/jumbo v1, "has_media"

    .line 607
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->i(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 608
    invoke-static {}, Lcom/twitter/util/telephony/TelephonyUtil;->i()Lcom/twitter/util/telephony/TelephonyUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/util/telephony/TelephonyUtil;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "connected"

    :goto_1
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->f(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 610
    iget-boolean v1, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->m:Z

    if-eqz v1, :cond_0

    .line 611
    invoke-virtual {v0, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->c(I)Lcom/twitter/library/scribe/ScribeLog;

    .line 613
    :cond_0
    const/4 v1, -0x1

    if-eq p5, v1, :cond_1

    .line 614
    invoke-virtual {v0, p5}, Lcom/twitter/library/scribe/TwitterScribeLog;->b(I)Lcom/twitter/library/scribe/ScribeLog;

    .line 616
    :cond_1
    if-eqz p6, :cond_2

    .line 617
    iget-object v1, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->p:Landroid/content/Context;

    invoke-static {v1, v0, p6}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/library/scribe/TwitterScribeLog;Lcom/twitter/internal/network/k;)V

    .line 619
    :cond_2
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 620
    return-void

    .line 587
    :pswitch_0
    const-string/jumbo v0, "success"

    goto :goto_0

    .line 591
    :pswitch_1
    const-string/jumbo v0, "error"

    goto :goto_0

    .line 595
    :pswitch_2
    const-string/jumbo v0, "cancel"

    goto :goto_0

    .line 608
    :cond_3
    const-string/jumbo v1, "disconnected"

    goto :goto_1

    .line 585
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/twitter/internal/android/service/ab;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/internal/android/service/ab",
            "<",
            "Lcom/twitter/library/service/aa;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    :goto_0
    return-void

    .line 435
    :cond_0
    invoke-virtual {p1}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 444
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v0

    const/16 v1, 0x193

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v4, 0x1

    .line 446
    :goto_1
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->p:Landroid/content/Context;

    const-string/jumbo v1, "app:twitter_service:direct_messages:create"

    .line 448
    invoke-virtual {p0}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->N()Lcom/twitter/library/service/ab;

    move-result-object v2

    iget-wide v2, v2, Lcom/twitter/library/service/ab;->c:J

    move-object v5, p1

    move v6, p2

    .line 446
    invoke-static/range {v0 .. v6}, Lcom/twitter/library/api/af;->a(Landroid/content/Context;Ljava/lang/String;JZLcom/twitter/internal/android/service/ab;Z)V

    goto :goto_0

    .line 444
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private a(Lcom/twitter/library/scribe/TwitterScribeLog;Lcom/twitter/internal/network/k;Z)V
    .locals 2

    .prologue
    .line 334
    if-nez p2, :cond_0

    .line 346
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-boolean v0, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->m:Z

    if-eqz v0, :cond_1

    .line 339
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->c(I)Lcom/twitter/library/scribe/ScribeLog;

    .line 342
    :cond_1
    if-eqz p3, :cond_2

    const-string/jumbo v0, "has_media"

    :goto_1
    invoke-virtual {p1, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->i(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 343
    invoke-static {p2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b(Lcom/twitter/internal/network/k;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b(I)Lcom/twitter/library/scribe/ScribeLog;

    .line 344
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->p:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/library/scribe/TwitterScribeLog;Lcom/twitter/internal/network/k;)V

    .line 345
    invoke-static {p1}, Lbjf;->a(Lbjh;)V

    goto :goto_0

    .line 342
    :cond_2
    const-string/jumbo v0, "no_media"

    goto :goto_1
.end method


# virtual methods
.method a(Lcom/twitter/model/drafts/DraftAttachment;Z)Lcom/twitter/library/api/upload/h;
    .locals 10
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 470
    .line 472
    const/4 v7, 0x0

    .line 475
    :try_start_0
    invoke-direct {p0, p1}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->a(Lcom/twitter/model/drafts/DraftAttachment;)Lcom/twitter/library/api/upload/h;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 483
    :goto_0
    invoke-static {}, Lbqx;->a()Lbqx;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->d:Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Lbqx;->b(Lcom/twitter/util/y;Ljava/lang/String;)V

    .line 485
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/library/api/upload/h;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 486
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->N()Lcom/twitter/library/service/ab;

    move-result-object v1

    iget-wide v2, v1, Lcom/twitter/library/service/ab;->c:J

    const-string/jumbo v5, "Upload media failed"

    move-object v1, p0

    move-object v4, p1

    move v6, p2

    invoke-direct/range {v1 .. v8}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->a(JLcom/twitter/model/drafts/DraftAttachment;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 490
    :cond_1
    return-object v0

    .line 476
    :catch_0
    move-exception v0

    .line 477
    :goto_1
    const/4 v7, 0x1

    .line 478
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    move-object v0, v8

    move-object v8, v9

    .line 481
    goto :goto_0

    .line 479
    :catch_1
    move-exception v0

    .line 480
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    move-object v0, v8

    move-object v8, v9

    goto :goto_0

    .line 476
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method a(Lcom/twitter/library/api/upload/am;Z)Lcom/twitter/library/service/aa;
    .locals 10
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 527
    new-instance v5, Lcom/twitter/util/concurrent/ObservablePromise;

    invoke-direct {v5}, Lcom/twitter/util/concurrent/ObservablePromise;-><init>()V

    .line 528
    new-instance v0, Lcom/twitter/library/api/upload/af;

    iget-object v1, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->p:Landroid/content/Context;

    const-string/jumbo v2, "set_metadata"

    iget-object v3, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->l:Lcom/twitter/library/client/Session;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/twitter/library/api/upload/af;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;Lcom/twitter/library/api/upload/am;Lcom/twitter/util/concurrent/ObservablePromise;)V

    .line 530
    iget-object v1, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->p:Landroid/content/Context;

    invoke-static {v1}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 534
    const/4 v7, 0x0

    .line 537
    :try_start_0
    invoke-virtual {v5}, Lcom/twitter/util/concurrent/ObservablePromise;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 545
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 547
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->N()Lcom/twitter/library/service/ab;

    move-result-object v1

    iget-wide v2, v1, Lcom/twitter/library/service/ab;->c:J

    .line 548
    invoke-virtual {p1}, Lcom/twitter/library/api/upload/am;->b()Lcom/twitter/model/drafts/DraftAttachment;

    move-result-object v4

    const-string/jumbo v5, "Upload media metadata failed"

    move-object v1, p0

    move v6, p2

    .line 546
    invoke-direct/range {v1 .. v8}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->a(JLcom/twitter/model/drafts/DraftAttachment;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 555
    :cond_1
    return-object v0

    .line 538
    :catch_0
    move-exception v0

    .line 539
    :goto_1
    const/4 v7, 0x1

    .line 540
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    move-object v0, v8

    move-object v8, v9

    .line 543
    goto :goto_0

    .line 541
    :catch_1
    move-exception v0

    .line 542
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    move-object v0, v8

    move-object v8, v9

    goto :goto_0

    .line 538
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method a(Lcom/twitter/library/service/aa;Lcom/twitter/model/drafts/DraftAttachment;Z)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twitter/library/api/dm/requests/SendDMRequest$UploadMessageMediaException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 302
    if-nez p2, :cond_0

    .line 303
    const/4 v0, 0x0

    .line 329
    :goto_0
    return-object v0

    .line 306
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->a(Lcom/twitter/model/drafts/DraftAttachment;Z)Lcom/twitter/library/api/upload/h;

    move-result-object v0

    .line 307
    if-nez v0, :cond_1

    .line 308
    invoke-virtual {p1, v6}, Lcom/twitter/library/service/aa;->a(Z)V

    .line 309
    new-instance v0, Lcom/twitter/library/api/dm/requests/SendDMRequest$UploadMessageMediaException;

    const-string/jumbo v1, "Upload media failed"

    invoke-direct {v0, v1}, Lcom/twitter/library/api/dm/requests/SendDMRequest$UploadMessageMediaException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_1
    invoke-virtual {v0}, Lcom/twitter/library/api/upload/h;->b()Z

    move-result v1

    if-nez v1, :cond_2

    .line 311
    invoke-virtual {p1, v0}, Lcom/twitter/library/service/aa;->a(Lcom/twitter/library/service/aa;)V

    .line 312
    new-instance v0, Lcom/twitter/library/api/dm/requests/SendDMRequest$UploadMessageMediaException;

    const-string/jumbo v1, "Upload media failed"

    invoke-direct {v0, v1}, Lcom/twitter/library/api/dm/requests/SendDMRequest$UploadMessageMediaException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_2
    invoke-virtual {v0}, Lcom/twitter/library/api/upload/h;->a()J

    move-result-wide v0

    .line 315
    new-instance v2, Lcom/twitter/library/api/upload/am;

    invoke-direct {v2, p2}, Lcom/twitter/library/api/upload/am;-><init>(Lcom/twitter/model/drafts/DraftAttachment;)V

    .line 316
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v4

    invoke-virtual {v2, v0, v1, v4, v5}, Lcom/twitter/library/api/upload/am;->a(JJ)V

    .line 317
    invoke-virtual {v2}, Lcom/twitter/library/api/upload/am;->f()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 319
    invoke-virtual {p0, v2, p3}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->a(Lcom/twitter/library/api/upload/am;Z)Lcom/twitter/library/service/aa;

    move-result-object v2

    .line 320
    if-nez v2, :cond_3

    .line 321
    invoke-virtual {p1, v6}, Lcom/twitter/library/service/aa;->a(Z)V

    .line 322
    new-instance v0, Lcom/twitter/library/api/dm/requests/SendDMRequest$UploadMessageMediaException;

    const-string/jumbo v1, "Upload media metadata failed"

    invoke-direct {v0, v1}, Lcom/twitter/library/api/dm/requests/SendDMRequest$UploadMessageMediaException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_3
    invoke-virtual {v2}, Lcom/twitter/library/service/aa;->b()Z

    move-result v3

    if-nez v3, :cond_4

    .line 324
    invoke-virtual {p1, v2}, Lcom/twitter/library/service/aa;->a(Lcom/twitter/library/service/aa;)V

    .line 325
    new-instance v0, Lcom/twitter/library/api/dm/requests/SendDMRequest$UploadMessageMediaException;

    const-string/jumbo v1, "Upload media metadata failed"

    invoke-direct {v0, v1}, Lcom/twitter/library/api/dm/requests/SendDMRequest$UploadMessageMediaException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_4
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lbqy;)V
    .locals 4

    .prologue
    .line 560
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->d:Ljava/lang/String;

    iget-object v1, p1, Lbqy;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->s:Lcom/twitter/model/dms/bd;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->b:Lcom/twitter/library/provider/dm;

    iget-object v1, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->s:Lcom/twitter/model/dms/bd;

    iget v2, p1, Lbqy;->c:I

    iget-object v3, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->c:Lcom/twitter/library/provider/b;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/provider/dm;->b(Lcom/twitter/model/dms/bd;ILcom/twitter/library/provider/b;)V

    .line 562
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->c:Lcom/twitter/library/provider/b;

    invoke-virtual {v0}, Lcom/twitter/library/provider/b;->a()V

    .line 564
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/internal/android/service/ab;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/internal/android/service/ab",
            "<",
            "Lcom/twitter/library/service/aa;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x2

    const/4 v1, 0x0

    .line 350
    invoke-direct {p0, p1, v1}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->a(Lcom/twitter/internal/android/service/ab;Z)V

    .line 352
    invoke-virtual {p1}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 353
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->f()Lcom/twitter/internal/network/HttpOperation;

    move-result-object v3

    .line 354
    invoke-virtual {p0}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->T()Lcom/twitter/library/provider/b;

    move-result-object v4

    .line 355
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/twitter/internal/network/HttpOperation;->k()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 356
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->g()Lcom/twitter/internal/network/k;

    move-result-object v0

    .line 357
    if-eqz v0, :cond_1

    iget v0, v0, Lcom/twitter/internal/network/k;->a:I

    .line 358
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 399
    :pswitch_0
    invoke-direct {p0, v6, v4}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->a(ILcom/twitter/library/provider/b;)V

    .line 419
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 357
    goto :goto_0

    .line 360
    :pswitch_1
    invoke-virtual {p0}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->N()Lcom/twitter/library/service/ab;

    move-result-object v5

    .line 362
    invoke-virtual {v3}, Lcom/twitter/internal/network/HttpOperation;->q()Lcom/twitter/internal/network/i;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/api/dm/requests/r;

    invoke-virtual {v0}, Lcom/twitter/library/api/dm/requests/r;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/dk;

    iput-object v0, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->a:Lcom/twitter/model/dms/dk;

    .line 363
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->a:Lcom/twitter/model/dms/dk;

    invoke-virtual {v0}, Lcom/twitter/model/dms/dk;->g()Lcom/twitter/model/dms/bo;

    move-result-object v3

    .line 365
    invoke-virtual {p0}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, v3, Lcom/twitter/model/dms/bo;->d:J

    :goto_2
    iput-wide v0, v3, Lcom/twitter/model/dms/bo;->g:J

    .line 366
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->b:Lcom/twitter/library/provider/dm;

    iget-object v1, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->s:Lcom/twitter/model/dms/bd;

    iget-object v6, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->a:Lcom/twitter/model/dms/dk;

    invoke-virtual {v0, v1, v3, v6, v4}, Lcom/twitter/library/provider/dm;->a(Lcom/twitter/model/dms/bd;Lcom/twitter/model/dms/bo;Lcom/twitter/model/dms/as;Lcom/twitter/library/provider/b;)V

    .line 367
    invoke-virtual {v4}, Lcom/twitter/library/provider/b;->a()V

    .line 369
    iget-object v0, v3, Lcom/twitter/model/dms/bo;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->n:Ljava/lang/String;

    .line 370
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->t:Lcom/twitter/model/drafts/DraftAttachment;

    if-eqz v0, :cond_2

    .line 371
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->t:Lcom/twitter/model/drafts/DraftAttachment;

    invoke-virtual {v0, v2}, Lcom/twitter/model/drafts/DraftAttachment;->b(Lcom/twitter/model/drafts/DraftAttachment;)Lcom/twitter/util/concurrent/j;

    .line 374
    :cond_2
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->a:Lcom/twitter/model/dms/dk;

    iget-object v0, v0, Lcom/twitter/model/dms/dk;->a:Ljava/util/List;

    .line 375
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 377
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lcom/twitter/util/collection/r;->a(I)Lcom/twitter/util/collection/r;

    move-result-object v1

    .line 378
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/cy;

    .line 379
    iget-wide v6, v0, Lcom/twitter/model/dms/cy;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_3

    .line 365
    :cond_3
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->s:Lcom/twitter/model/dms/bd;

    iget-wide v0, v0, Lcom/twitter/model/dms/bd;->d:J

    goto :goto_2

    .line 381
    :cond_4
    iget-object v2, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->b:Lcom/twitter/library/provider/dm;

    iget-object v3, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->n:Ljava/lang/String;

    .line 382
    invoke-virtual {v1}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->e(Ljava/util/Collection;)[J

    move-result-object v0

    .line 381
    invoke-virtual {v2, v3, v0, v4}, Lcom/twitter/library/provider/dm;->a(Ljava/lang/String;[JLcom/twitter/library/provider/b;)V

    .line 385
    :cond_5
    new-instance v0, Lcom/twitter/library/api/dm/requests/g;

    iget-object v1, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->p:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->n:Ljava/lang/String;

    invoke-direct {v0, v1, v5, v2}, Lcom/twitter/library/api/dm/requests/g;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->b(Lcom/twitter/internal/android/service/AsyncOperation;)V

    goto/16 :goto_1

    .line 389
    :pswitch_2
    invoke-static {}, Lbnv;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 391
    invoke-direct {p0, v1, v4}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->a(ILcom/twitter/library/provider/b;)V

    goto/16 :goto_1

    .line 393
    :cond_6
    invoke-direct {p0, v6, v4}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->a(ILcom/twitter/library/provider/b;)V

    goto/16 :goto_1

    .line 404
    :cond_7
    invoke-virtual {p0}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 405
    invoke-direct {p0, v6, v4}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->a(ILcom/twitter/library/provider/b;)V

    .line 408
    :cond_8
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/twitter/internal/network/HttpOperation;->q()Lcom/twitter/internal/network/i;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/api/dm/requests/r;

    invoke-virtual {v0}, Lcom/twitter/library/api/dm/requests/r;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cj;

    .line 409
    :goto_4
    invoke-static {v0}, Lcom/twitter/model/core/cj;->a(Lcom/twitter/model/core/cj;)[I

    move-result-object v0

    .line 410
    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->a([I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/au;->a(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->r:Ljava/util/Set;

    .line 411
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->r:Ljava/util/Set;

    const/16 v1, 0x96

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->r:Ljava/util/Set;

    const/16 v1, 0x15d

    .line 412
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    :cond_9
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->s:Lcom/twitter/model/dms/bd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->s:Lcom/twitter/model/dms/bd;

    iget-object v0, v0, Lcom/twitter/model/dms/bd;->e:Ljava/lang/String;

    invoke-static {v0}, Lbnx;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->b:Lcom/twitter/library/provider/dm;

    iget-object v1, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->s:Lcom/twitter/model/dms/bd;

    iget-object v1, v1, Lcom/twitter/model/dms/bd;->e:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v4}, Lcom/twitter/library/provider/dm;->d(Ljava/lang/String;ZLcom/twitter/library/provider/b;)V

    .line 415
    invoke-virtual {v4}, Lcom/twitter/library/provider/b;->a()V

    goto/16 :goto_1

    :cond_a
    move-object v0, v2

    .line 408
    goto :goto_4

    .line 358
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected a(Lcom/twitter/model/dms/bd;Lcom/twitter/model/drafts/DraftAttachment;Lcom/twitter/library/service/aa;Lcom/twitter/model/dms/cf;)V
    .locals 20

    .prologue
    .line 165
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/twitter/library/api/dm/requests/SendDMRequest;->s:Lcom/twitter/model/dms/bd;

    .line 166
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/twitter/library/api/dm/requests/SendDMRequest;->t:Lcom/twitter/model/drafts/DraftAttachment;

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->e()Z

    move-result v12

    .line 172
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v12}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->a(Lcom/twitter/library/service/aa;Lcom/twitter/model/drafts/DraftAttachment;Z)Ljava/lang/String;
    :try_end_0
    .catch Lcom/twitter/library/api/dm/requests/SendDMRequest$UploadMessageMediaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->N()Lcom/twitter/library/service/ab;

    move-result-object v4

    .line 178
    iget-wide v8, v4, Lcom/twitter/library/service/ab;->c:J

    .line 179
    new-instance v11, Lcom/twitter/library/api/dm/requests/r;

    invoke-direct {v11}, Lcom/twitter/library/api/dm/requests/r;-><init>()V

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p4

    .line 180
    invoke-direct/range {v5 .. v11}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->a(Lcom/twitter/model/dms/bd;Lcom/twitter/model/dms/cf;JLjava/lang/String;Lcom/twitter/library/api/dm/requests/r;)Lcom/twitter/internal/network/HttpOperation;

    move-result-object v6

    .line 184
    invoke-virtual {v6}, Lcom/twitter/internal/network/HttpOperation;->l()Lcom/twitter/internal/network/k;

    move-result-object v19

    .line 185
    if-eqz v19, :cond_6

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 188
    const-string/jumbo v4, "cancel"

    .line 194
    :goto_0
    new-instance v7, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v7, v8, v9}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v5, 0x3

    new-array v13, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v14, "app:twitter_service:direct_messages"

    aput-object v14, v13, v5

    const/4 v14, 0x1

    if-eqz v12, :cond_4

    const-string/jumbo v5, "retry_dm"

    :goto_1
    aput-object v5, v13, v14

    const/4 v5, 0x2

    aput-object v4, v13, v5

    .line 195
    invoke-virtual {v7, v13}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v4

    check-cast v4, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 198
    if-eqz v10, :cond_5

    const/4 v5, 0x1

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v4, v1, v5}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->a(Lcom/twitter/library/scribe/TwitterScribeLog;Lcom/twitter/internal/network/k;Z)V

    .line 199
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lcom/twitter/library/service/aa;->a(Lcom/twitter/internal/network/HttpOperation;)V

    .line 200
    invoke-virtual {v6}, Lcom/twitter/internal/network/HttpOperation;->k()Z

    move-result v4

    .line 206
    :goto_3
    if-eqz p2, :cond_0

    .line 207
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/twitter/model/drafts/DraftAttachment;->g:Lcom/twitter/media/model/MediaType;

    iget-object v0, v5, Lcom/twitter/media/model/MediaType;->extension:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v4, :cond_7

    const/16 v17, 0x0

    :goto_4
    if-eqz v4, :cond_8

    const/16 v18, -0x1

    :goto_5
    move-object/from16 v13, p0

    move-wide v14, v8

    invoke-direct/range {v13 .. v19}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->a(JLjava/lang/String;IILcom/twitter/internal/network/k;)V

    .line 214
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/twitter/library/service/aa;->i()Lcom/twitter/library/service/w;

    move-result-object v4

    if-nez v4, :cond_1

    .line 215
    invoke-virtual {v11}, Lcom/twitter/library/api/dm/requests/r;->a()Lcom/twitter/library/service/a;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/twitter/library/service/aa;->a(Lcom/twitter/library/service/w;)V

    .line 217
    :cond_1
    :goto_6
    return-void

    .line 189
    :cond_2
    move-object/from16 v0, v19

    iget v4, v0, Lcom/twitter/internal/network/k;->a:I

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_3

    .line 190
    const-string/jumbo v4, "success"

    goto :goto_0

    .line 192
    :cond_3
    const-string/jumbo v4, "failure"

    goto :goto_0

    .line 194
    :cond_4
    const-string/jumbo v5, "send_dm"

    goto :goto_1

    .line 198
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 202
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/twitter/library/service/aa;->a(Z)V

    .line 203
    const/4 v4, 0x0

    goto :goto_3

    .line 207
    :cond_7
    const/16 v17, 0x1

    goto :goto_4

    .line 209
    :cond_8
    invoke-static/range {v19 .. v19}, Lcom/twitter/library/scribe/TwitterScribeLog;->b(Lcom/twitter/internal/network/k;)I

    move-result v18

    goto :goto_5

    .line 173
    :catch_0
    move-exception v4

    goto :goto_6
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 86
    check-cast p1, Lbqy;

    invoke-virtual {p0, p1}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->a(Lbqy;)V

    return-void
.end method

.method protected a(Z)V
    .locals 0

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->m:Z

    .line 147
    return-void
.end method

.method public b(Lcom/twitter/internal/android/service/ab;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/internal/android/service/ab",
            "<",
            "Lcom/twitter/library/service/aa;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->m:Z

    .line 222
    invoke-direct {p0, p1, v0}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->a(Lcom/twitter/internal/android/service/ab;Z)V

    .line 223
    return-void
.end method

.method public abstract e()Z
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->n:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->r:Ljava/util/Set;

    return-object v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->s:Lcom/twitter/model/dms/bd;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/SendDMRequest;->s:Lcom/twitter/model/dms/bd;

    iget-wide v0, v0, Lcom/twitter/model/dms/bd;->d:J

    goto :goto_0
.end method
