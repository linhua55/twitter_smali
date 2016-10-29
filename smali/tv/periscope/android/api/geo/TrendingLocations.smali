.class public Ltv/periscope/android/api/geo/TrendingLocations;
.super Ltv/periscope/android/api/PsResponse;
.source "Twttr"


# instance fields
.field public imageUrl:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "image"
    .end annotation
.end field

.field public metadata:Ltv/periscope/android/api/geo/TrendingLocations$LocationMetaData;
    .annotation runtime Lnu;
        a = "metadata"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ltv/periscope/android/api/PsResponse;-><init>()V

    return-void
.end method
