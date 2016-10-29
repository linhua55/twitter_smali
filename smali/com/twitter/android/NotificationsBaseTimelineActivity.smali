.class public abstract Lcom/twitter/android/NotificationsBaseTimelineActivity;
.super Lcom/twitter/android/ListFragmentActivity;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/twitter/android/ListFragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/library/client/bk;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 53
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 54
    new-instance v1, Lcom/twitter/library/client/l;

    invoke-direct {v1, p0, v2, v3}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    .line 55
    const-string/jumbo v2, "notifications_follow_only"

    invoke-virtual {v1, v2, v0}, Lcom/twitter/library/client/l;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 57
    :cond_0
    return v0
.end method


# virtual methods
.method protected a(Landroid/content/Intent;Lcom/twitter/app/common/base/y;)Lcom/twitter/android/ic;
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 2

    .prologue
    .line 21
    invoke-super {p0, p1, p2}, Lcom/twitter/android/ListFragmentActivity;->a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;

    move-result-object v0

    .line 22
    const v1, 0x7f040255

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/y;->d(I)V

    .line 23
    return-object v0
.end method

.method protected a(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 43
    const v0, 0x7f0a05b4

    invoke-virtual {p0, v0}, Lcom/twitter/android/NotificationsBaseTimelineActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcyg;)I
    .locals 1

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/twitter/android/ListFragmentActivity;->b(Lcyg;)I

    .line 37
    const/4 v0, 0x2

    return v0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 28
    invoke-super {p0}, Lcom/twitter/android/ListFragmentActivity;->onStart()V

    .line 29
    invoke-static {p0}, Lcom/twitter/android/client/y;->a(Landroid/content/Context;)Lcom/twitter/android/client/y;

    move-result-object v0

    .line 30
    invoke-virtual {p0}, Lcom/twitter/android/NotificationsBaseTimelineActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 29
    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/client/y;->c(J)V

    .line 31
    return-void
.end method
