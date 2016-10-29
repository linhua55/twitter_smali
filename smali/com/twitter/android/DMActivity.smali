.class public Lcom/twitter/android/DMActivity;
.super Lcom/twitter/app/common/base/TwitterFragmentActivity;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/xs;
.implements Lcom/twitter/android/xt;


# instance fields
.field private a:Lcom/twitter/android/bx;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private e:Lcom/twitter/android/DMConversationFragment;

.field private f:Lcom/twitter/android/DMComposeFragment;

.field private g:Lcom/twitter/android/xo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/DMActivity;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/twitter/android/DMActivity;->d:I

    return v0
.end method

.method static synthetic a(Lcom/twitter/android/DMActivity;[JLjava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/android/DMActivity;->a([JLjava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 511
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/twitter/android/DMActivity;->a(Ljava/lang/String;[JLjava/lang/String;Landroid/net/Uri;)V

    .line 512
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 158
    new-instance v0, Lcom/twitter/android/dm/o;

    invoke-direct {v0}, Lcom/twitter/android/dm/o;-><init>()V

    .line 159
    invoke-virtual {v0, p1}, Lcom/twitter/android/dm/o;->c(Ljava/lang/String;)Lcom/twitter/android/dm/o;

    move-result-object v0

    .line 160
    invoke-static {p2}, Lcom/twitter/util/collection/CollectionUtils;->e(Ljava/util/Collection;)[J

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/o;->a([J)Lcom/twitter/android/dm/o;

    move-result-object v0

    const/4 v1, 0x1

    .line 161
    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/o;->a(Z)Lcom/twitter/android/dm/c;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dm/o;

    .line 162
    invoke-virtual {v0, p3}, Lcom/twitter/android/dm/o;->a(Ljava/lang/String;)Lcom/twitter/android/dm/c;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dm/o;

    .line 163
    invoke-virtual {v0, p4}, Lcom/twitter/android/dm/o;->a(Landroid/net/Uri;)Lcom/twitter/android/dm/o;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lcom/twitter/android/dm/o;->d()Lcom/twitter/android/dm/n;

    move-result-object v0

    .line 158
    invoke-static {p0, v0, p5}, Lcom/twitter/android/dm/r;->a(Landroid/content/Context;Lcom/twitter/android/dm/n;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/DMActivity;->startActivity(Landroid/content/Intent;)V

    .line 165
    if-eqz p5, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/twitter/android/DMActivity;->finish()V

    .line 168
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;[JLjava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/twitter/android/DMActivity;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    :goto_0
    return-void

    .line 519
    :cond_0
    iput-object p1, p0, Lcom/twitter/android/DMActivity;->b:Ljava/lang/String;

    .line 521
    invoke-direct {p0, p2, p3, p4}, Lcom/twitter/android/DMActivity;->b([JLjava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private a(Ljava/util/Set;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v1, p0, Lcom/twitter/android/DMActivity;->b:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/DMActivity;->a(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 148
    return-void
.end method

.method private a([JLjava/lang/String;Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/twitter/android/DMActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lbnx;->a(J[J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/twitter/android/DMActivity;->a(Ljava/lang/String;[JLjava/lang/String;Landroid/net/Uri;)V

    .line 507
    return-void
.end method

.method private a(Landroid/os/Bundle;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 228
    invoke-static {p1}, Lcom/twitter/android/dm/n;->b(Landroid/os/Bundle;)Lcom/twitter/android/dm/n;

    move-result-object v1

    .line 229
    invoke-virtual {v1}, Lcom/twitter/android/dm/n;->k()Ljava/lang/String;

    move-result-object v2

    .line 230
    invoke-virtual {v1}, Lcom/twitter/android/dm/n;->p()Z

    move-result v3

    iput-boolean v3, p0, Lcom/twitter/android/DMActivity;->c:Z

    .line 231
    if-eqz v2, :cond_1

    .line 232
    invoke-virtual {v1}, Lcom/twitter/android/dm/n;->o()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    const-string/jumbo v3, "dm:conversation_load"

    .line 234
    invoke-static {}, Layj;->b()Layj;

    move-result-object v4

    sget-object v5, Laxz;->m:Laye;

    .line 233
    invoke-static {v3, v4, v5}, Layp;->a(Ljava/lang/String;Layj;Laye;)Layp;

    move-result-object v3

    .line 234
    invoke-virtual {v3}, Layp;->i()V

    .line 236
    :cond_0
    invoke-virtual {v1}, Lcom/twitter/android/dm/n;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/twitter/android/dm/n;->l()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v2, v3, v1}, Lcom/twitter/android/DMActivity;->a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 246
    :goto_0
    return v0

    .line 240
    :cond_1
    invoke-virtual {v1}, Lcom/twitter/android/dm/n;->i()[J

    move-result-object v2

    .line 241
    if-eqz v2, :cond_2

    .line 242
    invoke-virtual {v1}, Lcom/twitter/android/dm/n;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/twitter/android/dm/n;->l()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v2, v3, v1}, Lcom/twitter/android/DMActivity;->a([JLjava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 246
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/os/Bundle;Ljava/lang/String;Z)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 256
    invoke-static {p1}, Lcom/twitter/android/dm/l;->b(Landroid/os/Bundle;)Lcom/twitter/android/dm/l;

    move-result-object v3

    .line 257
    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 258
    invoke-virtual {v3}, Lcom/twitter/android/dm/l;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    move v1, v2

    .line 259
    :goto_0
    invoke-virtual {v3}, Lcom/twitter/android/dm/l;->c()Ljava/lang/String;

    move-result-object v4

    .line 260
    if-nez p3, :cond_1

    invoke-virtual {v3}, Lcom/twitter/android/dm/l;->d()Z

    move-result v3

    invoke-direct {p0, v4, v3, v1}, Lcom/twitter/android/DMActivity;->a(Ljava/lang/String;ZZ)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 263
    :cond_1
    new-instance v0, Lcom/twitter/android/DMComposeFragment;

    invoke-direct {v0}, Lcom/twitter/android/DMComposeFragment;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/DMActivity;->f:Lcom/twitter/android/DMComposeFragment;

    .line 264
    iget-object v3, p0, Lcom/twitter/android/DMActivity;->f:Lcom/twitter/android/DMComposeFragment;

    new-instance v0, Lcom/twitter/android/dm/m;

    invoke-direct {v0, p1}, Lcom/twitter/android/dm/m;-><init>(Landroid/os/Bundle;)V

    .line 265
    invoke-virtual {v0, v4}, Lcom/twitter/android/dm/m;->a(Ljava/lang/String;)Lcom/twitter/android/dm/c;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dm/m;

    .line 266
    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/m;->d(Z)Lcom/twitter/android/dm/m;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Lcom/twitter/android/dm/m;->d()Lcom/twitter/android/dm/l;

    move-result-object v0

    .line 264
    invoke-virtual {v3, v0}, Lcom/twitter/android/DMComposeFragment;->a(Lcom/twitter/app/common/base/f;)V

    .line 268
    invoke-virtual {p0}, Lcom/twitter/android/DMActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f130143

    iget-object v3, p0, Lcom/twitter/android/DMActivity;->f:Lcom/twitter/android/DMComposeFragment;

    const-string/jumbo v4, "mthread"

    .line 270
    invoke-virtual {v0, v1, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 272
    const/4 v0, 0x2

    iput v0, p0, Lcom/twitter/android/DMActivity;->d:I

    move v0, v2

    .line 276
    :cond_2
    return v0

    :cond_3
    move v1, v0

    .line 258
    goto :goto_0
.end method

.method protected static a(Lcom/twitter/android/dm/b;)Z
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/twitter/android/dm/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/dm/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/twitter/android/dm/b;->h()Landroid/os/Bundle;

    move-result-object v0

    .line 293
    invoke-static {v0}, Lcom/twitter/android/dm/n;->b(Landroid/os/Bundle;)Lcom/twitter/android/dm/n;

    move-result-object v0

    .line 294
    invoke-virtual {v0}, Lcom/twitter/android/dm/n;->k()Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 292
    :goto_0
    return v0

    .line 293
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;ZZ)Z
    .locals 1

    .prologue
    .line 340
    invoke-static {p1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    if-eqz p2, :cond_1

    .line 341
    invoke-direct {p0}, Lcom/twitter/android/DMActivity;->r()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 340
    :goto_0
    return v0

    .line 341
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/twitter/android/DMActivity;)Lcom/twitter/android/DMConversationFragment;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/twitter/android/DMActivity;->e:Lcom/twitter/android/DMConversationFragment;

    return-object v0
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 298
    invoke-static {p1}, Lcom/twitter/android/dm/n;->b(Landroid/os/Bundle;)Lcom/twitter/android/dm/n;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Lcom/twitter/android/dm/n;->j()Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-virtual {v0}, Lcom/twitter/android/dm/n;->i()[J

    move-result-object v2

    .line 302
    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 303
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/DMActivity;->i()Landroid/app/ProgressDialog;

    move-result-object v3

    .line 305
    new-instance v4, Lcom/twitter/android/bu;

    invoke-direct {v4, p0, v3, v0}, Lcom/twitter/android/bu;-><init>(Lcom/twitter/android/DMActivity;Landroid/app/ProgressDialog;Lcom/twitter/android/dm/n;)V

    .line 317
    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 318
    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 319
    invoke-static {p0, v1, v4}, Lcom/twitter/android/dm/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/android/dm/g;)V

    .line 325
    :cond_1
    :goto_0
    return-void

    .line 322
    :cond_2
    const/4 v0, 0x0

    aget-wide v0, v2, v0

    invoke-static {p0, v0, v1, v4}, Lcom/twitter/android/dm/e;->a(Landroid/content/Context;JLcom/twitter/android/dm/g;)V

    goto :goto_0
.end method

.method private b([JLjava/lang/String;Landroid/net/Uri;)V
    .locals 5

    .prologue
    const v4, 0x7f130143

    const/4 v3, 0x3

    .line 526
    iget-object v0, p0, Lcom/twitter/android/DMActivity;->e:Lcom/twitter/android/DMConversationFragment;

    if-nez v0, :cond_1

    .line 527
    new-instance v0, Lcom/twitter/android/DMConversationFragment;

    invoke-direct {v0}, Lcom/twitter/android/DMConversationFragment;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/DMActivity;->e:Lcom/twitter/android/DMConversationFragment;

    .line 528
    iget-object v1, p0, Lcom/twitter/android/DMActivity;->e:Lcom/twitter/android/DMConversationFragment;

    new-instance v0, Lcom/twitter/android/dm/o;

    invoke-direct {v0}, Lcom/twitter/android/dm/o;-><init>()V

    .line 529
    invoke-virtual {v0, p3}, Lcom/twitter/android/dm/o;->a(Landroid/net/Uri;)Lcom/twitter/android/dm/o;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/android/DMActivity;->b:Ljava/lang/String;

    .line 530
    invoke-virtual {v0, v2}, Lcom/twitter/android/dm/o;->c(Ljava/lang/String;)Lcom/twitter/android/dm/o;

    move-result-object v0

    .line 531
    invoke-virtual {v0, p1}, Lcom/twitter/android/dm/o;->a([J)Lcom/twitter/android/dm/o;

    move-result-object v0

    const/4 v2, 0x1

    .line 532
    invoke-virtual {v0, v2}, Lcom/twitter/android/dm/o;->a(Z)Lcom/twitter/android/dm/c;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dm/o;

    .line 533
    invoke-virtual {v0, p2}, Lcom/twitter/android/dm/o;->a(Ljava/lang/String;)Lcom/twitter/android/dm/c;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dm/o;

    iget-boolean v2, p0, Lcom/twitter/android/DMActivity;->c:Z

    .line 534
    invoke-virtual {v0, v2}, Lcom/twitter/android/dm/o;->d(Z)Lcom/twitter/android/dm/o;

    move-result-object v0

    .line 535
    invoke-virtual {v0}, Lcom/twitter/android/dm/o;->d()Lcom/twitter/android/dm/n;

    move-result-object v0

    .line 528
    invoke-virtual {v1, v0}, Lcom/twitter/android/DMConversationFragment;->a(Lcom/twitter/app/common/base/f;)V

    .line 540
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/DMActivity;->e:Lcom/twitter/android/DMConversationFragment;

    invoke-virtual {v0, p0}, Lcom/twitter/android/DMConversationFragment;->a(Lcom/twitter/android/xt;)V

    .line 542
    iget v0, p0, Lcom/twitter/android/DMActivity;->d:I

    if-eq v0, v3, :cond_0

    .line 543
    invoke-virtual {p0}, Lcom/twitter/android/DMActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 544
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 546
    iget v1, p0, Lcom/twitter/android/DMActivity;->d:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 547
    iget-object v1, p0, Lcom/twitter/android/DMActivity;->e:Lcom/twitter/android/DMConversationFragment;

    const-string/jumbo v2, "mthread"

    invoke-virtual {v0, v4, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 552
    :goto_1
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 554
    iput v3, p0, Lcom/twitter/android/DMActivity;->d:I

    .line 556
    :cond_0
    return-void

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/DMActivity;->e:Lcom/twitter/android/DMConversationFragment;

    iget-object v1, p0, Lcom/twitter/android/DMActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/android/DMConversationFragment;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 549
    :cond_2
    iget-object v1, p0, Lcom/twitter/android/DMActivity;->e:Lcom/twitter/android/DMConversationFragment;

    const-string/jumbo v2, "mthread"

    invoke-virtual {v0, v4, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1
.end method

.method static synthetic c(Lcom/twitter/android/DMActivity;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/twitter/android/DMActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/android/DMActivity;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/twitter/android/DMActivity;->t()V

    return-void
.end method

.method static synthetic e(Lcom/twitter/android/DMActivity;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/twitter/android/DMActivity;->m()V

    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/twitter/android/DMActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f130143

    new-instance v2, Lcom/twitter/android/DMInboxFragment;

    invoke-direct {v2}, Lcom/twitter/android/DMInboxFragment;-><init>()V

    const-string/jumbo v3, "mthread"

    .line 283
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 285
    const/4 v0, 0x1

    iput v0, p0, Lcom/twitter/android/DMActivity;->d:I

    .line 286
    return-void
.end method

.method private i()Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 330
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 331
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 332
    const v1, 0x7f0a049e

    invoke-virtual {p0, v1}, Lcom/twitter/android/DMActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 333
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 334
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 335
    return-object v0
.end method

.method private l()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 345
    const v0, 0x7f1302d3

    invoke-virtual {p0, v0}, Lcom/twitter/android/DMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/SlidingPanel;

    .line 347
    new-instance v1, Lcom/twitter/android/dr;

    invoke-virtual {p0}, Lcom/twitter/android/DMActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/twitter/android/dr;-><init>(Landroid/app/Activity;Lcom/twitter/library/client/Session;Lcom/twitter/library/widget/SlidingPanel;)V

    iput-object v1, p0, Lcom/twitter/android/DMActivity;->g:Lcom/twitter/android/xo;

    .line 348
    iget-object v1, p0, Lcom/twitter/android/DMActivity;->g:Lcom/twitter/android/xo;

    invoke-virtual {v1, p0}, Lcom/twitter/android/xo;->a(Lcom/twitter/android/xs;)V

    .line 350
    invoke-virtual {v0, v3}, Lcom/twitter/library/widget/SlidingPanel;->a(I)V

    .line 351
    iget-object v1, p0, Lcom/twitter/android/DMActivity;->g:Lcom/twitter/android/xo;

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/SlidingPanel;->setPanelSlideListener(Lcom/twitter/library/widget/ad;)V

    .line 352
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/SlidingPanel;->setClipChildren(Z)V

    .line 353
    invoke-virtual {v0, v3}, Lcom/twitter/library/widget/SlidingPanel;->setFadeMode(I)V

    .line 354
    const v1, 0x106000c

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/SlidingPanel;->setCoveredFadeColor(I)V

    .line 355
    return-void
.end method

.method private m()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 466
    const/4 v0, 0x0

    .line 467
    iget v2, p0, Lcom/twitter/android/DMActivity;->d:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 468
    invoke-direct {p0}, Lcom/twitter/android/DMActivity;->p()V

    .line 479
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/DMActivity;->R()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 480
    invoke-virtual {p0}, Lcom/twitter/android/DMActivity;->k_()V

    .line 484
    :goto_1
    return-void

    .line 469
    :cond_1
    iget v2, p0, Lcom/twitter/android/DMActivity;->d:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 470
    invoke-direct {p0}, Lcom/twitter/android/DMActivity;->t()V

    .line 471
    iget-object v2, p0, Lcom/twitter/android/DMActivity;->e:Lcom/twitter/android/DMConversationFragment;

    invoke-virtual {v2}, Lcom/twitter/android/DMConversationFragment;->u()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 472
    invoke-direct {p0}, Lcom/twitter/android/DMActivity;->p()V

    move v0, v1

    .line 473
    goto :goto_0

    :cond_2
    move v0, v1

    .line 476
    goto :goto_0

    .line 482
    :cond_3
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onBackPressed()V

    goto :goto_1
.end method

.method private p()V
    .locals 2

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/twitter/android/DMActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 494
    if-eqz v0, :cond_0

    .line 495
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/twitter/util/ui/r;->b(Landroid/content/Context;Landroid/view/View;Z)V

    .line 497
    :cond_0
    return-void
.end method

.method private r()Z
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/twitter/android/DMActivity;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private s()Z
    .locals 2

    .prologue
    .line 562
    iget v0, p0, Lcom/twitter/android/DMActivity;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/DMActivity;->f:Lcom/twitter/android/DMComposeFragment;

    invoke-virtual {v0}, Lcom/twitter/android/DMComposeFragment;->i()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/twitter/android/DMActivity;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/twitter/android/DMActivity;->e:Lcom/twitter/android/DMConversationFragment;

    .line 563
    invoke-virtual {v0}, Lcom/twitter/android/DMConversationFragment;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 562
    :goto_0
    return v0

    .line 563
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private t()V
    .locals 4

    .prologue
    .line 567
    iget v0, p0, Lcom/twitter/android/DMActivity;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/DMActivity;->e:Lcom/twitter/android/DMConversationFragment;

    invoke-virtual {v0}, Lcom/twitter/android/DMConversationFragment;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    new-instance v0, Lcom/twitter/library/api/dm/requests/n;

    invoke-virtual {p0}, Lcom/twitter/android/DMActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/DMActivity;->b:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/twitter/library/api/dm/requests/n;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/DMActivity;->b(Lcom/twitter/library/service/x;I)Z

    .line 571
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 96
    const v0, 0x7f0400ac

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->d(I)V

    .line 97
    invoke-virtual {p2, v1}, Lcom/twitter/app/common/base/y;->a(Z)V

    .line 98
    invoke-virtual {p2, v1}, Lcom/twitter/app/common/base/y;->a(I)V

    .line 99
    iget v0, p0, Lcom/twitter/android/DMActivity;->d:I

    if-ne v0, v2, :cond_0

    .line 100
    invoke-virtual {p2, v2}, Lcom/twitter/app/common/base/y;->d(Z)V

    .line 102
    :cond_0
    return-object p2
.end method

.method public a()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/twitter/android/DMActivity;->g:Lcom/twitter/android/xo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/xo;->a(Z)V

    .line 390
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 6

    .prologue
    .line 152
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/DMActivity;->a(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 153
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 582
    return-void
.end method

.method public a(ZJLjava/lang/String;Lcss;)V
    .locals 4

    .prologue
    .line 588
    if-nez p1, :cond_0

    .line 589
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/DMActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "messages:view_participants:user_list:user:follow"

    aput-object v3, v1, v2

    .line 590
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 589
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 592
    :cond_0
    return-void
.end method

.method public a([J)V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/twitter/android/DMActivity;->g:Lcom/twitter/android/xo;

    invoke-virtual {p0}, Lcom/twitter/android/DMActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/twitter/android/xo;->a(Landroid/support/v4/app/LoaderManager;[J)V

    .line 385
    return-void
.end method

.method public a(Lcyd;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 134
    invoke-interface {p1}, Lcyd;->a()I

    move-result v1

    .line 135
    const v2, 0x7f1307cf

    if-ne v1, v2, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/twitter/android/DMActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 137
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "messages:compose:::next"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v1

    invoke-static {v1}, Lbjf;->a(Lbjh;)V

    .line 138
    iget-object v1, p0, Lcom/twitter/android/DMActivity;->f:Lcom/twitter/android/DMComposeFragment;

    invoke-virtual {v1}, Lcom/twitter/android/DMComposeFragment;->u()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/DMActivity;->f:Lcom/twitter/android/DMComposeFragment;

    invoke-virtual {v2}, Lcom/twitter/android/DMComposeFragment;->l()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/DMActivity;->f:Lcom/twitter/android/DMComposeFragment;

    .line 139
    invoke-virtual {v3}, Lcom/twitter/android/DMComposeFragment;->m()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/DMActivity;->f:Lcom/twitter/android/DMComposeFragment;

    invoke-virtual {v4}, Lcom/twitter/android/DMComposeFragment;->n()Z

    move-result v4

    .line 138
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/twitter/android/DMActivity;->a(Ljava/util/Set;Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 142
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Lcyd;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Lcyg;)Z
    .locals 2

    .prologue
    .line 107
    iget v0, p0, Lcom/twitter/android/DMActivity;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 108
    const v0, 0x7f14000e

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 110
    :cond_0
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Lcyg;)Z

    move-result v0

    return v0
.end method

.method public b(Lcyg;)I
    .locals 3

    .prologue
    .line 116
    invoke-interface {p1}, Lcyg;->j()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/ToolBar;

    .line 117
    const v1, 0x7f1307cf

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v1

    .line 118
    if-eqz v1, :cond_0

    .line 119
    iget v0, p0, Lcom/twitter/android/DMActivity;->d:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/twitter/android/DMActivity;->f:Lcom/twitter/android/DMComposeFragment;

    .line 120
    invoke-virtual {v0}, Lcom/twitter/android/DMComposeFragment;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 121
    :goto_0
    invoke-virtual {v1, v0}, Lbjl;->b(Z)Lbjl;

    .line 124
    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    .line 125
    invoke-interface {p1}, Lcyg;->f()V

    .line 128
    :cond_0
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->b(Lcyg;)I

    move-result v0

    return v0

    .line 120
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 172
    invoke-direct {p0}, Lcom/twitter/android/DMActivity;->l()V

    .line 174
    invoke-virtual {p0}, Lcom/twitter/android/DMActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 175
    if-nez p1, :cond_4

    .line 176
    invoke-virtual {p0}, Lcom/twitter/android/DMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 178
    :goto_0
    invoke-static {v0}, Lcom/twitter/android/dm/b;->a(Landroid/os/Bundle;)Lcom/twitter/android/dm/b;

    move-result-object v2

    .line 183
    invoke-static {v2}, Lcom/twitter/android/DMActivity;->a(Lcom/twitter/android/dm/b;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 184
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lcom/twitter/android/DMActivity;->a(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    .line 185
    invoke-direct {p0, v0}, Lcom/twitter/android/DMActivity;->b(Landroid/os/Bundle;)V

    .line 212
    :cond_0
    :goto_1
    new-instance v0, Lcom/twitter/android/bx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/bx;-><init>(Lcom/twitter/android/DMActivity;Lcom/twitter/android/bu;)V

    iput-object v0, p0, Lcom/twitter/android/DMActivity;->a:Lcom/twitter/android/bx;

    .line 213
    invoke-virtual {p0}, Lcom/twitter/android/DMActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/DMActivity;->a:Lcom/twitter/android/bx;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/bj;)V

    .line 215
    iget v0, p0, Lcom/twitter/android/DMActivity;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 216
    const v0, 0x7f1302d4

    invoke-virtual {p0, v0}, Lcom/twitter/android/DMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/ToolbarWrapperLayout;

    invoke-virtual {v0}, Lcom/twitter/library/widget/ToolbarWrapperLayout;->a()V

    .line 220
    :cond_1
    invoke-static {}, Lbnv;->a()Z

    .line 221
    return-void

    .line 177
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 186
    :cond_3
    invoke-direct {p0, v0}, Lcom/twitter/android/DMActivity;->a(Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 187
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/DMActivity;->a(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/twitter/android/DMActivity;->h()V

    goto :goto_1

    .line 191
    :cond_4
    const-string/jumbo v1, "optional_current_fragment"

    .line 192
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 193
    iput v1, p0, Lcom/twitter/android/DMActivity;->d:I

    .line 195
    iget v1, p0, Lcom/twitter/android/DMActivity;->d:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 203
    :pswitch_0
    const-string/jumbo v1, "mthread"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/DMComposeFragment;

    iput-object v0, p0, Lcom/twitter/android/DMActivity;->f:Lcom/twitter/android/DMComposeFragment;

    goto :goto_1

    .line 197
    :pswitch_1
    const-string/jumbo v1, "mthread"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/DMConversationFragment;

    iput-object v0, p0, Lcom/twitter/android/DMActivity;->e:Lcom/twitter/android/DMConversationFragment;

    .line 198
    const-string/jumbo v0, "conversation_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/DMActivity;->b:Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/twitter/android/DMActivity;->e:Lcom/twitter/android/DMConversationFragment;

    invoke-virtual {v0, p0}, Lcom/twitter/android/DMConversationFragment;->a(Lcom/twitter/android/xt;)V

    goto :goto_1

    .line 195
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public c()V
    .locals 4

    .prologue
    .line 576
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/DMActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "messages:view_participants:user_list:user:click"

    aput-object v3, v1, v2

    .line 577
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 576
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 578
    return-void
.end method

.method protected k_()V
    .locals 1

    .prologue
    .line 489
    sget-object v0, Lcom/twitter/app/main/MainActivity;->e:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/twitter/app/main/MainActivity;->a(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 490
    return-void
.end method

.method protected o()V
    .locals 1

    .prologue
    .line 458
    invoke-direct {p0}, Lcom/twitter/android/DMActivity;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/DMActivity;->showDialog(I)V

    .line 463
    :goto_0
    return-void

    .line 461
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/DMActivity;->m()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 373
    iget v0, p0, Lcom/twitter/android/DMActivity;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 374
    iget-object v0, p0, Lcom/twitter/android/DMActivity;->e:Lcom/twitter/android/DMConversationFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/twitter/android/DMConversationFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/DMActivity;->g:Lcom/twitter/android/xo;

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/twitter/android/DMActivity;->g:Lcom/twitter/android/xo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/twitter/android/xo;->a(IILandroid/content/Intent;)V

    .line 379
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 380
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/twitter/android/DMActivity;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/DMActivity;->showDialog(I)V

    .line 454
    :goto_0
    return-void

    .line 452
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/DMActivity;->m()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 412
    packed-switch p1, :pswitch_data_0

    .line 442
    :goto_0
    return-object v0

    .line 415
    :pswitch_0
    new-instance v1, Lcom/twitter/android/bv;

    invoke-direct {v1, p0}, Lcom/twitter/android/bv;-><init>(Lcom/twitter/android/DMActivity;)V

    .line 434
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a058d

    .line 435
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0034

    .line 436
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0285

    .line 437
    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a00fd

    .line 438
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 439
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 412
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/twitter/android/DMActivity;->t()V

    .line 367
    invoke-virtual {p0}, Lcom/twitter/android/DMActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/DMActivity;->a:Lcom/twitter/android/bx;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bk;->b(Lcom/twitter/library/client/bj;)V

    .line 368
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onDestroy()V

    .line 369
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 404
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 405
    iget-object v0, p0, Lcom/twitter/android/DMActivity;->g:Lcom/twitter/android/xo;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/twitter/android/DMActivity;->g:Lcom/twitter/android/xo;

    invoke-virtual {v0, p1}, Lcom/twitter/android/xo;->a(Landroid/os/Bundle;)V

    .line 408
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 359
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onResume()V

    .line 360
    invoke-static {p0}, Lcom/twitter/android/client/y;->a(Landroid/content/Context;)Lcom/twitter/android/client/y;

    move-result-object v0

    .line 361
    invoke-virtual {p0}, Lcom/twitter/android/DMActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    iget-object v1, p0, Lcom/twitter/android/DMActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/twitter/android/client/y;->a(JLjava/lang/String;)V

    .line 362
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 394
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 395
    const-string/jumbo v0, "conversation_id"

    iget-object v1, p0, Lcom/twitter/android/DMActivity;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string/jumbo v0, "optional_current_fragment"

    iget v1, p0, Lcom/twitter/android/DMActivity;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 397
    iget-object v0, p0, Lcom/twitter/android/DMActivity;->g:Lcom/twitter/android/xo;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/twitter/android/DMActivity;->g:Lcom/twitter/android/xo;

    invoke-virtual {v0, p1}, Lcom/twitter/android/xo;->b(Landroid/os/Bundle;)V

    .line 400
    :cond_0
    return-void
.end method
