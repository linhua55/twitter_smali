.class public Lcom/twitter/android/ActivityDetailActivity;
.super Lcom/twitter/app/common/base/TwitterFragmentActivity;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V
    .locals 3

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 21
    const-string/jumbo v1, "title_res_id"

    const v2, 0x7f0a003e

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/twitter/android/ActivityDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/twitter/android/ActivityDetailActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 23
    if-nez p1, :cond_0

    .line 24
    new-instance v1, Lcom/twitter/android/ActivityDetailFragment;

    invoke-direct {v1}, Lcom/twitter/android/ActivityDetailFragment;-><init>()V

    .line 26
    invoke-static {v0}, Lcom/twitter/app/common/list/y;->a(Landroid/content/Intent;)Lcom/twitter/app/common/list/y;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/twitter/app/common/list/y;->h(Z)Lcom/twitter/app/common/list/x;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    invoke-virtual {v0}, Lcom/twitter/app/common/list/y;->b()Lcom/twitter/app/common/list/w;

    move-result-object v0

    .line 25
    invoke-virtual {v1, v0}, Lcom/twitter/android/ActivityDetailFragment;->a(Lcom/twitter/app/common/base/f;)V

    .line 28
    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x7f130143

    .line 30
    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 33
    :cond_0
    return-void
.end method
