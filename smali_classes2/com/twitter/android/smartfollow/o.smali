.class public Lcom/twitter/android/smartfollow/o;
.super Lcom/twitter/android/smartfollow/p;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/twitter/android/smartfollow/p;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string/jumbo v0, "presenter_waiting_for_people_discovery"

    return-object v0
.end method

.method protected c(Lcom/twitter/android/smartfollow/SmartFollowFlowData;)Z
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p1}, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->c()Z

    move-result v0

    return v0
.end method

.method protected d()Lcom/twitter/android/twitterflows/d;
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/twitter/android/smartfollow/m;

    invoke-direct {v0}, Lcom/twitter/android/smartfollow/m;-><init>()V

    return-object v0
.end method
