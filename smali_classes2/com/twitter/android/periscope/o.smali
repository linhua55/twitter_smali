.class public Lcom/twitter/android/periscope/o;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ltv/periscope/android/api/ApiManager;


# instance fields
.field private final a:Ltv/periscope/android/api/ApiManager;

.field private final b:Ltv/periscope/android/api/ApiManager;

.field private final c:Ltv/periscope/android/session/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ltv/periscope/android/library/d;)V
    .locals 12

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 40
    invoke-interface {p2}, Ltv/periscope/android/library/d;->i()Ltv/periscope/android/session/a;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/periscope/o;->c:Ltv/periscope/android/session/a;

    .line 42
    new-instance v0, Lcom/twitter/android/periscope/af;

    invoke-interface {p2}, Ltv/periscope/android/library/d;->e()Lde/greenrobot/event/c;

    move-result-object v2

    invoke-interface {p2}, Ltv/periscope/android/library/d;->h()Ltv/periscope/android/data/b;

    move-result-object v3

    .line 43
    invoke-interface {p2}, Ltv/periscope/android/library/d;->i()Ltv/periscope/android/session/a;

    move-result-object v4

    invoke-interface {p2}, Ltv/periscope/android/library/d;->l()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/periscope/af;-><init>(Landroid/content/Context;Lde/greenrobot/event/c;Ltv/periscope/android/data/b;Ltv/periscope/android/session/a;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/twitter/android/periscope/o;->a:Ltv/periscope/android/api/ApiManager;

    .line 45
    new-instance v0, Ltv/periscope/android/api/RestClient;

    .line 46
    invoke-interface {p2}, Ltv/periscope/android/library/d;->l()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {}, Lcom/twitter/android/periscope/a;->a()Ljava/lang/String;

    move-result-object v3

    const-class v4, Ltv/periscope/android/api/ApiService;

    .line 47
    invoke-interface {p2}, Ltv/periscope/android/library/d;->d()Lretrofit/RestAdapter$LogLevel;

    move-result-object v5

    invoke-interface {p2}, Ltv/periscope/android/library/d;->c()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2}, Ltv/periscope/android/library/d;->b()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ltv/periscope/android/api/RestClient;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/Class;Lretrofit/RestAdapter$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v2, Ltv/periscope/android/api/RestClient;

    .line 49
    invoke-interface {p2}, Ltv/periscope/android/library/d;->l()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-static {}, Lcom/twitter/android/periscope/a;->b()Ljava/lang/String;

    move-result-object v5

    const-class v6, Ltv/periscope/android/signer/SignerService;

    .line 50
    invoke-interface {p2}, Ltv/periscope/android/library/d;->d()Lretrofit/RestAdapter$LogLevel;

    move-result-object v7

    invoke-interface {p2}, Ltv/periscope/android/library/d;->c()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2}, Ltv/periscope/android/library/d;->b()Ljava/lang/String;

    move-result-object v9

    move-object v3, v1

    invoke-direct/range {v2 .. v9}, Ltv/periscope/android/api/RestClient;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/Class;Lretrofit/RestAdapter$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v3, Ltv/periscope/android/api/RestClient;

    .line 52
    invoke-interface {p2}, Ltv/periscope/android/library/d;->l()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-static {}, Lcom/twitter/android/periscope/a;->c()Ljava/lang/String;

    move-result-object v6

    const-class v7, Ltv/periscope/android/api/service/channels/ChannelsService;

    .line 53
    invoke-interface {p2}, Ltv/periscope/android/library/d;->d()Lretrofit/RestAdapter$LogLevel;

    move-result-object v8

    invoke-interface {p2}, Ltv/periscope/android/library/d;->c()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2}, Ltv/periscope/android/library/d;->b()Ljava/lang/String;

    move-result-object v10

    move-object v4, v1

    invoke-direct/range {v3 .. v10}, Ltv/periscope/android/api/RestClient;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/Class;Lretrofit/RestAdapter$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v4, Ltv/periscope/android/api/RestClient;

    .line 55
    invoke-interface {p2}, Ltv/periscope/android/library/d;->l()Ljava/util/concurrent/Executor;

    move-result-object v6

    invoke-static {}, Lcom/twitter/android/periscope/a;->d()Ljava/lang/String;

    move-result-object v7

    const-class v8, Ltv/periscope/android/api/service/safety/SafetyService;

    .line 56
    invoke-interface {p2}, Ltv/periscope/android/library/d;->d()Lretrofit/RestAdapter$LogLevel;

    move-result-object v9

    invoke-interface {p2}, Ltv/periscope/android/library/d;->c()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2}, Ltv/periscope/android/library/d;->b()Ljava/lang/String;

    move-result-object v11

    move-object v5, v1

    invoke-direct/range {v4 .. v11}, Ltv/periscope/android/api/RestClient;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/Class;Lretrofit/RestAdapter$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v9, Lcom/twitter/android/periscope/e;

    .line 59
    invoke-virtual {v0}, Ltv/periscope/android/api/RestClient;->getService()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ltv/periscope/android/api/ApiService;

    invoke-virtual {v2}, Ltv/periscope/android/api/RestClient;->getService()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ltv/periscope/android/signer/SignerService;

    .line 60
    invoke-virtual {v3}, Ltv/periscope/android/api/RestClient;->getService()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltv/periscope/android/api/service/channels/ChannelsService;

    invoke-virtual {v4}, Ltv/periscope/android/api/RestClient;->getService()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltv/periscope/android/api/service/safety/SafetyService;

    move-object v0, v9

    move-object v2, p2

    move-object v3, v7

    move-object v4, v8

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/periscope/e;-><init>(Landroid/content/Context;Ltv/periscope/android/library/d;Ltv/periscope/android/api/ApiService;Ltv/periscope/android/signer/SignerService;Ltv/periscope/android/api/service/channels/ChannelsService;Ltv/periscope/android/api/service/safety/SafetyService;)V

    iput-object v9, p0, Lcom/twitter/android/periscope/o;->b:Ltv/periscope/android/api/ApiManager;

    .line 61
    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/twitter/android/periscope/o;->c:Ltv/periscope/android/session/a;

    invoke-interface {v0}, Ltv/periscope/android/session/a;->a()Ltv/periscope/android/session/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Ltv/periscope/android/api/ApiManager;
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/periscope/o;->b:Ltv/periscope/android/api/ApiManager;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/periscope/o;->a:Ltv/periscope/android/api/ApiManager;

    goto :goto_0
.end method


# virtual methods
.method public activeJuror(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/api/ApiManager;->activeJuror(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public associateDigitsAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ltv/periscope/android/api/ApiManager;->associateDigitsAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bind()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0}, Ltv/periscope/android/api/ApiManager;->bind()V

    .line 75
    return-void
.end method

.method public block(Ljava/lang/String;Ljava/lang/String;Ltv/periscope/model/chat/Message;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ltv/periscope/android/api/ApiManager;->block(Ljava/lang/String;Ljava/lang/String;Ltv/periscope/model/chat/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public broadcastMeta(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ltv/periscope/android/api/ChatStats;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ltv/periscope/android/api/ChatStats;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 396
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ltv/periscope/android/api/ApiManager;->broadcastMeta(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ltv/periscope/android/api/ChatStats;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public broadcastSearch(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/api/ApiManager;->broadcastSearch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cancelRequest(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/api/ApiManager;->cancelRequest(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public channelsSearch(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 497
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/api/ApiManager;->channelsSearch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createBroadcast(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/api/ApiManager;->createBroadcast(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deactivateAccount()V
    .locals 1

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0}, Ltv/periscope/android/api/ApiManager;->deactivateAccount()V

    .line 407
    return-void
.end method

.method public decreaseBroadcastRank(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/api/ApiManager;->decreaseBroadcastRank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deleteBroadcast(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/api/ApiManager;->deleteBroadcast(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public endBroadcast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ltv/periscope/android/api/ApiManager;->endBroadcast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public endWatching(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ltv/periscope/android/api/ApiManager;->endWatching(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public follow(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/api/ApiManager;->follow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public followAll(Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/api/ApiManager;->followAll(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessChat(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/api/ApiManager;->getAccessChat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessChatNoRetry(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/api/ApiManager;->getAccessChatNoRetry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessVideo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ltv/periscope/android/api/ApiManager;->getAccessVideo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorizeTokenForBackendService(Ltv/periscope/android/api/BackendServiceName;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/api/ApiManager;->getAuthorizeTokenForBackendService(Ltv/periscope/android/api/BackendServiceName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlocked()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0}, Ltv/periscope/android/api/ApiManager;->getBlocked()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBroadcastForTeleport()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0}, Ltv/periscope/android/api/ApiManager;->getBroadcastForTeleport()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBroadcastIdForShareToken(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/api/ApiManager;->getBroadcastIdForShareToken(Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method public getBroadcastMainGlobal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0}, Ltv/periscope/android/api/ApiManager;->getBroadcastMainGlobal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBroadcastRank(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/api/ApiManager;->getBroadcastRank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBroadcastRankParameters()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0}, Ltv/periscope/android/api/ApiManager;->getBroadcastRankParameters()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBroadcastShareUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/api/ApiManager;->getBroadcastShareUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBroadcastSummary(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/api/ApiManager;->getBroadcastSummary(Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method public getBroadcastTrailer(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 514
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/api/ApiManager;->getBroadcastTrailer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBroadcastViewers(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ltv/periscope/android/api/ApiManager;->getBroadcastViewers(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBroadcasts(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/api/ApiManager;->getBroadcasts(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBroadcasts(Ljava/util/ArrayList;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ltv/periscope/android/api/ApiManager;->getBroadcasts(Ljava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBroadcastsByPolling(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/api/ApiManager;->getBroadcastsByPolling(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBroadcastsForChannelId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 491
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/api/ApiManager;->getBroadcastsForChannelId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 503
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/api/ApiManager;->getChannelInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFollowers()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0}, Ltv/periscope/android/api/ApiManager;->getFollowers()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFollowersById(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/api/ApiManager;->getFollowersById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFollowing()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0}, Ltv/periscope/android/api/ApiManager;->getFollowing()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFollowingById(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/api/ApiManager;->getFollowingById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalMap(FFFF)Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ltv/periscope/android/api/ApiManager;->getGlobalMap(FFFF)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMutualFollows()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0}, Ltv/periscope/android/api/ApiManager;->getMutualFollows()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMyUserBroadcasts()V
    .locals 1

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0}, Ltv/periscope/android/api/ApiManager;->getMyUserBroadcasts()V

    .line 427
    return-void
.end method

.method public getSettings()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0}, Ltv/periscope/android/api/ApiManager;->getSettings()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestedChannels()Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0}, Ltv/periscope/android/api/ApiManager;->getSuggestedChannels()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestedPeople()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0}, Ltv/periscope/android/api/ApiManager;->getSuggestedPeople()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestedPeopleForOnboarding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0}, Ltv/periscope/android/api/ApiManager;->getSuggestedPeopleForOnboarding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrendingPlaces()V
    .locals 1

    .prologue
    .line 466
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0}, Ltv/periscope/android/api/ApiManager;->getTrendingPlaces()V

    .line 467
    return-void
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0}, Ltv/periscope/android/api/ApiManager;->getUser()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserBroadcastsByUserId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/api/ApiManager;->getUserBroadcastsByUserId(Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public getUserBroadcastsByUsername(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/api/ApiManager;->getUserBroadcastsByUsername(Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public getUserById(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/api/ApiManager;->getUserById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserByUsername(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/api/ApiManager;->getUserById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hello()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0}, Ltv/periscope/android/api/ApiManager;->hello()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public increaseBroadcastRank(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/api/ApiManager;->increaseBroadcastRank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltv/periscope/android/session/Session$Type;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Ltv/periscope/android/api/ApiManager;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltv/periscope/android/session/Session$Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loginTwitterToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/twitter/android/periscope/o;->b:Ltv/periscope/android/api/ApiManager;

    invoke-interface {v0, p1}, Ltv/periscope/android/api/ApiManager;->loginTwitterToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public logout(Ltv/periscope/android/event/a;Z)V
    .locals 1

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ltv/periscope/android/api/ApiManager;->logout(Ltv/periscope/android/event/a;Z)V

    .line 402
    return-void
.end method

.method public markBroadcastPersistent(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 508
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/api/ApiManager;->markBroadcastPersistent(Ljava/lang/String;)V

    .line 509
    return-void
.end method

.method public megaBroadcastCall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0}, Ltv/periscope/android/api/ApiManager;->megaBroadcastCall()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/api/ApiManager;->mute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public performUploadTest()V
    .locals 1

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0}, Ltv/periscope/android/api/ApiManager;->performUploadTest()V

    .line 422
    return-void
.end method

.method public pingBroadcast(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ltv/periscope/android/api/ApiManager;->pingBroadcast(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pingWatching(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ltv/periscope/android/api/ApiManager;->pingWatching(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public playbackMeta(Ljava/lang/String;Ljava/util/HashMap;Ltv/periscope/android/api/ChatStats;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ltv/periscope/android/api/ChatStats;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ltv/periscope/android/api/ApiManager;->playbackMeta(Ljava/lang/String;Ljava/util/HashMap;Ltv/periscope/android/api/ChatStats;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public publishBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZFFZII)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;ZFFZII)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Ltv/periscope/android/api/ApiManager;->publishBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZFFZII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replayThumbnailPlaylist(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/api/ApiManager;->replayThumbnailPlaylist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reportBroadcast(Ljava/lang/String;Ltv/periscope/model/AbuseType;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ltv/periscope/android/api/ApiManager;->reportBroadcast(Ljava/lang/String;Ltv/periscope/model/AbuseType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reportComment(Ltv/periscope/model/chat/Message;Ljava/lang/String;Ltv/periscope/model/chat/MessageType$ReportType;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ltv/periscope/android/api/ApiManager;->reportComment(Ltv/periscope/model/chat/Message;Ljava/lang/String;Ltv/periscope/model/chat/MessageType$ReportType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBroadcastRankParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Ltv/periscope/android/api/ApiManager;->setBroadcastRankParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setProfileImage(Ljava/io/File;Ljava/io/File;)V
    .locals 1

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ltv/periscope/android/api/ApiManager;->setProfileImage(Ljava/io/File;Ljava/io/File;)V

    .line 442
    return-void
.end method

.method public setSettings(ZZZZZZ)Ljava/lang/String;
    .locals 7

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ltv/periscope/android/api/ApiManager;->setSettings(ZZZZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public shareBroadcast(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ltv/periscope/android/api/ApiManager;->shareBroadcast(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startWatching(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ltv/periscope/android/api/ApiManager;->startWatching(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public supportedLanguages()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0}, Ltv/periscope/android/api/ApiManager;->supportedLanguages()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unban()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0}, Ltv/periscope/android/api/ApiManager;->unban()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0}, Ltv/periscope/android/api/ApiManager;->unbind()V

    .line 80
    return-void
.end method

.method public unblock(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/api/ApiManager;->unblock(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unfollow(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/api/ApiManager;->unfollow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unmute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/api/ApiManager;->unmute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateProfileDescription(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 451
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/api/ApiManager;->updateProfileDescription(Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method public updateProfileDisplayName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/api/ApiManager;->updateProfileDisplayName(Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method public userSearch(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/api/ApiManager;->userSearch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validateUsername(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ltv/periscope/android/api/ApiManager;->validateUsername(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verifyUsername(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ltv/periscope/android/api/ApiManager;->verifyUsername(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public vote(Ljava/lang/String;Ltv/periscope/model/chat/MessageType$VoteType;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 479
    invoke-direct {p0}, Lcom/twitter/android/periscope/o;->b()Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ltv/periscope/android/api/ApiManager;->vote(Ljava/lang/String;Ltv/periscope/model/chat/MessageType$VoteType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
