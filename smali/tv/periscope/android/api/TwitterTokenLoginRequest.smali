.class public Ltv/periscope/android/api/TwitterTokenLoginRequest;
.super Ltv/periscope/android/api/PsRequest;
.source "Twttr"


# instance fields
.field public installId:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "install_id"
    .end annotation
.end field

.field public jwt:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "jwt"
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
