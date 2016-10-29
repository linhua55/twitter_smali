.class public abstract Ltv/periscope/android/api/PublicApiManager;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ltv/periscope/android/api/ApiManager;


# static fields
.field private static final EMPTY_REQUEST_ID:Ljava/lang/String; = ""


# instance fields
.field private final mApiService:Ltv/periscope/android/api/ApiService;

.field private final mAppContext:Landroid/content/Context;

.field protected final mEventBus:Lde/greenrobot/event/c;

.field private final mLocalEventBus:Lde/greenrobot/event/c;

.field private final mPublicApiService:Ltv/periscope/android/api/PublicApiService;

.field private final mSignerService:Ltv/periscope/android/signer/SignerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lde/greenrobot/event/c;Ljava/util/concurrent/Executor;Z)V
    .locals 6

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Ltv/periscope/android/api/PublicApiManager;->mAppContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Ltv/periscope/android/api/PublicApiManager;->mEventBus:Lde/greenrobot/event/c;

    .line 44
    invoke-static {}, Lde/greenrobot/event/c;->b()Lde/greenrobot/event/g;

    move-result-object v0

    invoke-virtual {v0, p4}, Lde/greenrobot/event/g;->a(Z)Lde/greenrobot/event/g;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/event/g;->a()Lde/greenrobot/event/c;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/api/PublicApiManager;->mLocalEventBus:Lde/greenrobot/event/c;

    .line 46
    if-eqz p4, :cond_0

    sget-object v5, Lretrofit/RestAdapter$LogLevel;->BASIC:Lretrofit/RestAdapter$LogLevel;

    .line 47
    :goto_0
    new-instance v0, Ltv/periscope/android/api/RestClient;

    sget-object v3, Ltv/periscope/android/api/Constants;->API_PROD_URL:Ljava/lang/String;

    const-class v4, Ltv/periscope/android/api/ApiService;

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/api/RestClient;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/Class;Lretrofit/RestAdapter$LogLevel;)V

    .line 49
    invoke-virtual {v0}, Ltv/periscope/android/api/RestClient;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/api/ApiService;

    iput-object v0, p0, Ltv/periscope/android/api/PublicApiManager;->mApiService:Ltv/periscope/android/api/ApiService;

    .line 50
    new-instance v0, Ltv/periscope/android/api/RestClient;

    sget-object v3, Ltv/periscope/android/api/Constants;->API_PROD_URL:Ljava/lang/String;

    const-class v4, Ltv/periscope/android/api/PublicApiService;

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/api/RestClient;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/Class;Lretrofit/RestAdapter$LogLevel;)V

    .line 52
    invoke-virtual {v0}, Ltv/periscope/android/api/RestClient;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/api/PublicApiService;

    iput-object v0, p0, Ltv/periscope/android/api/PublicApiManager;->mPublicApiService:Ltv/periscope/android/api/PublicApiService;

    .line 53
    new-instance v0, Ltv/periscope/android/api/RestClient;

    const-string/jumbo v3, "https://signer.periscope.tv"

    const-class v4, Ltv/periscope/android/signer/SignerService;

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/api/RestClient;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/Class;Lretrofit/RestAdapter$LogLevel;)V

    .line 55
    invoke-virtual {v0}, Ltv/periscope/android/api/RestClient;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/signer/SignerService;

    iput-object v0, p0, Ltv/periscope/android/api/PublicApiManager;->mSignerService:Ltv/periscope/android/signer/SignerService;

    .line 56
    return-void

    .line 46
    :cond_0
    sget-object v5, Lretrofit/RestAdapter$LogLevel;->NONE:Lretrofit/RestAdapter$LogLevel;

    goto :goto_0
.end method

.method private execute(ILandroid/os/Bundle;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 207
    invoke-static {}, Ltv/periscope/android/api/PublicApiManager;->newRequestId()Ljava/lang/String;

    move-result-object v0

    .line 208
    new-instance v1, Ltv/periscope/android/api/ApiRunnable$Builder;

    invoke-direct {v1}, Ltv/periscope/android/api/ApiRunnable$Builder;-><init>()V

    iget-object v2, p0, Ltv/periscope/android/api/PublicApiManager;->mLocalEventBus:Lde/greenrobot/event/c;

    .line 209
    invoke-virtual {v1, v2}, Ltv/periscope/android/api/ApiRunnable$Builder;->eventBus(Lde/greenrobot/event/c;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/api/PublicApiManager;->mApiService:Ltv/periscope/android/api/ApiService;

    .line 210
    invoke-virtual {v1, v2}, Ltv/periscope/android/api/ApiRunnable$Builder;->service(Ltv/periscope/android/api/ApiService;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/api/PublicApiManager;->mPublicApiService:Ltv/periscope/android/api/PublicApiService;

    .line 211
    invoke-virtual {v1, v2}, Ltv/periscope/android/api/ApiRunnable$Builder;->publicService(Ltv/periscope/android/api/PublicApiService;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/api/PublicApiManager;->mSignerService:Ltv/periscope/android/signer/SignerService;

    .line 212
    invoke-virtual {v1, v2}, Ltv/periscope/android/api/ApiRunnable$Builder;->signer(Ltv/periscope/android/signer/SignerService;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    .line 213
    invoke-virtual {v1, p1}, Ltv/periscope/android/api/ApiRunnable$Builder;->actionCode(I)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    .line 214
    invoke-virtual {v1, v0}, Ltv/periscope/android/api/ApiRunnable$Builder;->requestId(Ljava/lang/String;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    .line 215
    invoke-virtual {v1, p2}, Ltv/periscope/android/api/ApiRunnable$Builder;->bundle(Landroid/os/Bundle;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Ltv/periscope/android/api/ApiRunnable$Builder;->build()Ltv/periscope/android/api/ApiRunnable;

    move-result-object v1

    .line 217
    invoke-virtual {p0, v1}, Ltv/periscope/android/api/PublicApiManager;->execute(Ltv/periscope/android/api/ApiRunnable;)Ljava/lang/String;

    .line 218
    return-object v0
.end method

.method private executeWithNoRetries(ILandroid/os/Bundle;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 320
    invoke-static {}, Ltv/periscope/android/api/PublicApiManager;->newRequestId()Ljava/lang/String;

    move-result-object v0

    .line 321
    new-instance v1, Ltv/periscope/android/api/ApiRunnable$Builder;

    invoke-direct {v1}, Ltv/periscope/android/api/ApiRunnable$Builder;-><init>()V

    iget-object v2, p0, Ltv/periscope/android/api/PublicApiManager;->mLocalEventBus:Lde/greenrobot/event/c;

    .line 322
    invoke-virtual {v1, v2}, Ltv/periscope/android/api/ApiRunnable$Builder;->eventBus(Lde/greenrobot/event/c;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/api/PublicApiManager;->mApiService:Ltv/periscope/android/api/ApiService;

    .line 323
    invoke-virtual {v1, v2}, Ltv/periscope/android/api/ApiRunnable$Builder;->service(Ltv/periscope/android/api/ApiService;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/api/PublicApiManager;->mPublicApiService:Ltv/periscope/android/api/PublicApiService;

    .line 324
    invoke-virtual {v1, v2}, Ltv/periscope/android/api/ApiRunnable$Builder;->publicService(Ltv/periscope/android/api/PublicApiService;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/api/PublicApiManager;->mSignerService:Ltv/periscope/android/signer/SignerService;

    .line 325
    invoke-virtual {v1, v2}, Ltv/periscope/android/api/ApiRunnable$Builder;->signer(Ltv/periscope/android/signer/SignerService;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    .line 326
    invoke-virtual {v1, p1}, Ltv/periscope/android/api/ApiRunnable$Builder;->actionCode(I)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    .line 327
    invoke-virtual {v1, v0}, Ltv/periscope/android/api/ApiRunnable$Builder;->requestId(Ljava/lang/String;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    .line 328
    invoke-virtual {v1, p2}, Ltv/periscope/android/api/ApiRunnable$Builder;->bundle(Landroid/os/Bundle;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 329
    invoke-virtual {v1, v2}, Ltv/periscope/android/api/ApiRunnable$Builder;->numRetries(I)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 330
    invoke-virtual {v1, v2, v3}, Ltv/periscope/android/api/ApiRunnable$Builder;->backoffInterval(J)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    .line 331
    invoke-virtual {v1}, Ltv/periscope/android/api/ApiRunnable$Builder;->build()Ltv/periscope/android/api/ApiRunnable;

    move-result-object v1

    .line 332
    invoke-virtual {p0, v1}, Ltv/periscope/android/api/PublicApiManager;->execute(Ltv/periscope/android/api/ApiRunnable;)Ljava/lang/String;

    .line 333
    return-object v0
.end method

.method private newApiBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    const-string/jumbo v1, "e_install_id"

    iget-object v2, p0, Ltv/periscope/android/api/PublicApiManager;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Ltv/periscope/android/util/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-object v0
.end method

.method private static newRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x6

    invoke-static {v0}, Ldod;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public activeJuror(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 520
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public associateDigitsAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public block(Ljava/lang/String;Ljava/lang/String;Ltv/periscope/model/chat/Message;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 188
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 417
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public broadcastSearch(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 270
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancelRequest(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 563
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public channelsSearch(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 532
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createBroadcast(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 280
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deactivateAccount()V
    .locals 2

    .prologue
    .line 558
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decreaseBroadcastRank(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 238
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteBroadcast(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 355
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endBroadcast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 350
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endWatching(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 399
    invoke-direct {p0}, Ltv/periscope/android/api/PublicApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 400
    const-string/jumbo v1, "e_session_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string/jumbo v1, "e_logger_name"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string/jumbo v1, "e_num_hearts"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 403
    const-string/jumbo v1, "e_n_comments"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 404
    const/16 v1, 0xcb

    invoke-direct {p0, v1, v0}, Ltv/periscope/android/api/PublicApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract execute(Ltv/periscope/android/api/ApiRunnable;)Ljava/lang/String;
.end method

.method public follow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public followAll(Ljava/util/Collection;)Ljava/lang/String;
    .locals 2
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
    .line 173
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAccessChat(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 430
    invoke-direct {p0}, Ltv/periscope/android/api/PublicApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 431
    const-string/jumbo v1, "e_token"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const/16 v1, 0xd2

    invoke-direct {p0, v1, v0}, Ltv/periscope/android/api/PublicApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessChatNoRetry(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 437
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAccessVideo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 422
    invoke-direct {p0}, Ltv/periscope/android/api/PublicApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 423
    const-string/jumbo v1, "e_token"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string/jumbo v1, "e_broadcast_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const/16 v1, 0xd1

    invoke-direct {p0, v1, v0}, Ltv/periscope/android/api/PublicApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorizeTokenForBackendService(Ltv/periscope/android/api/BackendServiceName;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBlocked()Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBroadcastForTeleport()Ljava/lang/String;
    .locals 2

    .prologue
    .line 492
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBroadcastIdForShareToken(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 452
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBroadcastMainGlobal()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBroadcastRank(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 290
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBroadcastRankParameters()Ljava/lang/String;
    .locals 2

    .prologue
    .line 295
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBroadcastShareUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 243
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBroadcastSummary(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 447
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBroadcastTrailer(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 553
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBroadcastViewers(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    const-string/jumbo v0, ""

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
    .line 308
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ltv/periscope/android/api/PublicApiManager;->getBroadcasts(Ljava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBroadcasts(Ljava/util/ArrayList;Z)Ljava/lang/String;
    .locals 2
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
    .line 313
    invoke-direct {p0}, Ltv/periscope/android/api/PublicApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 314
    const-string/jumbo v1, "extra_ids"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 315
    const-string/jumbo v1, "e_only_public_publish"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 316
    const/16 v1, 0xc8

    invoke-direct {p0, v1, v0}, Ltv/periscope/android/api/PublicApiManager;->executeWithNoRetries(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBroadcastsByPolling(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 2
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
    .line 543
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBroadcastsForChannelId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 526
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChannelInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 538
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFollowers()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFollowersById(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFollowing()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFollowingById(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 178
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGlobalMap(FFFF)Ljava/lang/String;
    .locals 2

    .prologue
    .line 285
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMutualFollows()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMyUserBroadcasts()V
    .locals 2

    .prologue
    .line 462
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSettings()Ljava/lang/String;
    .locals 2

    .prologue
    .line 366
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSignerService()Ltv/periscope/android/signer/SignerService;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Ltv/periscope/android/api/PublicApiManager;->mSignerService:Ltv/periscope/android/signer/SignerService;

    return-object v0
.end method

.method public getSuggestedChannels()Ljava/lang/String;
    .locals 2

    .prologue
    .line 497
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSuggestedPeople()Ljava/lang/String;
    .locals 2

    .prologue
    .line 254
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSuggestedPeopleForOnboarding()Ljava/lang/String;
    .locals 2

    .prologue
    .line 259
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTrendingPlaces()V
    .locals 2

    .prologue
    .line 502
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUserBroadcastsByUserId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 467
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUserBroadcastsByUsername(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 472
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUserById(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUserByUsername(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hello()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public increaseBroadcastRank(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 233
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltv/periscope/android/session/Session$Type;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public loginTwitterToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public logout(Ltv/periscope/android/event/a;Z)V
    .locals 2

    .prologue
    .line 442
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public markBroadcastPersistent(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 547
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public megaBroadcastCall()Ljava/lang/String;
    .locals 2

    .prologue
    .line 275
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public performUploadTest()V
    .locals 2

    .prologue
    .line 457
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pingBroadcast(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 376
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pingWatching(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 389
    invoke-direct {p0}, Ltv/periscope/android/api/PublicApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 390
    const-string/jumbo v1, "e_session_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string/jumbo v1, "e_logger_name"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string/jumbo v1, "e_num_hearts"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 393
    const-string/jumbo v1, "e_n_comments"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 394
    const/16 v1, 0xca

    invoke-direct {p0, v1, v0}, Ltv/periscope/android/api/PublicApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

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
    .line 410
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public publishBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZFFZII)Ljava/lang/String;
    .locals 2
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
    .line 345
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected registerApiEventHandler(Ltv/periscope/android/api/ApiEventHandler;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Ltv/periscope/android/api/PublicApiManager;->mLocalEventBus:Lde/greenrobot/event/c;

    invoke-virtual {v0, p1}, Lde/greenrobot/event/c;->a(Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public replayThumbnailPlaylist(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public reportBroadcast(Ljava/lang/String;Ltv/periscope/model/AbuseType;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reportComment(Ltv/periscope/model/chat/Message;Ljava/lang/String;Ltv/periscope/model/chat/MessageType$ReportType;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 508
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBroadcastRankParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 303
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProfileImage(Ljava/io/File;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 477
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSettings(ZZZZZZ)Ljava/lang/String;
    .locals 2

    .prologue
    .line 361
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shareBroadcast(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 2
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
    .line 223
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startWatching(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 381
    invoke-direct {p0}, Ltv/periscope/android/api/PublicApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 382
    const-string/jumbo v1, "e_token"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string/jumbo v1, "e_autoplay"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 384
    const/16 v1, 0xd3

    invoke-direct {p0, v1, v0}, Ltv/periscope/android/api/PublicApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public supportedLanguages()Ljava/lang/String;
    .locals 2

    .prologue
    .line 371
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unban()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unblock(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unfollow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unmute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateProfileDescription(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 487
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateProfileDisplayName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 482
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public userSearch(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 264
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public validateUsername(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifyUsername(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public vote(Ljava/lang/String;Ltv/periscope/model/chat/MessageType$VoteType;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 514
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
