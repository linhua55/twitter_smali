.class public abstract Ltv/periscope/android/api/AuthedApiManager;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ltv/periscope/android/api/ApiManager;


# instance fields
.field private final mApiService:Ltv/periscope/android/api/ApiService;

.field protected final mBroadcastCache:Ltv/periscope/android/data/b;

.field private final mChannelsService:Ltv/periscope/android/api/service/channels/ChannelsService;

.field protected final mContext:Landroid/content/Context;

.field protected final mEventBus:Lde/greenrobot/event/c;

.field protected final mLocalEventBus:Lde/greenrobot/event/c;

.field private final mSafetyService:Ltv/periscope/android/api/service/safety/SafetyService;

.field private final mSessionCache:Ltv/periscope/android/session/a;

.field private final mSignerService:Ltv/periscope/android/signer/SignerService;

.field private final mUserCache:Ltv/periscope/android/data/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lde/greenrobot/event/c;Ltv/periscope/android/data/f;Ltv/periscope/android/data/b;Ltv/periscope/android/session/a;Ltv/periscope/android/api/ApiService;Ltv/periscope/android/signer/SignerService;Ltv/periscope/android/api/service/channels/ChannelsService;Ltv/periscope/android/api/service/safety/SafetyService;)V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Ltv/periscope/android/api/AuthedApiManager;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Ltv/periscope/android/api/AuthedApiManager;->mEventBus:Lde/greenrobot/event/c;

    .line 52
    iput-object p3, p0, Ltv/periscope/android/api/AuthedApiManager;->mUserCache:Ltv/periscope/android/data/f;

    .line 53
    iput-object p5, p0, Ltv/periscope/android/api/AuthedApiManager;->mSessionCache:Ltv/periscope/android/session/a;

    .line 54
    iput-object p4, p0, Ltv/periscope/android/api/AuthedApiManager;->mBroadcastCache:Ltv/periscope/android/data/b;

    .line 55
    invoke-static {}, Lde/greenrobot/event/c;->b()Lde/greenrobot/event/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/greenrobot/event/g;->a(Z)Lde/greenrobot/event/g;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/event/g;->a()Lde/greenrobot/event/c;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/api/AuthedApiManager;->mLocalEventBus:Lde/greenrobot/event/c;

    .line 56
    iput-object p6, p0, Ltv/periscope/android/api/AuthedApiManager;->mApiService:Ltv/periscope/android/api/ApiService;

    .line 57
    iput-object p7, p0, Ltv/periscope/android/api/AuthedApiManager;->mSignerService:Ltv/periscope/android/signer/SignerService;

    .line 58
    iput-object p8, p0, Ltv/periscope/android/api/AuthedApiManager;->mChannelsService:Ltv/periscope/android/api/service/channels/ChannelsService;

    .line 59
    iput-object p9, p0, Ltv/periscope/android/api/AuthedApiManager;->mSafetyService:Ltv/periscope/android/api/service/safety/SafetyService;

    .line 60
    return-void
.end method

.method private createBundleForGetBroadcast(Ljava/util/ArrayList;ZLtv/periscope/android/event/ApiEvent$Type;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ltv/periscope/android/event/ApiEvent$Type;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 389
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 390
    const-string/jumbo v1, "extra_ids"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 391
    const-string/jumbo v1, "e_only_public_publish"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 392
    const-string/jumbo v1, "e_event_type"

    invoke-virtual {p3}, Ltv/periscope/android/event/ApiEvent$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    return-object v0
.end method


# virtual methods
.method public associateDigitsAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 114
    const-string/jumbo v1, "e_secret_key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string/jumbo v1, "e_secret_token"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/16 v1, 0x51

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public broadcastMeta(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ltv/periscope/android/api/ChatStats;)Ljava/lang/String;
    .locals 3
    .param p4    # Ltv/periscope/android/api/ChatStats;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
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
    .line 522
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->getVersionData()Ljava/util/HashMap;

    move-result-object v0

    .line 523
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 525
    new-instance v0, Ltv/periscope/android/api/BroadcastMetaRequest;

    invoke-direct {v0}, Ltv/periscope/android/api/BroadcastMetaRequest;-><init>()V

    .line 526
    iget-object v1, p0, Ltv/periscope/android/api/AuthedApiManager;->mSessionCache:Ltv/periscope/android/session/a;

    invoke-interface {v1}, Ltv/periscope/android/session/a;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltv/periscope/android/api/BroadcastMetaRequest;->cookie:Ljava/lang/String;

    .line 527
    iput-object p1, v0, Ltv/periscope/android/api/BroadcastMetaRequest;->broadcastId:Ljava/lang/String;

    .line 528
    iput-object p2, v0, Ltv/periscope/android/api/BroadcastMetaRequest;->stats:Ljava/util/HashMap;

    .line 529
    iput-object p3, v0, Ltv/periscope/android/api/BroadcastMetaRequest;->behaviorStats:Ljava/util/HashMap;

    .line 530
    iput-object p4, v0, Ltv/periscope/android/api/BroadcastMetaRequest;->chatStats:Ltv/periscope/android/api/ChatStats;

    .line 532
    const/16 v1, 0x36

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILtv/periscope/android/api/PsRequest;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public broadcastSearch(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 306
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 307
    const-string/jumbo v0, "extra_query"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const/16 v1, 0x45

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;IJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createBroadcast(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 314
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 317
    const-string/jumbo v1, "extra_width"

    const/16 v2, 0x140

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 318
    const-string/jumbo v1, "extra_height"

    const/16 v2, 0x238

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 319
    const-string/jumbo v1, "e_region"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string/jumbo v1, "e_has_moderation"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 321
    const-string/jumbo v1, "persistent"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 322
    const/16 v1, 0x4e

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deactivateAccount()V
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 194
    const/16 v1, 0x4f

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    .line 195
    return-void
.end method

.method public decreaseBroadcastRank(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 273
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 274
    const-string/jumbo v1, "e_broadcast_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string/jumbo v1, "e_decrease_rank"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 276
    const/16 v1, 0x3a

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deleteBroadcast(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 434
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 435
    const-string/jumbo v1, "e_broadcast_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const/16 v1, 0x2b

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public endBroadcast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 421
    iget-object v0, p0, Ltv/periscope/android/api/AuthedApiManager;->mBroadcastCache:Ltv/periscope/android/data/b;

    invoke-interface {v0, p1}, Ltv/periscope/android/data/b;->a(Ljava/lang/String;)Ltv/periscope/model/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Ltv/periscope/android/api/AuthedApiManager;->mBroadcastCache:Ltv/periscope/android/data/b;

    invoke-interface {v0, p1}, Ltv/periscope/android/data/b;->a(Ljava/lang/String;)Ltv/periscope/model/o;

    move-result-object v0

    invoke-virtual {v0, v1}, Ltv/periscope/model/o;->a(Z)V

    .line 423
    iget-object v0, p0, Ltv/periscope/android/api/AuthedApiManager;->mBroadcastCache:Ltv/periscope/android/data/b;

    invoke-interface {v0, p1}, Ltv/periscope/android/data/b;->a(Ljava/lang/String;)Ltv/periscope/model/o;

    move-result-object v0

    invoke-virtual {v0, v1}, Ltv/periscope/model/o;->b(Z)V

    .line 426
    :cond_0
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 427
    const-string/jumbo v1, "e_broadcast_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string/jumbo v1, "e_logger_name"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const/16 v1, 0x1f

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public endWatching(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    .prologue
    .line 485
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 486
    const-string/jumbo v1, "e_session_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string/jumbo v1, "e_logger_name"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string/jumbo v1, "e_num_hearts"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 489
    const-string/jumbo v1, "e_n_comments"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 490
    const/16 v1, 0x1c

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method execute(ILandroid/os/Bundle;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 576
    invoke-static {}, Ltv/periscope/android/util/ac;->a()Ljava/lang/String;

    move-result-object v0

    .line 578
    new-instance v1, Ltv/periscope/android/api/ApiRunnable$Builder;

    invoke-direct {v1}, Ltv/periscope/android/api/ApiRunnable$Builder;-><init>()V

    iget-object v2, p0, Ltv/periscope/android/api/AuthedApiManager;->mLocalEventBus:Lde/greenrobot/event/c;

    .line 579
    invoke-virtual {v1, v2}, Ltv/periscope/android/api/ApiRunnable$Builder;->eventBus(Lde/greenrobot/event/c;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/api/AuthedApiManager;->mApiService:Ltv/periscope/android/api/ApiService;

    .line 580
    invoke-virtual {v1, v2}, Ltv/periscope/android/api/ApiRunnable$Builder;->service(Ltv/periscope/android/api/ApiService;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/api/AuthedApiManager;->mSignerService:Ltv/periscope/android/signer/SignerService;

    .line 581
    invoke-virtual {v1, v2}, Ltv/periscope/android/api/ApiRunnable$Builder;->signer(Ltv/periscope/android/signer/SignerService;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/api/AuthedApiManager;->mChannelsService:Ltv/periscope/android/api/service/channels/ChannelsService;

    .line 582
    invoke-virtual {v1, v2}, Ltv/periscope/android/api/ApiRunnable$Builder;->channelService(Ltv/periscope/android/api/service/channels/ChannelsService;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/api/AuthedApiManager;->mSafetyService:Ltv/periscope/android/api/service/safety/SafetyService;

    .line 583
    invoke-virtual {v1, v2}, Ltv/periscope/android/api/ApiRunnable$Builder;->safetyService(Ltv/periscope/android/api/service/safety/SafetyService;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    .line 584
    invoke-virtual {v1, p1}, Ltv/periscope/android/api/ApiRunnable$Builder;->actionCode(I)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    .line 585
    invoke-virtual {v1, v0}, Ltv/periscope/android/api/ApiRunnable$Builder;->requestId(Ljava/lang/String;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    .line 586
    invoke-virtual {v1, p2}, Ltv/periscope/android/api/ApiRunnable$Builder;->bundle(Landroid/os/Bundle;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    .line 587
    invoke-virtual {v1}, Ltv/periscope/android/api/ApiRunnable$Builder;->build()Ltv/periscope/android/api/ApiRunnable;

    move-result-object v1

    .line 578
    invoke-virtual {p0, v1}, Ltv/periscope/android/api/AuthedApiManager;->queueAndExecuteRequest(Ltv/periscope/android/api/ApiRunnable;)V

    .line 589
    return-object v0
.end method

.method protected execute(ILandroid/os/Bundle;IJ)Ljava/lang/String;
    .locals 4

    .prologue
    .line 536
    invoke-static {}, Ltv/periscope/android/util/ac;->a()Ljava/lang/String;

    move-result-object v0

    .line 538
    new-instance v1, Ltv/periscope/android/api/ApiRunnable$Builder;

    invoke-direct {v1}, Ltv/periscope/android/api/ApiRunnable$Builder;-><init>()V

    iget-object v2, p0, Ltv/periscope/android/api/AuthedApiManager;->mLocalEventBus:Lde/greenrobot/event/c;

    .line 539
    invoke-virtual {v1, v2}, Ltv/periscope/android/api/ApiRunnable$Builder;->eventBus(Lde/greenrobot/event/c;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/api/AuthedApiManager;->mApiService:Ltv/periscope/android/api/ApiService;

    .line 540
    invoke-virtual {v1, v2}, Ltv/periscope/android/api/ApiRunnable$Builder;->service(Ltv/periscope/android/api/ApiService;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/api/AuthedApiManager;->mSignerService:Ltv/periscope/android/signer/SignerService;

    .line 541
    invoke-virtual {v1, v2}, Ltv/periscope/android/api/ApiRunnable$Builder;->signer(Ltv/periscope/android/signer/SignerService;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/api/AuthedApiManager;->mChannelsService:Ltv/periscope/android/api/service/channels/ChannelsService;

    .line 542
    invoke-virtual {v1, v2}, Ltv/periscope/android/api/ApiRunnable$Builder;->channelService(Ltv/periscope/android/api/service/channels/ChannelsService;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/api/AuthedApiManager;->mSafetyService:Ltv/periscope/android/api/service/safety/SafetyService;

    .line 543
    invoke-virtual {v1, v2}, Ltv/periscope/android/api/ApiRunnable$Builder;->safetyService(Ltv/periscope/android/api/service/safety/SafetyService;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    .line 544
    invoke-virtual {v1, p1}, Ltv/periscope/android/api/ApiRunnable$Builder;->actionCode(I)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    .line 545
    invoke-virtual {v1, v0}, Ltv/periscope/android/api/ApiRunnable$Builder;->requestId(Ljava/lang/String;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    .line 546
    invoke-virtual {v1, p2}, Ltv/periscope/android/api/ApiRunnable$Builder;->bundle(Landroid/os/Bundle;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    .line 547
    invoke-virtual {v1, p3}, Ltv/periscope/android/api/ApiRunnable$Builder;->numRetries(I)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    .line 548
    invoke-virtual {v1, p4, p5}, Ltv/periscope/android/api/ApiRunnable$Builder;->backoffInterval(J)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    .line 549
    invoke-virtual {v1}, Ltv/periscope/android/api/ApiRunnable$Builder;->build()Ltv/periscope/android/api/ApiRunnable;

    move-result-object v1

    .line 538
    invoke-virtual {p0, v1}, Ltv/periscope/android/api/AuthedApiManager;->queueAndExecuteRequest(Ltv/periscope/android/api/ApiRunnable;)V

    .line 551
    return-object v0
.end method

.method execute(ILandroid/os/Bundle;IJZ)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 556
    invoke-static {}, Ltv/periscope/android/util/ac;->a()Ljava/lang/String;

    move-result-object v0

    .line 557
    const-string/jumbo v1, "e_background"

    invoke-virtual {p2, v1, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 559
    new-instance v1, Ltv/periscope/android/api/ApiRunnable$Builder;

    invoke-direct {v1}, Ltv/periscope/android/api/ApiRunnable$Builder;-><init>()V

    iget-object v2, p0, Ltv/periscope/android/api/AuthedApiManager;->mLocalEventBus:Lde/greenrobot/event/c;

    .line 560
    invoke-virtual {v1, v2}, Ltv/periscope/android/api/ApiRunnable$Builder;->eventBus(Lde/greenrobot/event/c;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/api/AuthedApiManager;->mApiService:Ltv/periscope/android/api/ApiService;

    .line 561
    invoke-virtual {v1, v2}, Ltv/periscope/android/api/ApiRunnable$Builder;->service(Ltv/periscope/android/api/ApiService;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/api/AuthedApiManager;->mSignerService:Ltv/periscope/android/signer/SignerService;

    .line 562
    invoke-virtual {v1, v2}, Ltv/periscope/android/api/ApiRunnable$Builder;->signer(Ltv/periscope/android/signer/SignerService;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/api/AuthedApiManager;->mSafetyService:Ltv/periscope/android/api/service/safety/SafetyService;

    .line 563
    invoke-virtual {v1, v2}, Ltv/periscope/android/api/ApiRunnable$Builder;->safetyService(Ltv/periscope/android/api/service/safety/SafetyService;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    .line 564
    invoke-virtual {v1, p1}, Ltv/periscope/android/api/ApiRunnable$Builder;->actionCode(I)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    .line 565
    invoke-virtual {v1, v0}, Ltv/periscope/android/api/ApiRunnable$Builder;->requestId(Ljava/lang/String;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    .line 566
    invoke-virtual {v1, p2}, Ltv/periscope/android/api/ApiRunnable$Builder;->bundle(Landroid/os/Bundle;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    .line 567
    invoke-virtual {v1, p3}, Ltv/periscope/android/api/ApiRunnable$Builder;->numRetries(I)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    .line 568
    invoke-virtual {v1, p4, p5}, Ltv/periscope/android/api/ApiRunnable$Builder;->backoffInterval(J)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    .line 569
    invoke-virtual {v1}, Ltv/periscope/android/api/ApiRunnable$Builder;->build()Ltv/periscope/android/api/ApiRunnable;

    move-result-object v1

    .line 559
    invoke-virtual {p0, v1}, Ltv/periscope/android/api/AuthedApiManager;->queueAndExecuteRequest(Ltv/periscope/android/api/ApiRunnable;)V

    .line 571
    return-object v0
.end method

.method execute(ILandroid/os/Bundle;Z)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 594
    invoke-static {}, Ltv/periscope/android/util/ac;->a()Ljava/lang/String;

    move-result-object v0

    .line 595
    const-string/jumbo v1, "e_background"

    invoke-virtual {p2, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 597
    new-instance v1, Ltv/periscope/android/api/ApiRunnable$Builder;

    invoke-direct {v1}, Ltv/periscope/android/api/ApiRunnable$Builder;-><init>()V

    iget-object v2, p0, Ltv/periscope/android/api/AuthedApiManager;->mLocalEventBus:Lde/greenrobot/event/c;

    .line 598
    invoke-virtual {v1, v2}, Ltv/periscope/android/api/ApiRunnable$Builder;->eventBus(Lde/greenrobot/event/c;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/api/AuthedApiManager;->mApiService:Ltv/periscope/android/api/ApiService;

    .line 599
    invoke-virtual {v1, v2}, Ltv/periscope/android/api/ApiRunnable$Builder;->service(Ltv/periscope/android/api/ApiService;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/api/AuthedApiManager;->mSignerService:Ltv/periscope/android/signer/SignerService;

    .line 600
    invoke-virtual {v1, v2}, Ltv/periscope/android/api/ApiRunnable$Builder;->signer(Ltv/periscope/android/signer/SignerService;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/api/AuthedApiManager;->mSafetyService:Ltv/periscope/android/api/service/safety/SafetyService;

    .line 601
    invoke-virtual {v1, v2}, Ltv/periscope/android/api/ApiRunnable$Builder;->safetyService(Ltv/periscope/android/api/service/safety/SafetyService;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    .line 602
    invoke-virtual {v1, p1}, Ltv/periscope/android/api/ApiRunnable$Builder;->actionCode(I)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    .line 603
    invoke-virtual {v1, v0}, Ltv/periscope/android/api/ApiRunnable$Builder;->requestId(Ljava/lang/String;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    .line 604
    invoke-virtual {v1, p2}, Ltv/periscope/android/api/ApiRunnable$Builder;->bundle(Landroid/os/Bundle;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    .line 605
    invoke-virtual {v1}, Ltv/periscope/android/api/ApiRunnable$Builder;->build()Ltv/periscope/android/api/ApiRunnable;

    move-result-object v1

    .line 597
    invoke-virtual {p0, v1}, Ltv/periscope/android/api/AuthedApiManager;->queueAndExecuteRequest(Ltv/periscope/android/api/ApiRunnable;)V

    .line 607
    return-object v0
.end method

.method protected execute(ILtv/periscope/android/api/PsRequest;Z)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 632
    invoke-static {}, Ltv/periscope/android/util/ac;->a()Ljava/lang/String;

    move-result-object v0

    .line 633
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 634
    const-string/jumbo v2, "e_background"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 636
    new-instance v2, Ltv/periscope/android/api/ApiRunnable$Builder;

    invoke-direct {v2}, Ltv/periscope/android/api/ApiRunnable$Builder;-><init>()V

    iget-object v3, p0, Ltv/periscope/android/api/AuthedApiManager;->mLocalEventBus:Lde/greenrobot/event/c;

    .line 637
    invoke-virtual {v2, v3}, Ltv/periscope/android/api/ApiRunnable$Builder;->eventBus(Lde/greenrobot/event/c;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v2

    iget-object v3, p0, Ltv/periscope/android/api/AuthedApiManager;->mApiService:Ltv/periscope/android/api/ApiService;

    .line 638
    invoke-virtual {v2, v3}, Ltv/periscope/android/api/ApiRunnable$Builder;->service(Ltv/periscope/android/api/ApiService;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v2

    iget-object v3, p0, Ltv/periscope/android/api/AuthedApiManager;->mSignerService:Ltv/periscope/android/signer/SignerService;

    .line 639
    invoke-virtual {v2, v3}, Ltv/periscope/android/api/ApiRunnable$Builder;->signer(Ltv/periscope/android/signer/SignerService;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v2

    iget-object v3, p0, Ltv/periscope/android/api/AuthedApiManager;->mSafetyService:Ltv/periscope/android/api/service/safety/SafetyService;

    .line 640
    invoke-virtual {v2, v3}, Ltv/periscope/android/api/ApiRunnable$Builder;->safetyService(Ltv/periscope/android/api/service/safety/SafetyService;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v2

    .line 641
    invoke-virtual {v2, v1}, Ltv/periscope/android/api/ApiRunnable$Builder;->bundle(Landroid/os/Bundle;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    .line 642
    invoke-virtual {v1, p1}, Ltv/periscope/android/api/ApiRunnable$Builder;->actionCode(I)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    .line 643
    invoke-virtual {v1, v0}, Ltv/periscope/android/api/ApiRunnable$Builder;->requestId(Ljava/lang/String;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    .line 644
    invoke-virtual {v1, p2}, Ltv/periscope/android/api/ApiRunnable$Builder;->request(Ltv/periscope/android/api/ApiRequest;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    .line 645
    invoke-virtual {v1}, Ltv/periscope/android/api/ApiRunnable$Builder;->build()Ltv/periscope/android/api/ApiRunnable;

    move-result-object v1

    .line 636
    invoke-virtual {p0, v1}, Ltv/periscope/android/api/AuthedApiManager;->queueAndExecuteRequest(Ltv/periscope/android/api/ApiRunnable;)V

    .line 647
    return-object v0
.end method

.method protected execute(Lde/greenrobot/event/c;ILandroid/os/Bundle;IJ)Ljava/lang/String;
    .locals 3

    .prologue
    .line 612
    invoke-static {}, Ltv/periscope/android/util/ac;->a()Ljava/lang/String;

    move-result-object v0

    .line 614
    new-instance v1, Ltv/periscope/android/api/ApiRunnable$Builder;

    invoke-direct {v1}, Ltv/periscope/android/api/ApiRunnable$Builder;-><init>()V

    .line 615
    invoke-virtual {v1, p1}, Ltv/periscope/android/api/ApiRunnable$Builder;->eventBus(Lde/greenrobot/event/c;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/api/AuthedApiManager;->mApiService:Ltv/periscope/android/api/ApiService;

    .line 616
    invoke-virtual {v1, v2}, Ltv/periscope/android/api/ApiRunnable$Builder;->service(Ltv/periscope/android/api/ApiService;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/api/AuthedApiManager;->mSignerService:Ltv/periscope/android/signer/SignerService;

    .line 617
    invoke-virtual {v1, v2}, Ltv/periscope/android/api/ApiRunnable$Builder;->signer(Ltv/periscope/android/signer/SignerService;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/api/AuthedApiManager;->mChannelsService:Ltv/periscope/android/api/service/channels/ChannelsService;

    .line 618
    invoke-virtual {v1, v2}, Ltv/periscope/android/api/ApiRunnable$Builder;->channelService(Ltv/periscope/android/api/service/channels/ChannelsService;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/api/AuthedApiManager;->mSafetyService:Ltv/periscope/android/api/service/safety/SafetyService;

    .line 619
    invoke-virtual {v1, v2}, Ltv/periscope/android/api/ApiRunnable$Builder;->safetyService(Ltv/periscope/android/api/service/safety/SafetyService;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    .line 620
    invoke-virtual {v1, p2}, Ltv/periscope/android/api/ApiRunnable$Builder;->actionCode(I)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    .line 621
    invoke-virtual {v1, v0}, Ltv/periscope/android/api/ApiRunnable$Builder;->requestId(Ljava/lang/String;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    .line 622
    invoke-virtual {v1, p3}, Ltv/periscope/android/api/ApiRunnable$Builder;->bundle(Landroid/os/Bundle;)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    .line 623
    invoke-virtual {v1, p4}, Ltv/periscope/android/api/ApiRunnable$Builder;->numRetries(I)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    .line 624
    invoke-virtual {v1, p5, p6}, Ltv/periscope/android/api/ApiRunnable$Builder;->backoffInterval(J)Ltv/periscope/android/api/ApiRunnable$Builder;

    move-result-object v1

    .line 625
    invoke-virtual {v1}, Ltv/periscope/android/api/ApiRunnable$Builder;->build()Ltv/periscope/android/api/ApiRunnable;

    move-result-object v1

    .line 614
    invoke-virtual {p0, v1}, Ltv/periscope/android/api/AuthedApiManager;->queueAndExecuteRequest(Ltv/periscope/android/api/ApiRunnable;)V

    .line 627
    return-object v0
.end method

.method public getAccessChat(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 227
    const-string/jumbo v1, "e_token"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const/16 v1, 0x42

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessChatNoRetry(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 233
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 234
    const-string/jumbo v0, "e_token"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const/16 v1, 0x42

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;IJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessVideo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 218
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 219
    const-string/jumbo v1, "e_token"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string/jumbo v1, "e_broadcast_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/16 v1, 0x41

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorizeTokenForBackendService(Ltv/periscope/android/api/BackendServiceName;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 96
    const-string/jumbo v1, "e_service_name"

    invoke-virtual {p1}, Ltv/periscope/android/api/BackendServiceName;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string/jumbo v1, "e_background"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 98
    const/16 v1, 0x47

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlocked()Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    const/16 v0, 0x25

    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBroadcastIdForShareToken(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 661
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 662
    const-string/jumbo v1, "e_token"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    const/16 v1, 0x27

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;Z)Ljava/lang/String;

    .line 664
    return-void
.end method

.method public getBroadcastRank(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 338
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 339
    const-string/jumbo v1, "e_broadcast_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const/16 v1, 0x33

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBroadcastRankParameters()Ljava/lang/String;
    .locals 2

    .prologue
    .line 345
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 346
    const/16 v1, 0x31

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBroadcastShareUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 281
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 282
    const-string/jumbo v1, "e_broadcast_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const/16 v1, 0x21

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBroadcastSummary(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 654
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 655
    const-string/jumbo v1, "e_broadcast_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const/16 v1, 0x22

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    .line 657
    return-void
.end method

.method public getBroadcastTrailer(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 726
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 727
    const-string/jumbo v0, "e_broadcast_id"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const/16 v1, 0x52

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;IJZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBroadcastViewers(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 288
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 289
    const-string/jumbo v1, "e_user_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string/jumbo v1, "e_broadcast_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const/16 v1, 0x14

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

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
    .line 376
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ltv/periscope/android/api/AuthedApiManager;->getBroadcasts(Ljava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBroadcasts(Ljava/util/ArrayList;Z)Ljava/lang/String;
    .locals 7
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
    .line 381
    sget-object v0, Ltv/periscope/android/event/ApiEvent$Type;->y:Ltv/periscope/android/event/ApiEvent$Type;

    invoke-direct {p0, p1, p2, v0}, Ltv/periscope/android/api/AuthedApiManager;->createBundleForGetBroadcast(Ljava/util/ArrayList;ZLtv/periscope/android/event/ApiEvent$Type;)Landroid/os/Bundle;

    move-result-object v2

    .line 382
    const/16 v1, 0x13

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;IJZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBroadcastsByPolling(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 7
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
    const/4 v3, 0x0

    .line 369
    sget-object v0, Ltv/periscope/android/event/ApiEvent$Type;->z:Ltv/periscope/android/event/ApiEvent$Type;

    invoke-direct {p0, p1, v3, v0}, Ltv/periscope/android/api/AuthedApiManager;->createBundleForGetBroadcast(Ljava/util/ArrayList;ZLtv/periscope/android/event/ApiEvent$Type;)Landroid/os/Bundle;

    move-result-object v2

    .line 370
    const/16 v1, 0x13

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;IJZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventBus()Lde/greenrobot/event/c;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Ltv/periscope/android/api/AuthedApiManager;->mEventBus:Lde/greenrobot/event/c;

    return-object v0
.end method

.method public getFollowers()Ljava/lang/String;
    .locals 3

    .prologue
    .line 168
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 169
    const-string/jumbo v1, "e_my_user_id"

    iget-object v2, p0, Ltv/periscope/android/api/AuthedApiManager;->mUserCache:Ltv/periscope/android/data/f;

    invoke-interface {v2}, Ltv/periscope/android/data/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFollowersById(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 207
    const-string/jumbo v1, "e_user_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFollowing()Ljava/lang/String;
    .locals 3

    .prologue
    .line 175
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 176
    const-string/jumbo v1, "e_my_user_id"

    iget-object v2, p0, Ltv/periscope/android/api/AuthedApiManager;->mUserCache:Ltv/periscope/android/data/f;

    invoke-interface {v2}, Ltv/periscope/android/data/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFollowingById(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 199
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 200
    const-string/jumbo v1, "e_user_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const/16 v1, 0xb

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalMap(FFFF)Ljava/lang/String;
    .locals 6

    .prologue
    .line 327
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 328
    const-string/jumbo v0, "e_point_1_lat"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 329
    const-string/jumbo v0, "e_point_1_lng"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 330
    const-string/jumbo v0, "e_point_2_lat"

    invoke-virtual {v2, v0, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 331
    const-string/jumbo v0, "e_point_2_lng"

    invoke-virtual {v2, v0, p4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 332
    const/16 v1, 0x34

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;IJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMutualFollows()Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    const/16 v0, 0x3c

    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMyUserBroadcasts()V
    .locals 3

    .prologue
    .line 676
    new-instance v0, Ltv/periscope/android/api/UserBroadcastsRequest;

    invoke-direct {v0}, Ltv/periscope/android/api/UserBroadcastsRequest;-><init>()V

    .line 677
    iget-object v1, p0, Ltv/periscope/android/api/AuthedApiManager;->mSessionCache:Ltv/periscope/android/session/a;

    invoke-interface {v1}, Ltv/periscope/android/session/a;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltv/periscope/android/api/UserBroadcastsRequest;->cookie:Ljava/lang/String;

    .line 678
    iget-object v1, p0, Ltv/periscope/android/api/AuthedApiManager;->mUserCache:Ltv/periscope/android/data/f;

    invoke-interface {v1}, Ltv/periscope/android/data/f;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltv/periscope/android/api/UserBroadcastsRequest;->userId:Ljava/lang/String;

    .line 679
    const/4 v1, 0x1

    iput-boolean v1, v0, Ltv/periscope/android/api/UserBroadcastsRequest;->all:Z

    .line 680
    const/16 v1, 0x2c

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILtv/periscope/android/api/PsRequest;Z)Ljava/lang/String;

    .line 681
    return-void
.end method

.method public getSettings()Ljava/lang/String;
    .locals 2

    .prologue
    .line 454
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 455
    const/16 v1, 0x1e

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 3

    .prologue
    .line 147
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 148
    const-string/jumbo v1, "e_my_user_id"

    iget-object v2, p0, Ltv/periscope/android/api/AuthedApiManager;->mUserCache:Ltv/periscope/android/data/f;

    invoke-interface {v2}, Ltv/periscope/android/data/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserBroadcastsByUserId(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 685
    new-instance v0, Ltv/periscope/android/api/UserBroadcastsRequest;

    invoke-direct {v0}, Ltv/periscope/android/api/UserBroadcastsRequest;-><init>()V

    .line 686
    iget-object v1, p0, Ltv/periscope/android/api/AuthedApiManager;->mSessionCache:Ltv/periscope/android/session/a;

    invoke-interface {v1}, Ltv/periscope/android/session/a;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltv/periscope/android/api/UserBroadcastsRequest;->cookie:Ljava/lang/String;

    .line 687
    iput-object p1, v0, Ltv/periscope/android/api/UserBroadcastsRequest;->userId:Ljava/lang/String;

    .line 688
    const/16 v1, 0x2c

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILtv/periscope/android/api/PsRequest;Z)Ljava/lang/String;

    .line 689
    return-void
.end method

.method public getUserBroadcastsByUsername(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 693
    new-instance v0, Ltv/periscope/android/api/UserBroadcastsRequest;

    invoke-direct {v0}, Ltv/periscope/android/api/UserBroadcastsRequest;-><init>()V

    .line 694
    iget-object v1, p0, Ltv/periscope/android/api/AuthedApiManager;->mSessionCache:Ltv/periscope/android/session/a;

    invoke-interface {v1}, Ltv/periscope/android/session/a;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltv/periscope/android/api/UserBroadcastsRequest;->cookie:Ljava/lang/String;

    .line 695
    iput-object p1, v0, Ltv/periscope/android/api/UserBroadcastsRequest;->username:Ljava/lang/String;

    .line 696
    const/16 v1, 0x2c

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILtv/periscope/android/api/PsRequest;Z)Ljava/lang/String;

    .line 697
    return-void
.end method

.method public getUserById(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 155
    const-string/jumbo v1, "e_user_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserByUsername(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 162
    const-string/jumbo v1, "e_username"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const/16 v1, 0x3d

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getVersionData()Ljava/util/HashMap;
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 495
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 496
    const-string/jumbo v1, "platform"

    const-string/jumbo v2, "Android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    const-string/jumbo v1, "platform_version"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    const-string/jumbo v1, "app_version"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ltv/periscope/android/api/AuthedApiManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Ltv/periscope/android/util/ac;->a(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const-string/jumbo v1, "device"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    return-object v0
.end method

.method public hello()Ljava/lang/String;
    .locals 3

    .prologue
    .line 131
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 132
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 134
    const-string/jumbo v2, "e_locale"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 135
    const/16 v0, 0x3b

    invoke-virtual {p0, v0, v1}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public increaseBroadcastRank(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 265
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 266
    const-string/jumbo v1, "e_broadcast_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string/jumbo v1, "e_increase_rank"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 268
    const/16 v1, 0x3a

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltv/periscope/android/session/Session$Type;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    const-string/jumbo v1, "e_secret_key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string/jumbo v1, "e_secret_token"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string/jumbo v1, "e_username"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string/jumbo v1, "e_user_id"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string/jumbo v1, "e_phone_number"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string/jumbo v1, "e_install_id"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string/jumbo v1, "e_session_type"

    invoke-virtual {p7}, Ltv/periscope/android/session/Session$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loginTwitterToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    const-string/jumbo v1, "e_token"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string/jumbo v1, "e_install_id"

    iget-object v2, p0, Ltv/periscope/android/api/AuthedApiManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Ltv/periscope/android/util/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/16 v1, 0x54

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public markBroadcastPersistent(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 710
    iget-object v0, p0, Ltv/periscope/android/api/AuthedApiManager;->mBroadcastCache:Ltv/periscope/android/data/b;

    invoke-interface {v0, p1}, Ltv/periscope/android/data/b;->a(Ljava/lang/String;)Ltv/periscope/model/o;

    move-result-object v0

    .line 711
    if-eqz v0, :cond_0

    .line 712
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ltv/periscope/model/o;->a(I)V

    .line 715
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 716
    const-string/jumbo v0, "e_cookie"

    iget-object v1, p0, Ltv/periscope/android/api/AuthedApiManager;->mSessionCache:Ltv/periscope/android/session/a;

    invoke-interface {v1}, Ltv/periscope/android/session/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const-string/jumbo v0, "e_broadcast_id"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const/16 v1, 0x4d

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;IJZ)Ljava/lang/String;

    .line 721
    return-void
.end method

.method newApiBundle()Landroid/os/Bundle;
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 140
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 141
    const-string/jumbo v1, "e_cookie"

    iget-object v2, p0, Ltv/periscope/android/api/AuthedApiManager;->mSessionCache:Ltv/periscope/android/session/a;

    invoke-interface {v2}, Ltv/periscope/android/session/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-object v0
.end method

.method public performUploadTest()V
    .locals 7

    .prologue
    .line 668
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 669
    const-string/jumbo v0, "e_file_dir"

    iget-object v1, p0, Ltv/periscope/android/api/AuthedApiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const/16 v1, 0x28

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;IJZ)Ljava/lang/String;

    .line 672
    return-void
.end method

.method public pingBroadcast(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 466
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 467
    const-string/jumbo v1, "e_broadcast_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string/jumbo v1, "e_logger_name"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string/jumbo v1, "e_bit_rate"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 470
    const/16 v1, 0x20

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pingWatching(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    .prologue
    .line 475
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 476
    const-string/jumbo v1, "e_session_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string/jumbo v1, "e_logger_name"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string/jumbo v1, "e_num_hearts"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 479
    const-string/jumbo v1, "e_n_comments"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 480
    const/16 v1, 0x1b

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public playbackMeta(Ljava/lang/String;Ljava/util/HashMap;Ltv/periscope/android/api/ChatStats;)Ljava/lang/String;
    .locals 3
    .param p3    # Ltv/periscope/android/api/ChatStats;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
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
    .line 506
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->getVersionData()Ljava/util/HashMap;

    move-result-object v0

    .line 507
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 509
    new-instance v0, Ltv/periscope/android/api/PlaybackMetaRequest;

    invoke-direct {v0}, Ltv/periscope/android/api/PlaybackMetaRequest;-><init>()V

    .line 510
    iget-object v1, p0, Ltv/periscope/android/api/AuthedApiManager;->mSessionCache:Ltv/periscope/android/session/a;

    invoke-interface {v1}, Ltv/periscope/android/session/a;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltv/periscope/android/api/PlaybackMetaRequest;->cookie:Ljava/lang/String;

    .line 511
    iput-object p1, v0, Ltv/periscope/android/api/PlaybackMetaRequest;->broadcastId:Ljava/lang/String;

    .line 512
    iput-object p2, v0, Ltv/periscope/android/api/PlaybackMetaRequest;->stats:Ljava/util/HashMap;

    .line 513
    iput-object p3, v0, Ltv/periscope/android/api/PlaybackMetaRequest;->chatStats:Ltv/periscope/android/api/ChatStats;

    .line 515
    const/16 v1, 0x35

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILtv/periscope/android/api/PsRequest;Z)Ljava/lang/String;

    move-result-object v0

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
    .line 406
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 407
    const-string/jumbo v1, "e_broadcast_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string/jumbo v1, "e_title"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string/jumbo v1, "e_locked_ids"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 410
    const-string/jumbo v1, "e_has_loc"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 411
    const-string/jumbo v1, "e_lat"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 412
    const-string/jumbo v1, "e_long"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 413
    const-string/jumbo v1, "e_following_only_chat"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 414
    const-string/jumbo v1, "e_bit_rate"

    invoke-virtual {v0, v1, p8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 415
    const-string/jumbo v1, "e_camera_rotation"

    invoke-virtual {v0, v1, p9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 416
    const/16 v1, 0x1a

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract queueAndExecuteRequest(Ltv/periscope/android/api/ApiRunnable;)V
.end method

.method protected registerApiEventHandler(Ltv/periscope/android/api/ApiEventHandler;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Ltv/periscope/android/api/AuthedApiManager;->mLocalEventBus:Lde/greenrobot/event/c;

    invoke-virtual {v0, p1}, Lde/greenrobot/event/c;->a(Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public replayThumbnailPlaylist(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 398
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 399
    const-string/jumbo v1, "e_broadcast_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const/16 v1, 0x3e

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reportBroadcast(Ljava/lang/String;Ltv/periscope/model/AbuseType;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 257
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 258
    const-string/jumbo v1, "e_broadcast_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string/jumbo v1, "e_abuse_type"

    invoke-virtual {p2}, Ltv/periscope/model/AbuseType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const/16 v1, 0x29

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBroadcastRankParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 354
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 355
    const-string/jumbo v1, "e_rank_stickiness"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string/jumbo v1, "e_rank_verified"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string/jumbo v1, "e_rank_viewers"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string/jumbo v1, "e_rank_report_ratio"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string/jumbo v1, "e_rank_has_location"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string/jumbo v1, "e_rank_shares"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string/jumbo v1, "e_rank_cortex_score"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string/jumbo v1, "e_rank_decay"

    invoke-virtual {v0, v1, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string/jumbo v1, "e_rank_decay_half_life"

    invoke-virtual {v0, v1, p9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const/16 v1, 0x32

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setProfileImage(Ljava/io/File;Ljava/io/File;)V
    .locals 3

    .prologue
    .line 701
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 702
    const-string/jumbo v1, "e_file_dir"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const-string/jumbo v1, "e_cache_dir"

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const/16 v1, 0x2d

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    .line 705
    return-void
.end method

.method public setSettings(ZZZZZZ)Ljava/lang/String;
    .locals 2

    .prologue
    .line 442
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 443
    const-string/jumbo v1, "e_user_follow_enabled"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 444
    const-string/jumbo v1, "e_autosave_enabled"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 445
    const-string/jumbo v1, "e_autodelete_enabled"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 446
    const-string/jumbo v1, "e_viewer_moderation_enabled"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 447
    const-string/jumbo v1, "e_broadcast_moderation_enabled"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 448
    const-string/jumbo v1, "e_find_my_profile_enabled"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 449
    const/16 v1, 0x1d

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 249
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 250
    const-string/jumbo v1, "e_broadcast_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string/jumbo v1, "e_user_ids"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 252
    const/16 v1, 0x26

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startWatching(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 241
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 242
    const-string/jumbo v1, "e_token"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string/jumbo v1, "e_autoplay"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 244
    const/16 v1, 0x43

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public supportedLanguages()Ljava/lang/String;
    .locals 2

    .prologue
    .line 460
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 461
    const/16 v1, 0x39

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unban()Ljava/lang/String;
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 188
    const/16 v1, 0x3f

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userSearch(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 297
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 298
    const-string/jumbo v0, "extra_query"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const/16 v1, 0xf

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;IJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validateUsername(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 104
    const-string/jumbo v1, "e_username"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string/jumbo v1, "e_secret_key"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string/jumbo v1, "e_secret_token"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verifyUsername(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    invoke-virtual {p0}, Ltv/periscope/android/api/AuthedApiManager;->newApiBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 122
    const-string/jumbo v1, "e_username"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string/jumbo v1, "e_display_name"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string/jumbo v1, "e_secret_key"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string/jumbo v1, "e_secret_token"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/api/AuthedApiManager;->execute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
