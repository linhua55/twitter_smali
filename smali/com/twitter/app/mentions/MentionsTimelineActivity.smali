.class public Lcom/twitter/app/mentions/MentionsTimelineActivity;
.super Lcom/twitter/android/NotificationsBaseTimelineActivity;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/twitter/android/NotificationsBaseTimelineActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;Lcom/twitter/app/common/base/y;)Lcom/twitter/android/ic;
    .locals 3

    .prologue
    .line 19
    new-instance v1, Lcom/twitter/app/mentions/b;

    .line 20
    invoke-virtual {p0}, Lcom/twitter/app/mentions/MentionsTimelineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/app/mentions/MentionsTimelineActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/twitter/app/mentions/MentionsTimelineActivity;->a(Landroid/content/Context;Lcom/twitter/library/client/bk;)Z

    move-result v0

    invoke-direct {v1, p0, v0}, Lcom/twitter/app/mentions/b;-><init>(Landroid/content/Context;Z)V

    .line 21
    new-instance v0, Lcom/twitter/android/kh;

    .line 22
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/twitter/android/kh;-><init>(Landroid/os/Bundle;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/twitter/android/kh;->h(Z)Lcom/twitter/app/common/list/x;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/kh;

    .line 21
    invoke-virtual {v1, v0}, Lcom/twitter/app/mentions/b;->a(Lcom/twitter/android/kh;)Lcom/twitter/app/common/list/TwitterListFragment;

    move-result-object v0

    .line 23
    new-instance v1, Lcom/twitter/android/ic;

    const-string/jumbo v2, "connect"

    invoke-direct {v1, v0, v2}, Lcom/twitter/android/ic;-><init>(Lcom/twitter/app/common/list/TwitterListFragment;Ljava/lang/String;)V

    return-object v1
.end method

.method public a(Landroid/os/Bundle;Lcom/twitter/library/client/d;)V
    .locals 2

    .prologue
    .line 13
    invoke-super {p0, p1, p2}, Lcom/twitter/android/NotificationsBaseTimelineActivity;->a(Landroid/os/Bundle;Lcom/twitter/library/client/d;)V

    .line 14
    invoke-virtual {p0}, Lcom/twitter/app/mentions/MentionsTimelineActivity;->M()Lcom/twitter/android/client/SearchSuggestionController;

    move-result-object v0

    const-string/jumbo v1, "connect"

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/SearchSuggestionController;->a(Ljava/lang/String;)Lcom/twitter/android/client/SearchSuggestionController;

    .line 15
    return-void
.end method
