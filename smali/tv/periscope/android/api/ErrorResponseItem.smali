.class public Ltv/periscope/android/api/ErrorResponseItem;
.super Ltv/periscope/android/api/PsResponse;
.source "Twttr"


# instance fields
.field public code:I
    .annotation runtime Lnu;
        a = "code"
    .end annotation
.end field

.field public message:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "message"
    .end annotation
.end field

.field public reason:I
    .annotation runtime Lnu;
        a = "reason"
    .end annotation
.end field

.field public rectifyUrl:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "rectify_url"
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
