.class public Ltv/periscope/android/api/GetBroadcastViewersResponse;
.super Ltv/periscope/android/api/PsResponse;
.source "Twttr"


# instance fields
.field public transient broadcastId:Ljava/lang/String;

.field public transient broadcasterId:Ljava/lang/String;

.field public live:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltv/periscope/android/api/PsUser;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnu;
        a = "live"
    .end annotation
.end field

.field public liveWatchedTime:I
    .annotation runtime Lnu;
        a = "live_watched_time"
    .end annotation
.end field

.field public liveWatchedTimePerUser:I
    .annotation runtime Lnu;
        a = "live_watched_time_per_user"
    .end annotation
.end field

.field public numLiveWatched:I
    .annotation runtime Lnu;
        a = "n_live_watched"
    .end annotation
.end field

.field public numReplayWatched:I
    .annotation runtime Lnu;
        a = "n_replay_watched"
    .end annotation
.end field

.field public replay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltv/periscope/android/api/PsUser;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnu;
        a = "replay"
    .end annotation
.end field

.field public replayWatchedTime:I
    .annotation runtime Lnu;
        a = "replay_watched_time"
    .end annotation
.end field

.field public replayWatchedTimePerUser:I
    .annotation runtime Lnu;
        a = "replay_watched_time_per_user"
    .end annotation
.end field

.field public totalWatchedTime:I
    .annotation runtime Lnu;
        a = "total_watched_time"
    .end annotation
.end field

.field public totalWatchedTimePerUser:I
    .annotation runtime Lnu;
        a = "total_watched_time_per_user"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ltv/periscope/android/api/PsResponse;-><init>()V

    return-void
.end method
