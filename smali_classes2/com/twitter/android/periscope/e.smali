.class Lcom/twitter/android/periscope/e;
.super Ltv/periscope/android/api/AuthedApiManager;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/library/client/bd;


# direct methods
.method constructor <init>(Landroid/content/Context;Lde/greenrobot/event/c;Ltv/periscope/android/data/f;Ltv/periscope/android/data/b;Ltv/periscope/android/session/a;Ltv/periscope/android/api/ApiService;Ltv/periscope/android/signer/SignerService;Ltv/periscope/android/api/service/channels/ChannelsService;Ltv/periscope/android/api/service/safety/SafetyService;Landroid/os/Handler;Lcom/twitter/library/client/bd;)V
    .locals 7
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 51
    invoke-direct/range {p0 .. p9}, Ltv/periscope/android/api/AuthedApiManager;-><init>(Landroid/content/Context;Lde/greenrobot/event/c;Ltv/periscope/android/data/f;Ltv/periscope/android/data/b;Ltv/periscope/android/session/a;Ltv/periscope/android/api/ApiService;Ltv/periscope/android/signer/SignerService;Ltv/periscope/android/api/service/channels/ChannelsService;Ltv/periscope/android/api/service/safety/SafetyService;)V

    .line 53
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/twitter/android/periscope/e;->a:Lcom/twitter/library/client/bd;

    .line 55
    new-instance v1, Lcom/twitter/android/periscope/l;

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    move-object v4, p4

    move-object v5, p5

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/twitter/android/periscope/l;-><init>(Landroid/os/Handler;Lcom/twitter/library/client/bd;Ltv/periscope/android/data/b;Ltv/periscope/android/session/a;Lde/greenrobot/event/c;)V

    invoke-virtual {p0, v1}, Lcom/twitter/android/periscope/e;->registerApiEventHandler(Ltv/periscope/android/api/ApiEventHandler;)V

    .line 57
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ltv/periscope/android/library/d;Ltv/periscope/android/api/ApiService;Ltv/periscope/android/signer/SignerService;Ltv/periscope/android/api/service/channels/ChannelsService;Ltv/periscope/android/api/service/safety/SafetyService;)V
    .locals 12

    .prologue
    .line 40
    invoke-interface {p2}, Ltv/periscope/android/library/d;->e()Lde/greenrobot/event/c;

    move-result-object v2

    invoke-interface {p2}, Ltv/periscope/android/library/d;->g()Ltv/periscope/android/data/f;

    move-result-object v3

    invoke-interface {p2}, Ltv/periscope/android/library/d;->h()Ltv/periscope/android/data/b;

    move-result-object v4

    invoke-interface {p2}, Ltv/periscope/android/library/d;->i()Ltv/periscope/android/session/a;

    move-result-object v5

    new-instance v10, Landroid/os/Handler;

    .line 41
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 42
    invoke-static {p1}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v11

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 40
    invoke-direct/range {v0 .. v11}, Lcom/twitter/android/periscope/e;-><init>(Landroid/content/Context;Lde/greenrobot/event/c;Ltv/periscope/android/data/f;Ltv/periscope/android/data/b;Ltv/periscope/android/session/a;Ltv/periscope/android/api/ApiService;Ltv/periscope/android/signer/SignerService;Ltv/periscope/android/api/service/channels/ChannelsService;Ltv/periscope/android/api/service/safety/SafetyService;Landroid/os/Handler;Lcom/twitter/library/client/bd;)V

    .line 43
    return-void
.end method


# virtual methods
.method public activeJuror(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 180
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bind()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public block(Ljava/lang/String;Ljava/lang/String;Ltv/periscope/model/chat/Message;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancelRequest(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public channelsSearch(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public follow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
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
    .line 106
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBroadcastForTeleport()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBroadcastMainGlobal()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBroadcastsForChannelId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChannelInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSuggestedChannels()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSuggestedPeople()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSuggestedPeopleForOnboarding()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTrendingPlaces()V
    .locals 2

    .prologue
    .line 161
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public logout(Ltv/periscope/android/event/a;Z)V
    .locals 2

    .prologue
    .line 136
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public megaBroadcastCall()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected queueAndExecuteRequest(Ltv/periscope/android/api/ApiRunnable;)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/twitter/android/periscope/e;->a:Lcom/twitter/library/client/bd;

    new-instance v1, Lcom/twitter/android/periscope/b;

    invoke-direct {v1, p1}, Lcom/twitter/android/periscope/b;-><init>(Ltv/periscope/android/api/ApiRunnable;)V

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 72
    return-void
.end method

.method public reportComment(Ltv/periscope/model/chat/Message;Ljava/lang/String;Ltv/periscope/model/chat/MessageType$ReportType;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unbind()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public unblock(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unfollow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unmute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateProfileDescription(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 146
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateProfileDisplayName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 141
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public vote(Ljava/lang/String;Ltv/periscope/model/chat/MessageType$VoteType;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
