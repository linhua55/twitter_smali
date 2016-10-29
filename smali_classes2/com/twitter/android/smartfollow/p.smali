.class public Lcom/twitter/android/smartfollow/p;
.super Lcom/twitter/android/twitterflows/j;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/twitter/android/twitterflows/j;-><init>()V

    return-void
.end method

.method public static e()Lcom/twitter/android/smartfollow/p;
    .locals 1

    .prologue
    .line 24
    const-string/jumbo v0, "people_discovery_for_smart_nux_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    new-instance v0, Lcom/twitter/android/smartfollow/o;

    invoke-direct {v0}, Lcom/twitter/android/smartfollow/o;-><init>()V

    .line 27
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/twitter/android/smartfollow/p;

    invoke-direct {v0}, Lcom/twitter/android/smartfollow/p;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 33
    const v0, 0x7f040389

    return v0
.end method

.method public a(Lcom/twitter/android/smartfollow/SmartFollowFlowData;)Lcom/twitter/android/twitterflows/d;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/twitter/android/smartfollow/p;->d(Lcom/twitter/android/smartfollow/SmartFollowFlowData;)Lcom/twitter/android/twitterflows/d;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/twitter/android/smartfollow/SmartFollowFlowData;)Lcom/twitter/android/twitterflows/d;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/twitter/android/smartfollow/p;->d(Lcom/twitter/android/smartfollow/SmartFollowFlowData;)Lcom/twitter/android/twitterflows/d;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "presenter_waiting_for_suggestions"

    return-object v0
.end method

.method protected c(Lcom/twitter/android/smartfollow/SmartFollowFlowData;)Z
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d()Lcom/twitter/android/twitterflows/d;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/twitter/android/smartfollow/n;

    invoke-direct {v0}, Lcom/twitter/android/smartfollow/n;-><init>()V

    return-object v0
.end method

.method protected d(Lcom/twitter/android/smartfollow/SmartFollowFlowData;)Lcom/twitter/android/twitterflows/d;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/twitter/android/smartfollow/p;->c(Lcom/twitter/android/smartfollow/SmartFollowFlowData;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/twitter/android/smartfollow/l;

    invoke-direct {v0}, Lcom/twitter/android/smartfollow/l;-><init>()V

    .line 59
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/p;->d()Lcom/twitter/android/twitterflows/d;

    move-result-object v0

    goto :goto_0
.end method
