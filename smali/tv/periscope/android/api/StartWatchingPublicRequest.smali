.class public Ltv/periscope/android/api/StartWatchingPublicRequest;
.super Ltv/periscope/android/api/PublicRequest;
.source "Twttr"


# instance fields
.field public autoplay:Z
    .annotation runtime Lnu;
        a = "auto_play"
    .end annotation
.end field

.field public lifeCycleToken:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "life_cycle_token"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ltv/periscope/android/api/PublicRequest;-><init>()V

    return-void
.end method
