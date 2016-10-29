.class public Ltv/periscope/android/api/RankedBroadcastsRequest;
.super Ltv/periscope/android/api/PsRequest;
.source "Twttr"


# instance fields
.field public languages:[Ljava/lang/String;
    .annotation runtime Lnu;
        a = "languages"
    .end annotation
.end field

.field public useML:Z
    .annotation runtime Lnu;
        a = "use_ml"
    .end annotation
.end field

.field public usePersonal:Z
    .annotation runtime Lnu;
        a = "use_personal"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ltv/periscope/android/api/PsRequest;-><init>()V

    .line 9
    return-void
.end method
