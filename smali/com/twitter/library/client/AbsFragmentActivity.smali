.class public abstract Lcom/twitter/library/client/AbsFragmentActivity;
.super Lcom/twitter/app/common/inject/InjectedFragmentActivity;
.source "Twttr"

# interfaces
.implements Lcyh;
.implements Lcyi;


# instance fields
.field protected I:J

.field protected J:Lcom/twitter/library/client/bd;

.field private final a:Lcom/twitter/library/client/bj;

.field private b:Lcom/twitter/library/client/as;

.field private c:Lcyj;

.field private d:Landroid/content/Intent;

.field private e:Lcom/twitter/library/client/d;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/twitter/app/common/inject/InjectedFragmentActivity;-><init>()V

    .line 83
    new-instance v0, Lcom/twitter/library/client/c;

    invoke-direct {v0, p0}, Lcom/twitter/library/client/c;-><init>(Lcom/twitter/library/client/AbsFragmentActivity;)V

    iput-object v0, p0, Lcom/twitter/library/client/AbsFragmentActivity;->a:Lcom/twitter/library/client/bj;

    .line 86
    sget-object v0, Lcyj;->a:Lcyj;

    iput-object v0, p0, Lcom/twitter/library/client/AbsFragmentActivity;->c:Lcyj;

    return-void
.end method

.method private a(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 436
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 437
    const-string/jumbo v0, "intent.extra.ANCESTOR"

    invoke-virtual {p0}, Lcom/twitter/library/client/AbsFragmentActivity;->E_()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 438
    return-object p1
.end method

.method static synthetic a(Lcom/twitter/library/client/AbsFragmentActivity;)Lcom/twitter/library/client/d;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/twitter/library/client/AbsFragmentActivity;->e:Lcom/twitter/library/client/d;

    return-object v0
.end method

.method private a(Lcom/twitter/library/client/d;)V
    .locals 4

    .prologue
    .line 171
    sget v0, Lbjw;->drawer:I

    invoke-virtual {p0, v0}, Lcom/twitter/library/client/AbsFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/navigation/ModernDrawerView;

    .line 172
    sget v1, Lbjw;->toolbar:I

    invoke-virtual {p0, v1}, Lcom/twitter/library/client/AbsFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/twitter/internal/android/widget/ToolBar;

    .line 173
    const/4 v2, 0x0

    .line 174
    if-eqz v1, :cond_1

    .line 175
    if-eqz v0, :cond_0

    .line 176
    new-instance v2, Lcom/twitter/library/client/navigation/l;

    iget v3, p1, Lcom/twitter/library/client/d;->j:I

    invoke-direct {v2, v0, v1, v3, p0}, Lcom/twitter/library/client/navigation/l;-><init>(Lcom/twitter/library/client/navigation/ModernDrawerView;Lcom/twitter/internal/android/widget/ToolBar;ILandroid/app/Activity;)V

    move-object v0, v2

    .line 181
    :goto_0
    invoke-static {v0}, Lcyj;->a(Lcyg;)Lcyj;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/client/AbsFragmentActivity;->c:Lcyj;

    .line 182
    return-void

    .line 178
    :cond_0
    new-instance v0, Lcom/twitter/library/client/navigation/q;

    iget v2, p1, Lcom/twitter/library/client/d;->j:I

    invoke-direct {v0, v1, v2, p0}, Lcom/twitter/library/client/navigation/q;-><init>(Lcom/twitter/internal/android/widget/ToolBar;ILandroid/app/Activity;)V

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method private b(Landroid/content/Intent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 494
    invoke-static {p1}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    const/4 v0, 0x0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move v0, v1

    .line 516
    :goto_0
    return v0

    .line 498
    :cond_0
    const-string/jumbo v0, "intent.extra.ANCESTOR"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    const-string/jumbo v0, "intent.extra.ANCESTOR"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/twitter/library/client/AbsFragmentActivity;->d:Landroid/content/Intent;

    .line 500
    const-string/jumbo v0, "intent.extra.ANCESTOR"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 502
    :cond_1
    iput-boolean v1, p0, Lcom/twitter/library/client/AbsFragmentActivity;->f:Z

    .line 503
    const-string/jumbo v0, "AbsFragmentActivity_account_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 504
    if-eqz v0, :cond_3

    .line 506
    invoke-virtual {p0}, Lcom/twitter/library/client/AbsFragmentActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v1

    .line 507
    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 508
    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bk;->d(Ljava/lang/String;)V

    .line 509
    iput-boolean v2, p0, Lcom/twitter/library/client/AbsFragmentActivity;->f:Z

    .line 514
    :cond_2
    const-string/jumbo v0, "AbsFragmentActivity_account_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_3
    move v0, v2

    .line 516
    goto :goto_0
.end method

.method private b(Lcyd;)Z
    .locals 1

    .prologue
    .line 216
    invoke-interface {p1}, Lcyd;->m()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    invoke-interface {p1}, Lcyd;->m()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/client/AbsFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 218
    const/4 v0, 0x1

    .line 220
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract A_()V
.end method

.method protected E_()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/twitter/library/client/AbsFragmentActivity;->e:Lcom/twitter/library/client/d;

    iget-boolean v0, v0, Lcom/twitter/library/client/d;->k:Z

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/twitter/library/client/AbsFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 427
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/library/client/AbsFragmentActivity;->d:Landroid/content/Intent;

    goto :goto_0
.end method

.method public Y()Lcom/twitter/internal/android/widget/ToolBar;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/twitter/library/client/AbsFragmentActivity;->Z()Lcyj;

    move-result-object v0

    invoke-virtual {v0}, Lcyj;->d()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/ToolBar;

    return-object v0
.end method

.method public final Z()Lcyj;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/twitter/library/client/AbsFragmentActivity;->c:Lcyj;

    return-object v0
.end method

.method protected a(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 280
    const/high16 v0, 0x4000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 281
    invoke-virtual {p0, p2}, Lcom/twitter/library/client/AbsFragmentActivity;->d(Landroid/content/Intent;)V

    .line 282
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 283
    return-void
.end method

.method public abstract a(Landroid/os/Bundle;Lcom/twitter/library/client/d;)V
.end method

.method protected a(Lcom/twitter/library/service/x;I)V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 398
    return-void
.end method

.method public a(Lcyd;)Z
    .locals 2

    .prologue
    .line 264
    invoke-interface {p1}, Lcyd;->a()I

    move-result v0

    .line 265
    sget v1, Lbjw;->home:I

    if-ne v0, v1, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/twitter/library/client/AbsFragmentActivity;->o()V

    .line 267
    const/4 v0, 0x1

    .line 269
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/twitter/library/client/AbsFragmentActivity;->b(Lcyd;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Lcyg;)Z
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method aa()V
    .locals 1

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/twitter/library/client/AbsFragmentActivity;->m_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    invoke-super {p0}, Lcom/twitter/app/common/inject/InjectedFragmentActivity;->onBackPressed()V

    .line 357
    :cond_0
    return-void
.end method

.method protected final ab()Lcom/twitter/library/client/bk;
    .locals 1

    .prologue
    .line 360
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    return-object v0
.end method

.method protected final ac()Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/twitter/library/client/AbsFragmentActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method public final ad()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/twitter/library/client/AbsFragmentActivity;->d:Landroid/content/Intent;

    return-object v0
.end method

.method public b(Lcyg;)I
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x2

    return v0
.end method

.method protected final b(Lcom/twitter/library/service/x;I)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 375
    iget-object v1, p0, Lcom/twitter/library/client/AbsFragmentActivity;->b:Lcom/twitter/library/client/as;

    iget-wide v2, p0, Lcom/twitter/library/client/AbsFragmentActivity;->I:J

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/twitter/library/client/as;->a(JLcom/twitter/library/service/x;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {p0, p1, p2}, Lcom/twitter/library/client/AbsFragmentActivity;->c(Lcom/twitter/library/service/x;I)V

    .line 377
    const/4 v6, 0x1

    .line 379
    :cond_0
    return v6
.end method

.method public final c(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/twitter/library/client/AbsFragmentActivity;->d:Landroid/content/Intent;

    .line 421
    return-void
.end method

.method protected c(Lcom/twitter/library/service/x;I)V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 389
    return-void
.end method

.method public final c(Lcyg;)V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method public d(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 490
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, v0, v1}, Lcom/twitter/app/common/inject/InjectedFragmentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 491
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method public g(Landroid/os/Bundle;)Lcom/twitter/library/client/d;
    .locals 1

    .prologue
    .line 464
    const/4 v0, 0x0

    return-object v0
.end method

.method protected k_()V
    .locals 1

    .prologue
    .line 289
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Lcom/twitter/library/client/AbsFragmentActivity;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 290
    return-void
.end method

.method protected abstract o()V
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 200
    invoke-super {p0}, Lcom/twitter/app/common/inject/InjectedFragmentActivity;->onAttachedToWindow()V

    .line 201
    invoke-virtual {p0}, Lcom/twitter/library/client/AbsFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 202
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 203
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/twitter/library/client/AbsFragmentActivity;->f:Z

    if-eqz v0, :cond_0

    .line 334
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/library/client/AbsFragmentActivity;->f:Z

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/library/client/AbsFragmentActivity;->aa()V

    .line 337
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/twitter/library/client/AbsFragmentActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/library/client/AbsFragmentActivity;->I:J

    .line 107
    invoke-static {p0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/client/AbsFragmentActivity;->J:Lcom/twitter/library/client/bd;

    .line 109
    invoke-super {p0, p1}, Lcom/twitter/app/common/inject/InjectedFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    iget-object v0, p0, Lcom/twitter/library/client/AbsFragmentActivity;->J:Lcom/twitter/library/client/bd;

    invoke-static {p0, v0}, Lcom/twitter/library/client/as;->a(Lcom/twitter/app/common/util/s;Lcom/twitter/library/client/bd;)Lcom/twitter/library/client/as;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/client/AbsFragmentActivity;->b:Lcom/twitter/library/client/as;

    .line 112
    iget-object v0, p0, Lcom/twitter/library/client/AbsFragmentActivity;->b:Lcom/twitter/library/client/as;

    new-instance v1, Lcom/twitter/library/client/b;

    invoke-direct {v1, p0}, Lcom/twitter/library/client/b;-><init>(Lcom/twitter/library/client/AbsFragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/as;->a(Lcom/twitter/library/client/aw;)V

    .line 119
    invoke-virtual {p0, p1}, Lcom/twitter/library/client/AbsFragmentActivity;->g(Landroid/os/Bundle;)Lcom/twitter/library/client/d;

    move-result-object v0

    .line 121
    if-nez v0, :cond_1

    .line 122
    new-instance v0, Lcom/twitter/library/client/d;

    invoke-direct {v0}, Lcom/twitter/library/client/d;-><init>()V

    move-object v1, v0

    .line 126
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/twitter/library/client/d;->g:Z

    .line 127
    iput-object v1, p0, Lcom/twitter/library/client/AbsFragmentActivity;->e:Lcom/twitter/library/client/d;

    .line 130
    invoke-virtual {p0}, Lcom/twitter/library/client/AbsFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 131
    invoke-direct {p0, v0}, Lcom/twitter/library/client/AbsFragmentActivity;->b(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 134
    invoke-virtual {p0}, Lcom/twitter/library/client/AbsFragmentActivity;->o()V

    .line 138
    invoke-virtual {p0}, Lcom/twitter/library/client/AbsFragmentActivity;->finish()V

    .line 168
    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object v1, v0

    .line 124
    goto :goto_0

    .line 143
    :cond_2
    iget v0, v1, Lcom/twitter/library/client/d;->h:I

    if-eqz v0, :cond_3

    .line 144
    iget v0, v1, Lcom/twitter/library/client/d;->h:I

    invoke-virtual {p0, v0}, Lcom/twitter/library/client/AbsFragmentActivity;->setContentView(I)V

    .line 147
    :cond_3
    iget-boolean v0, v1, Lcom/twitter/library/client/d;->i:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/twitter/library/client/AbsFragmentActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->d()Z

    move-result v0

    if-nez v0, :cond_4

    .line 148
    invoke-virtual {p0}, Lcom/twitter/library/client/AbsFragmentActivity;->A_()V

    goto :goto_1

    .line 152
    :cond_4
    if-eqz p1, :cond_5

    .line 153
    const-string/jumbo v0, "ancestor_root_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/twitter/library/client/AbsFragmentActivity;->d:Landroid/content/Intent;

    .line 156
    :cond_5
    invoke-direct {p0, v1}, Lcom/twitter/library/client/AbsFragmentActivity;->a(Lcom/twitter/library/client/d;)V

    .line 158
    invoke-virtual {p0, p1, v1}, Lcom/twitter/library/client/AbsFragmentActivity;->a(Landroid/os/Bundle;Lcom/twitter/library/client/d;)V

    .line 160
    iget-object v0, p0, Lcom/twitter/library/client/AbsFragmentActivity;->c:Lcyj;

    invoke-virtual {v0}, Lcyj;->a()Z

    move-result v0

    if-nez v0, :cond_6

    .line 162
    invoke-direct {p0, v1}, Lcom/twitter/library/client/AbsFragmentActivity;->a(Lcom/twitter/library/client/d;)V

    .line 165
    :cond_6
    iget-object v0, p0, Lcom/twitter/library/client/AbsFragmentActivity;->c:Lcyj;

    invoke-virtual {v0, p0}, Lcyj;->a(Lcyi;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/twitter/library/client/AbsFragmentActivity;->c:Lcyj;

    invoke-virtual {v0, p0}, Lcyj;->a(Lcyh;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/twitter/library/client/AbsFragmentActivity;->b:Lcom/twitter/library/client/as;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/as;->a(Lcom/twitter/library/client/aw;)V

    .line 195
    invoke-super {p0}, Lcom/twitter/app/common/inject/InjectedFragmentActivity;->onDestroy()V

    .line 196
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 318
    invoke-super {p0, p1}, Lcom/twitter/app/common/inject/InjectedFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 319
    invoke-direct {p0, p1}, Lcom/twitter/library/client/AbsFragmentActivity;->b(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {p0, p1}, Lcom/twitter/library/client/AbsFragmentActivity;->setIntent(Landroid/content/Intent;)V

    .line 322
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/twitter/library/client/AbsFragmentActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/library/client/AbsFragmentActivity;->a:Lcom/twitter/library/client/bj;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bk;->b(Lcom/twitter/library/client/bj;)V

    .line 307
    invoke-super {p0}, Lcom/twitter/app/common/inject/InjectedFragmentActivity;->onPause()V

    .line 308
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 294
    invoke-super {p0}, Lcom/twitter/app/common/inject/InjectedFragmentActivity;->onResume()V

    .line 295
    iget-object v0, p0, Lcom/twitter/library/client/AbsFragmentActivity;->e:Lcom/twitter/library/client/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/client/AbsFragmentActivity;->e:Lcom/twitter/library/client/d;

    iget-boolean v0, v0, Lcom/twitter/library/client/d;->i:Z

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/twitter/library/client/AbsFragmentActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/twitter/library/client/AbsFragmentActivity;->A_()V

    .line 302
    :goto_0
    return-void

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/library/client/AbsFragmentActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/library/client/AbsFragmentActivity;->a:Lcom/twitter/library/client/bj;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/bj;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 312
    invoke-super {p0, p1}, Lcom/twitter/app/common/inject/InjectedFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 313
    const-string/jumbo v0, "ancestor_root_intent"

    iget-object v1, p0, Lcom/twitter/library/client/AbsFragmentActivity;->d:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 314
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 186
    invoke-super {p0}, Lcom/twitter/app/common/inject/InjectedFragmentActivity;->onStart()V

    .line 189
    iget-object v0, p0, Lcom/twitter/library/client/AbsFragmentActivity;->b:Lcom/twitter/library/client/as;

    iget-wide v2, p0, Lcom/twitter/library/client/AbsFragmentActivity;->I:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/client/as;->c(J)V

    .line 190
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/twitter/library/client/AbsFragmentActivity;->Z()Lcyj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcyj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    invoke-super {p0, p1, p2}, Lcom/twitter/app/common/inject/InjectedFragmentActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 329
    :cond_0
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 443
    invoke-direct {p0, p1}, Lcom/twitter/library/client/AbsFragmentActivity;->a(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-super {p0, v0, p2}, Lcom/twitter/app/common/inject/InjectedFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 444
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 453
    invoke-direct {p0, p1}, Lcom/twitter/library/client/AbsFragmentActivity;->a(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-super {p0, v0, p2, p3}, Lcom/twitter/app/common/inject/InjectedFragmentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 454
    return-void
.end method

.method public startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 448
    invoke-direct {p0, p2}, Lcom/twitter/library/client/AbsFragmentActivity;->a(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-super {p0, p1, v0, p3}, Lcom/twitter/app/common/inject/InjectedFragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 449
    return-void
.end method
