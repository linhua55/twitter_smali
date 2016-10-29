.class public Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;
.super Lcom/twitter/app/common/base/TwitterFragmentActivity;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/fullscreen/gg;


# instance fields
.field private a:Lcom/twitter/android/moments/ui/fullscreen/by;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/view/ViewGroup;

.field private d:Lcwy;

.field private e:Lcom/twitter/android/moments/ui/fullscreen/aq;

.field private f:Lcom/twitter/android/moments/ui/fullscreen/b;

.field private g:Lcom/twitter/android/moments/data/az;

.field private h:Lcom/twitter/android/moments/data/bp;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    const-string/jumbo v1, "extra_moment_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 82
    return-object v0
.end method

.method public static b(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 87
    invoke-static {p0, p1, p2}, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_should_resume_user"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 92
    invoke-static {p0, p1, p2}, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->b(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_should_force_capsule_refresh"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private h()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f1304cb

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 1

    .prologue
    .line 99
    const v0, 0x7f0401d9

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->d(I)V

    .line 100
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->d(Z)V

    .line 101
    invoke-super {p0, p1, p2}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;Lcom/twitter/library/client/d;)V
    .locals 28

    .prologue
    .line 114
    invoke-super/range {p0 .. p2}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Landroid/os/Bundle;Lcom/twitter/library/client/d;)V

    .line 115
    new-instance v2, Lcom/twitter/android/moments/ui/fullscreen/aq;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/twitter/android/moments/ui/fullscreen/aq;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->e:Lcom/twitter/android/moments/ui/fullscreen/aq;

    .line 118
    if-nez p1, :cond_0

    .line 119
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->setRequestedOrientation(I)V

    .line 122
    :cond_0
    const v2, 0x7f1304c3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->b:Landroid/view/ViewGroup;

    .line 123
    const v2, 0x7f1304c2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->c:Landroid/view/ViewGroup;

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcvx;->a(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->c:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/twitter/android/moments/ui/animation/MomentsActivityTransition;->a(Landroid/support/v4/app/FragmentActivity;Landroid/content/Intent;Landroid/view/ViewGroup;)Lcom/twitter/android/moments/ui/animation/MomentsActivityTransition;

    move-result-object v2

    .line 128
    new-instance v3, Lcwy;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->b:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v2}, Lcwy;-><init>(Landroid/app/Activity;Landroid/view/View;Lcvv;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->d:Lcwy;

    .line 131
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v11

    .line 132
    invoke-virtual {v11}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v8

    .line 133
    move-object/from16 v0, p0

    invoke-static {v0, v8, v9}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v10

    .line 134
    new-instance v5, Lcet;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v10, v8, v9}, Lcet;-><init>(Landroid/content/Context;Lcom/twitter/library/provider/dm;J)V

    .line 135
    new-instance v2, Lcom/twitter/android/moments/data/as;

    invoke-direct/range {p0 .. p0}, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v6, Ldby;

    .line 136
    invoke-static {}, Ldls;->d()Lrx/t;

    move-result-object v7

    invoke-direct {v6, v7}, Ldby;-><init>(Lrx/t;)V

    invoke-static {}, Ldiz;->a()Lrx/t;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/twitter/android/moments/data/as;-><init>(Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcet;Ldby;Lrx/t;)V

    .line 137
    const v3, 0x7f130342

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/twitter/ui/widget/touchintercept/TouchInterceptingFrameLayout;

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v27

    .line 140
    const-string/jumbo v3, "extra_moment_id"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 141
    const-string/jumbo v3, "extra_moment_id"

    const-wide/16 v12, -0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 147
    new-instance v3, Lbqf;

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-direct {v3, v4, v11}, Lbqf;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    .line 148
    invoke-static {v3}, Lcom/twitter/android/moments/data/az;->a(Lbqf;)Lcom/twitter/android/moments/data/az;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->g:Lcom/twitter/android/moments/data/az;

    .line 149
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->g:Lcom/twitter/android/moments/data/az;

    .line 150
    invoke-static {v4, v3, v10}, Lcom/twitter/android/moments/data/bp;->a(Lcom/twitter/android/moments/data/az;Lbqf;Lcom/twitter/library/provider/dm;)Lcom/twitter/android/moments/data/bp;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->h:Lcom/twitter/android/moments/data/bp;

    .line 153
    invoke-static {v5, v12, v13}, Lcom/twitter/android/moments/data/ac;->a(Lcet;J)V

    .line 154
    invoke-static {v5, v12, v13}, Lcom/twitter/android/moments/data/an;->a(Lcet;J)V

    .line 156
    new-instance v16, Lcom/twitter/android/moments/data/p;

    invoke-direct/range {v16 .. v16}, Lcom/twitter/android/moments/data/p;-><init>()V

    .line 157
    invoke-static/range {p0 .. p0}, Lcom/twitter/android/moments/ui/fullscreen/b;->a(Landroid/app/Activity;)Lcom/twitter/android/moments/ui/fullscreen/b;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->f:Lcom/twitter/android/moments/ui/fullscreen/b;

    .line 158
    new-instance v14, Lcom/twitter/android/moments/ui/fullscreen/bs;

    invoke-direct {v14}, Lcom/twitter/android/moments/ui/fullscreen/bs;-><init>()V

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->U()Lcom/twitter/app/common/inject/b;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lafq;

    .line 161
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/twitter/android/moments/ui/b;->a(Landroid/support/v4/app/FragmentActivity;Lcet;)Lcom/twitter/android/moments/ui/b;

    move-result-object v22

    .line 162
    const-string/jumbo v3, "extra_should_force_capsule_refresh"

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 163
    const-string/jumbo v5, "extra_preview_mode"

    const/4 v7, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->i:Z

    .line 165
    if-eqz v3, :cond_5

    .line 166
    invoke-interface {v4}, Lafq;->e()Lacp;

    move-result-object v20

    .line 170
    :goto_0
    new-instance v3, Lcom/twitter/android/moments/ui/fullscreen/by;

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->f:Lcom/twitter/android/moments/ui/fullscreen/b;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->d:Lcwy;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->h:Lcom/twitter/android/moments/data/bp;

    move-object/from16 v19, v0

    new-instance v21, Lajn;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lajn;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->e:Lcom/twitter/android/moments/ui/fullscreen/aq;

    move-object/from16 v23, v0

    .line 174
    invoke-static/range {p0 .. p0}, Lcom/twitter/android/moments/ui/fullscreen/ar;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/twitter/android/moments/ui/fullscreen/ar;

    move-result-object v24

    invoke-interface {v4}, Lafq;->d()Laeo;

    move-result-object v25

    move-object/from16 v4, p0

    move-object v5, v6

    move-object v6, v2

    move-object/from16 v11, p0

    move-object/from16 v17, p1

    move-object/from16 v26, p0

    invoke-direct/range {v3 .. v26}, Lcom/twitter/android/moments/ui/fullscreen/by;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/twitter/ui/widget/touchintercept/TouchInterceptingFrameLayout;Lcom/twitter/android/sn;Lcom/twitter/library/client/bk;JLcom/twitter/library/provider/dm;Lcom/twitter/app/common/util/t;JLcom/twitter/android/moments/ui/fullscreen/bs;Lcom/twitter/android/moments/ui/fullscreen/fn;Lcom/twitter/android/moments/data/p;Landroid/os/Bundle;Lcwy;Lcom/twitter/android/moments/data/bo;Ladj;Lajn;Lcom/twitter/android/moments/ui/b;Lcom/twitter/android/moments/ui/fullscreen/aq;Lcom/twitter/android/moments/ui/fullscreen/ar;Laeo;Lcom/twitter/android/moments/ui/fullscreen/gg;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->a:Lcom/twitter/android/moments/ui/fullscreen/by;

    .line 176
    const-string/jumbo v2, "extra_initial_page_number"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "extra_should_resume_user"

    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_6

    .line 177
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->a:Lcom/twitter/android/moments/ui/fullscreen/by;

    const-string/jumbo v3, "extra_initial_page_number"

    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/twitter/util/collection/ab;->a(Ljava/lang/Object;)Lcom/twitter/util/collection/ab;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/android/moments/ui/fullscreen/by;->a(Lcom/twitter/util/collection/ab;)V

    .line 186
    :cond_3
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/twitter/android/moments/ui/animation/m;->a(Landroid/content/Context;)Lcom/twitter/android/moments/ui/animation/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/moments/ui/animation/m;->a()V

    .line 187
    return-void

    .line 143
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Starting full screen pager requires a capsule"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 168
    :cond_5
    invoke-interface {v4}, Lafq;->c()Ladk;

    move-result-object v20

    goto/16 :goto_0

    .line 178
    :cond_6
    const-string/jumbo v2, "extra_initial_page_id"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 179
    const-string/jumbo v2, "extra_initial_page_id"

    sget-object v3, Lcom/twitter/model/moments/ak;->a:Lcom/twitter/util/serialization/ah;

    move-object/from16 v0, v27

    invoke-static {v0, v2, v3}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/ak;

    .line 180
    if-eqz v2, :cond_3

    .line 181
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->a:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-virtual {v3, v2}, Lcom/twitter/android/moments/ui/fullscreen/by;->a(Lcom/twitter/model/moments/ak;)V

    goto :goto_1

    .line 184
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->a:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-static {}, Lcom/twitter/util/collection/ab;->a()Lcom/twitter/util/collection/ab;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/android/moments/ui/fullscreen/by;->a(Lcom/twitter/util/collection/ab;)V

    goto :goto_1
.end method

.method protected c(Lcom/twitter/app/common/inject/t;)Lcom/twitter/app/common/inject/b;
    .locals 2

    .prologue
    .line 107
    invoke-static {}, Laff;->a()Lafm;

    move-result-object v0

    .line 108
    invoke-static {}, Lcom/twitter/app/common/app/n;->w()Lcom/twitter/app/common/app/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafm;->a(Lcom/twitter/app/common/app/n;)Lafm;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lafm;->a()Lafq;

    move-result-object v0

    .line 107
    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->i:Z

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->a:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-virtual {v0, p1}, Lcom/twitter/android/moments/ui/fullscreen/by;->a(Landroid/view/KeyEvent;)V

    .line 227
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 263
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->finish()V

    .line 265
    const/4 v0, 0x0

    const v1, 0x7f05003c

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->overridePendingTransition(II)V

    .line 266
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    .line 245
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 246
    const/16 v0, 0xbad

    if-ne p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->a:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/by;->c()Lcom/twitter/util/collection/ab;

    move-result-object v0

    .line 250
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra_moment_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/ab;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 251
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->e:Lcom/twitter/android/moments/ui/fullscreen/aq;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/fullscreen/aq;

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/moments/ui/fullscreen/aq;->a(J)V

    .line 253
    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->a:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/by;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onBackPressed()V

    .line 194
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 257
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 258
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->a:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-virtual {v0, p1}, Lcom/twitter/android/moments/ui/fullscreen/by;->a(Landroid/content/res/Configuration;)V

    .line 259
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->a:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->isChangingConfigurations()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/by;->a(Z)V

    .line 239
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->h:Lcom/twitter/android/moments/data/bp;

    invoke-static {v0}, Ldbt;->a(Ljava/io/Closeable;)V

    .line 240
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onDestroy()V

    .line 241
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 217
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onPause()V

    .line 218
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->a:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/by;->e()V

    .line 219
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->g:Lcom/twitter/android/moments/data/az;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->g:Lcom/twitter/android/moments/data/az;

    invoke-virtual {v0}, Lcom/twitter/android/moments/data/az;->a()V

    .line 222
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 208
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onResume()V

    .line 209
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->a:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/by;->d()V

    .line 210
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->g:Lcom/twitter/android/moments/data/az;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->g:Lcom/twitter/android/moments/data/az;

    invoke-virtual {v0}, Lcom/twitter/android/moments/data/az;->b()V

    .line 213
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 232
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 233
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->a:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-virtual {v0, p1}, Lcom/twitter/android/moments/ui/fullscreen/by;->a(Landroid/os/Bundle;)V

    .line 234
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onWindowFocusChanged(Z)V

    .line 203
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->a:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-virtual {v0, p1}, Lcom/twitter/android/moments/ui/fullscreen/by;->b(Z)V

    .line 204
    return-void
.end method
