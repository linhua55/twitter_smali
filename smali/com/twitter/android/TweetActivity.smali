.class public Lcom/twitter/android/TweetActivity;
.super Lcom/twitter/android/ActivityWithProgress;
.source "Twttr"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Laxg;
.implements Lcom/twitter/app/common/base/m;
.implements Lcom/twitter/library/media/util/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/ActivityWithProgress;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Laxg;",
        "Lcom/twitter/app/common/base/m;",
        "Lcom/twitter/library/media/util/a;"
    }
.end annotation


# instance fields
.field private A:Lawp;

.field private B:Laxh;

.field private C:Z

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field c:Lcom/twitter/library/client/Session;

.field d:Lcom/twitter/model/core/Tweet;

.field e:Lawi;

.field f:Lcom/twitter/library/service/z;

.field private g:J

.field private h:Landroid/net/Uri;

.field private i:Ljava/lang/String;

.field private j:[Ljava/lang/String;

.field private k:Z

.field private l:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private m:Lcom/twitter/library/scribe/TwitterScribeItem;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Lcom/twitter/android/media/selection/MediaAttachmentController;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:J

.field private u:Landroid/net/Uri;

.field private v:Lcom/twitter/model/core/Tweet;

.field private w:Landroid/widget/RelativeLayout;

.field private x:Z

.field private y:Z

.field private z:Lcom/twitter/model/timeline/al;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 151
    invoke-direct {p0}, Lcom/twitter/android/ActivityWithProgress;-><init>()V

    .line 247
    iput-boolean v0, p0, Lcom/twitter/android/TweetActivity;->r:Z

    .line 248
    iput-boolean v0, p0, Lcom/twitter/android/TweetActivity;->s:Z

    .line 249
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/twitter/android/TweetActivity;->t:J

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/TweetActivity;->y:Z

    return-void
.end method

.method private A()Lcom/twitter/app/common/base/BaseFragment;
    .locals 1

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->e:Lawi;

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/base/BaseFragment;

    return-object v0
.end method

.method private B()Lcom/twitter/app/common/list/TwitterListFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Lcom/twitter/app/common/list/TwitterListFragment;",
            ":",
            "Lawi;",
            ">()TF;"
        }
    .end annotation

    .prologue
    .line 1577
    invoke-static {}, Lcbh;->a()Lcbh;

    move-result-object v0

    invoke-virtual {v0}, Lcbh;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1578
    new-instance v0, Lcom/twitter/android/TweetFragment2;

    invoke-direct {v0}, Lcom/twitter/android/TweetFragment2;-><init>()V

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/TwitterListFragment;

    .line 1580
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/twitter/android/TweetFragment;

    invoke-direct {v0}, Lcom/twitter/android/TweetFragment;-><init>()V

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/TwitterListFragment;

    goto :goto_0
.end method

.method private C()V
    .locals 3

    .prologue
    .line 1585
    invoke-static {}, Lcbh;->a()Lcbh;

    move-result-object v0

    invoke-virtual {v0}, Lcbh;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1586
    const-string/jumbo v0, "urt_conv:focal:complete"

    .line 1587
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->K()Layj;

    move-result-object v1

    sget-object v2, Laxz;->n:Laye;

    .line 1586
    invoke-static {v0, v1, v2}, Lcom/twitter/library/metrics/f;->b(Ljava/lang/String;Layj;Laye;)Lcom/twitter/library/metrics/f;

    move-result-object v0

    .line 1587
    invoke-virtual {v0}, Lcom/twitter/library/metrics/f;->i()V

    .line 1588
    const-string/jumbo v0, "urt_conv:complete"

    .line 1589
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->K()Layj;

    move-result-object v1

    sget-object v2, Laxz;->n:Laye;

    .line 1588
    invoke-static {v0, v1, v2}, Lcom/twitter/library/metrics/f;->b(Ljava/lang/String;Layj;Laye;)Lcom/twitter/library/metrics/f;

    move-result-object v0

    .line 1589
    invoke-virtual {v0}, Lcom/twitter/library/metrics/f;->i()V

    .line 1596
    :goto_0
    return-void

    .line 1591
    :cond_0
    const-string/jumbo v0, "tweet:focal:complete"

    .line 1592
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->K()Layj;

    move-result-object v1

    sget-object v2, Laxz;->n:Laye;

    .line 1591
    invoke-static {v0, v1, v2}, Lcom/twitter/library/metrics/f;->b(Ljava/lang/String;Layj;Laye;)Lcom/twitter/library/metrics/f;

    move-result-object v0

    .line 1592
    invoke-virtual {v0}, Lcom/twitter/library/metrics/f;->i()V

    .line 1593
    const-string/jumbo v0, "tweet:complete"

    .line 1594
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->K()Layj;

    move-result-object v1

    sget-object v2, Laxz;->n:Laye;

    .line 1593
    invoke-static {v0, v1, v2}, Lcom/twitter/library/metrics/f;->b(Ljava/lang/String;Layj;Laye;)Lcom/twitter/library/metrics/f;

    move-result-object v0

    .line 1594
    invoke-virtual {v0}, Lcom/twitter/library/metrics/f;->i()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/TweetActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/twitter/android/TweetActivity;->h:Landroid/net/Uri;

    return-object p1
.end method

.method private a(IIILandroid/view/View$OnClickListener;)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 1532
    const v0, 0x7f130143

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1533
    invoke-virtual {p0, p1}, Lcom/twitter/android/TweetActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1532
    invoke-static {p0, v0, v1, p2}, Lcom/twitter/ui/widget/u;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 1534
    if-eqz p4, :cond_0

    .line 1535
    invoke-virtual {p0, p3}, Lcom/twitter/android/TweetActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/support/design/widget/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    .line 1537
    :cond_0
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 1538
    return-void
.end method

.method private a(JLjava/util/List;Ljava/util/Set;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 875
    new-instance v1, Lbrr;

    iget-object v3, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    move-object v2, p0

    move-wide v4, p1

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v1 .. v9}, Lbrr;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JJLjava/util/List;Ljava/util/Set;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/TweetActivity;->b(Lcom/twitter/library/service/x;I)Z

    .line 877
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/TweetActivity;Lcom/twitter/model/core/Tweet;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/twitter/android/TweetActivity;->b(Lcom/twitter/model/core/Tweet;)V

    return-void
.end method

.method private a(Lcom/twitter/internal/android/widget/ToolBar;)V
    .locals 6

    .prologue
    .line 1124
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 1125
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1126
    const v1, 0x7f130801

    invoke-virtual {p1, v1}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v1

    .line 1127
    if-eqz v1, :cond_0

    .line 1129
    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    if-eqz v2, :cond_1

    .line 1130
    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    sget-object v3, Lcom/twitter/util/math/Size;->b:Lcom/twitter/util/math/Size;

    .line 1131
    invoke-static {v2, v3}, Lcug;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/util/math/Size;)Ljava/util/List;

    move-result-object v2

    .line 1132
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcuk;->a(Ljava/util/List;J)Z

    move-result v0

    .line 1136
    :goto_0
    invoke-virtual {v1, v0}, Lbjl;->b(Z)Lbjl;

    .line 1139
    :cond_0
    return-void

    .line 1134
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/twitter/library/service/aa;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1483
    invoke-virtual {p1}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1484
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 1485
    const v0, 0x7f0a0583

    const v1, 0x7f0a0584

    new-instance v2, Lcom/twitter/android/tw;

    invoke-direct {v2, p0}, Lcom/twitter/android/tw;-><init>(Lcom/twitter/android/TweetActivity;)V

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/twitter/android/TweetActivity;->a(IIILandroid/view/View$OnClickListener;)V

    .line 1495
    :goto_0
    return-void

    .line 1493
    :cond_0
    const v0, 0x7f0a0582

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;III)V
    .locals 2

    .prologue
    .line 500
    invoke-virtual {p0, p2}, Lcom/twitter/android/TweetActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/twitter/android/TweetActivity;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 502
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->w:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/twitter/android/tt;

    invoke-direct {v1, p0, p1, p4}, Lcom/twitter/android/tt;-><init>(Lcom/twitter/android/TweetActivity;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 563
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "tweet:notification_landing"

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    const/4 v2, 0x2

    const-string/jumbo v3, ":impression"

    aput-object v3, v1, v2

    .line 564
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 563
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 566
    iput-boolean v5, p0, Lcom/twitter/android/TweetActivity;->r:Z

    .line 567
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 569
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->w:Landroid/widget/RelativeLayout;

    const v1, 0x7f1307a2

    .line 570
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TypefacesTextView;

    .line 571
    invoke-virtual {v0, p2}, Lcom/twitter/ui/widget/TypefacesTextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    const v0, 0x7f1307a1

    .line 574
    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 575
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 576
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/TweetActivity;)Z
    .locals 1

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/twitter/android/TweetActivity;->u()Z

    move-result v0

    return v0
.end method

.method private b(Lcom/twitter/internal/android/widget/ToolBar;)Lbjl;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1455
    const v2, 0x7f1307ed

    invoke-virtual {p1, v2}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v2

    .line 1456
    if-eqz v2, :cond_1

    .line 1457
    iget-boolean v3, p0, Lcom/twitter/android/TweetActivity;->y:Z

    if-eqz v3, :cond_3

    .line 1458
    iget-object v3, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v3}, Lcom/twitter/model/core/Tweet;->F()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 1459
    :cond_0
    if-eqz v0, :cond_2

    .line 1460
    const v0, 0x7f0a0921

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lbjl;->a(Ljava/lang/CharSequence;)Lbjl;

    .line 1464
    :goto_0
    invoke-virtual {v2, v1}, Lbjl;->b(Z)Lbjl;

    .line 1469
    :cond_1
    :goto_1
    return-object v2

    .line 1462
    :cond_2
    const v0, 0x7f0a0581

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lbjl;->a(Ljava/lang/CharSequence;)Lbjl;

    goto :goto_0

    .line 1466
    :cond_3
    invoke-virtual {v2, v0}, Lbjl;->b(Z)Lbjl;

    goto :goto_1
.end method

.method static synthetic b(Lcom/twitter/android/TweetActivity;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/twitter/android/TweetActivity;->t()V

    return-void
.end method

.method private b(Lcom/twitter/library/service/aa;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1508
    invoke-virtual {p1}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1509
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 1510
    const v0, 0x7f0a0923

    const v1, 0x7f0a0584

    new-instance v2, Lcom/twitter/android/tx;

    invoke-direct {v2, p0}, Lcom/twitter/android/tx;-><init>(Lcom/twitter/android/TweetActivity;)V

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/twitter/android/TweetActivity;->a(IIILandroid/view/View$OnClickListener;)V

    .line 1520
    :goto_0
    return-void

    .line 1518
    :cond_0
    const v0, 0x7f0a0922

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private b(Lcom/twitter/model/core/Tweet;)V
    .locals 2

    .prologue
    .line 596
    invoke-static {}, Lcom/twitter/android/composer/ax;->a()Lcom/twitter/android/composer/ax;

    move-result-object v0

    .line 597
    invoke-direct {p0, p1}, Lcom/twitter/android/TweetActivity;->c(Lcom/twitter/model/core/Tweet;)Lcom/twitter/model/drafts/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ax;->a(Lcom/twitter/model/drafts/d;)Lcom/twitter/android/composer/ax;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->A:Lawp;

    .line 598
    invoke-interface {v1}, Lawp;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ax;->a(Z)Lcom/twitter/android/composer/ax;

    move-result-object v0

    .line 599
    invoke-virtual {v0, p1}, Lcom/twitter/android/composer/ax;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/composer/ax;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    .line 600
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ax;->b(Ljava/lang/String;)Lcom/twitter/android/composer/ax;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->A:Lawp;

    .line 601
    invoke-interface {v1}, Lawp;->m()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ax;->a([I)Lcom/twitter/android/composer/ax;

    move-result-object v0

    .line 602
    invoke-virtual {v0, p0}, Lcom/twitter/android/composer/ax;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 603
    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->A:Lawp;

    invoke-interface {v1}, Lawp;->k()V

    .line 604
    const/16 v1, 0x66

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/TweetActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 605
    return-void
.end method

.method private static b(Landroid/net/Uri;)[Ljava/lang/String;
    .locals 3

    .prologue
    .line 1184
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 1187
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1188
    const-string/jumbo v1, "status_groups_retweets_view"

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1189
    sget-object v0, Lcho;->b:[Ljava/lang/String;

    .line 1195
    :goto_0
    return-object v0

    .line 1192
    :cond_0
    new-instance v0, Lbiv;

    invoke-direct {v0}, Lbiv;-><init>()V

    const-string/jumbo v1, "activity.uri"

    .line 1193
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Partial content requested"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1194
    invoke-virtual {v0, v1}, Lbiv;->a(Ljava/lang/Throwable;)Lbiv;

    move-result-object v0

    .line 1192
    invoke-static {v0}, Lbix;->a(Lbiv;)V

    .line 1195
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic c(Lcom/twitter/android/TweetActivity;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcom/twitter/model/core/Tweet;)Lcom/twitter/model/drafts/d;
    .locals 4

    .prologue
    .line 1426
    new-instance v0, Lcom/twitter/model/drafts/e;

    invoke-direct {v0}, Lcom/twitter/model/drafts/e;-><init>()V

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->A:Lawp;

    .line 1427
    invoke-interface {v1}, Lawp;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/drafts/e;->a(Ljava/lang/String;)Lcom/twitter/model/drafts/e;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->A:Lawp;

    .line 1428
    invoke-interface {v1}, Lawp;->i()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/drafts/e;->a(Ljava/util/List;)Lcom/twitter/model/drafts/e;

    move-result-object v0

    .line 1429
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/drafts/e;->a(Lcss;)Lcom/twitter/model/drafts/e;

    move-result-object v0

    .line 1430
    invoke-static {}, Lcaq;->a()Lcaq;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcaq;->a(Lcom/twitter/model/core/Tweet;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/drafts/e;->b(J)Lcom/twitter/model/drafts/e;

    move-result-object v0

    .line 1431
    invoke-static {}, Lcaq;->a()Lcaq;

    move-result-object v1

    invoke-virtual {v1}, Lcaq;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/drafts/e;->a(Z)Lcom/twitter/model/drafts/e;

    move-result-object v0

    .line 1432
    invoke-virtual {v0}, Lcom/twitter/model/drafts/e;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/drafts/d;

    .line 1426
    return-object v0
.end method

.method static synthetic d(Lcom/twitter/android/TweetActivity;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method private d(Lcom/twitter/model/core/Tweet;)V
    .locals 6

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->e:Lawi;

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    iget-object v3, p0, Lcom/twitter/android/TweetActivity;->n:Ljava/lang/String;

    iget v4, p0, Lcom/twitter/android/TweetActivity;->o:I

    iget-boolean v5, p0, Lcom/twitter/android/TweetActivity;->r:Z

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lawi;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/client/Session;Ljava/lang/String;IZ)V

    .line 1548
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/TweetActivity;->x:Z

    .line 1549
    iput-object p1, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    .line 1550
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->Z()Lcyj;

    move-result-object v0

    invoke-virtual {v0}, Lcyj;->h()V

    .line 1551
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->A:Lawp;

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    invoke-interface {v0, v1}, Lawp;->a(Lcom/twitter/model/core/Tweet;)V

    .line 1552
    invoke-direct {p0}, Lcom/twitter/android/TweetActivity;->l()V

    .line 1553
    return-void
.end method

.method static synthetic e(Lcom/twitter/android/TweetActivity;)Lcom/twitter/model/core/Tweet;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->v:Lcom/twitter/model/core/Tweet;

    return-object v0
.end method

.method static synthetic f(Lcom/twitter/android/TweetActivity;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/twitter/android/TweetActivity;->y()V

    return-void
.end method

.method static synthetic g(Lcom/twitter/android/TweetActivity;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/twitter/android/TweetActivity;->x()V

    return-void
.end method

.method private h()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 454
    const-string/jumbo v0, "vit_show_push_notif_context_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    iput-boolean v1, p0, Lcom/twitter/android/TweetActivity;->r:Z

    .line 496
    :goto_0
    return-void

    .line 458
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 459
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 461
    invoke-static {v3}, Lcom/twitter/android/util/bs;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 462
    invoke-static {v4}, Lcom/twitter/android/util/bs;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 463
    iput-boolean v1, p0, Lcom/twitter/android/TweetActivity;->r:Z

    goto :goto_0

    .line 466
    :cond_1
    const v0, 0x7f130763

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->w:Landroid/widget/RelativeLayout;

    .line 468
    const/4 v0, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 491
    iput-boolean v1, p0, Lcom/twitter/android/TweetActivity;->r:Z

    .line 492
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 468
    :sswitch_0
    const-string/jumbo v5, "r"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string/jumbo v5, "f"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string/jumbo v5, "e"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    .line 470
    :pswitch_0
    const-string/jumbo v0, "vit_retweet_spike"

    const v1, 0x7f0a09ab

    const v2, 0x7f020265

    const/16 v3, 0xc

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/twitter/android/TweetActivity;->a(Ljava/lang/String;III)V

    goto :goto_0

    .line 477
    :pswitch_1
    const-string/jumbo v0, "vit_favorite_spike"

    const v1, 0x7f0a09a1

    const v2, 0x7f02025e

    const/16 v3, 0xb

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/twitter/android/TweetActivity;->a(Ljava/lang/String;III)V

    goto :goto_0

    .line 483
    :pswitch_2
    invoke-static {v3}, Lcom/twitter/android/util/bs;->a(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/TweetActivity;->t:J

    .line 484
    iget-wide v0, p0, Lcom/twitter/android/TweetActivity;->t:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    .line 485
    iput-boolean v2, p0, Lcom/twitter/android/TweetActivity;->r:Z

    .line 487
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 468
    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_2
        0x66 -> :sswitch_1
        0x72 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private i()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 536
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->v:Lcom/twitter/model/core/Tweet;

    if-nez v0, :cond_0

    .line 537
    iput-boolean v4, p0, Lcom/twitter/android/TweetActivity;->r:Z

    .line 556
    :goto_0
    return-void

    .line 541
    :cond_0
    const-string/jumbo v0, "vit_tweet_embedded"

    const v1, 0x7f0a09ac

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/twitter/android/TweetActivity;->v:Lcom/twitter/model/core/Tweet;

    iget-object v3, v3, Lcom/twitter/model/core/Tweet;->v:Ljava/lang/String;

    aput-object v3, v2, v4

    .line 542
    invoke-virtual {p0, v1, v2}, Lcom/twitter/android/TweetActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020647

    .line 541
    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/TweetActivity;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 546
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->w:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/twitter/android/tu;

    invoke-direct {v1, p0}, Lcom/twitter/android/tu;-><init>(Lcom/twitter/android/TweetActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 608
    invoke-direct {p0}, Lcom/twitter/android/TweetActivity;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 617
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->A:Lawp;

    invoke-interface {v0}, Lawp;->h()V

    .line 619
    :cond_0
    return-void
.end method

.method private m()V
    .locals 4

    .prologue
    .line 1058
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "tweet"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    .line 1059
    invoke-static {v3}, Lcom/twitter/model/core/Tweet;->b(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "block_dialog"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "block"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1058
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1060
    invoke-direct {p0}, Lcom/twitter/android/TweetActivity;->p()V

    .line 1061
    return-void
.end method

.method private p()V
    .locals 8

    .prologue
    .line 1064
    new-instance v1, Lbrc;

    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v3

    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    iget-wide v4, v0, Lcom/twitter/model/core/Tweet;->o:J

    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    .line 1065
    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v6

    const/4 v7, 0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lbrc;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcss;I)V

    const/4 v0, 0x4

    .line 1064
    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/TweetActivity;->b(Lcom/twitter/library/service/x;I)Z

    .line 1067
    return-void
.end method

.method private r()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1071
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_1

    .line 1074
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    iget-wide v0, v0, Lcom/twitter/model/core/Tweet;->q:J

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/library/provider/cn;->a(JJ)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->h:Landroid/net/Uri;

    .line 1075
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/TweetActivity;->x:Z

    .line 1076
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v5, v4, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 1116
    :cond_0
    :goto_0
    return-void

    .line 1078
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1080
    if-eqz v1, :cond_6

    .line 1081
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1082
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1083
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 1084
    const-string/jumbo v3, "twitter"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1086
    :try_start_0
    const-string/jumbo v0, "status_id"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1087
    if-nez v0, :cond_2

    .line 1088
    const-string/jumbo v0, "id"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1091
    :cond_2
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1092
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 1093
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1103
    :catch_0
    move-exception v0

    .line 1104
    invoke-direct {p0}, Lcom/twitter/android/TweetActivity;->s()V

    goto :goto_0

    .line 1095
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/library/provider/cn;->a(JJ)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->h:Landroid/net/Uri;

    .line 1096
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 1097
    iget-wide v0, p0, Lcom/twitter/android/TweetActivity;->t:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1098
    iget-wide v0, p0, Lcom/twitter/android/TweetActivity;->t:J

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    .line 1099
    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 1098
    invoke-static {v0, v1, v2, v3}, Lcom/twitter/library/provider/cn;->a(JJ)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->u:Landroid/net/Uri;

    .line 1100
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1106
    :cond_4
    const-string/jumbo v2, "vnd.android.cursor.item/vnd.twitter.android.statuses"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1107
    iput-object v1, p0, Lcom/twitter/android/TweetActivity;->h:Landroid/net/Uri;

    .line 1108
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v5, v4, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto/16 :goto_0

    .line 1110
    :cond_5
    invoke-direct {p0}, Lcom/twitter/android/TweetActivity;->s()V

    goto/16 :goto_0

    .line 1113
    :cond_6
    invoke-direct {p0}, Lcom/twitter/android/TweetActivity;->s()V

    goto/16 :goto_0
.end method

.method private s()V
    .locals 2

    .prologue
    .line 1119
    const v0, 0x7f0a0904

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1120
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->finish()V

    .line 1121
    return-void
.end method

.method private t()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 1405
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    if-nez v0, :cond_0

    .line 1408
    const v0, 0x7f0a0904

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1423
    :goto_0
    return-void

    .line 1412
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->x_()V

    .line 1413
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetActivity;->c(Lcom/twitter/model/core/Tweet;)Lcom/twitter/model/drafts/d;

    move-result-object v0

    .line 1414
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    invoke-static {v1, v2, v0}, Lcom/twitter/android/client/bv;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/model/drafts/d;)Ljava/lang/String;

    .line 1415
    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->e:Lawi;

    invoke-interface {v1}, Lawi;->t()V

    .line 1417
    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 1418
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    .line 1419
    invoke-virtual {v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->i()Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "tweet:composition:::send_reply"

    aput-object v6, v4, v5

    .line 1420
    invoke-virtual {v1, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v1

    .line 1418
    invoke-static {v1}, Lbjf;->a(Lbjh;)V

    .line 1421
    sget-object v1, Lcom/twitter/android/composer/ComposerType;->b:Lcom/twitter/android/composer/ComposerType;

    iget-object v0, v0, Lcom/twitter/model/drafts/d;->d:Ljava/util/List;

    invoke-static {v2, v3, v1, v0}, Lcom/twitter/android/composer/bk;->a(JLcom/twitter/android/composer/ComposerType;Ljava/util/List;)V

    .line 1422
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->A:Lawp;

    invoke-interface {v0}, Lawp;->k()V

    goto :goto_0
.end method

.method private u()Z
    .locals 1

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->ar()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private v()V
    .locals 4

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    .line 1441
    new-instance v0, Lbre;

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    invoke-direct {v0, p0, v1}, Lbre;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v1, Lcom/twitter/model/core/Tweet;->o:J

    invoke-virtual {v0, v2, v3}, Lbre;->a(J)Lbra;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/TweetActivity;->b(Lcom/twitter/library/service/x;I)Z

    .line 1444
    :cond_0
    return-void
.end method

.method private w()V
    .locals 4

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    .line 1448
    new-instance v0, Lbri;

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    invoke-direct {v0, p0, v1}, Lbri;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v1, Lcom/twitter/model/core/Tweet;->o:J

    invoke-virtual {v0, v2, v3}, Lbri;->a(J)Lbra;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/TweetActivity;->b(Lcom/twitter/library/service/x;I)Z

    .line 1451
    :cond_0
    return-void
.end method

.method private x()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1474
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    .line 1475
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->Y()Ljava/lang/String;

    move-result-object v0

    .line 1476
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "tweet"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v5, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    const-string/jumbo v3, "mute_conversation"

    aput-object v3, v2, v0

    .line 1477
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1476
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1478
    new-instance v0, Lbrd;

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v2, Lcom/twitter/model/core/Tweet;->q:J

    invoke-direct {v0, p0, v1, v2, v3}, Lbrd;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;J)V

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/TweetActivity;->b(Lcom/twitter/library/service/x;I)Z

    .line 1480
    :cond_0
    return-void
.end method

.method private y()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1499
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    .line 1500
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->Y()Ljava/lang/String;

    move-result-object v0

    .line 1501
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "tweet"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v5, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    const-string/jumbo v3, "unmute_conversation"

    aput-object v3, v2, v0

    .line 1502
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1501
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1503
    new-instance v0, Lbrh;

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v2, Lcom/twitter/model/core/Tweet;->q:J

    invoke-direct {v0, p0, v1, v2, v3}, Lbrh;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;J)V

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/TweetActivity;->b(Lcom/twitter/library/service/x;I)Z

    .line 1505
    :cond_0
    return-void
.end method

.method private z()V
    .locals 5

    .prologue
    .line 1556
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1557
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-direct {p0}, Lcom/twitter/android/TweetActivity;->A()Lcom/twitter/app/common/base/BaseFragment;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1558
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/TweetActivity;->y:Z

    .line 1559
    const-string/jumbo v0, "tweet_blocked_by_author_fragment"

    .line 1560
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/TweetBlockedByAuthorFragment;

    .line 1561
    if-nez v0, :cond_0

    .line 1562
    new-instance v0, Lcom/twitter/android/TweetBlockedByAuthorFragment;

    invoke-direct {v0}, Lcom/twitter/android/TweetBlockedByAuthorFragment;-><init>()V

    .line 1563
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 1564
    const v3, 0x7f130143

    const-string/jumbo v4, "tweet_blocked_by_author_fragment"

    invoke-virtual {v2, v3, v0, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1565
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1567
    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-direct {p0}, Lcom/twitter/android/TweetActivity;->A()Lcom/twitter/app/common/base/BaseFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1568
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->Z()Lcyj;

    move-result-object v0

    invoke-virtual {v0}, Lcyj;->h()V

    .line 1569
    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/app/common/inject/t;)Laxm;
    .locals 2

    .prologue
    .line 588
    invoke-static {}, Lawm;->c()Lawo;

    move-result-object v0

    .line 589
    invoke-static {}, Lcom/twitter/app/common/app/l;->r()Lcom/twitter/app/common/app/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lawo;->a(Lcom/twitter/app/common/app/l;)Lawo;

    move-result-object v0

    new-instance v1, Lcom/twitter/app/tweetdetails/internal/f;

    invoke-direct {v1, p0, p1}, Lcom/twitter/app/tweetdetails/internal/f;-><init>(Lcom/twitter/app/common/base/BaseFragmentActivity;Lcom/twitter/app/common/inject/t;)V

    .line 590
    invoke-virtual {v0, v1}, Lawo;->a(Lcom/twitter/app/tweetdetails/internal/f;)Lawo;

    move-result-object v0

    new-instance v1, Lcom/twitter/app/tweetdetails/internal/a;

    invoke-direct {v1}, Lcom/twitter/app/tweetdetails/internal/a;-><init>()V

    .line 591
    invoke-virtual {v0, v1}, Lawo;->a(Lcom/twitter/app/tweetdetails/internal/a;)Lawo;

    move-result-object v0

    .line 592
    invoke-virtual {v0}, Lawo;->a()Laxm;

    move-result-object v0

    .line 588
    return-object v0
.end method

.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 269
    invoke-super {p0, p1, p2}, Lcom/twitter/android/ActivityWithProgress;->a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;

    move-result-object v0

    .line 270
    invoke-virtual {v0, v2}, Lcom/twitter/app/common/base/y;->d(I)V

    .line 271
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    invoke-virtual {v0, v2}, Lcom/twitter/app/common/base/y;->c(Z)V

    .line 273
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/y;->a(I)V

    .line 275
    :cond_0
    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Lcom/twitter/app/common/inject/v;
    .locals 6

    .prologue
    .line 407
    const-string/jumbo v2, "reply_composition"

    sget-object v3, Lcom/twitter/media/model/MediaType;->h:Ljava/util/EnumSet;

    const/4 v4, 0x1

    .line 409
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v5

    move-object v0, p0

    move-object v1, p0

    .line 407
    invoke-static/range {v0 .. v5}, Lcom/twitter/android/media/selection/MediaAttachmentController;->a(Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/media/util/a;Ljava/lang/String;Ljava/util/EnumSet;ILcom/twitter/library/client/Session;)Lcom/twitter/android/media/selection/MediaAttachmentController;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->p:Lcom/twitter/android/media/selection/MediaAttachmentController;

    .line 411
    new-instance v0, Laxn;

    .line 412
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->S()Lcom/twitter/app/common/base/n;

    move-result-object v4

    iget-object v5, p0, Lcom/twitter/android/TweetActivity;->p:Lcom/twitter/android/media/selection/MediaAttachmentController;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Laxn;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/view/LayoutInflater;Landroid/os/Bundle;Lcom/twitter/app/common/base/n;Lcom/twitter/android/media/selection/MediaAttachmentController;)V

    .line 413
    invoke-virtual {v0}, Laxn;->f()Lawp;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/TweetActivity;->A:Lawp;

    .line 414
    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->A:Lawp;

    new-instance v2, Lcom/twitter/android/ts;

    invoke-direct {v2, p0}, Lcom/twitter/android/ts;-><init>(Lcom/twitter/android/TweetActivity;)V

    invoke-interface {v1, v2}, Lawp;->a(Lawu;)V

    .line 450
    return-object v0
.end method

.method public a(Landroid/content/DialogInterface;II)V
    .locals 10

    .prologue
    const/4 v4, 0x2

    const/4 v9, 0x5

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 983
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    invoke-static {v0}, Lcom/twitter/model/core/Tweet;->b(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v0

    .line 984
    packed-switch p2, :pswitch_data_0

    .line 1054
    :cond_0
    :goto_0
    return-void

    .line 986
    :pswitch_0
    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    .line 987
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetActivity;->c(Lcom/twitter/model/core/Tweet;)Lcom/twitter/model/drafts/d;

    move-result-object v0

    .line 989
    new-instance v1, Lcom/twitter/android/composer/ca;

    .line 990
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    invoke-direct {v1, v2, v3, v0, v6}, Lcom/twitter/android/composer/ca;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/model/drafts/d;Z)V

    .line 991
    sget-object v0, Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;->g:Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;

    invoke-virtual {v1, v0}, Lcom/twitter/android/composer/ca;->a(Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;)V

    .line 992
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->J:Lcom/twitter/library/client/bd;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 993
    invoke-virtual {p0, v6}, Lcom/twitter/android/TweetActivity;->setResult(I)V

    .line 994
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v9, [Ljava/lang/String;

    const-string/jumbo v2, "tweet"

    aput-object v2, v1, v6

    const-string/jumbo v2, "composition"

    aput-object v2, v1, v8

    const-string/jumbo v2, "cancel_reply_sheet"

    aput-object v2, v1, v4

    const-string/jumbo v2, "save_draft"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string/jumbo v3, "click"

    aput-object v3, v1, v2

    .line 995
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 994
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 996
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->finish()V

    goto :goto_0

    .line 997
    :cond_1
    const/4 v0, -0x2

    if-ne p3, v0, :cond_0

    .line 998
    invoke-virtual {p0, v6}, Lcom/twitter/android/TweetActivity;->setResult(I)V

    .line 999
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v9, [Ljava/lang/String;

    const-string/jumbo v2, "tweet"

    aput-object v2, v1, v6

    const-string/jumbo v2, "composition"

    aput-object v2, v1, v8

    const-string/jumbo v2, "cancel_reply_sheet"

    aput-object v2, v1, v4

    const-string/jumbo v2, "dont_save"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string/jumbo v3, "click"

    aput-object v3, v1, v2

    .line 1000
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 999
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1001
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->finish()V

    goto/16 :goto_0

    .line 1006
    :pswitch_1
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 1007
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->Y()Lcom/twitter/internal/android/widget/ToolBar;

    move-result-object v0

    const v1, 0x7f130801

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v0

    invoke-virtual {v0, v6}, Lbjl;->b(Z)Lbjl;

    .line 1009
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    iget-wide v0, v0, Lcom/twitter/model/core/Tweet;->C:J

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    .line 1010
    invoke-virtual {v2}, Lcom/twitter/model/core/Tweet;->ae()Lcom/twitter/model/core/bm;

    move-result-object v2

    iget-object v2, v2, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    invoke-static {v2}, Lcug;->j(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    .line 1011
    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    .line 1009
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/twitter/android/TweetActivity;->a(JLjava/util/List;Ljava/util/Set;)V

    .line 1012
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v2, "tweet::tweet:remove_my_media_tag:click"

    aput-object v2, v1, v6

    .line 1013
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1012
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto/16 :goto_0

    .line 1018
    :pswitch_2
    const/4 v1, -0x1

    if-ne p3, v1, :cond_2

    .line 1019
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v3, "tweet"

    aput-object v3, v2, v6

    const/4 v3, 0x0

    aput-object v3, v2, v8

    aput-object v0, v2, v4

    const-string/jumbo v0, "mute_dialog"

    aput-object v0, v2, v7

    const/4 v0, 0x4

    const-string/jumbo v3, "mute_user"

    aput-object v3, v2, v0

    .line 1020
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1019
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1021
    invoke-direct {p0}, Lcom/twitter/android/TweetActivity;->v()V

    goto/16 :goto_0

    .line 1023
    :cond_2
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v3, "tweet"

    aput-object v3, v2, v6

    const/4 v3, 0x0

    aput-object v3, v2, v8

    aput-object v0, v2, v4

    const-string/jumbo v0, "mute_dialog"

    aput-object v0, v2, v7

    const/4 v0, 0x4

    const-string/jumbo v3, "cancel"

    aput-object v3, v2, v0

    .line 1024
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1023
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto/16 :goto_0

    .line 1029
    :pswitch_3
    const/4 v1, -0x1

    if-ne p3, v1, :cond_3

    .line 1030
    invoke-direct {p0}, Lcom/twitter/android/TweetActivity;->m()V

    goto/16 :goto_0

    .line 1032
    :cond_3
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v3, "tweet"

    aput-object v3, v2, v6

    const/4 v3, 0x0

    aput-object v3, v2, v8

    aput-object v0, v2, v4

    const-string/jumbo v0, "block_dialog"

    aput-object v0, v2, v7

    const/4 v0, 0x4

    const-string/jumbo v3, "cancel"

    aput-object v3, v2, v0

    .line 1033
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1032
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto/16 :goto_0

    .line 1038
    :pswitch_4
    const/4 v1, -0x1

    if-ne p3, v1, :cond_4

    .line 1039
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v3, "tweet"

    aput-object v3, v2, v6

    const/4 v3, 0x0

    aput-object v3, v2, v8

    aput-object v0, v2, v4

    const-string/jumbo v0, "unblock_dialog"

    aput-object v0, v2, v7

    const/4 v0, 0x4

    const-string/jumbo v3, "unblock"

    aput-object v3, v2, v0

    .line 1040
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1039
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1041
    new-instance v1, Lbrc;

    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v3

    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    iget-wide v4, v0, Lcom/twitter/model/core/Tweet;->o:J

    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    .line 1042
    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v6

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lbrc;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcss;I)V

    .line 1041
    invoke-virtual {p0, v1, v9}, Lcom/twitter/android/TweetActivity;->b(Lcom/twitter/library/service/x;I)Z

    goto/16 :goto_0

    .line 1045
    :cond_4
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v3, "tweet"

    aput-object v3, v2, v6

    const/4 v3, 0x0

    aput-object v3, v2, v8

    aput-object v0, v2, v4

    const-string/jumbo v0, "unblock_dialog"

    aput-object v0, v2, v7

    const/4 v0, 0x4

    const-string/jumbo v3, "cancel"

    aput-object v3, v2, v0

    .line 1046
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1045
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto/16 :goto_0

    .line 984
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1543
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1544
    return-void
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const v8, 0x7f0a0904

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1202
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    if-nez v1, :cond_8

    .line 1203
    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/twitter/android/TweetActivity;->x:Z

    if-eqz v1, :cond_6

    .line 1205
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1206
    sget-object v1, Lcgh;->a:Lcgh;

    invoke-virtual {v1, p2}, Lcgh;->a(Landroid/database/Cursor;)Lcom/twitter/model/core/bl;

    move-result-object v1

    .line 1207
    iget-wide v2, v1, Lcom/twitter/model/core/bl;->n:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    iget-object v2, v1, Lcom/twitter/model/core/bl;->p:Ljava/lang/String;

    invoke-static {v2}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1208
    new-instance v2, Lbiv;

    invoke-direct {v2}, Lbiv;-><init>()V

    const-string/jumbo v3, "tweet.statusId"

    iget-wide v4, v1, Lcom/twitter/model/core/bl;->o:J

    .line 1209
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v2

    const-string/jumbo v3, "tweet.groupType"

    iget v4, v1, Lcom/twitter/model/core/bl;->I:I

    .line 1210
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v2

    const-string/jumbo v3, "tweet.content"

    iget-object v1, v1, Lcom/twitter/model/core/bl;->a:Ljava/lang/String;

    .line 1211
    invoke-virtual {v2, v3, v1}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v1

    const-string/jumbo v2, "activity.uri"

    iget-object v3, p0, Lcom/twitter/android/TweetActivity;->h:Landroid/net/Uri;

    .line 1212
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "UserId of tweet is 0 and UserName is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1213
    invoke-virtual {v1, v2}, Lbiv;->a(Ljava/lang/Throwable;)Lbiv;

    move-result-object v1

    .line 1208
    invoke-static {v1}, Lbix;->a(Lbiv;)V

    .line 1218
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 1219
    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->z:Lcom/twitter/model/timeline/al;

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/bl;->a(Lcom/twitter/model/timeline/al;)Lcom/twitter/model/core/bl;

    .line 1220
    invoke-virtual {v0}, Lcom/twitter/model/core/bl;->a()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    .line 1221
    invoke-direct {p0, v0}, Lcom/twitter/android/TweetActivity;->d(Lcom/twitter/model/core/Tweet;)V

    .line 1272
    :cond_2
    :goto_1
    return-void

    .line 1223
    :cond_3
    iget-boolean v0, p0, Lcom/twitter/android/TweetActivity;->k:Z

    if-nez v0, :cond_4

    .line 1224
    new-instance v0, Lbsm;

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->h:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-direct {v0, p0, v1, v2, v3}, Lbsm;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;J)V

    invoke-virtual {p0, v0, v7}, Lcom/twitter/android/TweetActivity;->b(Lcom/twitter/library/service/x;I)Z

    .line 1225
    iput-boolean v6, p0, Lcom/twitter/android/TweetActivity;->k:Z

    goto :goto_1

    .line 1227
    :cond_4
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    if-nez v0, :cond_5

    .line 1229
    invoke-static {p0, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1230
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->finish()V

    goto :goto_1

    .line 1232
    :cond_5
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetActivity;->d(Lcom/twitter/model/core/Tweet;)V

    goto :goto_1

    .line 1239
    :cond_6
    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1240
    sget-object v0, Lcgh;->a:Lcgh;

    invoke-virtual {v0, p2}, Lcgh;->a(Landroid/database/Cursor;)Lcom/twitter/model/core/bl;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->z:Lcom/twitter/model/timeline/al;

    .line 1241
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/bl;->a(Lcom/twitter/model/timeline/al;)Lcom/twitter/model/core/bl;

    move-result-object v0

    .line 1242
    invoke-virtual {v0}, Lcom/twitter/model/core/bl;->a()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    .line 1243
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->e:Lawi;

    if-eqz v0, :cond_7

    .line 1244
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->e:Lawi;

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    invoke-interface {v0, v1}, Lawi;->b(Lcom/twitter/model/core/Tweet;)V

    .line 1246
    :cond_7
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->Y()Lcom/twitter/internal/android/widget/ToolBar;

    move-result-object v0

    .line 1247
    if-eqz v0, :cond_2

    .line 1248
    invoke-direct {p0, v0}, Lcom/twitter/android/TweetActivity;->b(Lcom/twitter/internal/android/widget/ToolBar;)Lbjl;

    goto :goto_1

    .line 1252
    :cond_8
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1253
    if-eqz p2, :cond_9

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1254
    sget-object v0, Lcgi;->a:Lcgi;

    invoke-virtual {v0, p2}, Lcgi;->a(Landroid/database/Cursor;)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->v:Lcom/twitter/model/core/Tweet;

    .line 1255
    invoke-direct {p0}, Lcom/twitter/android/TweetActivity;->i()V

    goto :goto_1

    .line 1257
    :cond_9
    iget-boolean v0, p0, Lcom/twitter/android/TweetActivity;->s:Z

    if-nez v0, :cond_a

    .line 1258
    iput-boolean v6, p0, Lcom/twitter/android/TweetActivity;->s:Z

    .line 1259
    new-instance v0, Lbsm;

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->u:Landroid/net/Uri;

    .line 1260
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-direct {v0, p0, v1, v2, v3}, Lbsm;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;J)V

    const/4 v1, 0x6

    .line 1259
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/TweetActivity;->b(Lcom/twitter/library/service/x;I)Z

    .line 1261
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "tweet:notification_landing:vit_tweet_embedded::loading"

    aput-object v2, v1, v7

    .line 1262
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1261
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto/16 :goto_1

    .line 1264
    :cond_a
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "tweet:notification_landing:vit_tweet_embedded::error"

    aput-object v2, v1, v7

    .line 1265
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1264
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1266
    invoke-static {p0, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1267
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1268
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->finish()V

    goto/16 :goto_1

    :cond_b
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public a(Lcom/twitter/library/service/x;I)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const v4, 0x7f0a0904

    const/4 v2, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1281
    invoke-super {p0, p1, p2}, Lcom/twitter/android/ActivityWithProgress;->a(Lcom/twitter/library/service/x;I)V

    .line 1282
    iget-boolean v0, p0, Lcom/twitter/android/TweetActivity;->q:Z

    if-nez v0, :cond_1

    .line 1378
    :cond_0
    :goto_0
    return-void

    .line 1285
    :cond_1
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 1286
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1288
    :pswitch_0
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1289
    iget-boolean v0, p0, Lcom/twitter/android/TweetActivity;->y:Z

    if-nez v0, :cond_3

    .line 1290
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1292
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-direct {p0}, Lcom/twitter/android/TweetActivity;->A()Lcom/twitter/app/common/base/BaseFragment;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1296
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "tweet_blocked_by_author_fragment"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/TweetBlockedByAuthorFragment;

    .line 1297
    if-eqz v0, :cond_2

    .line 1298
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1300
    :cond_2
    iput-boolean v6, p0, Lcom/twitter/android/TweetActivity;->y:Z

    .line 1302
    :cond_3
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v7, v3, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_0

    .line 1303
    :cond_4
    const/16 v1, 0x88

    invoke-static {v0, v1}, Lcom/twitter/library/network/at;->a(Lcom/twitter/library/service/aa;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1304
    invoke-direct {p0}, Lcom/twitter/android/TweetActivity;->z()V

    goto :goto_0

    .line 1307
    :cond_5
    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1308
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1309
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->finish()V

    goto :goto_0

    .line 1314
    :pswitch_1
    check-cast p1, Lbrr;

    .line 1315
    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v1, Lcom/twitter/model/core/Tweet;->C:J

    invoke-virtual {p1}, Lbrr;->b()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1317
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1318
    const v0, 0x7f0a0524

    .line 1323
    :goto_1
    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1320
    :cond_6
    const v0, 0x7f0a0523

    .line 1321
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->Y()Lcom/twitter/internal/android/widget/ToolBar;

    move-result-object v1

    const v2, 0x7f130801

    invoke-virtual {v1, v2}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v1

    invoke-virtual {v1, v6}, Lbjl;->b(Z)Lbjl;

    goto :goto_1

    .line 1328
    :pswitch_2
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1329
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->finish()V

    goto/16 :goto_0

    .line 1334
    :pswitch_3
    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1335
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    iget v1, v1, Lcom/twitter/model/core/Tweet;->i:I

    const/16 v2, 0x2000

    invoke-static {v1, v2}, Lcom/twitter/model/core/p;->b(II)I

    move-result v1

    iput v1, v0, Lcom/twitter/model/core/Tweet;->i:I

    .line 1336
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->Z()Lcyj;

    move-result-object v0

    invoke-virtual {v0}, Lcyj;->h()V

    goto/16 :goto_0

    .line 1341
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/twitter/android/TweetActivity;->a(Lcom/twitter/library/service/aa;)V

    goto/16 :goto_0

    .line 1345
    :pswitch_5
    invoke-direct {p0, v0}, Lcom/twitter/android/TweetActivity;->b(Lcom/twitter/library/service/aa;)V

    goto/16 :goto_0

    .line 1349
    :pswitch_6
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1350
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->finish()V

    goto/16 :goto_0

    .line 1355
    :pswitch_7
    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1356
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    iget v1, v1, Lcom/twitter/model/core/Tweet;->i:I

    invoke-static {v1, v2}, Lcom/twitter/model/core/p;->b(II)I

    move-result v1

    iput v1, v0, Lcom/twitter/model/core/Tweet;->i:I

    .line 1358
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->Z()Lcyj;

    move-result-object v0

    invoke-virtual {v0}, Lcyj;->h()V

    goto/16 :goto_0

    .line 1363
    :pswitch_8
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1364
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v2, v3, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto/16 :goto_0

    .line 1366
    :cond_7
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "tweet:notification_landing:vit_tweet_embedded::error"

    aput-object v2, v1, v7

    .line 1367
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1366
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1368
    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1369
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1370
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->finish()V

    goto/16 :goto_0

    .line 1286
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public a(Lcom/twitter/model/core/Tweet;)V
    .locals 1

    .prologue
    .line 580
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    invoke-direct {p0, p1}, Lcom/twitter/android/TweetActivity;->b(Lcom/twitter/model/core/Tweet;)V

    .line 583
    :cond_0
    return-void
.end method

.method public a(Lcyd;)Z
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v3, 0x3

    const/4 v10, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 770
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    if-nez v0, :cond_1

    .line 771
    invoke-super {p0, p1}, Lcom/twitter/android/ActivityWithProgress;->a(Lcyd;)Z

    move-result v6

    .line 871
    :cond_0
    :goto_0
    return v6

    .line 774
    :cond_1
    invoke-interface {p1}, Lcyd;->a()I

    move-result v0

    .line 775
    const v1, 0x7f13003d

    if-ne v0, v1, :cond_2

    .line 777
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->A:Lawp;

    invoke-interface {v0}, Lawp;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 778
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->c()V

    goto :goto_0

    .line 781
    :cond_2
    const v1, 0x7f130801

    if-ne v0, v1, :cond_4

    .line 782
    new-instance v0, Lcom/twitter/android/widget/ec;

    invoke-direct {v0, v10}, Lcom/twitter/android/widget/ec;-><init>(I)V

    const v1, 0x7f0a06e3

    .line 783
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->b(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a05e4

    .line 784
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->d(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a00fd

    .line 785
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->f(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 786
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 787
    invoke-virtual {v0, p0}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Lcom/twitter/app/common/base/m;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 788
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 871
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lcom/twitter/android/ActivityWithProgress;->a(Lcyd;)Z

    move-result v6

    goto :goto_0

    .line 789
    :cond_4
    const v1, 0x7f1307cd

    if-ne v0, v1, :cond_5

    .line 790
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->e:Lawi;

    invoke-interface {v0}, Lawi;->C()V

    goto :goto_1

    .line 791
    :cond_5
    const v1, 0x7f1307ec

    if-ne v0, v1, :cond_7

    .line 792
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    iget v0, v0, Lcom/twitter/model/core/Tweet;->i:I

    invoke-static {v0}, Lcom/twitter/model/core/p;->d(I)Z

    move-result v0

    .line 794
    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v1}, Lcom/twitter/model/core/Tweet;->Y()Ljava/lang/String;

    move-result-object v8

    .line 795
    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    iget-object v1, v1, Lcom/twitter/model/core/Tweet;->r:Ljava/lang/String;

    .line 796
    if-eqz v0, :cond_6

    .line 797
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "tweet"

    aput-object v2, v1, v7

    const/4 v2, 0x0

    aput-object v2, v1, v6

    aput-object v8, v1, v10

    const-string/jumbo v2, "unmute_dialog"

    aput-object v2, v1, v3

    const-string/jumbo v2, "open"

    aput-object v2, v1, v11

    .line 798
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 797
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 799
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "tweet"

    aput-object v2, v1, v7

    const/4 v2, 0x0

    aput-object v2, v1, v6

    aput-object v8, v1, v10

    const-string/jumbo v2, "unmute_dialog"

    aput-object v2, v1, v3

    const-string/jumbo v2, "unmute_user"

    aput-object v2, v1, v11

    .line 800
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 799
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 801
    invoke-direct {p0}, Lcom/twitter/android/TweetActivity;->w()V

    goto/16 :goto_0

    .line 803
    :cond_6
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v4, "tweet::tweet:mute_dialog:open"

    aput-object v4, v2, v7

    .line 804
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 803
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 805
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    iget v2, v0, Lcom/twitter/model/core/Tweet;->i:I

    .line 806
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    .line 805
    invoke-static/range {v0 .. v5}, Lcom/twitter/android/util/bc;->a(Landroid/content/Context;Ljava/lang/String;IILandroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 807
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "tweet"

    aput-object v2, v1, v7

    const/4 v2, 0x0

    aput-object v2, v1, v6

    aput-object v8, v1, v10

    const-string/jumbo v2, "mute_dialog"

    aput-object v2, v1, v3

    const-string/jumbo v2, "mute_user"

    aput-object v2, v1, v11

    .line 808
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 807
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 809
    invoke-direct {p0}, Lcom/twitter/android/TweetActivity;->v()V

    goto/16 :goto_0

    .line 813
    :cond_7
    const v1, 0x7f1307ed

    if-ne v0, v1, :cond_9

    .line 814
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->F()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 815
    invoke-direct {p0}, Lcom/twitter/android/TweetActivity;->y()V

    goto/16 :goto_0

    .line 817
    :cond_8
    invoke-direct {p0}, Lcom/twitter/android/TweetActivity;->x()V

    goto/16 :goto_0

    .line 820
    :cond_9
    const v1, 0x7f1307c0

    if-ne v0, v1, :cond_b

    .line 821
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    iget v0, v0, Lcom/twitter/model/core/Tweet;->i:I

    invoke-static {v0}, Lcom/twitter/model/core/p;->e(I)Z

    move-result v0

    .line 822
    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v1}, Lcom/twitter/model/core/Tweet;->Y()Ljava/lang/String;

    move-result-object v1

    .line 823
    if-eqz v0, :cond_a

    .line 824
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "tweet"

    aput-object v4, v2, v7

    const/4 v4, 0x0

    aput-object v4, v2, v6

    aput-object v1, v2, v10

    const-string/jumbo v1, "unblock_dialog"

    aput-object v1, v2, v3

    const-string/jumbo v1, "impression"

    aput-object v1, v2, v11

    .line 825
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 824
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 826
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    iget-object v0, v0, Lcom/twitter/model/core/Tweet;->r:Ljava/lang/String;

    const/4 v1, 0x5

    .line 827
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 826
    invoke-static {p0, v0, v1, v2}, Lcom/twitter/android/util/bc;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/support/v4/app/FragmentManager;)V

    goto/16 :goto_1

    .line 829
    :cond_a
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "tweet"

    aput-object v4, v2, v7

    const/4 v4, 0x0

    aput-object v4, v2, v6

    aput-object v1, v2, v10

    const-string/jumbo v1, "block_dialog"

    aput-object v1, v2, v3

    const-string/jumbo v1, "impression"

    aput-object v1, v2, v11

    .line 830
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 829
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 831
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    invoke-static {v0}, Lcom/twitter/library/view/ab;->b(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v0

    .line 832
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 831
    invoke-static {p0, v0, v11, v1}, Lcom/twitter/android/util/bc;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/support/v4/app/FragmentManager;)V

    goto/16 :goto_1

    .line 834
    :cond_b
    const v1, 0x7f1307ff

    if-ne v0, v1, :cond_c

    .line 835
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->B:Laxh;

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0, v1}, Laxh;->a(Lcom/twitter/model/core/Tweet;)V

    goto/16 :goto_0

    .line 837
    :cond_c
    const v1, 0x7f1307c9

    if-ne v0, v1, :cond_d

    .line 838
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "tweet"

    aput-object v2, v1, v7

    const/4 v2, 0x0

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    .line 839
    invoke-virtual {v2}, Lcom/twitter/model/core/Tweet;->Y()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    const-string/jumbo v2, "link"

    aput-object v2, v1, v3

    const-string/jumbo v2, "copy"

    aput-object v2, v1, v11

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 838
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 840
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->Z()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/twitter/library/util/an;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 841
    const v0, 0x7f0a0226

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 843
    :cond_d
    const v1, 0x7f1307f4

    if-ne v0, v1, :cond_10

    .line 844
    new-instance v2, Lcom/twitter/android/lx;

    invoke-direct {p0}, Lcom/twitter/android/TweetActivity;->A()Lcom/twitter/app/common/base/BaseFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->J:Lcom/twitter/library/client/bd;

    new-instance v4, Lcom/twitter/android/tv;

    invoke-direct {v4, p0}, Lcom/twitter/android/tv;-><init>(Lcom/twitter/android/TweetActivity;)V

    invoke-direct {v2, v0, p0, v1, v4}, Lcom/twitter/android/lx;-><init>(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/client/bd;Lcom/twitter/android/ma;)V

    .line 851
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/Tweet;->a(Lcom/twitter/model/core/TwitterUser;)Z

    move-result v0

    if-nez v0, :cond_e

    move v1, v6

    .line 852
    :goto_2
    new-instance v4, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v8

    invoke-direct {v4, v8, v9}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v0, 0x5

    new-array v5, v0, [Ljava/lang/String;

    const-string/jumbo v0, "tweet"

    aput-object v0, v5, v7

    const/4 v0, 0x0

    aput-object v0, v5, v6

    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    .line 853
    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->Y()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v10

    const-string/jumbo v0, ""

    aput-object v0, v5, v3

    if-eqz v1, :cond_f

    const-string/jumbo v0, "pin"

    :goto_3
    aput-object v0, v5, v11

    invoke-virtual {v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 855
    iget-object v3, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    iget-object v4, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/twitter/android/lx;->a(Lcom/twitter/model/core/Tweet;ZLcom/twitter/library/client/Session;Lcom/twitter/library/scribe/TwitterScribeLog;)V

    goto/16 :goto_1

    :cond_e
    move v1, v7

    .line 851
    goto :goto_2

    .line 853
    :cond_f
    const-string/jumbo v0, "unpin"

    goto :goto_3

    .line 856
    :cond_10
    const v1, 0x7f1307be

    if-ne v0, v1, :cond_11

    .line 857
    invoke-static {p0}, Larx;->a(Landroid/support/v4/app/FragmentActivity;)Larx;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    .line 858
    invoke-virtual {v0, v1}, Larx;->a(Lcom/twitter/model/core/Tweet;)Larx;

    move-result-object v0

    .line 859
    invoke-virtual {v0}, Larx;->a()Lasa;

    move-result-object v0

    .line 860
    invoke-interface {v0}, Lasa;->a()V

    goto/16 :goto_1

    .line 861
    :cond_11
    const v1, 0x7f1307bd

    if-ne v0, v1, :cond_12

    .line 862
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v0

    .line 863
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/settings/MobileNotificationsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "NotificationSettingsActivity_account_name"

    .line 864
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 863
    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 865
    :cond_12
    const v1, 0x7f1307bc

    if-ne v0, v1, :cond_3

    .line 866
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "tweet"

    aput-object v2, v1, v7

    const/4 v2, 0x0

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->E:Ljava/lang/String;

    aput-object v2, v1, v10

    const-string/jumbo v2, "dont_like_recommendation"

    aput-object v2, v1, v3

    const-string/jumbo v2, "click"

    aput-object v2, v1, v11

    .line 867
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->D:Ljava/lang/String;

    .line 868
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->e(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 869
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto/16 :goto_1
.end method

.method public a(Lcyg;)Z
    .locals 2

    .prologue
    .line 632
    invoke-super {p0, p1}, Lcom/twitter/android/ActivityWithProgress;->a(Lcyg;)Z

    .line 634
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    iget v0, v0, Lcom/twitter/model/core/Tweet;->M:I

    .line 635
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 636
    const v1, 0x7f140025

    invoke-interface {p1, v1}, Lcyg;->a(I)V

    .line 637
    const v1, 0x7f14000c

    invoke-interface {p1, v1}, Lcyg;->a(I)V

    .line 638
    const v1, 0x7f140022

    invoke-interface {p1, v1}, Lcyg;->a(I)V

    .line 639
    invoke-static {v0}, Lcom/twitter/model/core/dd;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 640
    const v1, 0x7f14001c

    invoke-interface {p1, v1}, Lcyg;->a(I)V

    .line 642
    :cond_0
    invoke-static {}, Lcal;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 643
    const v1, 0x7f14001d

    invoke-interface {p1, v1}, Lcyg;->a(I)V

    .line 645
    :cond_1
    invoke-static {v0}, Lcom/twitter/model/core/dd;->b(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 646
    const v1, 0x7f140003

    invoke-interface {p1, v1}, Lcyg;->a(I)V

    .line 648
    :cond_2
    invoke-static {v0}, Lcom/twitter/model/core/dd;->c(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 649
    const v0, 0x7f140026

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 652
    :cond_3
    invoke-static {p0}, Lcom/twitter/android/moments/ui/maker/cd;->a(Landroid/content/Context;)Lcom/twitter/android/moments/ui/maker/cd;

    move-result-object v0

    .line 653
    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/cd;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 654
    const v0, 0x7f140001

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 656
    :cond_4
    const-string/jumbo v0, "magic_rec_negative_signal_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 657
    const/high16 v0, 0x7f140000

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 660
    :cond_5
    const v0, 0x7f140009

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 662
    const/4 v0, 0x1

    return v0

    .line 634
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcyg;)I
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 668
    invoke-interface {p1}, Lcyg;->j()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/ToolBar;

    .line 669
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 670
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v5

    .line 671
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    .line 672
    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    iget-wide v8, v1, Lcom/twitter/model/core/Tweet;->o:J

    cmp-long v1, v8, v6

    if-eqz v1, :cond_a

    move v1, v2

    .line 673
    :goto_0
    iget-object v4, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    iget v4, v4, Lcom/twitter/model/core/Tweet;->i:I

    invoke-static {v4}, Lcom/twitter/model/core/p;->e(I)Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v2

    .line 675
    :goto_1
    const v8, 0x7f1307cd

    invoke-virtual {v0, v8}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v8

    .line 676
    if-eqz v8, :cond_0

    .line 677
    iget-boolean v9, p0, Lcom/twitter/android/TweetActivity;->y:Z

    if-eqz v9, :cond_c

    iget-boolean v9, p0, Lcom/twitter/android/TweetActivity;->x:Z

    if-nez v9, :cond_c

    iget-object v9, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    invoke-static {v9, v6, v7}, Lciz;->a(Lcom/twitter/model/core/Tweet;J)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 679
    invoke-virtual {v8, v2}, Lbjl;->b(Z)Lbjl;

    .line 685
    :cond_0
    :goto_2
    const v6, 0x7f1307f4

    invoke-virtual {v0, v6}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v6

    .line 686
    if-eqz v6, :cond_1

    .line 687
    if-eqz v5, :cond_d

    iget-object v7, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v7, v5}, Lcom/twitter/model/core/Tweet;->a(Lcom/twitter/model/core/TwitterUser;)Z

    move-result v5

    if-eqz v5, :cond_d

    move v5, v2

    .line 688
    :goto_3
    invoke-virtual {v6, v2}, Lbjl;->f(I)Lbjl;

    .line 689
    if-eqz v5, :cond_e

    const v5, 0x7f0a0929

    :goto_4
    invoke-virtual {v6, v5}, Lbjl;->d(I)Lbjl;

    .line 690
    iget-boolean v5, p0, Lcom/twitter/android/TweetActivity;->y:Z

    if-eqz v5, :cond_f

    if-nez v1, :cond_f

    move v5, v2

    :goto_5
    invoke-virtual {v6, v5}, Lbjl;->b(Z)Lbjl;

    .line 693
    :cond_1
    const v5, 0x7f1307ec

    invoke-virtual {v0, v5}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v6

    .line 694
    if-eqz v6, :cond_2

    .line 695
    const/16 v5, 0xa

    invoke-virtual {v6, v5}, Lbjl;->f(I)Lbjl;

    .line 697
    iget-object v5, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    invoke-static {v5}, Lcom/twitter/android/util/bc;->a(Lcom/twitter/model/core/Tweet;)Z

    move-result v5

    .line 698
    iget-boolean v7, p0, Lcom/twitter/android/TweetActivity;->y:Z

    if-eqz v7, :cond_12

    if-eqz v1, :cond_12

    if-nez v5, :cond_12

    if-nez v4, :cond_12

    .line 699
    iget-object v5, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    iget v5, v5, Lcom/twitter/model/core/Tweet;->i:I

    invoke-static {v5}, Lcom/twitter/model/core/p;->d(I)Z

    move-result v5

    if-eqz v5, :cond_10

    move v5, v2

    .line 700
    :goto_6
    if-eqz v5, :cond_11

    .line 701
    const v5, 0x7f0a091e

    invoke-virtual {p0, v5}, Lcom/twitter/android/TweetActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lbjl;->a(Ljava/lang/CharSequence;)Lbjl;

    .line 705
    :goto_7
    invoke-virtual {v6, v2}, Lbjl;->b(Z)Lbjl;

    .line 711
    :cond_2
    :goto_8
    invoke-direct {p0, v0}, Lcom/twitter/android/TweetActivity;->b(Lcom/twitter/internal/android/widget/ToolBar;)Lbjl;

    move-result-object v5

    .line 712
    if-eqz v5, :cond_3

    .line 713
    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Lbjl;->f(I)Lbjl;

    .line 716
    :cond_3
    const v5, 0x7f1307c0

    invoke-virtual {v0, v5}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v5

    .line 717
    if-eqz v5, :cond_4

    .line 718
    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Lbjl;->f(I)Lbjl;

    .line 719
    if-eqz v4, :cond_13

    const v4, 0x7f0a0972

    :goto_9
    invoke-virtual {v5, v4}, Lbjl;->d(I)Lbjl;

    .line 720
    if-eqz v1, :cond_14

    iget-boolean v4, p0, Lcom/twitter/android/TweetActivity;->y:Z

    if-eqz v4, :cond_14

    move v4, v2

    :goto_a
    invoke-virtual {v5, v4}, Lbjl;->b(Z)Lbjl;

    .line 723
    :cond_4
    const v4, 0x7f1307ff

    invoke-virtual {v0, v4}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v5

    .line 724
    if-eqz v5, :cond_5

    .line 725
    const/16 v4, 0xd

    invoke-virtual {v5, v4}, Lbjl;->f(I)Lbjl;

    .line 726
    iget-object v4, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v4}, Lcom/twitter/model/core/Tweet;->ac()Z

    move-result v4

    if-eqz v4, :cond_15

    move v4, v2

    .line 727
    :goto_b
    if-eqz v4, :cond_16

    const v4, 0x7f0a06e7

    :goto_c
    invoke-virtual {v5, v4}, Lbjl;->d(I)Lbjl;

    .line 728
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v4

    if-nez v4, :cond_17

    if-eqz v1, :cond_17

    iget-boolean v1, p0, Lcom/twitter/android/TweetActivity;->y:Z

    if-eqz v1, :cond_17

    :goto_d
    invoke-virtual {v5, v2}, Lbjl;->b(Z)Lbjl;

    .line 731
    :cond_5
    invoke-direct {p0, v0}, Lcom/twitter/android/TweetActivity;->a(Lcom/twitter/internal/android/widget/ToolBar;)V

    .line 733
    const v1, 0x7f130808

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v1

    .line 734
    if-eqz v1, :cond_6

    .line 735
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lbjl;->f(I)Lbjl;

    .line 738
    :cond_6
    const v1, 0x7f1307c9

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v1

    .line 739
    if-eqz v1, :cond_7

    .line 740
    iget-boolean v2, p0, Lcom/twitter/android/TweetActivity;->y:Z

    invoke-virtual {v1, v2}, Lbjl;->b(Z)Lbjl;

    .line 743
    :cond_7
    const v1, 0x7f1307bd

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v1

    .line 744
    if-eqz v1, :cond_8

    .line 745
    iget-boolean v2, p0, Lcom/twitter/android/TweetActivity;->C:Z

    invoke-virtual {v1, v2}, Lbjl;->b(Z)Lbjl;

    .line 748
    :cond_8
    const v1, 0x7f1307bc

    .line 749
    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v0

    .line 750
    if-eqz v0, :cond_9

    .line 751
    iget-boolean v1, p0, Lcom/twitter/android/TweetActivity;->C:Z

    invoke-virtual {v0, v1}, Lbjl;->b(Z)Lbjl;

    .line 754
    :cond_9
    invoke-super {p0, p1}, Lcom/twitter/android/ActivityWithProgress;->b(Lcyg;)I

    move-result v0

    return v0

    :cond_a
    move v1, v3

    .line 672
    goto/16 :goto_0

    :cond_b
    move v4, v3

    .line 673
    goto/16 :goto_1

    .line 681
    :cond_c
    invoke-virtual {v8, v3}, Lbjl;->b(Z)Lbjl;

    goto/16 :goto_2

    :cond_d
    move v5, v3

    .line 687
    goto/16 :goto_3

    .line 689
    :cond_e
    const v5, 0x7f0a0658

    goto/16 :goto_4

    :cond_f
    move v5, v3

    .line 690
    goto/16 :goto_5

    :cond_10
    move v5, v3

    .line 699
    goto/16 :goto_6

    .line 703
    :cond_11
    const v5, 0x7f0a057b

    invoke-virtual {p0, v5}, Lcom/twitter/android/TweetActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lbjl;->a(Ljava/lang/CharSequence;)Lbjl;

    goto/16 :goto_7

    .line 707
    :cond_12
    invoke-virtual {v6, v3}, Lbjl;->b(Z)Lbjl;

    goto/16 :goto_8

    .line 719
    :cond_13
    const v4, 0x7f0a00af

    goto/16 :goto_9

    :cond_14
    move v4, v3

    .line 720
    goto/16 :goto_a

    :cond_15
    move v4, v3

    .line 726
    goto/16 :goto_b

    .line 727
    :cond_16
    const v4, 0x7f0a06e6

    goto/16 :goto_c

    :cond_17
    move v2, v3

    .line 728
    goto :goto_d
.end method

.method protected synthetic b(Lcom/twitter/app/common/inject/t;)Lcom/twitter/app/common/inject/c;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/twitter/android/TweetActivity;->a(Lcom/twitter/app/common/inject/t;)Laxm;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v6, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 281
    invoke-super {p0, p1, p2}, Lcom/twitter/android/ActivityWithProgress;->b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V

    .line 283
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 284
    iput-boolean v8, p0, Lcom/twitter/android/TweetActivity;->q:Z

    .line 285
    invoke-direct {p0}, Lcom/twitter/android/TweetActivity;->C()V

    .line 286
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->M()Lcom/twitter/android/client/SearchSuggestionController;

    move-result-object v0

    const-string/jumbo v2, "tweet"

    invoke-virtual {v0, v2}, Lcom/twitter/android/client/SearchSuggestionController;->a(Ljava/lang/String;)Lcom/twitter/android/client/SearchSuggestionController;

    .line 288
    const v0, 0x7f130342

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lcom/twitter/android/tq;

    invoke-direct {v2, p0}, Lcom/twitter/android/tq;-><init>(Lcom/twitter/android/TweetActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 301
    const-string/jumbo v0, "reason"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->n:Ljava/lang/String;

    .line 302
    const-string/jumbo v0, "reason_icon_id"

    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/TweetActivity;->o:I

    .line 303
    const-string/jumbo v0, "tw_scribe_content"

    sget-object v2, Lcom/twitter/model/timeline/al;->a:Lcom/twitter/util/serialization/d;

    invoke-static {v1, v0, v2}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/al;

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->z:Lcom/twitter/model/timeline/al;

    .line 305
    const-string/jumbo v0, "association"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->l:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 306
    const-string/jumbo v0, "scribe_item"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->m:Lcom/twitter/library/scribe/TwitterScribeItem;

    .line 308
    const-string/jumbo v0, "type"

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 309
    const-string/jumbo v2, "tag"

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 310
    if-eq v0, v6, :cond_0

    .line 311
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_a

    .line 312
    const-string/jumbo v4, "status_groups_type=? AND status_groups_tag=?"

    iput-object v4, p0, Lcom/twitter/android/TweetActivity;->i:Ljava/lang/String;

    .line 313
    new-array v4, v9, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    iput-object v4, p0, Lcom/twitter/android/TweetActivity;->j:[Ljava/lang/String;

    .line 319
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 320
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 321
    const-string/jumbo v0, "tweet_fragment"

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/TwitterListFragment;

    .line 322
    if-nez v0, :cond_3

    .line 323
    invoke-direct {p0}, Lcom/twitter/android/TweetActivity;->B()Lcom/twitter/app/common/list/TwitterListFragment;

    move-result-object v0

    .line 324
    const v4, 0x7f130143

    const-string/jumbo v5, "tweet_fragment"

    invoke-virtual {v3, v4, v0, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 326
    new-instance v4, Lcom/twitter/app/common/list/y;

    .line 327
    invoke-virtual {v0}, Lcom/twitter/app/common/list/TwitterListFragment;->p()Lcom/twitter/app/common/list/w;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/twitter/app/common/list/y;-><init>(Lcom/twitter/app/common/list/w;)V

    .line 328
    const-string/jumbo v5, "source_association"

    iget-object v6, p0, Lcom/twitter/android/TweetActivity;->l:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {v4, v5, v6}, Lcom/twitter/app/common/list/y;->a(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/twitter/app/common/base/g;

    .line 329
    const-string/jumbo v5, "timeline_moment"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    .line 330
    if-eqz v5, :cond_1

    .line 331
    const-string/jumbo v6, "timeline_moment"

    invoke-virtual {v4, v6, v5}, Lcom/twitter/app/common/list/y;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcom/twitter/app/common/base/g;

    .line 333
    :cond_1
    const-string/jumbo v5, "subbranch"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    .line 334
    if-eqz v5, :cond_2

    .line 335
    const-string/jumbo v6, "subbranch"

    invoke-virtual {v4, v6, v5}, Lcom/twitter/app/common/list/y;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcom/twitter/app/common/base/g;

    .line 337
    :cond_2
    iget-object v5, p0, Lcom/twitter/android/TweetActivity;->m:Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-virtual {v4, v5}, Lcom/twitter/app/common/list/y;->a(Lcom/twitter/library/scribe/TwitterScribeItem;)Lcom/twitter/app/common/list/x;

    .line 338
    invoke-virtual {v4}, Lcom/twitter/app/common/list/y;->b()Lcom/twitter/app/common/list/w;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcom/twitter/app/common/base/f;)V

    .line 340
    :cond_3
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 341
    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawi;

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->e:Lawi;

    .line 342
    if-eqz p1, :cond_4

    .line 343
    const-string/jumbo v0, "tw_is_available"

    invoke-virtual {p1, v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/TweetActivity;->y:Z

    .line 345
    :cond_4
    iget-boolean v0, p0, Lcom/twitter/android/TweetActivity;->y:Z

    if-nez v0, :cond_5

    .line 347
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-direct {p0}, Lcom/twitter/android/TweetActivity;->A()Lcom/twitter/app/common/base/BaseFragment;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 350
    :cond_5
    invoke-direct {p0}, Lcom/twitter/android/TweetActivity;->h()V

    .line 352
    const v0, 0x7f0a08f6

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetActivity;->setTitle(I)V

    .line 354
    new-instance v0, Lcom/twitter/android/tz;

    invoke-direct {v0, p0, v10}, Lcom/twitter/android/tz;-><init>(Lcom/twitter/android/TweetActivity;Lcom/twitter/android/tq;)V

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->f:Lcom/twitter/library/service/z;

    .line 355
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->J:Lcom/twitter/library/client/bd;

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->f:Lcom/twitter/library/service/z;

    invoke-virtual {v0, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/z;)V

    .line 357
    if-eqz p1, :cond_b

    .line 358
    const-string/jumbo v0, "t"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    .line 359
    const-string/jumbo v0, "c"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->v:Lcom/twitter/model/core/Tweet;

    .line 360
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->v:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_6

    .line 361
    invoke-direct {p0}, Lcom/twitter/android/TweetActivity;->i()V

    .line 376
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->e:Lawi;

    invoke-interface {v0, p0}, Lawi;->a(Laxg;)V

    .line 378
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_7

    invoke-static {p0}, Lcom/twitter/library/client/am;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->ae()Lcom/twitter/model/core/bm;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/model/core/bm;->c:Lcom/twitter/model/core/j;

    invoke-virtual {v0}, Lcom/twitter/model/core/j;->c()Z

    move-result v0

    if-nez v0, :cond_7

    .line 379
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->ae()Lcom/twitter/model/core/bm;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/model/core/bm;->c:Lcom/twitter/model/core/j;

    invoke-virtual {v0, v7}, Lcom/twitter/model/core/j;->a(I)Lcom/twitter/model/core/e;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cx;

    iget-object v0, v0, Lcom/twitter/model/core/cx;->D:Ljava/lang/String;

    .line 380
    invoke-static {p0}, Lcom/twitter/library/client/am;->a(Landroid/content/Context;)Lcom/twitter/library/client/am;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/twitter/library/client/am;->a(Ljava/lang/String;)Z

    .line 383
    :cond_7
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v0

    if-nez v0, :cond_8

    .line 384
    invoke-direct {p0}, Lcom/twitter/android/TweetActivity;->l()V

    .line 386
    :cond_8
    const-string/jumbo v0, "focus_compose"

    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 387
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->A:Lawp;

    invoke-interface {v0}, Lawp;->f()V

    .line 389
    :cond_9
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->V()Lcom/twitter/app/common/inject/c;

    move-result-object v0

    check-cast v0, Laxm;

    .line 390
    invoke-interface {v0}, Laxm;->d()Laxh;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->B:Laxh;

    .line 391
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->B:Laxh;

    new-instance v2, Lcom/twitter/android/tr;

    invoke-direct {v2, p0}, Lcom/twitter/android/tr;-><init>(Lcom/twitter/android/TweetActivity;)V

    invoke-virtual {v0, v2}, Laxh;->a(Lawg;)V

    .line 399
    const-string/jumbo v0, "tw_is_magic_rec"

    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/TweetActivity;->C:Z

    .line 400
    const-string/jumbo v0, "tw_magic_rec_type"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->E:Ljava/lang/String;

    .line 401
    const-string/jumbo v0, "tw_magic_rec_impression_id"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->D:Ljava/lang/String;

    .line 402
    return-void

    .line 315
    :cond_a
    const-string/jumbo v2, "status_groups_type=?"

    iput-object v2, p0, Lcom/twitter/android/TweetActivity;->i:Ljava/lang/String;

    .line 316
    new-array v2, v8, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    iput-object v2, p0, Lcom/twitter/android/TweetActivity;->j:[Ljava/lang/String;

    goto/16 :goto_0

    .line 364
    :cond_b
    const-string/jumbo v0, "tweet"

    invoke-static {p0, v0}, Lcom/twitter/android/ip;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 365
    const-string/jumbo v0, "tw"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    .line 367
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "tweet:"

    aput-object v2, v0, v7

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    invoke-static {v2}, Lcom/twitter/model/core/Tweet;->b(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v8

    const-string/jumbo v2, ":impression"

    aput-object v2, v0, v9

    invoke-static {v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v2

    .line 369
    new-instance v3, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    .line 370
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    iget-object v5, p0, Lcom/twitter/android/TweetActivity;->l:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {v3, v2, v4, v5, v10}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/String;

    aput-object v0, v3, v7

    .line 371
    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const-string/jumbo v2, "ref_event"

    .line 372
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->l:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 373
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 369
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto/16 :goto_1
.end method

.method b_(Landroid/net/Uri;)Z
    .locals 1

    .prologue
    .line 1176
    :try_start_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1177
    const/4 v0, 0x1

    .line 1179
    :goto_0
    return v0

    .line 1178
    :catch_0
    move-exception v0

    .line 1179
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 963
    new-instance v0, Lcom/twitter/android/widget/ec;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/twitter/android/widget/ec;-><init>(I)V

    const v1, 0x7f0a067f

    .line 964
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->b(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a0717

    .line 965
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->d(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a026d

    .line 966
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->f(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 967
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 968
    invoke-virtual {v0, p0}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Lcom/twitter/app/common/base/m;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 969
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 970
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    const/16 v1, 0xa

    const/4 v6, 0x1

    .line 882
    const v0, 0xffff

    and-int/2addr v0, p1

    .line 883
    sparse-switch v0, :sswitch_data_0

    .line 943
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/ActivityWithProgress;->onActivityResult(IILandroid/content/Intent;)V

    .line 944
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->p:Lcom/twitter/android/media/selection/MediaAttachmentController;

    if-eqz v0, :cond_1

    .line 945
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->p:Lcom/twitter/android/media/selection/MediaAttachmentController;

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->A:Lawp;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/twitter/android/media/selection/MediaAttachmentController;->a(IILandroid/content/Intent;Lcom/twitter/android/media/selection/AttachMediaListener;)V

    .line 947
    :cond_1
    return-void

    .line 885
    :sswitch_0
    if-ne v1, p2, :cond_2

    .line 886
    invoke-virtual {p0, v1}, Lcom/twitter/android/TweetActivity;->setResult(I)V

    .line 887
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->finish()V

    goto :goto_0

    .line 888
    :cond_2
    if-ne v6, p2, :cond_0

    .line 889
    const-string/jumbo v0, "status_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    const-string/jumbo v0, "status_id"

    .line 891
    invoke-virtual {p3, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 892
    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->e:Lawi;

    invoke-interface {v2, v0, v1}, Lawi;->e(J)V

    goto :goto_0

    .line 900
    :sswitch_1
    if-eqz p3, :cond_0

    const-string/jumbo v0, "deleted"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    iget-wide v0, v0, Lcom/twitter/model/core/Tweet;->C:J

    const-string/jumbo v2, "deleted"

    invoke-virtual {p3, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 903
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->finish()V

    goto :goto_0

    .line 909
    :sswitch_2
    if-ne p2, v6, :cond_0

    .line 910
    const-string/jumbo v0, "account"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/account/UserAccount;

    .line 911
    iget-object v2, v0, Lcom/twitter/model/account/UserAccount;->a:Landroid/accounts/Account;

    .line 912
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v0

    .line 913
    if-eqz v0, :cond_0

    iget-object v1, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 914
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "twitter"

    .line 915
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "tweet"

    .line 916
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "status_id"

    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    iget-wide v0, v0, Lcom/twitter/model/core/Tweet;->C:J

    .line 917
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 920
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 921
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/TweetActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 923
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v3, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v3, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "tweet::switch_account::success"

    aput-object v5, v3, v4

    .line 924
    invoke-virtual {v1, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v1

    .line 923
    invoke-static {v1}, Lbjf;->a(Lbjh;)V

    .line 925
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v1

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1, v0, p0, v2}, Lcom/twitter/app/main/MainActivity;->a(Lcom/twitter/library/client/bk;Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 916
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->h:Landroid/net/Uri;

    .line 918
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    goto :goto_1

    .line 931
    :sswitch_3
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    if-eqz p3, :cond_4

    .line 933
    invoke-static {p3}, Lcom/twitter/android/util/v;->a(Landroid/content/Intent;)Lcom/twitter/model/drafts/DraftAttachment;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/drafts/DraftAttachment;

    .line 934
    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->p:Lcom/twitter/android/media/selection/MediaAttachmentController;

    new-instance v2, Lcom/twitter/android/media/selection/MediaAttachment;

    invoke-direct {v2, v0}, Lcom/twitter/android/media/selection/MediaAttachment;-><init>(Lcom/twitter/model/drafts/DraftAttachment;)V

    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->A:Lawp;

    invoke-virtual {v1, v2, v0}, Lcom/twitter/android/media/selection/MediaAttachmentController;->a(Lcom/twitter/android/media/selection/MediaAttachment;Lcom/twitter/android/media/selection/AttachMediaListener;)V

    .line 936
    :cond_4
    sget-object v0, Lcom/twitter/android/composer/ComposerType;->b:Lcom/twitter/android/composer/ComposerType;

    invoke-static {v0, p3}, Lcom/twitter/android/util/v;->a(Lcom/twitter/android/composer/ComposerType;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 883
    :sswitch_data_0
    .sparse-switch
        0x67 -> :sswitch_2
        0x68 -> :sswitch_3
        0x23bf -> :sswitch_1
        0x23c1 -> :sswitch_0
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->A:Lawp;

    invoke-interface {v0}, Lawp;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 960
    :goto_0
    return-void

    .line 955
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->A:Lawp;

    invoke-interface {v0}, Lawp;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 956
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->c()V

    goto :goto_0

    .line 958
    :cond_1
    invoke-super {p0}, Lcom/twitter/android/ActivityWithProgress;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1153
    if-nez p1, :cond_1

    .line 1154
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->h:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetActivity;->b_(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1156
    invoke-direct {p0}, Lcom/twitter/android/TweetActivity;->s()V

    .line 1170
    :goto_0
    return-object v6

    .line 1159
    :cond_0
    new-instance v0, Lcom/twitter/android/bt;

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->h:Landroid/net/Uri;

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->h:Landroid/net/Uri;

    invoke-static {v1}, Lcom/twitter/android/TweetActivity;->b(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/TweetActivity;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/twitter/android/TweetActivity;->j:[Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/bt;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v0

    goto :goto_0

    .line 1160
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 1161
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->u:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetActivity;->b_(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1163
    invoke-direct {p0}, Lcom/twitter/android/TweetActivity;->s()V

    goto :goto_0

    .line 1166
    :cond_2
    new-instance v2, Lcom/twitter/android/bt;

    iget-object v4, p0, Lcom/twitter/android/TweetActivity;->u:Landroid/net/Uri;

    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->u:Landroid/net/Uri;

    invoke-static {v0}, Lcom/twitter/android/TweetActivity;->b(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v5

    move-object v3, p0

    move-object v7, v6

    move-object v8, v6

    invoke-direct/range {v2 .. v8}, Lcom/twitter/android/bt;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v2

    goto :goto_0

    .line 1169
    :cond_3
    invoke-direct {p0}, Lcom/twitter/android/TweetActivity;->s()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/TweetActivity;->q:Z

    .line 1399
    invoke-super {p0}, Lcom/twitter/android/ActivityWithProgress;->onDestroy()V

    .line 1400
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->J:Lcom/twitter/library/client/bd;

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->f:Lcom/twitter/library/service/z;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->b(Lcom/twitter/library/service/z;)V

    .line 1401
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 151
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/TweetActivity;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1276
    return-void
.end method

.method protected onPause()V
    .locals 6

    .prologue
    .line 1389
    invoke-super {p0}, Lcom/twitter/android/ActivityWithProgress;->onPause()V

    .line 1390
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "tweet::::navigate"

    aput-object v3, v1, v2

    .line 1391
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 1392
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/twitter/android/TweetActivity;->g:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(J)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 1393
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1394
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1382
    invoke-super {p0}, Lcom/twitter/android/ActivityWithProgress;->onResume()V

    .line 1383
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/TweetActivity;->g:J

    .line 1384
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1143
    invoke-super {p0, p1}, Lcom/twitter/android/ActivityWithProgress;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1144
    const-string/jumbo v0, "t"

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1145
    const-string/jumbo v0, "tw_is_available"

    iget-boolean v1, p0, Lcom/twitter/android/TweetActivity;->y:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1146
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->v:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    .line 1147
    const-string/jumbo v0, "c"

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->v:Lcom/twitter/model/core/Tweet;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1149
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 623
    invoke-super {p0}, Lcom/twitter/android/ActivityWithProgress;->onStart()V

    .line 624
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    if-nez v0, :cond_0

    .line 625
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    .line 626
    invoke-direct {p0}, Lcom/twitter/android/TweetActivity;->r()V

    .line 628
    :cond_0
    return-void
.end method
