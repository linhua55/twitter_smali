.class public Lcom/twitter/android/dialog/NotifyRetweetDialogFragmentActivity;
.super Lcom/twitter/android/dialog/DialogFragmentActivity;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/nq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/twitter/android/dialog/DialogFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JLcom/twitter/model/core/Tweet;Z)V
    .locals 0

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/twitter/android/dialog/NotifyRetweetDialogFragmentActivity;->finish()V

    .line 33
    return-void
.end method

.method public a(JZZZ)V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 22
    const-string/jumbo v0, "sb_account_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 23
    const-string/jumbo v0, "retweet_service_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 24
    const-string/jumbo v0, "tweet"

    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/twitter/model/core/Tweet;

    const/4 v6, 0x1

    move v5, v1

    move-object v8, p0

    .line 25
    invoke-static/range {v1 .. v8}, Lcom/twitter/android/widget/NotifyRetweetDialogFragment;->a(IJLcom/twitter/model/core/Tweet;ZZLandroid/content/Intent;Landroid/content/Context;)Lcom/twitter/android/widget/NotifyRetweetDialogFragment;

    move-result-object v0

    .line 27
    invoke-virtual {p0}, Lcom/twitter/android/dialog/NotifyRetweetDialogFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/NotifyRetweetDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 28
    return-void
.end method

.method public b(JLcom/twitter/model/core/Tweet;Z)V
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/twitter/android/dialog/NotifyRetweetDialogFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/twitter/android/client/NotificationService;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/twitter/android/dialog/NotifyRetweetDialogFragmentActivity;->finish()V

    .line 44
    return-void
.end method

.method public c(JLcom/twitter/model/core/Tweet;Z)V
    .locals 0

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/twitter/android/dialog/NotifyRetweetDialogFragmentActivity;->finish()V

    .line 49
    return-void
.end method

.method public d(JLcom/twitter/model/core/Tweet;Z)V
    .locals 0

    .prologue
    .line 53
    return-void
.end method
