.class public Ltv/periscope/android/api/service/highlights/GetBroadcastTrailerResponse;
.super Ltv/periscope/android/api/PsResponse;
.source "Twttr"


# instance fields
.field public transient highlight:Ldnt;

.field public lifeCycleToken:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "life_cycle_token"
    .end annotation
.end field

.field public trailer:Ltv/periscope/android/api/service/highlights/PsHighlight;
    .annotation runtime Lnu;
        a = "trailer"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ltv/periscope/android/api/PsResponse;-><init>()V

    return-void
.end method
