.class public Ltv/periscope/android/api/EndBroadcastRequest;
.super Ltv/periscope/android/api/PsRequest;
.source "Twttr"


# instance fields
.field public broadcastId:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "broadcast_id"
    .end annotation
.end field

.field public log:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "log"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ltv/periscope/android/api/PsRequest;-><init>()V

    return-void
.end method
