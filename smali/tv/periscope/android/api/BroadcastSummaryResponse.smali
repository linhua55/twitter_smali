.class Ltv/periscope/android/api/BroadcastSummaryResponse;
.super Ltv/periscope/android/api/PsResponse;
.source "Twttr"


# instance fields
.field public broadcast:Ltv/periscope/android/api/PsBroadcast;
    .annotation runtime Lnu;
        a = "broadcast"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ltv/periscope/android/api/PsResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Ltv/periscope/model/q;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Ltv/periscope/android/api/BroadcastSummaryResponse;->broadcast:Ltv/periscope/android/api/PsBroadcast;

    invoke-virtual {v0}, Ltv/periscope/android/api/PsBroadcast;->create()Ltv/periscope/model/o;

    move-result-object v0

    invoke-static {v0}, Ltv/periscope/model/q;->a(Ltv/periscope/model/o;)Ltv/periscope/model/q;

    move-result-object v0

    return-object v0
.end method
