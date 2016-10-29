.class public Lcom/twitter/app/drafts/DraftsActivity;
.super Lcom/twitter/app/common/base/TwitterFragmentActivity;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 17
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p0, p1, v0, v2, v3}, Lcom/twitter/app/drafts/DraftsActivity;->a(Landroid/content/Context;ZLjava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;ZLjava/lang/String;J)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/twitter/app/drafts/i;

    invoke-direct {v0, p2, p3, p4, p1}, Lcom/twitter/app/drafts/i;-><init>(Ljava/lang/String;JZ)V

    .line 24
    invoke-virtual {v0, p0}, Lcom/twitter/app/drafts/i;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 23
    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->a(I)V

    .line 31
    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->a(Z)V

    .line 32
    return-object p2
.end method

.method public b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V
    .locals 3

    .prologue
    .line 37
    const v0, 0x7f0a032f

    invoke-virtual {p0, v0}, Lcom/twitter/app/drafts/DraftsActivity;->setTitle(I)V

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v1, Lcom/twitter/app/drafts/DraftsFragment;

    invoke-direct {v1}, Lcom/twitter/app/drafts/DraftsFragment;-><init>()V

    .line 41
    invoke-virtual {p0}, Lcom/twitter/app/drafts/DraftsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/app/common/list/y;->a(Landroid/content/Intent;)Lcom/twitter/app/common/list/y;

    move-result-object v0

    const/4 v2, 0x0

    .line 42
    invoke-virtual {v0, v2}, Lcom/twitter/app/common/list/y;->h(Z)Lcom/twitter/app/common/list/x;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    invoke-virtual {v0}, Lcom/twitter/app/common/list/y;->b()Lcom/twitter/app/common/list/w;

    move-result-object v0

    .line 41
    invoke-virtual {v1, v0}, Lcom/twitter/app/drafts/DraftsFragment;->a(Lcom/twitter/app/common/base/f;)V

    .line 44
    invoke-virtual {p0}, Lcom/twitter/app/drafts/DraftsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x7f130143

    .line 46
    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 49
    :cond_0
    return-void
.end method
