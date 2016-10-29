.class public abstract Lcom/twitter/app/common/base/TwitterFragmentActivity;
.super Lcom/twitter/library/client/AbsFragmentActivity;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/client/bf;
.implements Lcom/twitter/android/hw;
.implements Lcom/twitter/library/client/s;


# instance fields
.field protected G:Lcom/twitter/android/composer/ComposerDockLayout;

.field protected H:Z

.field private a:Lcom/twitter/app/common/base/n;

.field private final b:Lcom/twitter/app/common/base/a;

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/twitter/library/client/aa;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/twitter/android/client/c;

.field private e:Lccf;

.field private f:Lcom/twitter/android/client/SearchSuggestionController;

.field private g:Lcom/twitter/app/common/base/y;

.field private h:Ljava/lang/CharSequence;

.field private i:Lcom/twitter/android/av/audio/g;

.field private j:Z

.field private k:Lcom/twitter/ui/view/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/twitter/library/client/AbsFragmentActivity;-><init>()V

    .line 179
    new-instance v0, Lcom/twitter/app/common/base/a;

    invoke-direct {v0}, Lcom/twitter/app/common/base/a;-><init>()V

    iput-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->b:Lcom/twitter/app/common/base/a;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->c:Ljava/util/ArrayList;

    .line 186
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->h:Ljava/lang/CharSequence;

    return-void
.end method

.method static synthetic a(Lcom/twitter/app/common/base/TwitterFragmentActivity;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 551
    invoke-static {p1}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    const/4 v0, 0x0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move v0, v1

    .line 566
    :goto_0
    return v0

    .line 555
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 556
    if-eqz v3, :cond_2

    const-string/jumbo v0, "sb_notification_handled"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 557
    const-string/jumbo v0, "sb_notification"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/notifications/StatusBarNotif;

    .line 558
    if-eqz v0, :cond_1

    .line 559
    invoke-virtual {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/twitter/android/client/NotificationService;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 561
    :cond_1
    invoke-static {p1}, Lcom/twitter/app/common/base/z;->b(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->j:Z

    .line 564
    const-string/jumbo v0, "sb_notification_handled"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    move v0, v2

    .line 566
    goto :goto_0
.end method

.method private i()V
    .locals 5

    .prologue
    .line 681
    invoke-virtual {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->Y()Lcom/twitter/internal/android/widget/ToolBar;

    move-result-object v1

    .line 682
    if-eqz v1, :cond_1

    .line 683
    invoke-virtual {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 686
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->h:Ljava/lang/CharSequence;

    invoke-static {v2}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 687
    const v2, 0x7f0a00ef

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->h:Ljava/lang/CharSequence;

    aput-object v4, v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 697
    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/internal/android/widget/ToolBar;->setTitleDescription(Ljava/lang/CharSequence;)V

    .line 699
    :cond_1
    return-void

    .line 689
    :cond_2
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 691
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->h:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 692
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->h:Ljava/lang/CharSequence;

    goto :goto_0

    .line 694
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private r()V
    .locals 2

    .prologue
    .line 781
    const-string/jumbo v0, "link_fetch_3760"

    invoke-static {v0}, Lcom/twitter/config/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    invoke-static {p0}, Lcom/twitter/android/client/c;->a(Landroid/content/Context;)Lcom/twitter/android/client/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/c;->g()Lcom/twitter/android/client/BrowserLoadingStatus;

    move-result-object v0

    .line 783
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/android/client/BrowserLoadingStatus;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 784
    const v1, 0x7f1301af

    invoke-virtual {p0, v1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/twitter/android/client/BrowserLoadingStatus;->a(Landroid/view/View;Landroid/app/Activity;)V

    .line 787
    :cond_0
    return-void
.end method


# virtual methods
.method protected A_()V
    .locals 1

    .prologue
    .line 749
    invoke-virtual {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/twitter/android/DispatchActivity;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 750
    return-void
.end method

.method public E()Z
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x1

    return v0
.end method

.method protected G()Lcom/twitter/android/composer/bf;
    .locals 1

    .prologue
    .line 384
    sget-object v0, Lcom/twitter/android/composer/bf;->a:Lcom/twitter/android/composer/bf;

    return-object v0
.end method

.method protected final H()Z
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->f:Lcom/twitter/android/client/SearchSuggestionController;

    invoke-virtual {v0}, Lcom/twitter/android/client/SearchSuggestionController;->d()Z

    move-result v0

    return v0
.end method

.method protected final I()Z
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->f:Lcom/twitter/android/client/SearchSuggestionController;

    invoke-virtual {v0}, Lcom/twitter/android/client/SearchSuggestionController;->e()Z

    move-result v0

    return v0
.end method

.method public J()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->h:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected K()Layj;
    .locals 1

    .prologue
    .line 702
    invoke-static {}, Layj;->b()Layj;

    move-result-object v0

    return-object v0
.end method

.method protected L()Lcom/twitter/android/client/c;
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->d:Lcom/twitter/android/client/c;

    return-object v0
.end method

.method protected M()Lcom/twitter/android/client/SearchSuggestionController;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->f:Lcom/twitter/android/client/SearchSuggestionController;

    return-object v0
.end method

.method protected N()Lcom/twitter/library/media/manager/l;
    .locals 1

    .prologue
    .line 714
    invoke-static {p0}, Lcom/twitter/library/media/manager/l;->a(Landroid/content/Context;)Lcom/twitter/library/media/manager/l;

    move-result-object v0

    return-object v0
.end method

.method protected O()Lccf;
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->e:Lccf;

    return-object v0
.end method

.method public P()Lcom/twitter/app/common/base/y;
    .locals 2

    .prologue
    .line 757
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->g:Lcom/twitter/app/common/base/y;

    if-nez v0, :cond_0

    .line 758
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ToolBarOptions have not been configured"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->g:Lcom/twitter/app/common/base/y;

    return-object v0
.end method

.method public Q()Lcom/twitter/android/av/audio/g;
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->i:Lcom/twitter/android/av/audio/g;

    return-object v0
.end method

.method protected R()Z
    .locals 1

    .prologue
    .line 790
    iget-boolean v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->j:Z

    return v0
.end method

.method protected final S()Lcom/twitter/app/common/base/n;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a:Lcom/twitter/app/common/base/n;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 0

    .prologue
    .line 405
    return-object p2
.end method

.method protected a(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->isTaskRoot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 615
    invoke-virtual {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onBackPressed()V

    .line 630
    :goto_0
    return-void

    .line 616
    :cond_0
    iget-boolean v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->j:Z

    if-eqz v0, :cond_1

    .line 617
    invoke-virtual {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 619
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->ad()Landroid/content/Intent;

    move-result-object v0

    .line 620
    if-eqz v0, :cond_2

    .line 621
    invoke-virtual {p0, p0, v0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0

    .line 623
    :cond_2
    invoke-virtual {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 624
    if-nez v0, :cond_3

    .line 627
    :goto_1
    invoke-static {p0, p1}, Lcom/twitter/app/main/MainActivity;->a(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_0

    :cond_3
    move-object p0, v0

    goto :goto_1
.end method

.method public a(Landroid/os/Bundle;Lcom/twitter/library/client/d;)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 210
    invoke-virtual {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 211
    invoke-direct {p0, v0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    invoke-static {p0}, Lcom/twitter/android/DispatchActivity;->a(Landroid/app/Activity;)V

    .line 296
    :goto_0
    return-void

    .line 216
    :cond_0
    new-instance v0, Lcom/twitter/android/av/audio/g;

    invoke-direct {v0, p0}, Lcom/twitter/android/av/audio/g;-><init>(Lcom/twitter/app/common/base/TwitterFragmentActivity;)V

    iput-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->i:Lcom/twitter/android/av/audio/g;

    .line 218
    const v0, 0x7f1302d5

    invoke-virtual {p0, v0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 219
    instance-of v1, v0, Lcom/twitter/android/composer/ComposerDockLayout;

    if-eqz v1, :cond_5

    .line 220
    new-instance v4, Lcom/twitter/app/common/base/w;

    invoke-direct {v4, p0}, Lcom/twitter/app/common/base/w;-><init>(Lcom/twitter/app/common/base/TwitterFragmentActivity;)V

    .line 256
    check-cast v0, Lcom/twitter/android/composer/ComposerDockLayout;

    .line 257
    const v1, 0x7f130367

    invoke-virtual {p0, v1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/FloatingActionButton;

    .line 258
    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ComposerDockLayout;->setFab(Landroid/support/design/widget/FloatingActionButton;)V

    .line 259
    if-eqz v1, :cond_2

    .line 260
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x16

    if-lt v5, v6, :cond_1

    .line 261
    const v5, 0x7f130364

    invoke-virtual {v1, v5}, Landroid/support/design/widget/FloatingActionButton;->setAccessibilityTraversalBefore(I)V

    .line 264
    :cond_1
    invoke-static {v1}, Lcom/twitter/ui/view/f;->a(Landroid/support/design/widget/FloatingActionButton;)Lcom/twitter/ui/view/f;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->k:Lcom/twitter/ui/view/f;

    .line 265
    iget-object v1, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->k:Lcom/twitter/ui/view/f;

    new-instance v5, Lcom/twitter/ui/view/b;

    .line 266
    invoke-virtual {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v6

    invoke-direct {v5, p0, v4, v6}, Lcom/twitter/ui/view/b;-><init>(Landroid/content/Context;Lcom/twitter/android/composer/bd;Lcom/twitter/library/client/bk;)V

    invoke-virtual {v1, v5}, Lcom/twitter/ui/view/f;->a(Lcom/twitter/ui/view/e;)V

    .line 268
    :cond_2
    iget-object v1, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->g:Lcom/twitter/app/common/base/y;

    iget v1, v1, Lcom/twitter/app/common/base/y;->c:I

    const/4 v5, 0x2

    if-eq v1, v5, :cond_3

    iget-object v1, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->g:Lcom/twitter/app/common/base/y;

    iget v1, v1, Lcom/twitter/app/common/base/y;->c:I

    if-eq v1, v7, :cond_3

    iget-object v1, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->g:Lcom/twitter/app/common/base/y;

    iget v1, v1, Lcom/twitter/app/common/base/y;->c:I

    if-ne v1, v8, :cond_7

    :cond_3
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->H:Z

    .line 271
    iget-boolean v1, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->H:Z

    if-eqz v1, :cond_9

    .line 272
    iget-object v1, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->g:Lcom/twitter/app/common/base/y;

    iget v1, v1, Lcom/twitter/app/common/base/y;->c:I

    if-ne v1, v7, :cond_4

    .line 273
    invoke-virtual {v0, v3}, Lcom/twitter/android/composer/ComposerDockLayout;->setBottomLocked(Z)V

    .line 275
    :cond_4
    iget-object v1, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->g:Lcom/twitter/app/common/base/y;

    iget v1, v1, Lcom/twitter/app/common/base/y;->c:I

    if-ne v1, v8, :cond_8

    .line 276
    invoke-virtual {v0, v3}, Lcom/twitter/android/composer/ComposerDockLayout;->setLoggedOutMode(Z)V

    .line 277
    invoke-virtual {v0, p0}, Lcom/twitter/android/composer/ComposerDockLayout;->a(Landroid/app/Activity;)V

    .line 284
    :goto_2
    iput-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->G:Lcom/twitter/android/composer/ComposerDockLayout;

    .line 287
    :cond_5
    invoke-static {p0}, Lbki;->a(Landroid/content/Context;)Lbki;

    move-result-object v0

    invoke-virtual {v0}, Lbki;->a()V

    .line 289
    const v0, 0x7f13072e

    invoke-virtual {p0, v0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_6

    .line 291
    iget-object v1, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->f:Lcom/twitter/android/client/SearchSuggestionController;

    .line 292
    invoke-static {v0}, Lcom/twitter/android/client/bl;->a(Landroid/view/View;)Lcom/twitter/android/client/bl;

    move-result-object v0

    .line 291
    invoke-virtual {v1, v0}, Lcom/twitter/android/client/SearchSuggestionController;->a(Lcom/twitter/android/client/bl;)V

    .line 295
    :cond_6
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->g:Lcom/twitter/app/common/base/y;

    invoke-virtual {p0, p1, v0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V

    goto/16 :goto_0

    :cond_7
    move v1, v2

    .line 268
    goto :goto_1

    .line 279
    :cond_8
    invoke-virtual {v0, v4}, Lcom/twitter/android/composer/ComposerDockLayout;->setComposerDockListener(Lcom/twitter/android/composer/bd;)V

    goto :goto_2

    .line 282
    :cond_9
    invoke-virtual {v0, v2}, Lcom/twitter/android/composer/ComposerDockLayout;->setBottomVisible(Z)V

    goto :goto_2
.end method

.method protected a(Lcom/twitter/library/client/aa;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 730
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    return-void
.end method

.method public a(Lcom/twitter/library/client/q;)V
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->b:Lcom/twitter/app/common/base/a;

    invoke-virtual {v0, p1}, Lcom/twitter/app/common/base/a;->a(Lcom/twitter/library/client/q;)V

    .line 740
    return-void
.end method

.method public a(Ljava/lang/CharSequence;Z)V
    .locals 1

    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->Z()Lcyj;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcyj;->b(Ljava/lang/CharSequence;Z)Z

    .line 676
    iput-object p1, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->h:Ljava/lang/CharSequence;

    .line 677
    invoke-direct {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->i()V

    .line 678
    return-void
.end method

.method public a(Lcyd;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 450
    invoke-interface {p1}, Lcyd;->a()I

    move-result v1

    .line 451
    sparse-switch v1, :sswitch_data_0

    .line 507
    invoke-super {p0, p1}, Lcom/twitter/library/client/AbsFragmentActivity;->a(Lcyd;)Z

    move-result v0

    :goto_0
    return v0

    .line 453
    :sswitch_0
    invoke-static {p0}, Lcom/twitter/android/settings/SettingsActivity;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 457
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/WebViewActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x7f0a0a84

    .line 458
    invoke-virtual {p0, v2}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 457
    invoke-virtual {p0, v1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 462
    :sswitch_2
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    invoke-virtual {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->finish()V

    goto :goto_0

    .line 468
    :cond_0
    invoke-super {p0, p1}, Lcom/twitter/library/client/AbsFragmentActivity;->a(Lcyd;)Z

    move-result v0

    goto :goto_0

    .line 472
    :sswitch_3
    invoke-virtual {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onSearchRequested()Z

    move-result v0

    goto :goto_0

    .line 475
    :sswitch_4
    invoke-static {p0}, Lcom/twitter/android/au;->a(Landroid/content/Context;)Lcom/twitter/android/au;

    move-result-object v1

    .line 476
    invoke-virtual {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0a8d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 477
    invoke-virtual {v1}, Lcom/twitter/android/au;->b()Ljava/lang/String;

    move-result-object v3

    .line 478
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Thanks for filing a bug!\n\n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "Summary: \n\n"

    .line 479
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "Steps to reproduce: \n\n"

    .line 480
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "Expected results: \n\n"

    .line 481
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "Actual results: \n\n"

    .line 482
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 483
    invoke-virtual {v1}, Lcom/twitter/android/au;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 484
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 486
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/twitter/android/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/twitter/util/concurrent/j;

    move-result-object v1

    new-instance v2, Lcom/twitter/util/concurrent/f;

    invoke-direct {v2}, Lcom/twitter/util/concurrent/f;-><init>()V

    sget-object v3, Lcom/twitter/util/concurrent/i;->b:Ljava/util/concurrent/Executor;

    .line 488
    invoke-virtual {v2, v3}, Lcom/twitter/util/concurrent/f;->a(Ljava/util/concurrent/Executor;)Lcom/twitter/util/concurrent/f;

    move-result-object v2

    new-instance v3, Lcom/twitter/app/common/base/x;

    invoke-direct {v3, p0}, Lcom/twitter/app/common/base/x;-><init>(Lcom/twitter/app/common/base/TwitterFragmentActivity;)V

    .line 489
    invoke-virtual {v2, v3}, Lcom/twitter/util/concurrent/f;->a(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/f;

    move-result-object v2

    .line 487
    invoke-interface {v1, v2}, Lcom/twitter/util/concurrent/j;->b(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/j;

    goto/16 :goto_0

    .line 499
    :sswitch_5
    invoke-virtual {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/twitter/library/network/narc/i;->a(Landroid/content/Context;Z)Ljava/lang/String;

    goto/16 :goto_0

    .line 503
    :sswitch_6
    invoke-virtual {p0, v0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->k(I)V

    goto/16 :goto_0

    .line 451
    :sswitch_data_0
    .sparse-switch
        0x7f13003d -> :sswitch_2
        0x7f1307c1 -> :sswitch_4
        0x7f1307cb -> :sswitch_6
        0x7f1307cc -> :sswitch_3
        0x7f1307f1 -> :sswitch_5
        0x7f130808 -> :sswitch_0
        0x7f130809 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Lcyg;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 414
    invoke-interface {p1}, Lcyg;->j()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/ToolBar;

    .line 415
    iget-object v1, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->g:Lcom/twitter/app/common/base/y;

    iget-boolean v1, v1, Lcom/twitter/app/common/base/y;->a:Z

    if-eqz v1, :cond_1

    .line 416
    const v1, 0x7f14000b

    invoke-interface {p1, v1}, Lcyg;->a(I)V

    .line 417
    iget-object v1, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->f:Lcom/twitter/android/client/SearchSuggestionController;

    invoke-virtual {v1, v0}, Lcom/twitter/android/client/SearchSuggestionController;->a(Lcom/twitter/internal/android/widget/ToolBar;)V

    .line 418
    const v1, 0x7f1307cb

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v1

    .line 419
    if-eqz v1, :cond_1

    .line 420
    invoke-virtual {v1}, Lbjl;->c()Landroid/view/View;

    move-result-object v2

    .line 421
    if-eqz v2, :cond_0

    .line 422
    const v3, 0x7f0a00e1

    invoke-virtual {p0, v3}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 424
    :cond_0
    iget-object v2, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->g:Lcom/twitter/app/common/base/y;

    iget v2, v2, Lcom/twitter/app/common/base/y;->c:I

    if-eq v2, v5, :cond_1

    .line 425
    invoke-virtual {v1, v4}, Lbjl;->b(Z)Lbjl;

    .line 429
    :cond_1
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v1

    .line 430
    invoke-virtual {v1}, Lcom/twitter/config/AppConfig;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 431
    const v1, 0x7f140004

    invoke-interface {p1, v1}, Lcyg;->a(I)V

    .line 441
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/twitter/android/ip;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 442
    invoke-virtual {v0, v4}, Lcom/twitter/internal/android/widget/ToolBar;->setDisplayShowHomeAsUpEnabled(Z)V

    .line 445
    :cond_3
    return v5

    .line 432
    :cond_4
    invoke-virtual {v1}, Lcom/twitter/config/AppConfig;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 433
    const v1, 0x7f14001f

    invoke-interface {p1, v1}, Lcyg;->a(I)V

    goto :goto_0
.end method

.method protected aD_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 392
    const v0, 0x7f0a01f6

    invoke-virtual {p0, v0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V
    .locals 0

    .prologue
    .line 410
    return-void
.end method

.method public b(Lcom/twitter/library/client/q;)V
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->b:Lcom/twitter/app/common/base/a;

    invoke-virtual {v0, p1}, Lcom/twitter/app/common/base/a;->b(Lcom/twitter/library/client/q;)V

    .line 745
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 669
    invoke-virtual {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->Z()Lcyj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcyj;->b(Ljava/lang/CharSequence;)Z

    .line 670
    iput-object p1, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->h:Ljava/lang/CharSequence;

    .line 671
    invoke-direct {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->i()V

    .line 672
    return-void
.end method

.method public final g(Landroid/os/Bundle;)Lcom/twitter/library/client/d;
    .locals 2

    .prologue
    .line 331
    invoke-static {p0}, Lcom/twitter/android/client/c;->a(Landroid/content/Context;)Lcom/twitter/android/client/c;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->d:Lcom/twitter/android/client/c;

    .line 332
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->d:Lcom/twitter/android/client/c;

    invoke-virtual {v0, p0}, Lcom/twitter/android/client/c;->c(Landroid/content/Context;)V

    .line 333
    invoke-static {p0}, Lccf;->a(Landroid/content/Context;)Lccf;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->e:Lccf;

    .line 334
    new-instance v0, Lcom/twitter/android/ji;

    invoke-direct {v0, p0}, Lcom/twitter/android/ji;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Lcom/twitter/library/client/aa;)V

    .line 335
    new-instance v0, Lcom/twitter/android/client/SearchSuggestionController;

    const/high16 v1, -0x80000000

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/client/SearchSuggestionController;-><init>(Landroid/support/v4/app/FragmentActivity;I)V

    iput-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->f:Lcom/twitter/android/client/SearchSuggestionController;

    .line 336
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->f:Lcom/twitter/android/client/SearchSuggestionController;

    invoke-virtual {v0, p1}, Lcom/twitter/android/client/SearchSuggestionController;->a(Landroid/os/Bundle;)V

    .line 337
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->f:Lcom/twitter/android/client/SearchSuggestionController;

    invoke-virtual {v0, p0}, Lcom/twitter/android/client/SearchSuggestionController;->a(Lcom/twitter/android/client/bf;)V

    .line 338
    new-instance v0, Lcom/twitter/app/common/base/y;

    invoke-direct {v0}, Lcom/twitter/app/common/base/y;-><init>()V

    .line 339
    invoke-static {}, Lcom/twitter/util/ui/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/y;->a(I)V

    .line 345
    :goto_0
    const v1, 0x7f040101

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/y;->d(I)V

    .line 346
    invoke-virtual {p0, p1, v0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->g:Lcom/twitter/app/common/base/y;

    .line 347
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->g:Lcom/twitter/app/common/base/y;

    return-object v0

    .line 342
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/y;->a(I)V

    goto :goto_0
.end method

.method public h(Z)V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->G:Lcom/twitter/android/composer/ComposerDockLayout;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->H:Z

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->G:Lcom/twitter/android/composer/ComposerDockLayout;

    invoke-virtual {v0, p1}, Lcom/twitter/android/composer/ComposerDockLayout;->setBottomVisible(Z)V

    .line 311
    :cond_0
    return-void
.end method

.method public j(I)V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->k:Lcom/twitter/ui/view/f;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->k:Lcom/twitter/ui/view/f;

    invoke-virtual {v0, p1}, Lcom/twitter/ui/view/f;->a(I)V

    .line 305
    :cond_0
    return-void
.end method

.method k(I)V
    .locals 3

    .prologue
    .line 368
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 369
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/twitter/app/drafts/DraftsActivity;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 377
    :goto_0
    return-void

    .line 371
    :cond_0
    invoke-static {}, Lcom/twitter/android/composer/ax;->a()Lcom/twitter/android/composer/ax;

    move-result-object v0

    .line 372
    invoke-virtual {v0, p1}, Lcom/twitter/android/composer/ax;->a(I)Lcom/twitter/android/composer/ax;

    move-result-object v0

    .line 373
    invoke-virtual {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->q_()[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/composer/ax;->a(Ljava/lang/String;[I)Lcom/twitter/android/composer/ax;

    move-result-object v0

    .line 374
    invoke-virtual {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->G()Lcom/twitter/android/composer/bf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ax;->a(Lcom/twitter/android/composer/bf;)Lcom/twitter/android/composer/ax;

    move-result-object v0

    .line 375
    invoke-virtual {v0, p0}, Lcom/twitter/android/composer/ax;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 371
    invoke-virtual {p0, v0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public l(I)V
    .locals 1

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->b(Ljava/lang/CharSequence;)V

    .line 666
    return-void
.end method

.method protected n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x0

    return-object v0
.end method

.method protected o()V
    .locals 1

    .prologue
    .line 602
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Landroid/net/Uri;)V

    .line 603
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 800
    invoke-static {p1}, Lcom/twitter/app/common/base/n;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    invoke-static {p3}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string/jumbo v1, "extra_perm_result"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a:Lcom/twitter/app/common/base/n;

    invoke-virtual {v0, p1, p3}, Lcom/twitter/app/common/base/n;->b(ILandroid/content/Intent;)V

    .line 804
    :cond_0
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->b:Lcom/twitter/app/common/base/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/twitter/app/common/base/a;->a(IILandroid/content/Intent;)V

    .line 805
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/library/client/AbsFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 806
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->f:Lcom/twitter/android/client/SearchSuggestionController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->f:Lcom/twitter/android/client/SearchSuggestionController;

    invoke-virtual {v0}, Lcom/twitter/android/client/SearchSuggestionController;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    :goto_0
    return-void

    .line 535
    :cond_0
    invoke-super {p0}, Lcom/twitter/library/client/AbsFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 776
    invoke-super {p0, p1}, Lcom/twitter/library/client/AbsFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 777
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->b:Lcom/twitter/app/common/base/a;

    invoke-virtual {v0, p1}, Lcom/twitter/app/common/base/a;->a(Landroid/content/res/Configuration;)V

    .line 778
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 201
    invoke-static {p0}, Lcom/twitter/android/client/c;->a(Landroid/content/Context;)Lcom/twitter/android/client/c;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->d:Lcom/twitter/android/client/c;

    .line 202
    new-instance v0, Lcom/twitter/app/common/base/n;

    invoke-direct {v0, p0}, Lcom/twitter/app/common/base/n;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a:Lcom/twitter/app/common/base/n;

    .line 203
    invoke-super {p0, p1}, Lcom/twitter/library/client/AbsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 205
    sget-object v0, Lcom/twitter/app/common/base/s;->a:Lcom/twitter/app/common/base/s;

    invoke-virtual {p0, v0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Lcom/twitter/app/common/util/w;)V

    .line 206
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 514
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->b:Lcom/twitter/app/common/base/a;

    invoke-virtual {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->isChangingConfigurations()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/a;->b(Z)V

    .line 515
    invoke-super {p0}, Lcom/twitter/library/client/AbsFragmentActivity;->onDestroy()V

    .line 516
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 520
    .line 521
    invoke-virtual {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->Z()Lcyj;

    move-result-object v1

    invoke-virtual {v1}, Lcyj;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x52

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->f:Lcom/twitter/android/client/SearchSuggestionController;

    .line 522
    invoke-virtual {v1}, Lcom/twitter/android/client/SearchSuggestionController;->c()Z

    move-result v1

    if-nez v1, :cond_2

    .line 523
    invoke-virtual {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->Z()Lcyj;

    move-result-object v1

    invoke-virtual {v1}, Lcyj;->f()Z

    move-result v1

    .line 525
    :goto_0
    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Lcom/twitter/library/client/AbsFragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 541
    invoke-super {p0, p1}, Lcom/twitter/library/client/AbsFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 542
    invoke-direct {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Landroid/content/Intent;)Z

    .line 543
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->H()Z

    .line 583
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/aa;

    .line 584
    iget-object v2, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->d:Lcom/twitter/android/client/c;

    invoke-virtual {v2, v0}, Lcom/twitter/android/client/c;->b(Lcom/twitter/library/client/aa;)V

    goto :goto_0

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->e:Lccf;

    invoke-virtual {v0}, Lccf;->d()V

    .line 588
    invoke-static {}, Lcom/twitter/library/metrics/g;->a()Lcom/twitter/library/metrics/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/metrics/g;->b()V

    .line 589
    invoke-super {p0}, Lcom/twitter/library/client/AbsFragmentActivity;->onPause()V

    .line 590
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->b:Lcom/twitter/app/common/base/a;

    invoke-virtual {v0}, Lcom/twitter/app/common/base/a;->c()V

    .line 591
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 571
    invoke-super {p0}, Lcom/twitter/library/client/AbsFragmentActivity;->onResume()V

    .line 572
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->b:Lcom/twitter/app/common/base/a;

    invoke-virtual {v0}, Lcom/twitter/app/common/base/a;->b()V

    .line 573
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/aa;

    .line 574
    iget-object v2, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->d:Lcom/twitter/android/client/c;

    invoke-virtual {v2, v0}, Lcom/twitter/android/client/c;->a(Lcom/twitter/library/client/aa;)V

    goto :goto_0

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->e:Lccf;

    invoke-virtual {v0}, Lccf;->e()V

    .line 577
    invoke-direct {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->r()V

    .line 578
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 595
    invoke-super {p0, p1}, Lcom/twitter/library/client/AbsFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 596
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->b:Lcom/twitter/app/common/base/a;

    invoke-virtual {v0, p1}, Lcom/twitter/app/common/base/a;->a(Landroid/os/Bundle;)V

    .line 597
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->f:Lcom/twitter/android/client/SearchSuggestionController;

    invoke-virtual {v0, p1}, Lcom/twitter/android/client/SearchSuggestionController;->b(Landroid/os/Bundle;)V

    .line 598
    return-void
.end method

.method public onSearchRequested()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 634
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/trends/TrendsPlusActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "type"

    const/16 v2, 0x1c

    .line 635
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "timeline_tag"

    const-string/jumbo v2, "TRENDSPLUS"

    .line 637
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "scribe_section"

    const-string/jumbo v2, "search"

    .line 639
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "scribe_page"

    const-string/jumbo v2, "trendsplus"

    .line 640
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 634
    invoke-virtual {p0, v0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 641
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "trendsplus::::search_icon_launch"

    aput-object v3, v1, v2

    .line 642
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 641
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 643
    return v4
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 357
    invoke-super {p0}, Lcom/twitter/library/client/AbsFragmentActivity;->onStart()V

    .line 358
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->b:Lcom/twitter/app/common/base/a;

    invoke-virtual {v0}, Lcom/twitter/app/common/base/a;->a()V

    .line 359
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;->b:Lcom/twitter/app/common/base/a;

    invoke-virtual {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->isChangingConfigurations()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/a;->a(Z)V

    .line 364
    invoke-super {p0}, Lcom/twitter/library/client/AbsFragmentActivity;->onStop()V

    .line 365
    return-void
.end method

.method public p_()V
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->h(Z)V

    .line 327
    return-void
.end method

.method protected q_()[I
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 656
    invoke-super {p0, p1}, Lcom/twitter/library/client/AbsFragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 657
    invoke-direct {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->i()V

    .line 658
    return-void
.end method

.method public z_()V
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->h(Z)V

    .line 319
    return-void
.end method
