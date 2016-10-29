.class public Ltv/periscope/android/api/BroadcastRankResponse;
.super Ltv/periscope/android/api/PsResponse;
.source "Twttr"


# instance fields
.field public ageMinutes:[Ljava/lang/String;
    .annotation runtime Lnu;
        a = "age_minutes"
    .end annotation
.end field

.field public cortexScore:[Ljava/lang/String;
    .annotation runtime Lnu;
        a = "cortex_score"
    .end annotation
.end field

.field public country:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "country"
    .end annotation
.end field

.field public hasLocation:[Ljava/lang/String;
    .annotation runtime Lnu;
        a = "has_location"
    .end annotation
.end field

.field public isVerified:[Ljava/lang/String;
    .annotation runtime Lnu;
        a = "is_verified"
    .end annotation
.end field

.field public language:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "language"
    .end annotation
.end field

.field public locales:[Ljava/lang/String;
    .annotation runtime Lnu;
        a = "locales"
    .end annotation
.end field

.field public rawStickiness:[Ljava/lang/String;
    .annotation runtime Lnu;
        a = "raw_stickiness"
    .end annotation
.end field

.field public reportRatio:[Ljava/lang/String;
    .annotation runtime Lnu;
        a = "report_ratio"
    .end annotation
.end field

.field public score:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "score"
    .end annotation
.end field

.field public stickiness:[Ljava/lang/String;
    .annotation runtime Lnu;
        a = "stickiness"
    .end annotation
.end field

.field public viewersCount:[Ljava/lang/String;
    .annotation runtime Lnu;
        a = "viewers_count"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ltv/periscope/android/api/PsResponse;-><init>()V

    return-void
.end method
