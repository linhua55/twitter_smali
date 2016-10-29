.class public Lcom/twitter/android/PhotoGridActivity;
.super Lcom/twitter/app/common/base/TwitterFragmentActivity;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p2, v1}, Lcom/twitter/app/common/base/y;->c(Z)V

    .line 19
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->a(I)V

    .line 21
    :cond_0
    invoke-virtual {p2, v1}, Lcom/twitter/app/common/base/y;->a(Z)V

    .line 23
    return-object p2
.end method

.method public b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 28
    invoke-virtual {p0}, Lcom/twitter/android/PhotoGridActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 29
    const-string/jumbo v0, "user_name"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/PhotoGridActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 30
    const v0, 0x7f0a08a4

    invoke-virtual {p0, v0}, Lcom/twitter/android/PhotoGridActivity;->l(I)V

    .line 32
    if-nez p1, :cond_0

    .line 33
    new-instance v3, Lcom/twitter/android/PhotoGridFragment;

    invoke-direct {v3}, Lcom/twitter/android/PhotoGridFragment;-><init>()V

    .line 34
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/twitter/android/PhotoGridFragment;->d(Z)V

    .line 35
    invoke-static {v2}, Lcom/twitter/app/common/list/y;->a(Landroid/content/Intent;)Lcom/twitter/app/common/list/y;

    move-result-object v0

    .line 36
    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/y;->h(Z)Lcom/twitter/app/common/list/x;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    invoke-virtual {v0}, Lcom/twitter/app/common/list/y;->b()Lcom/twitter/app/common/list/w;

    move-result-object v0

    .line 35
    invoke-virtual {v3, v0}, Lcom/twitter/android/PhotoGridFragment;->a(Lcom/twitter/app/common/base/f;)V

    .line 37
    invoke-virtual {p0}, Lcom/twitter/android/PhotoGridActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f130143

    .line 39
    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 42
    :cond_0
    return-void

    .line 34
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
