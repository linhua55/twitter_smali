.class public Ltv/periscope/android/api/BroadcastMetaRequest;
.super Ltv/periscope/android/api/PsRequest;
.source "Twttr"


# instance fields
.field public behaviorStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnu;
        a = "behavior_stats"
    .end annotation
.end field

.field public broadcastId:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "broadcast_id"
    .end annotation
.end field

.field public chatStats:Ltv/periscope/android/api/ChatStats;
    .annotation runtime Lnu;
        a = "chat_stats"
    .end annotation
.end field

.field public stats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnu;
        a = "stats"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ltv/periscope/android/api/PsRequest;-><init>()V

    return-void
.end method
