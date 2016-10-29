.class public Ltv/periscope/android/api/SetBroadcastRankParametersRequest;
.super Ltv/periscope/android/api/PsRequest;
.source "Twttr"


# instance fields
.field public cortexScoreCoefficient:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "cortex_score_coefficient"
    .end annotation
.end field

.field public decayCoefficient:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "decay_coefficient"
    .end annotation
.end field

.field public decayHalfLife:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "decay_half_life"
    .end annotation
.end field

.field public hasLocationCoefficient:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "has_location_coefficient"
    .end annotation
.end field

.field public reportRatioCoefficient:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "report_ratio_coefficient"
    .end annotation
.end field

.field public sharesCoefficient:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "shares_coefficient"
    .end annotation
.end field

.field public stickinessCoefficient:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "stickiness_coefficient"
    .end annotation
.end field

.field public verifiedCoefficient:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "verified_coefficient"
    .end annotation
.end field

.field public viewersCountCoefficient:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "viewers_coefficient"
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
