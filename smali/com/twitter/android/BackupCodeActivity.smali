.class public Lcom/twitter/android/BackupCodeActivity;
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
    .line 15
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->a(Z)V

    .line 16
    return-object p2
.end method

.method public b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 21
    invoke-virtual {p0}, Lcom/twitter/android/BackupCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "bc_account_id"

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 22
    invoke-virtual {p0}, Lcom/twitter/android/BackupCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "show_welcome"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 24
    const v0, 0x7f0a04e8

    invoke-virtual {p0, v0}, Lcom/twitter/android/BackupCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/BackupCodeActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 26
    if-nez p1, :cond_1

    .line 27
    new-instance v4, Lcom/twitter/android/BackupCodeFragment;

    invoke-direct {v4}, Lcom/twitter/android/BackupCodeFragment;-><init>()V

    .line 28
    invoke-virtual {p0}, Lcom/twitter/android/BackupCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/app/common/list/y;->a(Landroid/content/Intent;)Lcom/twitter/app/common/list/y;

    move-result-object v0

    .line 29
    invoke-virtual {v0, v5}, Lcom/twitter/app/common/list/y;->h(Z)Lcom/twitter/app/common/list/x;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    .line 31
    cmp-long v5, v2, v6

    if-lez v5, :cond_0

    .line 32
    const-string/jumbo v5, "show_welcome"

    invoke-virtual {v0, v5, v1}, Lcom/twitter/app/common/list/y;->a(Ljava/lang/String;Z)Lcom/twitter/app/common/base/g;

    move-result-object v1

    check-cast v1, Lcom/twitter/app/common/list/y;

    const-string/jumbo v5, "bc_account_id"

    .line 33
    invoke-virtual {v1, v5, v2, v3}, Lcom/twitter/app/common/list/y;->a(Ljava/lang/String;J)Lcom/twitter/app/common/base/g;

    .line 36
    :cond_0
    invoke-virtual {v0}, Lcom/twitter/app/common/list/y;->b()Lcom/twitter/app/common/list/w;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/twitter/android/BackupCodeFragment;->a(Lcom/twitter/app/common/base/f;)V

    .line 38
    invoke-virtual {p0}, Lcom/twitter/android/BackupCodeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f130143

    .line 40
    invoke-virtual {v0, v1, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 43
    :cond_1
    return-void
.end method
