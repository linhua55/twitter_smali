.class public Lcom/twitter/android/dm/ShareViaDMActivity;
.super Lcom/twitter/app/common/base/TwitterFragmentActivity;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/base/l;
.implements Lcom/twitter/app/common/base/m;


# instance fields
.field private a:Z

.field private b:Lcom/twitter/model/core/ay;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation
.end field

.field private d:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Lcom/twitter/android/dm/ShareViaDMComposeFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;-><init>()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 180
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/dm/ShareViaDMActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "messages"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "import_addressbook"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "contacts_permission_gate"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p1, v1, v2

    .line 181
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 180
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 182
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/twitter/android/dm/ShareViaDMActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-boolean v0, p0, Lcom/twitter/android/dm/ShareViaDMActivity;->a:Z

    if-nez v0, :cond_1

    .line 106
    invoke-direct {p0}, Lcom/twitter/android/dm/ShareViaDMActivity;->h()V

    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/dm/ShareViaDMActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "share_via_dm_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 109
    instance-of v1, v0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;

    if-eqz v1, :cond_2

    .line 110
    check-cast v0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;

    iput-object v0, p0, Lcom/twitter/android/dm/ShareViaDMActivity;->h:Lcom/twitter/android/dm/ShareViaDMComposeFragment;

    goto :goto_0

    .line 112
    :cond_2
    invoke-direct {p0}, Lcom/twitter/android/dm/ShareViaDMActivity;->h()V

    goto :goto_0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 118
    new-instance v0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;

    invoke-direct {v0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/dm/ShareViaDMActivity;->h:Lcom/twitter/android/dm/ShareViaDMComposeFragment;

    .line 119
    iget-object v1, p0, Lcom/twitter/android/dm/ShareViaDMActivity;->h:Lcom/twitter/android/dm/ShareViaDMComposeFragment;

    new-instance v0, Lcom/twitter/android/dm/w;

    invoke-direct {v0}, Lcom/twitter/android/dm/w;-><init>()V

    iget-object v2, p0, Lcom/twitter/android/dm/ShareViaDMActivity;->b:Lcom/twitter/model/core/ay;

    .line 120
    invoke-virtual {v0, v2}, Lcom/twitter/android/dm/w;->a(Lcom/twitter/model/core/ay;)Lcom/twitter/android/dm/w;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/android/dm/ShareViaDMActivity;->c:Ljava/util/List;

    .line 121
    invoke-virtual {v0, v2}, Lcom/twitter/android/dm/w;->a(Ljava/util/List;)Lcom/twitter/android/dm/w;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/android/dm/ShareViaDMActivity;->g:Ljava/lang/String;

    .line 122
    invoke-virtual {v0, v2}, Lcom/twitter/android/dm/w;->a(Ljava/lang/String;)Lcom/twitter/android/dm/c;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dm/w;

    iget-boolean v2, p0, Lcom/twitter/android/dm/ShareViaDMActivity;->f:Z

    .line 123
    invoke-virtual {v0, v2}, Lcom/twitter/android/dm/w;->c(Z)Lcom/twitter/android/dm/w;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/android/dm/ShareViaDMActivity;->e:Ljava/lang/String;

    .line 124
    invoke-virtual {v0, v2}, Lcom/twitter/android/dm/w;->b(Ljava/lang/String;)Lcom/twitter/android/dm/w;

    move-result-object v0

    iget v2, p0, Lcom/twitter/android/dm/ShareViaDMActivity;->d:I

    .line 125
    invoke-virtual {v0, v2}, Lcom/twitter/android/dm/w;->a(I)Lcom/twitter/android/dm/w;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/twitter/android/dm/w;->d()Lcom/twitter/android/dm/v;

    move-result-object v0

    .line 119
    invoke-virtual {v1, v0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->a(Lcom/twitter/app/common/base/f;)V

    .line 127
    invoke-virtual {p0}, Lcom/twitter/android/dm/ShareViaDMActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f130342

    iget-object v2, p0, Lcom/twitter/android/dm/ShareViaDMActivity;->h:Lcom/twitter/android/dm/ShareViaDMComposeFragment;

    const-string/jumbo v3, "share_via_dm_fragment"

    .line 128
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 130
    invoke-virtual {p0}, Lcom/twitter/android/dm/ShareViaDMActivity;->Z()Lcyj;

    move-result-object v0

    invoke-virtual {v0}, Lcyj;->h()V

    .line 131
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/twitter/android/dm/ShareViaDMActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_0

    .line 155
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/twitter/util/ui/r;->b(Landroid/content/Context;Landroid/view/View;Z)V

    .line 157
    :cond_0
    return-void
.end method


# virtual methods
.method protected A_()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 162
    const v0, 0x7f040373

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->d(I)V

    .line 163
    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->b(I)V

    .line 164
    invoke-virtual {p2, v1}, Lcom/twitter/app/common/base/y;->b(Z)V

    .line 165
    invoke-virtual {p2, v1}, Lcom/twitter/app/common/base/y;->a(Z)V

    .line 166
    return-object p2
.end method

.method public a(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/twitter/android/dm/ShareViaDMActivity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    const-string/jumbo v0, "dismiss"

    invoke-direct {p0, v0}, Lcom/twitter/android/dm/ShareViaDMActivity;->b(Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lcom/twitter/android/dm/ShareViaDMActivity;->c()V

    goto :goto_0
.end method

.method public a(Landroid/content/DialogInterface;II)V
    .locals 1

    .prologue
    .line 72
    const/4 v0, -0x1

    if-ne v0, p3, :cond_1

    .line 73
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/twitter/android/dm/h;->a(Landroid/content/Context;Z)V

    .line 74
    const-string/jumbo v0, "accept"

    invoke-direct {p0, v0}, Lcom/twitter/android/dm/ShareViaDMActivity;->b(Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Lcom/twitter/android/dm/ShareViaDMActivity;->c()V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    const/4 v0, -0x2

    if-ne v0, p3, :cond_0

    .line 77
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/twitter/android/dm/h;->a(Landroid/content/Context;Z)V

    .line 78
    const-string/jumbo v0, "not_now"

    invoke-direct {p0, v0}, Lcom/twitter/android/dm/ShareViaDMActivity;->b(Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lcom/twitter/android/dm/ShareViaDMActivity;->c()V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;Lcom/twitter/library/client/d;)V
    .locals 2

    .prologue
    .line 43
    new-instance v1, Lcom/twitter/android/dm/v;

    invoke-virtual {p0}, Lcom/twitter/android/dm/ShareViaDMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/twitter/android/dm/v;-><init>(Landroid/content/Intent;)V

    .line 44
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/dm/ShareViaDMActivity;->a:Z

    .line 45
    invoke-virtual {v1}, Lcom/twitter/android/dm/v;->i()Lcom/twitter/model/core/ay;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/dm/ShareViaDMActivity;->b:Lcom/twitter/model/core/ay;

    .line 46
    invoke-virtual {v1}, Lcom/twitter/android/dm/v;->j()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/dm/ShareViaDMActivity;->c:Ljava/util/List;

    .line 47
    invoke-virtual {v1}, Lcom/twitter/android/dm/v;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/dm/ShareViaDMActivity;->g:Ljava/lang/String;

    .line 48
    invoke-virtual {v1}, Lcom/twitter/android/dm/v;->k()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/dm/ShareViaDMActivity;->f:Z

    .line 49
    invoke-virtual {v1}, Lcom/twitter/android/dm/v;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/dm/ShareViaDMActivity;->e:Ljava/lang/String;

    .line 50
    invoke-virtual {v1}, Lcom/twitter/android/dm/v;->m()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/dm/ShareViaDMActivity;->d:I

    .line 53
    invoke-direct {p0}, Lcom/twitter/android/dm/ShareViaDMActivity;->c()V

    .line 56
    invoke-static {}, Lbnv;->a()Z

    .line 57
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcyg;)Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method protected o()V
    .locals 0

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/twitter/android/dm/ShareViaDMActivity;->onBackPressed()V

    .line 149
    invoke-direct {p0}, Lcom/twitter/android/dm/ShareViaDMActivity;->i()V

    .line 150
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 85
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 86
    if-ne v1, p1, :cond_1

    .line 87
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 88
    invoke-static {p3}, Lcom/twitter/android/runtimepermissions/PermissionRequestActivity;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    invoke-static {p0, v1}, Lcom/twitter/android/dm/h;->a(Landroid/content/Context;Z)V

    .line 90
    const-string/jumbo v0, "accept"

    invoke-direct {p0, v0}, Lcom/twitter/android/dm/ShareViaDMActivity;->b(Ljava/lang/String;)V

    .line 96
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/twitter/android/dm/ShareViaDMActivity;->c()V

    .line 98
    :cond_1
    return-void

    .line 92
    :cond_2
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/twitter/android/dm/h;->a(Landroid/content/Context;Z)V

    .line 93
    const-string/jumbo v0, "not_now"

    invoke-direct {p0, v0}, Lcom/twitter/android/dm/ShareViaDMActivity;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onBackPressed()V

    .line 140
    const v0, 0x7f05003b

    const v1, 0x7f05003c

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/dm/ShareViaDMActivity;->overridePendingTransition(II)V

    .line 141
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMActivity;->h:Lcom/twitter/android/dm/ShareViaDMComposeFragment;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMActivity;->h:Lcom/twitter/android/dm/ShareViaDMComposeFragment;

    invoke-virtual {v0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->A()V

    .line 144
    :cond_0
    return-void
.end method
