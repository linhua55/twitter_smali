.class public Ltv/periscope/android/api/CreateBroadcastRequest;
.super Ltv/periscope/android/api/PsRequest;
.source "Twttr"


# instance fields
.field public hasModeration:Z
    .annotation runtime Lnu;
        a = "has_moderation"
    .end annotation
.end field

.field public height:I
    .annotation runtime Lnu;
        a = "height"
    .end annotation
.end field

.field public lat:D
    .annotation runtime Lnu;
        a = "lat"
    .end annotation
.end field

.field public lng:D
    .annotation runtime Lnu;
        a = "lng"
    .end annotation
.end field

.field public pspVersion:[I
    .annotation runtime Lnu;
        a = "supports_psp_version"
    .end annotation
.end field

.field public region:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "region"
    .end annotation
.end field

.field public width:I
    .annotation runtime Lnu;
        a = "width"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ltv/periscope/android/api/PsRequest;-><init>()V

    .line 29
    return-void
.end method
