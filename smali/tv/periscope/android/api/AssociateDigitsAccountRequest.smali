.class public Ltv/periscope/android/api/AssociateDigitsAccountRequest;
.super Ltv/periscope/android/api/PsRequest;
.source "Twttr"


# instance fields
.field public sessionKey:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "session_key"
    .end annotation
.end field

.field public sessionSecret:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "session_secret"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ltv/periscope/android/api/PsRequest;-><init>()V

    .line 14
    return-void
.end method
