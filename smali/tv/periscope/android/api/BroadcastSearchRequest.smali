.class public Ltv/periscope/android/api/BroadcastSearchRequest;
.super Ltv/periscope/android/api/PsRequest;
.source "Twttr"


# instance fields
.field public includeReplay:Z
    .annotation runtime Lnu;
        a = "include_replay"
    .end annotation
.end field

.field public query:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "query"
    .end annotation
.end field

.field public search:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "search"
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
