.class public Ltv/periscope/android/api/SuggestedPeopleRequest;
.super Ltv/periscope/android/api/PsRequest;
.source "Twttr"


# instance fields
.field public digitsIds:[Ljava/lang/String;
    .annotation runtime Lnu;
        a = "digits_ids"
    .end annotation
.end field

.field public languages:[Ljava/lang/String;
    .annotation runtime Lnu;
        a = "languages"
    .end annotation
.end field

.field public signup:Z
    .annotation runtime Lnu;
        a = "signup"
    .end annotation
.end field

.field public twitterSessionKey:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "twitter_consumer"
    .end annotation
.end field

.field public twitterSessionSecret:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "twitter_secret"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ltv/periscope/android/api/PsRequest;-><init>()V

    .line 25
    return-void
.end method
