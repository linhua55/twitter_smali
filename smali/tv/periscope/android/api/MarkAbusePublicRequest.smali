.class public Ltv/periscope/android/api/MarkAbusePublicRequest;
.super Ltv/periscope/android/api/PublicRequest;
.source "Twttr"


# instance fields
.field public abuseType:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "abuse_type"
    .end annotation
.end field

.field public broadcastId:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "broadcast_id"
    .end annotation
.end field

.field public session:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "session"
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
