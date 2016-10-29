.class public Lcom/twitter/android/DMAddParticipantsActivity;
.super Lcom/twitter/app/common/base/TwitterFragmentActivity;
.source "Twttr"


# instance fields
.field private a:Lcom/twitter/android/DMComposeFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->a(Z)V

    .line 29
    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->a(I)V

    .line 30
    return-object p2
.end method

.method public a(Lcyd;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 60
    invoke-interface {p1}, Lcyd;->a()I

    move-result v1

    .line 61
    const v2, 0x7f1307ce

    if-ne v1, v2, :cond_0

    .line 62
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/DMAddParticipantsActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v3, "messages:add_participants:::done"

    aput-object v3, v2, v4

    .line 63
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v1

    .line 62
    invoke-static {v1}, Lbjf;->a(Lbjh;)V

    .line 64
    iget-object v1, p0, Lcom/twitter/android/DMAddParticipantsActivity;->a:Lcom/twitter/android/DMComposeFragment;

    invoke-virtual {v1}, Lcom/twitter/android/DMComposeFragment;->u()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/util/collection/CollectionUtils;->e(Ljava/util/Collection;)[J

    move-result-object v1

    .line 65
    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "user_ids"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/twitter/android/DMAddParticipantsActivity;->setResult(ILandroid/content/Intent;)V

    .line 66
    invoke-virtual {p0}, Lcom/twitter/android/DMAddParticipantsActivity;->finish()V

    .line 73
    :goto_0
    return v0

    .line 68
    :cond_0
    const v2, 0x7f13003d

    if-ne v1, v2, :cond_1

    .line 69
    invoke-virtual {p0, v4}, Lcom/twitter/android/DMAddParticipantsActivity;->setResult(I)V

    .line 70
    invoke-virtual {p0}, Lcom/twitter/android/DMAddParticipantsActivity;->finish()V

    goto :goto_0

    .line 73
    :cond_1
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Lcyd;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Lcyg;)Z
    .locals 1

    .prologue
    .line 53
    const v0, 0x7f14000d

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 54
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Lcyg;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V
    .locals 4

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v0, Lcom/twitter/android/DMComposeFragment;

    invoke-direct {v0}, Lcom/twitter/android/DMComposeFragment;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/DMAddParticipantsActivity;->a:Lcom/twitter/android/DMComposeFragment;

    .line 37
    iget-object v0, p0, Lcom/twitter/android/DMAddParticipantsActivity;->a:Lcom/twitter/android/DMComposeFragment;

    new-instance v1, Lcom/twitter/android/dm/m;

    invoke-virtual {p0}, Lcom/twitter/android/DMAddParticipantsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/twitter/android/dm/m;-><init>(Landroid/os/Bundle;)V

    const/4 v2, 0x1

    .line 38
    invoke-virtual {v1, v2}, Lcom/twitter/android/dm/m;->e(Z)Lcom/twitter/android/dm/m;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/twitter/android/dm/m;->d()Lcom/twitter/android/dm/l;

    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/twitter/android/DMComposeFragment;->a(Lcom/twitter/app/common/base/f;)V

    .line 40
    invoke-virtual {p0}, Lcom/twitter/android/DMAddParticipantsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f130143

    iget-object v2, p0, Lcom/twitter/android/DMAddParticipantsActivity;->a:Lcom/twitter/android/DMComposeFragment;

    const-string/jumbo v3, "composer"

    .line 42
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 48
    :goto_0
    const v0, 0x7f130382

    invoke-virtual {p0, v0}, Lcom/twitter/android/DMAddParticipantsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/ToolbarWrapperLayout;

    invoke-virtual {v0}, Lcom/twitter/library/widget/ToolbarWrapperLayout;->a()V

    .line 49
    return-void

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/DMAddParticipantsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "composer"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/DMComposeFragment;

    iput-object v0, p0, Lcom/twitter/android/DMAddParticipantsActivity;->a:Lcom/twitter/android/DMComposeFragment;

    goto :goto_0
.end method
