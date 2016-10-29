.class public Lcom/twitter/android/TemporaryAppPasswordActivity;
.super Lcom/twitter/app/common/base/TwitterFragmentActivity;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->a(Z)V

    .line 15
    return-object p2
.end method

.method public b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V
    .locals 5

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/twitter/android/TemporaryAppPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "account_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 22
    const v0, 0x7f0a08c1

    invoke-virtual {p0, v0}, Lcom/twitter/android/TemporaryAppPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TemporaryAppPasswordActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 24
    if-nez p1, :cond_0

    .line 25
    new-instance v1, Lcom/twitter/android/TemporaryAppPasswordFragment;

    invoke-direct {v1}, Lcom/twitter/android/TemporaryAppPasswordFragment;-><init>()V

    .line 26
    invoke-virtual {p0}, Lcom/twitter/android/TemporaryAppPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/app/common/list/y;->a(Landroid/content/Intent;)Lcom/twitter/app/common/list/y;

    move-result-object v0

    const/4 v4, 0x0

    .line 27
    invoke-virtual {v0, v4}, Lcom/twitter/app/common/list/y;->h(Z)Lcom/twitter/app/common/list/x;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    const-string/jumbo v4, "account_id"

    .line 28
    invoke-virtual {v0, v4, v2, v3}, Lcom/twitter/app/common/list/y;->a(Ljava/lang/String;J)Lcom/twitter/app/common/base/g;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    .line 30
    invoke-virtual {v0}, Lcom/twitter/app/common/list/y;->b()Lcom/twitter/app/common/list/w;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/android/TemporaryAppPasswordFragment;->a(Lcom/twitter/app/common/base/f;)V

    .line 32
    invoke-virtual {p0}, Lcom/twitter/android/TemporaryAppPasswordActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x7f130143

    .line 34
    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 37
    :cond_0
    return-void
.end method
