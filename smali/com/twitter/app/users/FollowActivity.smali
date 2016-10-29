.class public abstract Lcom/twitter/app/users/FollowActivity;
.super Lcom/twitter/app/common/base/TwitterFragmentActivity;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/twitter/app/users/t;
.implements Lcom/twitter/app/users/v;


# instance fields
.field protected a:Lcom/twitter/app/users/UsersFragment;

.field protected b:Lcom/twitter/app/users/l;

.field protected c:Z

.field private d:I

.field private e:I

.field private f:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/app/users/FollowActivity;->c:Z

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/app/users/FollowActivity;->d:I

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/app/users/FollowActivity;->e:I

    return-void
.end method

.method static synthetic a(Lcom/twitter/app/users/FollowActivity;)Lcom/twitter/android/client/c;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/twitter/app/users/FollowActivity;->L()Lcom/twitter/android/client/c;

    move-result-object v0

    return-object v0
.end method

.method private a(II)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 175
    if-eq p2, v0, :cond_0

    .line 176
    iput p2, p0, Lcom/twitter/app/users/FollowActivity;->e:I

    .line 177
    if-eq p1, v0, :cond_0

    .line 178
    iget v0, p0, Lcom/twitter/app/users/FollowActivity;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twitter/app/users/FollowActivity;->d:I

    .line 181
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/twitter/app/users/FollowActivity;II)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/twitter/app/users/FollowActivity;->a(II)V

    return-void
.end method

.method private r()V
    .locals 3

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/twitter/app/users/FollowActivity;->m()Landroid/content/BroadcastReceiver;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_0

    .line 134
    iput-object v0, p0, Lcom/twitter/app/users/FollowActivity;->f:Landroid/content/BroadcastReceiver;

    .line 135
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/app/users/FollowActivity;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/twitter/app/users/FollowActivity;->p()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 137
    :cond_0
    return-void
.end method

.method private v()F
    .locals 4

    .prologue
    .line 260
    iget v0, p0, Lcom/twitter/app/users/FollowActivity;->e:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/app/users/FollowActivity;->a:Lcom/twitter/app/users/UsersFragment;

    invoke-virtual {v0}, Lcom/twitter/app/users/UsersFragment;->ae()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/twitter/app/users/FollowActivity;->d:I

    int-to-float v0, v0

    iget v1, p0, Lcom/twitter/app/users/FollowActivity;->e:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 264
    :goto_0
    iget-object v1, p0, Lcom/twitter/app/users/FollowActivity;->a:Lcom/twitter/app/users/UsersFragment;

    invoke-virtual {v1}, Lcom/twitter/app/users/UsersFragment;->ac()Z

    move-result v1

    if-nez v1, :cond_1

    .line 273
    :goto_1
    return v0

    .line 260
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 268
    :cond_1
    iget-object v1, p0, Lcom/twitter/app/users/FollowActivity;->a:Lcom/twitter/app/users/UsersFragment;

    invoke-virtual {v1}, Lcom/twitter/app/users/UsersFragment;->ab()I

    move-result v1

    .line 269
    iget-object v2, p0, Lcom/twitter/app/users/FollowActivity;->a:Lcom/twitter/app/users/UsersFragment;

    invoke-virtual {v2}, Lcom/twitter/app/users/UsersFragment;->ad()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    .line 273
    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    goto :goto_1
.end method

.method private w()Z
    .locals 2

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/twitter/app/users/FollowActivity;->v()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-virtual {p0, p1}, Lcom/twitter/app/users/FollowActivity;->a(Landroid/os/Bundle;)Lcom/twitter/app/users/l;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/l;

    iput-object v0, p0, Lcom/twitter/app/users/FollowActivity;->b:Lcom/twitter/app/users/l;

    .line 59
    invoke-virtual {p2, v1}, Lcom/twitter/app/common/base/y;->a(Z)V

    .line 60
    invoke-virtual {p2, v1}, Lcom/twitter/app/common/base/y;->a(I)V

    .line 61
    iget-object v0, p0, Lcom/twitter/app/users/FollowActivity;->b:Lcom/twitter/app/users/l;

    iget v0, v0, Lcom/twitter/app/users/l;->e:I

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->d(I)V

    .line 62
    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->b(I)V

    .line 64
    iget-object v0, p0, Lcom/twitter/app/users/FollowActivity;->b:Lcom/twitter/app/users/l;

    iget-boolean v0, v0, Lcom/twitter/app/users/l;->f:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/twitter/app/users/FollowActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f0d02e0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 68
    :cond_0
    return-object p2
.end method

.method protected a(Lcom/twitter/app/users/y;)Lcom/twitter/app/users/UsersFragment;
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/twitter/app/users/FollowActivity;->c()Lcom/twitter/app/users/UsersFragment;

    move-result-object v0

    .line 212
    invoke-virtual {v0, p1}, Lcom/twitter/app/users/UsersFragment;->a(Lcom/twitter/app/common/base/f;)V

    .line 213
    invoke-virtual {v0, p0}, Lcom/twitter/app/users/UsersFragment;->a(Lcom/twitter/app/users/v;)V

    .line 214
    invoke-virtual {v0, p0}, Lcom/twitter/app/users/UsersFragment;->a(Lcom/twitter/app/users/t;)V

    .line 215
    return-object v0
.end method

.method protected abstract a(Landroid/os/Bundle;)Lcom/twitter/app/users/l;
.end method

.method protected b(Landroid/content/Intent;)Lcom/twitter/app/users/y;
    .locals 2

    .prologue
    .line 225
    .line 226
    invoke-static {p1}, Lcom/twitter/app/users/aa;->a(Landroid/content/Intent;)Lcom/twitter/app/users/aa;

    move-result-object v0

    const/4 v1, 0x0

    .line 227
    invoke-virtual {v0, v1}, Lcom/twitter/app/users/aa;->h(Z)Lcom/twitter/app/common/list/x;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/aa;

    iget-object v1, p0, Lcom/twitter/app/users/FollowActivity;->b:Lcom/twitter/app/users/l;

    iget-object v1, v1, Lcom/twitter/app/users/l;->a:Ljava/lang/String;

    .line 228
    invoke-virtual {v0, v1}, Lcom/twitter/app/users/aa;->d(Ljava/lang/String;)Lcom/twitter/app/users/z;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/aa;

    const v1, 0x7f0a037a

    .line 229
    invoke-virtual {v0, v1}, Lcom/twitter/app/users/aa;->b(I)Lcom/twitter/app/common/list/x;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/aa;

    const/16 v1, 0x3e8

    .line 230
    invoke-virtual {v0, v1}, Lcom/twitter/app/users/aa;->h(I)Lcom/twitter/app/users/z;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/aa;

    const/16 v1, 0x1c

    .line 231
    invoke-virtual {v0, v1}, Lcom/twitter/app/users/aa;->g(I)Lcom/twitter/app/users/z;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/aa;

    const/4 v1, 0x1

    .line 232
    invoke-virtual {v0, v1}, Lcom/twitter/app/users/aa;->f(Z)Lcom/twitter/app/users/z;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/aa;

    invoke-virtual {v0}, Lcom/twitter/app/users/aa;->d()Lcom/twitter/app/users/y;

    move-result-object v0

    .line 225
    return-object v0
.end method

.method public b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V
    .locals 6

    .prologue
    const v2, 0x7f130143

    const/4 v5, 0x0

    .line 95
    if-nez p1, :cond_2

    .line 96
    iget-object v0, p0, Lcom/twitter/app/users/FollowActivity;->b:Lcom/twitter/app/users/l;

    iget-boolean v0, v0, Lcom/twitter/app/users/l;->d:Z

    if-eqz v0, :cond_0

    .line 97
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/twitter/app/users/FollowActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/app/users/FollowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/app/users/FollowActivity;->b(Landroid/content/Intent;)Lcom/twitter/app/users/y;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/app/users/FollowActivity;->a(Lcom/twitter/app/users/y;)Lcom/twitter/app/users/UsersFragment;

    move-result-object v0

    .line 100
    invoke-virtual {p0}, Lcom/twitter/app/users/FollowActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 102
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 103
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 114
    :goto_0
    iput-object v0, p0, Lcom/twitter/app/users/FollowActivity;->a:Lcom/twitter/app/users/UsersFragment;

    .line 116
    invoke-direct {p0}, Lcom/twitter/app/users/FollowActivity;->r()V

    .line 118
    const v0, 0x7f130199

    invoke-virtual {p0, v0}, Lcom/twitter/app/users/FollowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const v0, 0x7f13019f

    invoke-virtual {p0, v0}, Lcom/twitter/app/users/FollowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 121
    invoke-virtual {p0}, Lcom/twitter/app/users/FollowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a03b9

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/twitter/app/users/FollowActivity;->a:Lcom/twitter/app/users/UsersFragment;

    invoke-virtual {v4}, Lcom/twitter/app/users/UsersFragment;->Y()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 124
    invoke-virtual {p0}, Lcom/twitter/app/users/FollowActivity;->t()V

    .line 126
    invoke-virtual {p0}, Lcom/twitter/app/users/FollowActivity;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    const v0, 0x7f13037a

    invoke-virtual {p0, v0}, Lcom/twitter/app/users/FollowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :cond_1
    return-void

    .line 105
    :cond_2
    invoke-virtual {p0}, Lcom/twitter/app/users/FollowActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 106
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/UsersFragment;

    .line 107
    invoke-virtual {v0, p0}, Lcom/twitter/app/users/UsersFragment;->a(Lcom/twitter/app/users/v;)V

    .line 108
    invoke-virtual {v0, p0}, Lcom/twitter/app/users/UsersFragment;->a(Lcom/twitter/app/users/t;)V

    .line 109
    const-string/jumbo v1, "page_count"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/twitter/app/users/FollowActivity;->d:I

    .line 110
    const-string/jumbo v1, "page_total"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/twitter/app/users/FollowActivity;->e:I

    .line 111
    const-string/jumbo v1, "should_show_loading_in_title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/app/users/FollowActivity;->c:Z

    goto :goto_0
.end method

.method protected c()Lcom/twitter/app/users/UsersFragment;
    .locals 1

    .prologue
    .line 220
    new-instance v0, Lcom/twitter/app/users/UsersFragment;

    invoke-direct {v0}, Lcom/twitter/app/users/UsersFragment;-><init>()V

    return-object v0
.end method

.method public h()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 186
    invoke-virtual {p0}, Lcom/twitter/app/users/FollowActivity;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iput-boolean v4, p0, Lcom/twitter/app/users/FollowActivity;->c:Z

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/app/users/FollowActivity;->l()V

    .line 191
    invoke-virtual {p0}, Lcom/twitter/app/users/FollowActivity;->Z()Lcyj;

    move-result-object v0

    invoke-virtual {v0}, Lcyj;->h()V

    .line 194
    iget v0, p0, Lcom/twitter/app/users/FollowActivity;->d:I

    if-ne v0, v5, :cond_1

    .line 195
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/app/users/FollowActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v6, [Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/app/users/FollowActivity;->b:Lcom/twitter/app/users/l;

    iget-object v2, v2, Lcom/twitter/app/users/l;->a:Ljava/lang/String;

    aput-object v2, v1, v4

    const-string/jumbo v2, "follow_friends:stream::results"

    aput-object v2, v1, v5

    .line 196
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 195
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/twitter/app/users/FollowActivity;->a:Lcom/twitter/app/users/UsersFragment;

    invoke-virtual {v0}, Lcom/twitter/app/users/UsersFragment;->aW()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/twitter/app/users/FollowActivity;->b:Lcom/twitter/app/users/l;

    iget-boolean v0, v0, Lcom/twitter/app/users/l;->b:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/twitter/app/users/FollowActivity;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/app/users/FollowActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v6, [Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/app/users/FollowActivity;->b:Lcom/twitter/app/users/l;

    iget-object v2, v2, Lcom/twitter/app/users/l;->a:Ljava/lang/String;

    aput-object v2, v1, v4

    const-string/jumbo v2, "follow_friends:::no_results"

    aput-object v2, v1, v5

    .line 201
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 200
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 203
    :cond_2
    return-void
.end method

.method protected i()Z
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/twitter/app/users/FollowActivity;->a:Lcom/twitter/app/users/UsersFragment;

    invoke-virtual {v0}, Lcom/twitter/app/users/UsersFragment;->ac()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/twitter/app/users/FollowActivity;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/twitter/app/users/FollowActivity;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected l()V
    .locals 6

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/twitter/app/users/FollowActivity;->c:Z

    if-eqz v0, :cond_2

    .line 237
    iget v0, p0, Lcom/twitter/app/users/FollowActivity;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/twitter/app/users/FollowActivity;->a:Lcom/twitter/app/users/UsersFragment;

    invoke-virtual {v0}, Lcom/twitter/app/users/UsersFragment;->ac()Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    const v0, 0x7f0a049e

    invoke-virtual {p0, v0}, Lcom/twitter/app/users/FollowActivity;->setTitle(I)V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    const v0, 0x7f0a04a1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 241
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v3

    invoke-direct {p0}, Lcom/twitter/app/users/FollowActivity;->v()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 240
    invoke-virtual {p0, v0, v1}, Lcom/twitter/app/users/FollowActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/app/users/FollowActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/twitter/app/users/FollowActivity;->b:Lcom/twitter/app/users/l;

    iget-boolean v0, v0, Lcom/twitter/app/users/l;->b:Z

    if-eqz v0, :cond_3

    .line 245
    const v0, 0x7f0a03ba

    invoke-virtual {p0, v0}, Lcom/twitter/app/users/FollowActivity;->setTitle(I)V

    goto :goto_0

    .line 246
    :cond_3
    iget-object v0, p0, Lcom/twitter/app/users/FollowActivity;->b:Lcom/twitter/app/users/l;

    iget-boolean v0, v0, Lcom/twitter/app/users/l;->d:Z

    if-eqz v0, :cond_0

    .line 247
    const v0, 0x7f0a0436

    invoke-virtual {p0, v0}, Lcom/twitter/app/users/FollowActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/app/users/FollowActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected m()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/twitter/app/users/FollowActivity;->b:Lcom/twitter/app/users/l;

    iget-boolean v0, v0, Lcom/twitter/app/users/l;->b:Z

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Lcom/twitter/app/users/n;

    invoke-direct {v0, p0}, Lcom/twitter/app/users/n;-><init>(Lcom/twitter/app/users/FollowActivity;)V

    .line 145
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 77
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/app/users/FollowActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/app/users/FollowActivity;->b:Lcom/twitter/app/users/l;

    iget-object v3, v3, Lcom/twitter/app/users/l;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 78
    invoke-virtual {p0}, Lcom/twitter/app/users/FollowActivity;->u()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "back_button:click"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 77
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 79
    iget-object v0, p0, Lcom/twitter/app/users/FollowActivity;->b:Lcom/twitter/app/users/l;

    iget-boolean v0, v0, Lcom/twitter/app/users/l;->g:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onBackPressed()V

    .line 82
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 317
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 308
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onDestroy()V

    .line 309
    iget-object v0, p0, Lcom/twitter/app/users/FollowActivity;->f:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 310
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/app/users/FollowActivity;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 312
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 165
    const-string/jumbo v0, "page_count"

    iget v1, p0, Lcom/twitter/app/users/FollowActivity;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 166
    const-string/jumbo v0, "page_total"

    iget v1, p0, Lcom/twitter/app/users/FollowActivity;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 167
    const-string/jumbo v0, "should_show_loading_in_title"

    iget-boolean v1, p0, Lcom/twitter/app/users/FollowActivity;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 168
    return-void
.end method

.method protected p()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 150
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 151
    const-string/jumbo v1, "upload_success_broadcast"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/twitter/app/users/FollowActivity;->b:Lcom/twitter/app/users/l;

    iget-boolean v1, v1, Lcom/twitter/app/users/l;->b:Z

    if-eqz v1, :cond_0

    .line 153
    const-string/jumbo v1, "registration_success_broadcast"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    :cond_0
    return-object v0
.end method

.method protected s()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public t()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    const v0, 0x7f13019f

    invoke-virtual {p0, v0}, Lcom/twitter/app/users/FollowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 87
    iget-object v3, p0, Lcom/twitter/app/users/FollowActivity;->a:Lcom/twitter/app/users/UsersFragment;

    invoke-virtual {v3}, Lcom/twitter/app/users/UsersFragment;->Y()I

    move-result v3

    .line 88
    const v4, 0x7f0a03b9

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p0, v4, v5}, Lcom/twitter/app/users/FollowActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 89
    if-lez v3, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 90
    return-void

    :cond_0
    move v1, v2

    .line 89
    goto :goto_0
.end method

.method protected u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/twitter/app/users/FollowActivity;->a:Lcom/twitter/app/users/UsersFragment;

    iget v0, v0, Lcom/twitter/app/users/UsersFragment;->t:I

    sparse-switch v0, :sswitch_data_0

    .line 301
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    .line 292
    :sswitch_0
    const-string/jumbo v0, "follow_friends"

    goto :goto_0

    .line 295
    :sswitch_1
    const-string/jumbo v0, "who_to_follow"

    goto :goto_0

    .line 298
    :sswitch_2
    const-string/jumbo v0, "follow_interest_suggestions"

    goto :goto_0

    .line 289
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x13 -> :sswitch_1
        0x1c -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method
