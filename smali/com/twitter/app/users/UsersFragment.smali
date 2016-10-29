.class public Lcom/twitter/app/users/UsersFragment;
.super Lcom/twitter/android/widget/ScrollingHeaderListFragment;
.source "Twttr"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/twitter/android/ff;
.implements Lcom/twitter/android/kn;
.implements Lcom/twitter/android/qt;
.implements Lcom/twitter/android/widget/dl;
.implements Lcom/twitter/app/common/base/m;
.implements Lcom/twitter/library/widget/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/widget/ScrollingHeaderListFragment",
        "<",
        "Landroid/database/Cursor;",
        "Lcom/twitter/android/yb;",
        ">;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/twitter/android/ff;",
        "Lcom/twitter/android/kn",
        "<",
        "Lcom/twitter/library/widget/BaseUserView;",
        "Lcss;",
        ">;",
        "Lcom/twitter/android/qt;",
        "Lcom/twitter/android/widget/dl;",
        "Lcom/twitter/app/common/base/m;",
        "Lcom/twitter/library/widget/e",
        "<",
        "Lcom/twitter/library/widget/UserView;",
        ">;"
    }
.end annotation


# instance fields
.field A:[Ljava/lang/String;

.field B:Ljava/lang/String;

.field C:Ljava/lang/String;

.field D:[Ljava/lang/String;

.field private E:[J

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ">;"
        }
    .end annotation
.end field

.field private I:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private J:I

.field private K:I

.field private L:Z

.field private M:Z

.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ac:Z

.field private ad:Z

.field private ae:Z

.field private af:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation
.end field

.field private ag:Ljava/lang/String;

.field private ah:Z

.field private ai:Z

.field private aj:I

.field private ak:I

.field private al:Z

.field private am:Z

.field private an:Z

.field private ao:Lcom/twitter/app/users/x;

.field private ap:I

.field private aq:Landroid/widget/TextView;

.field private ar:Z

.field private as:Z

.field private at:Z

.field private au:Z

.field protected b:Z

.field protected c:I

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field e:J

.field f:Ljava/lang/String;

.field g:Lcss;

.field h:Lcom/twitter/library/widget/UserView;

.field i:I

.field j:J

.field k:Z

.field l:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field m:Lcom/twitter/library/util/FriendshipCache;

.field n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field o:Lcom/twitter/app/users/v;

.field p:Lcom/twitter/app/users/t;

.field q:Lcom/twitter/android/widget/er;

.field r:Lcom/twitter/android/qg;

.field s:I

.field t:I

.field u:I

.field v:Z

.field w:Z

.field x:I

.field y:Z

.field z:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 136
    invoke-direct {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;-><init>()V

    .line 232
    iput-boolean v1, p0, Lcom/twitter/app/users/UsersFragment;->b:Z

    .line 240
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->d:Ljava/util/Map;

    .line 253
    iput-boolean v1, p0, Lcom/twitter/app/users/UsersFragment;->k:Z

    .line 259
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->l:Ljava/util/HashSet;

    .line 263
    new-instance v0, Lcom/twitter/app/users/w;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/app/users/w;-><init>(Lcom/twitter/app/users/r;)V

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->p:Lcom/twitter/app/users/t;

    .line 266
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/app/users/UsersFragment;->s:I

    .line 280
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->a:Ljava/util/Set;

    .line 287
    iput v2, p0, Lcom/twitter/app/users/UsersFragment;->K:I

    .line 288
    iput-boolean v2, p0, Lcom/twitter/app/users/UsersFragment;->L:Z

    .line 289
    iput-boolean v2, p0, Lcom/twitter/app/users/UsersFragment;->M:Z

    .line 290
    iput-boolean v2, p0, Lcom/twitter/app/users/UsersFragment;->ac:Z

    .line 291
    iput-boolean v2, p0, Lcom/twitter/app/users/UsersFragment;->ad:Z

    .line 294
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->ag:Ljava/lang/String;

    .line 301
    iput v2, p0, Lcom/twitter/app/users/UsersFragment;->aj:I

    .line 302
    iput v2, p0, Lcom/twitter/app/users/UsersFragment;->ak:I

    return-void
.end method

.method private a(IZ)Lcom/twitter/android/mv;
    .locals 8
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 2698
    new-instance v0, Lcom/twitter/android/mv;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v4, p0, Lcom/twitter/app/users/UsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    .line 2699
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->x()Z

    move-result v6

    const/4 v7, 0x0

    move v2, p1

    move-object v3, p0

    move v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/mv;-><init>(Landroid/content/Context;ILcom/twitter/library/widget/e;Lcom/twitter/library/util/FriendshipCache;ZZZ)V

    .line 2700
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->ag()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/mv;->e(Z)V

    .line 2701
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->ah()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/mv;->f(Z)V

    .line 2702
    invoke-direct {p0}, Lcom/twitter/app/users/UsersFragment;->bm()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/mv;->a(Z)V

    .line 2703
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aj()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/mv;->c(Z)V

    .line 2704
    return-object v0
.end method

.method static synthetic a(Lcom/twitter/app/users/UsersFragment;)Lcom/twitter/library/client/bd;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->ab:Lcom/twitter/library/client/bd;

    return-object v0
.end method

.method private a(JILjava/lang/CharSequence;Ljava/lang/String;Lcss;Ljava/lang/String;I)V
    .locals 13

    .prologue
    .line 1307
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aY()Lcom/twitter/android/client/c;

    move-result-object v2

    .line 1308
    move-object/from16 v0, p4

    move-object/from16 v1, p6

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/twitter/app/users/UsersFragment;->a(JLjava/lang/CharSequence;Lcss;)Landroid/content/Intent;

    move-result-object v11

    .line 1310
    if-eqz p6, :cond_0

    .line 1311
    sget-object v3, Lcom/twitter/library/api/PromotedEvent;->d:Lcom/twitter/library/api/PromotedEvent;

    move-object/from16 v0, p6

    invoke-virtual {v2, v3, v0}, Lcom/twitter/android/client/c;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;)V

    :cond_0
    move-object v3, p0

    move-wide v4, p1

    move/from16 v6, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    move/from16 v10, p8

    .line 1313
    invoke-virtual/range {v3 .. v10}, Lcom/twitter/app/users/UsersFragment;->b(JILcss;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1314
    const/4 v2, 0x1

    invoke-virtual {p0, v11, v2}, Lcom/twitter/app/users/UsersFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1315
    return-void
.end method

.method private a(JLcom/twitter/library/widget/UserView;I)V
    .locals 7

    .prologue
    .line 1540
    invoke-virtual {p3}, Lcom/twitter/library/widget/UserView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/xy;

    .line 1541
    new-instance v1, Lcom/twitter/android/widget/ec;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/twitter/android/widget/ec;-><init>(I)V

    .line 1542
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a094c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/android/widget/ec;->a(Ljava/lang/String;)Lcom/twitter/android/widget/eb;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/widget/ec;

    .line 1543
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a094e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1545
    invoke-virtual {p3}, Lcom/twitter/library/widget/UserView;->getBestName()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1543
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/android/widget/ec;->a(Ljava/lang/CharSequence;)Lcom/twitter/android/widget/eb;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/widget/ec;

    const v2, 0x7f0a09bb

    .line 1547
    invoke-virtual {v1, v2}, Lcom/twitter/android/widget/ec;->d(I)Lcom/twitter/android/widget/eb;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/widget/ec;

    const v2, 0x7f0a05a7

    .line 1548
    invoke-virtual {v1, v2}, Lcom/twitter/android/widget/ec;->f(I)Lcom/twitter/android/widget/eb;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/widget/ec;

    .line 1549
    invoke-virtual {v1}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/widget/PromptDialogFragment;

    .line 1550
    iput-wide p1, p0, Lcom/twitter/app/users/UsersFragment;->e:J

    .line 1551
    invoke-virtual {p3}, Lcom/twitter/library/widget/UserView;->getPromotedContent()Lcss;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/app/users/UsersFragment;->g:Lcss;

    .line 1552
    if-eqz v0, :cond_0

    .line 1553
    iget-object v0, v0, Lcom/twitter/android/xy;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->f:Ljava/lang/String;

    .line 1555
    :cond_0
    iput-object p3, p0, Lcom/twitter/app/users/UsersFragment;->h:Lcom/twitter/library/widget/UserView;

    .line 1556
    iput p4, p0, Lcom/twitter/app/users/UsersFragment;->i:I

    .line 1557
    invoke-virtual {v1, p0}, Lcom/twitter/android/widget/PromptDialogFragment;->a(Landroid/support/v4/app/Fragment;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 1558
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 1559
    return-void
.end method

.method private a(JLcss;Lcom/twitter/android/xy;I)V
    .locals 15

    .prologue
    .line 1587
    move-object/from16 v0, p4

    iget-wide v2, v0, Lcom/twitter/android/xy;->d:J

    .line 1588
    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/twitter/android/xy;->g:Ljava/lang/String;

    .line 1589
    move-object/from16 v0, p4

    iget v13, v0, Lcom/twitter/android/xy;->f:I

    .line 1590
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->W()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1591
    iget-object v4, p0, Lcom/twitter/app/users/UsersFragment;->d:Ljava/util/Map;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1593
    :cond_0
    new-instance v3, Lbtz;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 1594
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v5

    move-wide/from16 v6, p1

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lbtz;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcss;)V

    .line 1595
    const/16 v2, 0x9

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Lcom/twitter/app/users/UsersFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 1596
    iget-object v2, p0, Lcom/twitter/app/users/UsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/twitter/library/util/FriendshipCache;->b(J)V

    .line 1597
    iget-object v2, p0, Lcom/twitter/app/users/UsersFragment;->p:Lcom/twitter/app/users/t;

    invoke-interface {v2}, Lcom/twitter/app/users/t;->t()V

    .line 1598
    const-string/jumbo v9, "follow"

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/twitter/android/xy;->j:Ljava/lang/String;

    move-object/from16 v0, p4

    iget v11, v0, Lcom/twitter/android/xy;->i:I

    move-object v3, p0

    move-wide/from16 v4, p1

    move/from16 v6, p5

    move-object/from16 v7, p3

    move-object v8, v12

    invoke-virtual/range {v3 .. v11}, Lcom/twitter/app/users/UsersFragment;->a(JILcss;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1600
    invoke-static {v13}, Lcom/twitter/model/core/p;->c(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1601
    const-string/jumbo v9, "follow_back"

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/twitter/android/xy;->j:Ljava/lang/String;

    move-object/from16 v0, p4

    iget v11, v0, Lcom/twitter/android/xy;->i:I

    move-object v3, p0

    move-wide/from16 v4, p1

    move/from16 v6, p5

    move-object/from16 v7, p3

    move-object v8, v12

    invoke-virtual/range {v3 .. v11}, Lcom/twitter/app/users/UsersFragment;->a(JILcss;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1604
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/twitter/app/users/UsersFragment;->w:Z

    .line 1605
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 10

    .prologue
    const v3, 0x7f0a0724

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 583
    invoke-direct {p0}, Lcom/twitter/app/users/UsersFragment;->an()Z

    move-result v0

    if-nez v0, :cond_0

    .line 616
    :goto_0
    return-void

    .line 586
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/util/ap;->a(Landroid/content/Context;)Lcom/twitter/android/util/al;

    move-result-object v4

    .line 587
    const v0, 0x7f1302dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 588
    const v0, 0x7f130375

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 589
    const v0, 0x7f130020

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 590
    const v0, 0x7f130376

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 591
    const v1, 0x7f130377

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 592
    const v2, 0x7f130378

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 594
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 596
    iget-boolean v7, p0, Lcom/twitter/app/users/UsersFragment;->al:Z

    if-eqz v7, :cond_1

    invoke-interface {v4}, Lcom/twitter/android/util/al;->m()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 598
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 599
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 602
    :cond_1
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 603
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 604
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 606
    const v5, 0x7f0a03b5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 607
    iget-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->au:Z

    if-eqz v0, :cond_2

    .line 608
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 614
    :goto_1
    const v0, 0x7f0a0213

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 610
    :cond_2
    invoke-interface {v4}, Lcom/twitter/android/util/al;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    const v0, 0x7f0a0725

    goto :goto_2
.end method

.method static synthetic a(Lcom/twitter/app/users/UsersFragment;JLcss;Lcom/twitter/android/xy;I)V
    .locals 1

    .prologue
    .line 136
    invoke-direct/range {p0 .. p5}, Lcom/twitter/app/users/UsersFragment;->a(JLcss;Lcom/twitter/android/xy;I)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/app/users/UsersFragment;Lcom/twitter/library/service/x;)V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/twitter/app/users/UsersFragment;->a(Lcom/twitter/library/service/x;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/app/users/UsersFragment;Z)V
    .locals 0

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lcom/twitter/app/users/UsersFragment;->a(Z)V

    return-void
.end method

.method private a(Lcom/twitter/library/service/x;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2129
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 2130
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v0

    .line 2131
    invoke-virtual {p0, v0}, Lcom/twitter/app/users/UsersFragment;->j(I)Z

    .line 2132
    iget-object v0, p1, Lcom/twitter/library/service/x;->o:Landroid/os/Bundle;

    .line 2133
    const-string/jumbo v1, "count"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2134
    const-string/jumbo v2, "num_users"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2136
    if-lez v1, :cond_0

    .line 2137
    iput-boolean v6, p0, Lcom/twitter/app/users/UsersFragment;->ad:Z

    .line 2139
    :cond_0
    invoke-virtual {p0, v7}, Lcom/twitter/app/users/UsersFragment;->a(Z)V

    .line 2142
    iget-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->M:Z

    if-nez v0, :cond_1

    .line 2143
    iput-boolean v6, p0, Lcom/twitter/app/users/UsersFragment;->M:Z

    .line 2144
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->al()V

    .line 2147
    :cond_1
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 2148
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 2149
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->i()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v7

    const-string/jumbo v3, "follow_friends::reverse_lookup:count"

    aput-object v3, v1, v6

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    int-to-long v2, v2

    .line 2150
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(J)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 2147
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 2151
    return-void
.end method

.method private a(Lcom/twitter/library/widget/UserView;I)V
    .locals 3

    .prologue
    .line 1460
    const v0, 0x7f130003

    if-ne p2, v0, :cond_0

    .line 1463
    invoke-virtual {p1}, Lcom/twitter/library/widget/UserView;->i()V

    .line 1464
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x4

    .line 1465
    invoke-virtual {p1}, Lcom/twitter/library/widget/UserView;->getBestName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1464
    invoke-static {v0, v1, v2}, Lcom/twitter/android/ip;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    .line 1469
    :cond_0
    return-void
.end method

.method private am()V
    .locals 1

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/library/util/m;->a(Landroid/content/Context;)Lcom/twitter/library/util/l;

    move-result-object v0

    .line 489
    invoke-interface {v0}, Lcom/twitter/library/util/l;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->al:Z

    .line 490
    return-void
.end method

.method private an()Z
    .locals 2

    .prologue
    .line 493
    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/twitter/app/users/UsersFragment;)Lcom/twitter/library/client/bd;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->ab:Lcom/twitter/library/client/bd;

    return-object v0
.end method

.method private b(JLcss;Lcom/twitter/android/xy;I)V
    .locals 11

    .prologue
    .line 1609
    iget-object v0, p4, Lcom/twitter/android/xy;->g:Ljava/lang/String;

    .line 1610
    new-instance v1, Lbrc;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v3

    const/4 v7, 0x1

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lbrc;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcss;I)V

    .line 1612
    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/twitter/app/users/UsersFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 1613
    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v1, p1, p2}, Lcom/twitter/library/util/FriendshipCache;->h(J)V

    .line 1614
    const-string/jumbo v7, "block"

    iget-object v8, p4, Lcom/twitter/android/xy;->j:Ljava/lang/String;

    iget v9, p4, Lcom/twitter/android/xy;->i:I

    move-object v1, p0

    move-wide v2, p1

    move/from16 v4, p5

    move-object v5, p3

    move-object v6, v0

    invoke-virtual/range {v1 .. v9}, Lcom/twitter/app/users/UsersFragment;->a(JILcss;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1616
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->w:Z

    .line 1617
    return-void
.end method

.method static synthetic b(Lcom/twitter/app/users/UsersFragment;Lcom/twitter/library/service/x;)V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/twitter/app/users/UsersFragment;->b(Lcom/twitter/library/service/x;)V

    return-void
.end method

.method private b(Lcom/twitter/library/service/x;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2839
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 2840
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v1

    .line 2841
    invoke-virtual {p0, v1}, Lcom/twitter/app/users/UsersFragment;->j(I)Z

    .line 2842
    check-cast p1, Lbum;

    .line 2843
    iget v1, p1, Lbum;->l:I

    .line 2845
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2846
    iget-wide v2, p1, Lbum;->b:J

    .line 2847
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    if-lez v1, :cond_5

    .line 2848
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/util/FriendshipCache;->k(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2875
    :cond_0
    :goto_0
    return-void

    .line 2851
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2852
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/yb;

    invoke-virtual {v0}, Lcom/twitter/android/yb;->notifyDataSetChanged()V

    .line 2858
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aC()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/list/aa;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2861
    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    const/16 v2, 0x15

    if-ne v0, v2, :cond_3

    .line 2862
    const-string/jumbo v0, "no_results"

    invoke-virtual {p0, v0}, Lcom/twitter/app/users/UsersFragment;->b(Ljava/lang/String;)V

    .line 2865
    :cond_3
    const/16 v0, 0x14

    if-ge v1, v0, :cond_4

    .line 2866
    iput-boolean v6, p0, Lcom/twitter/app/users/UsersFragment;->k:Z

    .line 2871
    :cond_4
    :goto_2
    iget-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->ac:Z

    if-nez v0, :cond_0

    .line 2872
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->ac:Z

    .line 2873
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->al()V

    goto :goto_0

    .line 2855
    :cond_5
    invoke-virtual {p0, v6}, Lcom/twitter/app/users/UsersFragment;->a(Z)V

    goto :goto_1

    .line 2869
    :cond_6
    const v0, 0x7f0a0957

    invoke-direct {p0, v0}, Lcom/twitter/app/users/UsersFragment;->r(I)V

    goto :goto_2
.end method

.method private bg()Z
    .locals 1

    .prologue
    .line 632
    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->ap:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bh()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1139
    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    packed-switch v0, :pswitch_data_0

    .line 1144
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1141
    :pswitch_0
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0223

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1139
    nop

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
    .end packed-switch
.end method

.method private bi()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1796
    const/4 v0, 0x0

    .line 1799
    iget v2, p0, Lcom/twitter/app/users/UsersFragment;->u:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    .line 1800
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->X()V

    .line 1801
    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->u:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twitter/app/users/UsersFragment;->u:I

    move v0, v1

    .line 1809
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aY()Lcom/twitter/android/client/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/c;->b()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1810
    invoke-virtual {p0, v1}, Lcom/twitter/app/users/UsersFragment;->b(Z)V

    .line 1814
    :goto_1
    return v0

    .line 1804
    :cond_0
    iput-boolean v1, p0, Lcom/twitter/app/users/UsersFragment;->M:Z

    .line 1805
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->ab()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/twitter/app/users/UsersFragment;->k(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1812
    goto :goto_1
.end method

.method private bj()Z
    .locals 2

    .prologue
    .line 2242
    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->aj:I

    iget v1, p0, Lcom/twitter/app/users/UsersFragment;->ak:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bk()V
    .locals 4

    .prologue
    .line 2274
    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_1

    .line 2275
    :cond_0
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 2276
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->i()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "follow_friends:::follow_all"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 2275
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 2278
    :cond_1
    return-void
.end method

.method private bl()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2595
    iget v1, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    packed-switch v1, :pswitch_data_0

    .line 2693
    :goto_0
    :pswitch_0
    return-void

    .line 2597
    :pswitch_1
    const-string/jumbo v1, "following"

    move-object v2, v1

    move-object v1, v0

    .line 2688
    :goto_1
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>()V

    const/4 v3, 0x5

    .line 2689
    invoke-virtual {v0, v3}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(I)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-wide v4, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    .line 2690
    invoke-virtual {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(J)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 2691
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 2692
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->c(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 2688
    invoke-virtual {p0, v0}, Lcom/twitter/app/users/UsersFragment;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    goto :goto_0

    .line 2602
    :pswitch_2
    const-string/jumbo v1, "follower"

    move-object v2, v1

    move-object v1, v0

    .line 2604
    goto :goto_1

    .line 2607
    :pswitch_3
    const-string/jumbo v1, "followers"

    .line 2608
    const-string/jumbo v0, "vit_verified_followers"

    move-object v2, v1

    move-object v1, v0

    .line 2609
    goto :goto_1

    .line 2612
    :pswitch_4
    const-string/jumbo v1, "blocked"

    move-object v2, v1

    move-object v1, v0

    .line 2614
    goto :goto_1

    .line 2617
    :pswitch_5
    const-string/jumbo v1, "blocked_imported"

    move-object v2, v1

    move-object v1, v0

    .line 2619
    goto :goto_1

    .line 2622
    :pswitch_6
    const-string/jumbo v1, "muted"

    move-object v2, v1

    move-object v1, v0

    .line 2624
    goto :goto_1

    .line 2627
    :pswitch_7
    const-string/jumbo v1, "muted_automated"

    move-object v2, v1

    move-object v1, v0

    .line 2629
    goto :goto_1

    .line 2632
    :pswitch_8
    const-string/jumbo v1, "list"

    .line 2633
    const-string/jumbo v0, "users"

    move-object v2, v1

    move-object v1, v0

    .line 2634
    goto :goto_1

    .line 2637
    :pswitch_9
    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->af:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 2638
    const-string/jumbo v1, "explore_email"

    .line 2639
    const-string/jumbo v0, "category"

    move-object v2, v1

    move-object v1, v0

    goto :goto_1

    .line 2641
    :cond_0
    const-string/jumbo v1, "category"

    move-object v2, v1

    move-object v1, v0

    .line 2644
    goto :goto_1

    .line 2647
    :pswitch_a
    const-string/jumbo v1, "categories"

    move-object v2, v1

    move-object v1, v0

    .line 2649
    goto :goto_1

    .line 2653
    :pswitch_b
    const-string/jumbo v1, "matches"

    move-object v2, v1

    move-object v1, v0

    .line 2655
    goto :goto_1

    .line 2659
    :pswitch_c
    const-string/jumbo v1, "who_to_follow"

    move-object v2, v1

    move-object v1, v0

    .line 2661
    goto :goto_1

    .line 2664
    :pswitch_d
    const-string/jumbo v1, "similar_to"

    move-object v2, v1

    move-object v1, v0

    .line 2666
    goto :goto_1

    .line 2669
    :pswitch_e
    const-string/jumbo v1, "favorited_by"

    move-object v2, v1

    move-object v1, v0

    .line 2671
    goto/16 :goto_1

    .line 2674
    :pswitch_f
    const-string/jumbo v1, "retweeted_by"

    move-object v2, v1

    move-object v1, v0

    .line 2676
    goto/16 :goto_1

    .line 2679
    :pswitch_10
    const-string/jumbo v1, "friendships"

    move-object v2, v1

    move-object v1, v0

    .line 2681
    goto/16 :goto_1

    .line 2595
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_c
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_b
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method private bm()Z
    .locals 2

    .prologue
    .line 2753
    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2811
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->i()Ljava/lang/String;

    move-result-object v0

    .line 2812
    const-string/jumbo v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "error"

    .line 2813
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2814
    :cond_0
    const-string/jumbo v0, "who_to_follow:::"

    .line 2816
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":who_to_follow::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/twitter/app/users/UsersFragment;)J
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    return-wide v0
.end method

.method private c(JLcss;Lcom/twitter/android/xy;I)V
    .locals 11

    .prologue
    .line 1621
    iget-object v0, p4, Lcom/twitter/android/xy;->g:Ljava/lang/String;

    .line 1622
    new-instance v1, Lbrc;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v3

    const/4 v7, 0x3

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lbrc;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcss;I)V

    .line 1624
    const/16 v2, 0x15

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/twitter/app/users/UsersFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 1625
    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v1, p1, p2}, Lcom/twitter/library/util/FriendshipCache;->i(J)V

    .line 1626
    const-string/jumbo v7, "unblock"

    iget-object v8, p4, Lcom/twitter/android/xy;->j:Ljava/lang/String;

    iget v9, p4, Lcom/twitter/android/xy;->i:I

    move-object v1, p0

    move-wide v2, p1

    move/from16 v4, p5

    move-object v5, p3

    move-object v6, v0

    invoke-virtual/range {v1 .. v9}, Lcom/twitter/app/users/UsersFragment;->a(JILcss;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1628
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->w:Z

    .line 1629
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1438
    const-string/jumbo v0, ":click"

    .line 1439
    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    packed-switch v0, :pswitch_data_0

    .line 1456
    :goto_0
    :pswitch_0
    return-void

    .line 1441
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "welcome:who_to_follow::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":click"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1453
    :goto_1
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 1454
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 1455
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1453
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0

    .line 1445
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "who_to_follow:contacts::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":click"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1439
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic d(Lcom/twitter/app/users/UsersFragment;)J
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    return-wide v0
.end method

.method private d(JLcss;Lcom/twitter/android/xy;I)V
    .locals 11

    .prologue
    .line 1633
    iget-object v6, p4, Lcom/twitter/android/xy;->g:Ljava/lang/String;

    .line 1634
    new-instance v0, Lbre;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lbre;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    .line 1635
    invoke-virtual {v0, p1, p2}, Lbre;->a(J)Lbra;

    .line 1636
    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/app/users/UsersFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 1637
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/library/util/FriendshipCache;->f(J)V

    .line 1638
    const-string/jumbo v7, "mute"

    iget-object v8, p4, Lcom/twitter/android/xy;->j:Ljava/lang/String;

    iget v9, p4, Lcom/twitter/android/xy;->i:I

    move-object v1, p0

    move-wide v2, p1

    move/from16 v4, p5

    move-object v5, p3

    invoke-virtual/range {v1 .. v9}, Lcom/twitter/app/users/UsersFragment;->a(JILcss;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1639
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->w:Z

    .line 1640
    return-void
.end method

.method static synthetic e(Lcom/twitter/app/users/UsersFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->F:Ljava/lang/String;

    return-object v0
.end method

.method private e(JLcss;Lcom/twitter/android/xy;I)V
    .locals 11

    .prologue
    .line 1644
    iget-object v6, p4, Lcom/twitter/android/xy;->g:Ljava/lang/String;

    .line 1645
    new-instance v0, Lbri;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lbri;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    .line 1646
    invoke-virtual {v0, p1, p2}, Lbri;->a(J)Lbra;

    .line 1647
    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/app/users/UsersFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 1648
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/library/util/FriendshipCache;->g(J)V

    .line 1649
    const-string/jumbo v7, "unmute"

    iget-object v8, p4, Lcom/twitter/android/xy;->j:Ljava/lang/String;

    iget v9, p4, Lcom/twitter/android/xy;->i:I

    move-object v1, p0

    move-wide v2, p1

    move/from16 v4, p5

    move-object v5, p3

    invoke-virtual/range {v1 .. v9}, Lcom/twitter/app/users/UsersFragment;->a(JILcss;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1651
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->w:Z

    .line 1652
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 1789
    invoke-virtual {p0, v3}, Lcom/twitter/app/users/UsersFragment;->l(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1790
    new-instance v0, Lbmz;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lbmz;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;)V

    const/16 v1, 0x1b

    invoke-virtual {p0, v0, v1, v3}, Lcom/twitter/app/users/UsersFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 1793
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/twitter/app/users/UsersFragment;)Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->M:Z

    return v0
.end method

.method private g(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2474
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 2475
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object v4, v1, v2

    const/4 v2, 0x2

    aput-object v4, v1, v2

    const/4 v2, 0x3

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "impression"

    aput-object v3, v1, v2

    .line 2476
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 2477
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 2478
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v1}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 2479
    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    iput-wide v2, v1, Lcom/twitter/library/scribe/TwitterScribeItem;->a:J

    .line 2480
    iget-object v2, p0, Lcom/twitter/app/users/UsersFragment;->F:Ljava/lang/String;

    iput-object v2, v1, Lcom/twitter/library/scribe/TwitterScribeItem;->b:Ljava/lang/String;

    .line 2481
    iget v2, p0, Lcom/twitter/app/users/UsersFragment;->J:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/twitter/library/scribe/TwitterScribeItem;->g:I

    .line 2482
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    .line 2483
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 2484
    return-void
.end method

.method private static g(I)Z
    .locals 1

    .prologue
    .line 478
    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0x13

    if-eq p0, v0, :cond_0

    const/16 v0, 0x15

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x24

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g(Lcom/twitter/app/users/UsersFragment;)Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->ac:Z

    return v0
.end method

.method private o()Z
    .locals 2

    .prologue
    .line 328
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bk;->d(Lcom/twitter/library/client/Session;)Z

    move-result v0

    return v0
.end method

.method private q(I)V
    .locals 4

    .prologue
    .line 2154
    new-instance v0, Lbum;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v2

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lbum;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;I)V

    .line 2156
    invoke-virtual {p0, p1}, Lcom/twitter/app/users/UsersFragment;->i(I)I

    move-result v1

    iput v1, v0, Lbum;->c:I

    .line 2157
    const/16 v1, 0x64

    iput v1, v0, Lbum;->j:I

    .line 2158
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/twitter/app/users/UsersFragment;->c(Z)[J

    move-result-object v1

    iput-object v1, v0, Lbum;->i:[J

    .line 2159
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1, p1}, Lcom/twitter/app/users/UsersFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 2160
    return-void
.end method

.method private r(I)V
    .locals 2

    .prologue
    .line 3211
    iget-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->as:Z

    if-nez v0, :cond_0

    .line 3212
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3214
    :cond_0
    return-void
.end method


# virtual methods
.method C()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2403
    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    sparse-switch v0, :sswitch_data_0

    .line 2471
    :goto_0
    return-void

    .line 2405
    :sswitch_0
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 2406
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "following::::impression"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 2405
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0

    .line 2410
    :sswitch_1
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 2411
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "followers::::impression"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 2410
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0

    .line 2416
    :sswitch_2
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 2417
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v6, [Ljava/lang/String;

    .line 2418
    invoke-direct {p0}, Lcom/twitter/app/users/UsersFragment;->bn()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string/jumbo v2, "impression"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 2416
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0

    .line 2422
    :sswitch_3
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "people:address_book:::impression"

    aput-object v2, v1, v4

    .line 2423
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 2422
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0

    .line 2427
    :sswitch_4
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v6, [Ljava/lang/String;

    .line 2428
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->i()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string/jumbo v2, "follow_friends:::impression"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 2427
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto/16 :goto_0

    .line 2432
    :sswitch_5
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 2433
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "similar_to::::impression"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 2432
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto/16 :goto_0

    .line 2437
    :sswitch_6
    const-string/jumbo v0, "category"

    invoke-direct {p0, v0}, Lcom/twitter/app/users/UsersFragment;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2441
    :sswitch_7
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "follower_requests::::impression"

    aput-object v2, v1, v4

    .line 2442
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 2441
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto/16 :goto_0

    .line 2446
    :sswitch_8
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 2447
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "blocked::::impression"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 2446
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto/16 :goto_0

    .line 2451
    :sswitch_9
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 2452
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "blocked_imported::::impression"

    aput-object v2, v1, v4

    .line 2453
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 2451
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto/16 :goto_0

    .line 2457
    :sswitch_a
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 2458
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "muted::::impression"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 2457
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto/16 :goto_0

    .line 2462
    :sswitch_b
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 2464
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "muted_automated::::impression"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 2462
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto/16 :goto_0

    .line 2403
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_8
        0x6 -> :sswitch_6
        0x7 -> :sswitch_4
        0xa -> :sswitch_5
        0x12 -> :sswitch_7
        0x13 -> :sswitch_2
        0x15 -> :sswitch_2
        0x1a -> :sswitch_a
        0x1c -> :sswitch_3
        0x25 -> :sswitch_9
        0x26 -> :sswitch_b
    .end sparse-switch
.end method

.method protected F()V
    .locals 3

    .prologue
    .line 799
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->M()V

    .line 800
    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 801
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->z:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "limit"

    iget v2, p0, Lcom/twitter/app/users/UsersFragment;->c:I

    .line 802
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 801
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 802
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->z:Landroid/net/Uri;

    .line 806
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 807
    const v0, 0x7f0200bd

    .line 812
    :goto_0
    invoke-virtual {p0, v0}, Lcom/twitter/app/users/UsersFragment;->e_(I)V

    .line 813
    return-void

    .line 809
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->U()I

    move-result v0

    goto :goto_0
.end method

.method protected G()V
    .locals 1

    .prologue
    .line 2109
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->t_()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2121
    :cond_0
    :goto_0
    return-void

    .line 2112
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->H()I

    move-result v0

    iput v0, p0, Lcom/twitter/app/users/UsersFragment;->x:I

    .line 2113
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->o:Lcom/twitter/app/users/v;

    if-eqz v0, :cond_0

    .line 2114
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2119
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->o:Lcom/twitter/app/users/v;

    invoke-interface {v0}, Lcom/twitter/app/users/v;->h()V

    goto :goto_0
.end method

.method protected H()I
    .locals 1

    .prologue
    .line 2124
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/yb;

    invoke-virtual {v0}, Lcom/twitter/android/yb;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected M()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 659
    sget-object v0, Lchs;->a:[Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->A:[Ljava/lang/String;

    .line 660
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "LOWER(users_username) ASC"

    :goto_0
    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->B:Ljava/lang/String;

    .line 664
    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    packed-switch v0, :pswitch_data_0

    .line 792
    :pswitch_0
    sget-object v0, Lcom/twitter/library/provider/dk;->k:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->z:Landroid/net/Uri;

    .line 796
    :cond_0
    :goto_1
    return-void

    .line 660
    :cond_1
    const-string/jumbo v0, "_id ASC"

    goto :goto_0

    .line 666
    :pswitch_1
    sget-object v0, Lcom/twitter/library/provider/dk;->h:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->z:Landroid/net/Uri;

    .line 667
    sget-object v0, Lchs;->b:[Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->A:[Ljava/lang/String;

    goto :goto_1

    .line 671
    :pswitch_2
    sget-object v0, Lcom/twitter/library/provider/dk;->i:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->z:Landroid/net/Uri;

    .line 672
    sget-object v0, Lchs;->b:[Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->A:[Ljava/lang/String;

    goto :goto_1

    .line 676
    :pswitch_3
    sget-object v0, Lcom/twitter/library/provider/dk;->j:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->z:Landroid/net/Uri;

    .line 677
    sget-object v0, Lchs;->b:[Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->A:[Ljava/lang/String;

    goto :goto_1

    .line 681
    :pswitch_4
    sget-object v0, Lcom/twitter/library/provider/dk;->d:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->z:Landroid/net/Uri;

    goto :goto_1

    .line 685
    :pswitch_5
    sget-object v0, Lcom/twitter/library/provider/dk;->e:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->z:Landroid/net/Uri;

    goto :goto_1

    .line 689
    :pswitch_6
    sget-object v0, Lcom/twitter/library/provider/dk;->f:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->z:Landroid/net/Uri;

    goto :goto_1

    .line 693
    :pswitch_7
    sget-object v0, Lcom/twitter/library/provider/dk;->g:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->z:Landroid/net/Uri;

    goto :goto_1

    .line 697
    :pswitch_8
    sget-object v0, Lcom/twitter/library/provider/dk;->x:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->z:Landroid/net/Uri;

    .line 698
    sget-object v0, Lchs;->b:[Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->A:[Ljava/lang/String;

    goto :goto_1

    .line 702
    :pswitch_9
    iget-wide v0, p0, Lcom/twitter/app/users/UsersFragment;->j:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 703
    sget-object v0, Lcom/twitter/library/provider/dk;->c:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->z:Landroid/net/Uri;

    goto/16 :goto_1

    .line 708
    :pswitch_a
    sget-object v0, Lcom/twitter/library/provider/dk;->o:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->z:Landroid/net/Uri;

    goto/16 :goto_1

    .line 712
    :pswitch_b
    sget-object v0, Lcom/twitter/library/provider/dk;->b:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->z:Landroid/net/Uri;

    goto/16 :goto_1

    .line 716
    :pswitch_c
    sget-object v0, Lcom/twitter/library/provider/dk;->l:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->z:Landroid/net/Uri;

    .line 717
    const-string/jumbo v0, "(users_friendship & 1) ASC, LOWER(users_name) ASC"

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->B:Ljava/lang/String;

    goto/16 :goto_1

    .line 721
    :pswitch_d
    sget-object v0, Lcom/twitter/library/provider/dk;->v:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->z:Landroid/net/Uri;

    .line 722
    iget-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->au:Z

    if-eqz v0, :cond_2

    .line 723
    const-string/jumbo v0, "LOWER(TRIM(users_name)) COLLATE UNICODE"

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->B:Ljava/lang/String;

    goto/16 :goto_1

    .line 725
    :cond_2
    const-string/jumbo v0, "(users_friendship & 1) ASC, LOWER(users_name) ASC"

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->B:Ljava/lang/String;

    goto/16 :goto_1

    .line 730
    :pswitch_e
    sget-object v0, Lcom/twitter/library/provider/dk;->w:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->z:Landroid/net/Uri;

    .line 731
    sget-object v0, Lchs;->b:[Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->A:[Ljava/lang/String;

    goto/16 :goto_1

    .line 735
    :pswitch_f
    sget-object v0, Lcom/twitter/library/provider/dk;->u:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->z:Landroid/net/Uri;

    .line 736
    sget-object v0, Lchs;->b:[Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->A:[Ljava/lang/String;

    goto/16 :goto_1

    .line 740
    :pswitch_10
    sget-object v0, Lcom/twitter/library/provider/dk;->p:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->z:Landroid/net/Uri;

    goto/16 :goto_1

    .line 744
    :pswitch_11
    sget-object v0, Lcom/twitter/library/provider/dk;->q:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->z:Landroid/net/Uri;

    goto/16 :goto_1

    .line 748
    :pswitch_12
    sget-object v0, Lcom/twitter/library/provider/dk;->r:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->z:Landroid/net/Uri;

    goto/16 :goto_1

    .line 752
    :pswitch_13
    sget-object v0, Lcom/twitter/library/provider/dk;->s:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->z:Landroid/net/Uri;

    goto/16 :goto_1

    .line 756
    :pswitch_14
    sget-object v0, Lcom/twitter/library/provider/dk;->t:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->z:Landroid/net/Uri;

    .line 757
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->Q()Lcom/twitter/app/users/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/users/y;->N()Ljava/lang/String;

    move-result-object v0

    .line 758
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 759
    const-string/jumbo v1, "CASE users_username WHEN \"%s\" THEN -1 ELSE LOWER(users_username) END ASC"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->B:Ljava/lang/String;

    goto/16 :goto_1

    .line 762
    :cond_3
    const-string/jumbo v0, "LOWER(users_username) ASC"

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->B:Ljava/lang/String;

    goto/16 :goto_1

    .line 767
    :pswitch_15
    sget-object v0, Lcom/twitter/library/provider/dk;->y:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->z:Landroid/net/Uri;

    .line 769
    sget-object v0, Lchs;->b:[Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->A:[Ljava/lang/String;

    goto/16 :goto_1

    .line 773
    :pswitch_16
    sget-object v0, Lcom/twitter/library/provider/dk;->m:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->z:Landroid/net/Uri;

    .line 774
    sget-object v0, Lchs;->b:[Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->A:[Ljava/lang/String;

    .line 775
    const-string/jumbo v0, "users_friendship_time DESC"

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->B:Ljava/lang/String;

    goto/16 :goto_1

    .line 779
    :pswitch_17
    sget-object v0, Lcom/twitter/library/provider/dk;->A:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    .line 780
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 782
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "ownerId"

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    .line 783
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 784
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->z:Landroid/net/Uri;

    goto/16 :goto_1

    .line 788
    :pswitch_18
    sget-object v0, Lcom/twitter/library/provider/dk;->B:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->z:Landroid/net/Uri;

    goto/16 :goto_1

    .line 664
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_10
        :pswitch_0
        :pswitch_8
        :pswitch_12
        :pswitch_13
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_0
        :pswitch_14
        :pswitch_f
        :pswitch_15
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_d
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method public N()V
    .locals 1

    .prologue
    .line 1768
    invoke-super {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->N()V

    .line 1769
    const-string/jumbo v0, "get_newer"

    invoke-virtual {p0, v0}, Lcom/twitter/app/users/UsersFragment;->b(Ljava/lang/String;)V

    .line 1770
    return-void
.end method

.method protected O()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1150
    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    sparse-switch v0, :sswitch_data_0

    .line 1175
    iput-object v1, p0, Lcom/twitter/app/users/UsersFragment;->C:Ljava/lang/String;

    .line 1176
    iput-object v1, p0, Lcom/twitter/app/users/UsersFragment;->D:[Ljava/lang/String;

    .line 1180
    :goto_0
    return-void

    .line 1152
    :sswitch_0
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v0}, Lcom/twitter/library/util/FriendshipCache;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1153
    const-string/jumbo v0, "(users_friendship IS NULL OR (users_friendship & 1 == 0)) AND user_groups_user_id!=?"

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->C:Ljava/lang/String;

    .line 1154
    new-array v0, v2, [Ljava/lang/String;

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->D:[Ljava/lang/String;

    goto :goto_0

    .line 1156
    :cond_0
    iput-object v1, p0, Lcom/twitter/app/users/UsersFragment;->C:Ljava/lang/String;

    .line 1157
    iput-object v1, p0, Lcom/twitter/app/users/UsersFragment;->D:[Ljava/lang/String;

    goto :goto_0

    .line 1162
    :sswitch_1
    const-string/jumbo v0, "(users_friendship IS NULL OR (users_friendship & 1 == 0)) AND user_groups_user_id!=?"

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->C:Ljava/lang/String;

    .line 1163
    new-array v0, v2, [Ljava/lang/String;

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->D:[Ljava/lang/String;

    goto :goto_0

    .line 1167
    :sswitch_2
    const-string/jumbo v0, "user_groups_type=? AND user_groups_tag=?"

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->C:Ljava/lang/String;

    .line 1168
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x6

    .line 1169
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->F:Ljava/lang/String;

    .line 1170
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->D:[Ljava/lang/String;

    goto :goto_0

    .line 1150
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_2
        0x7 -> :sswitch_1
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method protected P()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2758
    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    sparse-switch v0, :sswitch_data_0

    .line 2776
    const/4 v0, 0x0

    .line 2780
    :goto_0
    return-object v0

    .line 2760
    :sswitch_0
    const-string/jumbo v0, "similar_to::stream::results"

    goto :goto_0

    .line 2764
    :sswitch_1
    const-string/jumbo v0, "category:who_to_follow:::results"

    goto :goto_0

    .line 2768
    :sswitch_2
    const-string/jumbo v0, "who_to_follow::stream::results"

    goto :goto_0

    .line 2772
    :sswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":who_to_follow:stream::results"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2758
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_1
        0xa -> :sswitch_0
        0x13 -> :sswitch_3
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method public Q()Lcom/twitter/app/users/y;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/app/users/y;->b(Landroid/os/Bundle;)Lcom/twitter/app/users/y;

    move-result-object v0

    return-object v0
.end method

.method S()Lcom/twitter/library/client/Session;
    .locals 4

    .prologue
    .line 323
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    .line 324
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->Q()Lcom/twitter/app/users/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/app/users/y;->R()J

    move-result-wide v2

    .line 323
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/client/bk;->a(J)Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method T()I
    .locals 1

    .prologue
    .line 497
    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->x:I

    return v0
.end method

.method protected U()I
    .locals 6
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 641
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 642
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 643
    iget v1, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    sparse-switch v1, :sswitch_data_0

    .line 655
    :cond_0
    :goto_0
    return v0

    .line 645
    :sswitch_0
    const v0, 0x7f020349

    goto :goto_0

    .line 648
    :sswitch_1
    const v0, 0x7f0200bd

    goto :goto_0

    .line 643
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x12 -> :sswitch_1
    .end sparse-switch
.end method

.method public V()Lcom/twitter/library/util/FriendshipCache;
    .locals 1

    .prologue
    .line 1759
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    return-object v0
.end method

.method W()Z
    .locals 2

    .prologue
    .line 2049
    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public X()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 2058
    iget-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->au:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->t_()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->ad:Z

    if-nez v0, :cond_0

    .line 2059
    invoke-virtual {p0, v3}, Lcom/twitter/app/users/UsersFragment;->l(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2060
    new-instance v0, Lbng;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lbng;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1, v3}, Lcom/twitter/app/users/UsersFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 2066
    :goto_0
    return-void

    .line 2063
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->M:Z

    .line 2064
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->ab()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/twitter/app/users/UsersFragment;->k(I)V

    goto :goto_0
.end method

.method public Y()I
    .locals 1

    .prologue
    .line 2077
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->l:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    return v0
.end method

.method protected a(JLjava/lang/CharSequence;Lcss;)Landroid/content/Intent;
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 1242
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "user_id"

    .line 1243
    invoke-virtual {v0, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "type"

    iget v3, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    .line 1244
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 1245
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v0

    .line 1246
    if-eqz v0, :cond_0

    .line 1247
    const-string/jumbo v3, "association"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1250
    :cond_0
    invoke-static {p3}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1252
    invoke-interface {p3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v3, 0x40

    if-ne v0, v3, :cond_4

    .line 1253
    const/4 v0, 0x1

    .line 1257
    :goto_0
    const-string/jumbo v3, "screen_name"

    .line 1258
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {p3, v0, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1257
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1261
    :cond_1
    const/16 v0, 0x12

    iget v3, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    if-ne v0, v3, :cond_6

    .line 1262
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->n:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1263
    if-eqz v0, :cond_5

    .line 1264
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1298
    :cond_2
    :goto_1
    if-eqz p4, :cond_3

    .line 1299
    const-string/jumbo v0, "pc"

    invoke-static {p4}, Lcss;->a(Lcss;)[B

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1301
    :cond_3
    return-object v2

    :cond_4
    move v0, v1

    .line 1255
    goto :goto_0

    .line 1266
    :pswitch_0
    const-string/jumbo v0, "friendship"

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 1270
    :pswitch_1
    const-string/jumbo v0, "friendship"

    const/4 v1, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 1275
    :pswitch_2
    const-string/jumbo v0, "friendship"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 1283
    :cond_5
    const-string/jumbo v0, "friendship"

    const/16 v1, 0x20

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 1285
    :cond_6
    invoke-direct {p0}, Lcom/twitter/app/users/UsersFragment;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1288
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/library/util/FriendshipCache;->j(J)Ljava/lang/Integer;

    move-result-object v0

    .line 1289
    if-eqz v0, :cond_7

    .line 1290
    const-string/jumbo v1, "friendship"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_1

    .line 1291
    :cond_7
    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    if-eq v5, v0, :cond_8

    const/16 v0, 0x25

    iget v1, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    if-ne v0, v1, :cond_9

    .line 1292
    :cond_8
    const-string/jumbo v0, "friendship"

    const/4 v1, 0x4

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 1293
    :cond_9
    const/16 v0, 0x1a

    iget v1, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    if-eq v0, v1, :cond_a

    const/16 v0, 0x26

    iget v1, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    if-ne v0, v1, :cond_2

    .line 1294
    :cond_a
    const-string/jumbo v0, "friendship"

    const/16 v1, 0x2000

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 1264
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 502
    invoke-super {p0, p1, p2}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    .line 503
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    .line 504
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->Q()Lcom/twitter/app/users/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/app/users/y;->v()I

    move-result v1

    .line 505
    iget-object v3, v0, Lcom/twitter/app/common/list/aa;->b:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 506
    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->b:Landroid/view/View;

    const v3, 0x7f13002a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 507
    if-eqz v0, :cond_0

    .line 510
    sparse-switch v1, :sswitch_data_0

    move v1, v2

    move v3, v2

    .line 528
    :goto_0
    if-lez v3, :cond_0

    if-lez v1, :cond_0

    .line 529
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 530
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f1200c3

    invoke-static {v6, v1, v7}, Lcom/twitter/library/util/an;->a(Landroid/content/Context;II)Lcom/twitter/ui/view/a;

    move-result-object v1

    aput-object v1, v5, v2

    .line 532
    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->a_:Landroid/content/Context;

    .line 533
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "{{}}"

    invoke-static {v5, v1, v2}, Lcom/twitter/library/util/an;->a([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 532
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    .line 535
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 539
    :cond_0
    return-object v4

    .line 512
    :sswitch_0
    const v3, 0x7f0a0378

    .line 513
    const v1, 0x7f0a0ab0

    .line 514
    goto :goto_0

    .line 517
    :sswitch_1
    const v3, 0x7f0a037f

    .line 518
    const v1, 0x7f0a0aae

    .line 519
    goto :goto_0

    .line 510
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0378 -> :sswitch_0
        0x7f0a037f -> :sswitch_1
    .end sparse-switch
.end method

.method a(JILcss;Ljava/lang/String;Ljava/lang/String;I)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 5

    .prologue
    .line 2390
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    .line 2391
    invoke-virtual {v0, p1, p2, p4, p5}, Lcom/twitter/library/scribe/TwitterScribeLog;->b(JLcss;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p6, v1, v2

    .line 2392
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 2393
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 2390
    return-object v0
.end method

.method public a()V
    .locals 7

    .prologue
    const/4 v1, 0x3

    const/4 v6, 0x1

    .line 911
    invoke-super {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->a()V

    .line 912
    invoke-direct {p0}, Lcom/twitter/app/users/UsersFragment;->am()V

    .line 913
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->z:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 914
    iget-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->ae:Z

    if-eqz v0, :cond_3

    .line 915
    iget-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->ai:Z

    if-eqz v0, :cond_2

    .line 916
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->c()V

    .line 928
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    .line 929
    if-eqz v0, :cond_1

    iget-wide v2, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    iget-wide v4, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    iget-boolean v0, v0, Lcom/twitter/model/core/TwitterUser;->m:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    if-ne v0, v6, :cond_1

    .line 930
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 932
    :cond_1
    return-void

    .line 918
    :cond_2
    invoke-virtual {p0, v1}, Lcom/twitter/app/users/UsersFragment;->h(I)Z

    goto :goto_0

    .line 920
    :cond_3
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aD()Z

    move-result v0

    if-nez v0, :cond_4

    .line 922
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->c()V

    goto :goto_0

    .line 923
    :cond_4
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/yb;

    invoke-virtual {v0}, Lcom/twitter/android/yb;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 924
    invoke-virtual {p0, v1}, Lcom/twitter/app/users/UsersFragment;->h(I)Z

    goto :goto_0
.end method

.method a(JILcss;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 13

    .prologue
    .line 2367
    iget v2, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    .line 2368
    invoke-virtual {p0, v2}, Lcom/twitter/app/users/UsersFragment;->e(I)Ljava/lang/String;

    move-result-object v2

    .line 2367
    move-object/from16 v0, p7

    invoke-static {v0, v2}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2369
    if-eqz v9, :cond_1

    move-object v3, p0

    move-wide v4, p1

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    move/from16 v11, p8

    .line 2370
    invoke-virtual/range {v3 .. v11}, Lcom/twitter/app/users/UsersFragment;->b(JILcss;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v2

    .line 2372
    iget v3, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 2373
    iget-wide v4, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->j(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 2375
    :cond_0
    invoke-static {v2}, Lbjf;->a(Lbjh;)V

    .line 2377
    :cond_1
    return-void
.end method

.method a(JLjava/lang/String;Lcss;Lcom/twitter/android/xy;I)V
    .locals 13

    .prologue
    .line 1563
    const/4 v2, 0x0

    .line 1564
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->W()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1565
    invoke-virtual {p0, p1, p2}, Lcom/twitter/app/users/UsersFragment;->b(J)Ljava/lang/Long;

    .line 1566
    const/4 v2, 0x1

    .line 1572
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 1573
    new-instance v3, Lbuc;

    .line 1574
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v5

    move-wide v6, p1

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v8}, Lbuc;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcss;)V

    const/16 v2, 0xb

    const/4 v4, 0x0

    .line 1573
    invoke-virtual {p0, v3, v2, v4}, Lcom/twitter/app/users/UsersFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 1577
    :cond_1
    iget-object v2, p0, Lcom/twitter/app/users/UsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v2, p1, p2}, Lcom/twitter/library/util/FriendshipCache;->c(J)V

    .line 1578
    iget-object v2, p0, Lcom/twitter/app/users/UsersFragment;->p:Lcom/twitter/app/users/t;

    invoke-interface {v2}, Lcom/twitter/app/users/t;->t()V

    .line 1579
    if-eqz p5, :cond_3

    move-object/from16 v0, p5

    iget-object v10, v0, Lcom/twitter/android/xy;->j:Ljava/lang/String;

    .line 1580
    :goto_1
    if-eqz p5, :cond_4

    move-object/from16 v0, p5

    iget v11, v0, Lcom/twitter/android/xy;->i:I

    .line 1581
    :goto_2
    const-string/jumbo v9, "unfollow"

    move-object v3, p0

    move-wide v4, p1

    move/from16 v6, p6

    move-object/from16 v7, p4

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v11}, Lcom/twitter/app/users/UsersFragment;->a(JILcss;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1582
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/twitter/app/users/UsersFragment;->w:Z

    .line 1583
    return-void

    .line 1567
    :cond_2
    iget-object v3, p0, Lcom/twitter/app/users/UsersFragment;->l:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1570
    const/4 v2, 0x1

    goto :goto_0

    .line 1579
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 1580
    :cond_4
    const/4 v11, -0x1

    goto :goto_2
.end method

.method public a(Landroid/content/DialogInterface;II)V
    .locals 11

    .prologue
    .line 1716
    packed-switch p2, :pswitch_data_0

    .line 1756
    :cond_0
    :goto_0
    return-void

    .line 1718
    :pswitch_0
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 1719
    new-instance v1, Lbpp;

    .line 1720
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 1721
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v3

    iget-wide v4, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    iget-wide v6, p0, Lcom/twitter/app/users/UsersFragment;->e:J

    iget-wide v8, p0, Lcom/twitter/app/users/UsersFragment;->j:J

    const/4 v10, 0x4

    invoke-direct/range {v1 .. v10}, Lbpp;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JJJI)V

    .line 1726
    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/twitter/app/users/UsersFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 1728
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "me:lists:list:people:remove"

    aput-object v3, v1, v2

    .line 1729
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1728
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0

    .line 1734
    :pswitch_1
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 1735
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 1740
    :pswitch_2
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 1741
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->h:Lcom/twitter/library/widget/UserView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->h:Lcom/twitter/library/widget/UserView;

    .line 1742
    invoke-virtual {v0}, Lcom/twitter/library/widget/UserView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/xy;

    move-object v6, v0

    .line 1743
    :goto_1
    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->e:J

    iget-object v4, p0, Lcom/twitter/app/users/UsersFragment;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/twitter/app/users/UsersFragment;->g:Lcss;

    iget v7, p0, Lcom/twitter/app/users/UsersFragment;->i:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/twitter/app/users/UsersFragment;->a(JLjava/lang/String;Lcss;Lcom/twitter/android/xy;I)V

    .line 1745
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->h:Lcom/twitter/library/widget/UserView;

    if-eqz v0, :cond_0

    .line 1746
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->h:Lcom/twitter/library/widget/UserView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/UserView;->setIsFollowing(Z)V

    .line 1747
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->h:Lcom/twitter/library/widget/UserView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/UserView;->b(Z)V

    goto :goto_0

    .line 1742
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 1716
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 4
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
    .line 1185
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1205
    :cond_0
    :goto_0
    return-void

    .line 1187
    :pswitch_0
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->r:Lcom/twitter/android/qg;

    if-eqz v0, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->r:Lcom/twitter/android/qg;

    iget v1, p0, Lcom/twitter/app/users/UsersFragment;->s:I

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/qg;->a(II)V

    goto :goto_0

    .line 1193
    :pswitch_1
    if-eqz p2, :cond_0

    .line 1194
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 1195
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 1196
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->i()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "follow_friends:not_followed::followable"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 1197
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(J)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1194
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0

    .line 1185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/view/View;III)V
    .locals 0

    .prologue
    .line 2216
    return-void
.end method

.method protected a(Landroid/view/View;IJ)V
    .locals 11

    .prologue
    .line 1360
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/xy;

    .line 1361
    iget-object v1, v0, Lcom/twitter/android/xy;->c:Lcom/twitter/library/widget/BaseUserView;

    invoke-virtual {v1}, Lcom/twitter/library/widget/BaseUserView;->getUserName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/twitter/android/xy;->g:Ljava/lang/String;

    iget-object v1, v0, Lcom/twitter/android/xy;->c:Lcom/twitter/library/widget/BaseUserView;

    .line 1362
    invoke-virtual {v1}, Lcom/twitter/library/widget/BaseUserView;->getPromotedContent()Lcss;

    move-result-object v7

    iget-object v8, v0, Lcom/twitter/android/xy;->j:Ljava/lang/String;

    iget v9, v0, Lcom/twitter/android/xy;->i:I

    move-object v1, p0

    move-wide v2, p3

    move v4, p2

    .line 1361
    invoke-direct/range {v1 .. v9}, Lcom/twitter/app/users/UsersFragment;->a(JILjava/lang/CharSequence;Ljava/lang/String;Lcss;Ljava/lang/String;I)V

    .line 1363
    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 136
    check-cast p1, Lcom/twitter/library/widget/BaseUserView;

    check-cast p2, Lcss;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/app/users/UsersFragment;->a(Lcom/twitter/library/widget/BaseUserView;Lcss;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1335
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    .line 1336
    invoke-virtual {p1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v3

    .line 1337
    sub-int v4, p3, v2

    .line 1338
    iget-object v5, p0, Lcom/twitter/app/users/UsersFragment;->q:Lcom/twitter/android/widget/er;

    invoke-virtual {v5, v4}, Lcom/twitter/android/widget/er;->c(I)I

    move-result v4

    .line 1340
    iget v5, p0, Lcom/twitter/app/users/UsersFragment;->s:I

    if-eq v4, v5, :cond_0

    if-lez v2, :cond_1

    if-ge p3, v2, :cond_1

    :cond_0
    move v2, v0

    .line 1342
    :goto_0
    if-lez v3, :cond_2

    .line 1343
    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v4

    sub-int v3, v4, v3

    add-int/lit8 v3, v3, -0x1

    if-le p3, v3, :cond_2

    .line 1345
    :goto_1
    if-eqz v2, :cond_3

    .line 1346
    invoke-virtual/range {p0 .. p5}, Lcom/twitter/app/users/UsersFragment;->b(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 1356
    :goto_2
    return-void

    :cond_1
    move v2, v1

    .line 1340
    goto :goto_0

    :cond_2
    move v0, v1

    .line 1343
    goto :goto_1

    .line 1350
    :cond_3
    if-eqz v0, :cond_4

    .line 1351
    invoke-virtual/range {p0 .. p5}, Lcom/twitter/app/users/UsersFragment;->c(Landroid/widget/ListView;Landroid/view/View;IJ)V

    goto :goto_2

    .line 1355
    :cond_4
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/twitter/app/users/UsersFragment;->a(Landroid/view/View;IJ)V

    goto :goto_2
.end method

.method protected a(Lcmf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1209
    invoke-super {p0, p1}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->a(Lcmf;)V

    .line 1210
    iget-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->ah:Z

    if-nez v0, :cond_3

    .line 1214
    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_1

    .line 1215
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/yb;

    invoke-virtual {v0}, Lcom/twitter/android/yb;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->v:Z

    if-nez v0, :cond_2

    .line 1219
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/app/users/UsersFragment;->h(I)Z

    .line 1221
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->ah:Z

    .line 1223
    :cond_3
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->G()V

    .line 1224
    return-void
.end method

.method public a(Lcom/twitter/app/users/t;)V
    .locals 0

    .prologue
    .line 2073
    iput-object p1, p0, Lcom/twitter/app/users/UsersFragment;->p:Lcom/twitter/app/users/t;

    .line 2074
    return-void
.end method

.method a(Lcom/twitter/app/users/v;)V
    .locals 0

    .prologue
    .line 2069
    iput-object p1, p0, Lcom/twitter/app/users/UsersFragment;->o:Lcom/twitter/app/users/v;

    .line 2070
    return-void
.end method

.method a(Lcom/twitter/library/client/Session;[JZ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2743
    if-eqz p2, :cond_0

    .line 2744
    new-instance v0, Lbub;

    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->a_:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p3}, Lbub;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;[JZ)V

    invoke-virtual {p0, v0, v4, v4}, Lcom/twitter/app/users/UsersFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 2746
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 2747
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->i()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "follow_friends:::follow_many"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    array-length v1, p2

    int-to-long v2, v1

    .line 2748
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(J)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 2746
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 2750
    :cond_0
    return-void
.end method

.method protected a(Lcom/twitter/library/service/x;II)V
    .locals 11

    .prologue
    .line 2887
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->a(Lcom/twitter/library/service/x;II)V

    .line 2888
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aO()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3147
    :cond_0
    :goto_0
    return-void

    .line 2891
    :cond_1
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 2892
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aP()Lcvt;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/yb;

    .line 2893
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 3030
    :pswitch_1
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/twitter/app/users/UsersFragment;->j(I)Z

    .line 3031
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3032
    const/16 v0, 0x12

    iget v1, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    if-ne v0, v1, :cond_0

    .line 3033
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/app/users/UsersFragment;->a(Z)V

    goto :goto_0

    .line 2902
    :pswitch_2
    const/16 v1, 0xd

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    .line 2906
    :cond_2
    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->aq:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/twitter/app/users/UsersFragment;->bg()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2907
    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->aq:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2908
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/twitter/app/users/UsersFragment;->ar:Z

    .line 2911
    :cond_3
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v1

    .line 2912
    invoke-virtual {p0, v1}, Lcom/twitter/app/users/UsersFragment;->j(I)Z

    .line 2913
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2914
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/app/users/UsersFragment;->a(Z)V

    .line 2916
    :cond_4
    const/16 v0, 0x191

    if-ne v1, v0, :cond_5

    .line 2917
    const v0, 0x7f0a06b4

    invoke-direct {p0, v0}, Lcom/twitter/app/users/UsersFragment;->r(I)V

    goto :goto_0

    .line 2918
    :cond_5
    const/16 v0, 0xc8

    if-eq v1, v0, :cond_6

    .line 2919
    const v0, 0x7f0a0957

    invoke-direct {p0, v0}, Lcom/twitter/app/users/UsersFragment;->r(I)V

    goto :goto_0

    .line 2920
    :cond_6
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    if-eqz v0, :cond_0

    .line 2921
    check-cast p1, Lbtw;

    .line 2922
    invoke-virtual {p1}, Lbtw;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    .line 2923
    iget-object v2, p0, Lcom/twitter/app/users/UsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v4

    iget v0, v0, Lcom/twitter/model/core/TwitterUser;->T:I

    invoke-virtual {v2, v4, v5, v0}, Lcom/twitter/library/util/FriendshipCache;->b(JI)V

    goto :goto_1

    .line 2929
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/twitter/app/users/UsersFragment;->b(Lcom/twitter/library/service/x;)V

    goto/16 :goto_0

    .line 2933
    :pswitch_4
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v0

    .line 2934
    invoke-virtual {p0, v0}, Lcom/twitter/app/users/UsersFragment;->j(I)Z

    .line 2935
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_7

    .line 2936
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/twitter/app/users/UsersFragment;->a(Z)V

    .line 2938
    :cond_7
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 2939
    const v0, 0x7f0a0957

    invoke-direct {p0, v0}, Lcom/twitter/app/users/UsersFragment;->r(I)V

    goto/16 :goto_0

    .line 2944
    :pswitch_5
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v0

    .line 2945
    invoke-virtual {p0, v0}, Lcom/twitter/app/users/UsersFragment;->j(I)Z

    .line 2946
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_8

    .line 2947
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/app/users/UsersFragment;->a(Z)V

    goto/16 :goto_0

    .line 2949
    :cond_8
    const v0, 0x7f0a0968

    invoke-direct {p0, v0}, Lcom/twitter/app/users/UsersFragment;->r(I)V

    goto/16 :goto_0

    .line 2954
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/twitter/app/users/UsersFragment;->a(Lcom/twitter/library/service/x;)V

    goto/16 :goto_0

    .line 2958
    :pswitch_7
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/service/x;)Lcom/twitter/library/client/Session;

    move-result-object v2

    .line 2959
    if-eqz v2, :cond_0

    .line 2962
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/twitter/app/users/UsersFragment;->j(I)Z

    .line 2963
    check-cast p1, Lbtz;

    invoke-virtual {p1}, Lbtz;->t()J

    move-result-wide v8

    .line 2964
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2965
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v0, v8, v9}, Lcom/twitter/library/util/FriendshipCache;->c(J)V

    .line 2966
    invoke-virtual {v1}, Lcom/twitter/android/yb;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 2967
    :cond_9
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2968
    invoke-virtual {p0, v8, v9}, Lcom/twitter/app/users/UsersFragment;->b(J)Ljava/lang/Long;

    move-result-object v0

    .line 2969
    if-eqz v0, :cond_0

    .line 2970
    iget-boolean v3, p0, Lcom/twitter/app/users/UsersFragment;->b:Z

    if-eqz v3, :cond_a

    .line 2971
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v8, v9, v4, v5}, Lcom/twitter/android/yb;->a(JJ)V

    .line 2973
    :cond_a
    new-instance v0, Lbux;

    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->a_:Landroid/content/Context;

    iget-wide v3, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    iget v5, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    iget-wide v6, p0, Lcom/twitter/app/users/UsersFragment;->j:J

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lbux;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JIJJLjava/lang/Integer;)V

    .line 2976
    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/app/users/UsersFragment;->c(Lcom/twitter/library/service/x;II)Z

    goto/16 :goto_0

    .line 2983
    :pswitch_8
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/service/x;)Lcom/twitter/library/client/Session;

    move-result-object v2

    .line 2984
    if-eqz v2, :cond_0

    .line 2987
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/twitter/app/users/UsersFragment;->j(I)Z

    .line 2988
    check-cast p1, Lbuc;

    invoke-virtual {p1}, Lbuc;->g()J

    move-result-wide v2

    .line 2989
    iget-object v4, p0, Lcom/twitter/app/users/UsersFragment;->d:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2990
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2991
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/util/FriendshipCache;->b(J)V

    .line 2992
    invoke-virtual {v1}, Lcom/twitter/android/yb;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 2997
    :pswitch_9
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 2998
    check-cast p1, Lbvb;

    .line 2999
    invoke-virtual {p1}, Lbvb;->N()Lcom/twitter/library/service/ab;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/service/ab;

    .line 3000
    iget-wide v4, v2, Lcom/twitter/library/service/ab;->c:J

    invoke-static {v3, v4, v5}, Lcom/twitter/library/platform/notifications/PushRegistration;->c(Landroid/content/Context;J)Z

    move-result v4

    .line 3002
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v5

    .line 3003
    invoke-virtual {p0, v5}, Lcom/twitter/app/users/UsersFragment;->j(I)Z

    .line 3004
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    if-nez v4, :cond_0

    .line 3007
    :cond_b
    const/16 v0, 0x3e9

    if-eq v5, v0, :cond_c

    if-nez v4, :cond_e

    .line 3008
    :cond_c
    invoke-static {v3}, Lcom/twitter/android/client/y;->a(Landroid/content/Context;)Lcom/twitter/android/client/y;

    move-result-object v1

    iget-wide v2, v2, Lcom/twitter/library/service/ab;->c:J

    if-nez v4, :cond_d

    const/4 v0, 0x1

    :goto_2
    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/twitter/android/client/y;->a(JZZ)V

    goto/16 :goto_0

    :cond_d
    const/4 v0, 0x0

    goto :goto_2

    .line 3011
    :cond_e
    iget-object v0, p1, Lbvb;->b:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v2

    .line 3012
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/util/FriendshipCache;->k(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3013
    iget-object v0, p1, Lbvb;->b:Lcom/twitter/model/core/TwitterUser;

    iget v0, v0, Lcom/twitter/model/core/TwitterUser;->T:I

    invoke-static {v0}, Lcom/twitter/model/core/p;->i(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3014
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/util/FriendshipCache;->d(J)V

    .line 3018
    :goto_3
    invoke-virtual {v1}, Lcom/twitter/android/yb;->notifyDataSetChanged()V

    .line 3019
    const v0, 0x7f0a026b

    invoke-direct {p0, v0}, Lcom/twitter/app/users/UsersFragment;->r(I)V

    goto/16 :goto_0

    .line 3016
    :cond_f
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/util/FriendshipCache;->e(J)V

    goto :goto_3

    .line 3025
    :pswitch_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/app/users/UsersFragment;->a(Z)V

    goto/16 :goto_0

    .line 3036
    :cond_10
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3037
    const v0, 0x7f0a0428

    invoke-direct {p0, v0}, Lcom/twitter/app/users/UsersFragment;->r(I)V

    goto/16 :goto_0

    .line 3044
    :pswitch_b
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v0

    .line 3045
    invoke-virtual {p0, v0}, Lcom/twitter/app/users/UsersFragment;->j(I)Z

    .line 3047
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/twitter/app/users/UsersFragment;->v:Z

    .line 3048
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->af:Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    .line 3049
    :cond_11
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/app/users/UsersFragment;->a(Z)V

    .line 3051
    :cond_12
    iget-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->at:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3052
    check-cast p1, Lcom/twitter/library/api/n;

    .line 3053
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/twitter/library/api/n;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3058
    :pswitch_c
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v0

    .line 3059
    invoke-virtual {p0, v0}, Lcom/twitter/app/users/UsersFragment;->j(I)Z

    .line 3060
    check-cast p1, Lbux;

    .line 3062
    invoke-virtual {p1}, Lbux;->g()Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    .line 3063
    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lbux;->h()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    .line 3064
    :goto_4
    invoke-virtual {p1}, Lbux;->N()Lcom/twitter/library/service/ab;

    move-result-object v2

    .line 3065
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/library/service/ab;->a(Lcom/twitter/library/client/Session;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3066
    if-eqz v0, :cond_13

    .line 3067
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/twitter/app/users/UsersFragment;->a(Z)V

    .line 3070
    :cond_13
    invoke-virtual {p1}, Lbux;->s()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/twitter/android/yb;->a(J)Ljava/lang/Long;

    move-result-object v2

    .line 3071
    if-eqz v2, :cond_0

    if-eqz v0, :cond_14

    .line 3072
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/twitter/android/xx;->a(Landroid/widget/ListView;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3073
    :cond_14
    invoke-virtual {p1}, Lbux;->s()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/twitter/android/yb;->b(J)Ljava/lang/Long;

    goto/16 :goto_0

    .line 3063
    :cond_15
    const/4 v0, 0x0

    goto :goto_4

    .line 3079
    :pswitch_d
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/service/x;)Lcom/twitter/library/client/Session;

    move-result-object v2

    .line 3080
    if-eqz v2, :cond_0

    .line 3083
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/twitter/app/users/UsersFragment;->j(I)Z

    .line 3084
    check-cast p1, Lbrc;

    iget-wide v8, p1, Lbrc;->b:J

    .line 3085
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-nez v0, :cond_16

    .line 3086
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v0, v8, v9}, Lcom/twitter/library/util/FriendshipCache;->i(J)V

    .line 3087
    invoke-virtual {v1}, Lcom/twitter/android/yb;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 3088
    :cond_16
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3089
    invoke-virtual {p0, v8, v9}, Lcom/twitter/app/users/UsersFragment;->b(J)Ljava/lang/Long;

    move-result-object v0

    .line 3090
    if-eqz v0, :cond_0

    .line 3091
    iget-boolean v3, p0, Lcom/twitter/app/users/UsersFragment;->b:Z

    if-eqz v3, :cond_17

    .line 3092
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v8, v9, v4, v5}, Lcom/twitter/android/yb;->a(JJ)V

    .line 3094
    :cond_17
    new-instance v0, Lbux;

    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->a_:Landroid/content/Context;

    iget-wide v3, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    iget v5, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    iget-wide v6, p0, Lcom/twitter/app/users/UsersFragment;->j:J

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lbux;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JIJJLjava/lang/Integer;)V

    .line 3097
    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/app/users/UsersFragment;->c(Lcom/twitter/library/service/x;II)Z

    goto/16 :goto_0

    .line 3104
    :pswitch_e
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/service/x;)Lcom/twitter/library/client/Session;

    move-result-object v2

    .line 3105
    if-eqz v2, :cond_0

    .line 3108
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/twitter/app/users/UsersFragment;->j(I)Z

    .line 3109
    check-cast p1, Lbrc;

    iget-wide v2, p1, Lbrc;->b:J

    .line 3110
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3111
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/util/FriendshipCache;->h(J)V

    .line 3112
    invoke-virtual {v1}, Lcom/twitter/android/yb;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 3118
    :pswitch_f
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/service/x;)Lcom/twitter/library/client/Session;

    move-result-object v2

    .line 3119
    if-eqz v2, :cond_0

    .line 3122
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/twitter/app/users/UsersFragment;->j(I)Z

    .line 3123
    check-cast p1, Lbra;

    invoke-virtual {p1}, Lbra;->g()J

    move-result-wide v2

    .line 3124
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3125
    const/16 v0, 0x18

    if-ne p2, v0, :cond_18

    .line 3126
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/util/FriendshipCache;->g(J)V

    .line 3130
    :goto_5
    invoke-virtual {v1}, Lcom/twitter/android/yb;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 3128
    :cond_18
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/util/FriendshipCache;->f(J)V

    goto :goto_5

    .line 3135
    :pswitch_10
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twitter/app/users/UsersFragment;->j(I)Z

    .line 3136
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/app/users/UsersFragment;->a(Z)V

    .line 3137
    iget-object v0, p1, Lcom/twitter/library/service/x;->o:Landroid/os/Bundle;

    const-string/jumbo v1, "next_cursor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3138
    if-eqz v0, :cond_0

    .line 3139
    invoke-direct {p0, v0}, Lcom/twitter/app/users/UsersFragment;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2893
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_2
        :pswitch_d
        :pswitch_e
        :pswitch_2
        :pswitch_2
        :pswitch_f
        :pswitch_f
        :pswitch_2
        :pswitch_10
    .end packed-switch
.end method

.method public bridge synthetic a(Lcom/twitter/library/widget/BaseUserView;JII)V
    .locals 6

    .prologue
    .line 136
    move-object v1, p1

    check-cast v1, Lcom/twitter/library/widget/UserView;

    move-object v0, p0

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/app/users/UsersFragment;->a(Lcom/twitter/library/widget/UserView;JII)V

    return-void
.end method

.method public a(Lcom/twitter/library/widget/BaseUserView;Lcss;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 1657
    invoke-virtual {p1}, Lcom/twitter/library/widget/BaseUserView;->getUserId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1658
    invoke-virtual {p1}, Lcom/twitter/library/widget/BaseUserView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/xy;

    .line 1659
    if-eqz v0, :cond_0

    iget v2, v0, Lcom/twitter/android/xy;->i:I

    invoke-static {v2}, Lcom/twitter/app/users/UsersFragment;->g(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/twitter/app/users/UsersFragment;->I:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1660
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1661
    invoke-virtual {p1}, Lcom/twitter/library/widget/BaseUserView;->getPromotedContent()Lcss;

    move-result-object v1

    iget-object v0, v0, Lcom/twitter/android/xy;->g:Ljava/lang/String;

    const/4 v4, 0x0

    .line 1660
    invoke-static {v2, v3, v1, v0, v4}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(JLcss;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    .line 1662
    const-string/jumbo v1, "position"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->g:I

    .line 1663
    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->H:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1665
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->a:Ljava/util/Set;

    iget-object v1, p2, Lcss;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1666
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aY()Lcom/twitter/android/client/c;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/api/PromotedEvent;->a:Lcom/twitter/library/api/PromotedEvent;

    invoke-virtual {v0, v1, p2}, Lcom/twitter/android/client/c;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;)V

    .line 1668
    :cond_1
    instance-of v0, p1, Lcom/twitter/library/widget/UserView;

    if-eqz v0, :cond_2

    .line 1669
    check-cast p1, Lcom/twitter/library/widget/UserView;

    .line 1670
    invoke-virtual {p1}, Lcom/twitter/library/widget/UserView;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/twitter/library/widget/UserView;->getUserId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1671
    iput-object p1, p0, Lcom/twitter/app/users/UsersFragment;->h:Lcom/twitter/library/widget/UserView;

    .line 1674
    :cond_2
    return-void
.end method

.method public a(Lcom/twitter/library/widget/UserView;JI)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 1488
    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1489
    iput-wide p2, p0, Lcom/twitter/app/users/UsersFragment;->e:J

    .line 1490
    iput p4, p0, Lcom/twitter/app/users/UsersFragment;->i:I

    .line 1491
    new-instance v0, Lcom/twitter/android/widget/ec;

    invoke-direct {v0, v2}, Lcom/twitter/android/widget/ec;-><init>(I)V

    const v1, 0x7f0a0967

    .line 1492
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->a(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a0966

    .line 1493
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->b(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a09bb

    .line 1494
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->d(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a05a7

    .line 1495
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->f(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 1496
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 1497
    invoke-virtual {v0, p0}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/Fragment;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 1498
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 1511
    :goto_0
    return-void

    .line 1500
    :cond_0
    invoke-virtual {p1}, Lcom/twitter/library/widget/UserView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/android/xy;

    .line 1503
    invoke-virtual {p1}, Lcom/twitter/library/widget/UserView;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1504
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/UserView;->b(Z)V

    .line 1505
    invoke-direct {p0, p2, p3, p1, p4}, Lcom/twitter/app/users/UsersFragment;->a(JLcom/twitter/library/widget/UserView;I)V

    goto :goto_0

    .line 1507
    :cond_1
    invoke-virtual {p1, v2}, Lcom/twitter/library/widget/UserView;->b(Z)V

    .line 1508
    invoke-virtual {p1}, Lcom/twitter/library/widget/UserView;->getPromotedContent()Lcss;

    move-result-object v4

    move-object v1, p0

    move-wide v2, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/twitter/app/users/UsersFragment;->a(JLcss;Lcom/twitter/android/xy;I)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/library/widget/UserView;JII)V
    .locals 2

    .prologue
    .line 1476
    iget-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->U:Z

    if-eqz v0, :cond_1

    .line 1477
    invoke-direct {p0, p1, p4}, Lcom/twitter/app/users/UsersFragment;->a(Lcom/twitter/library/widget/UserView;I)V

    .line 1485
    :cond_0
    :goto_0
    return-void

    .line 1478
    :cond_1
    const v0, 0x7f130003

    if-ne p4, v0, :cond_2

    .line 1479
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/twitter/app/users/UsersFragment;->a(Lcom/twitter/library/widget/UserView;JI)V

    goto :goto_0

    .line 1480
    :cond_2
    const v0, 0x7f130012

    if-ne p4, v0, :cond_3

    .line 1481
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/twitter/app/users/UsersFragment;->b(Lcom/twitter/library/widget/UserView;JI)V

    goto :goto_0

    .line 1482
    :cond_3
    const v0, 0x7f13004a

    if-ne p4, v0, :cond_0

    .line 1483
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/twitter/app/users/UsersFragment;->c(Lcom/twitter/library/widget/UserView;JI)V

    goto :goto_0
.end method

.method public a_(II)I
    .locals 1

    .prologue
    .line 2209
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ab()I
    .locals 1

    .prologue
    .line 2222
    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->ak:I

    return v0
.end method

.method public ac()Z
    .locals 1

    .prologue
    .line 2230
    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->ak:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ad()I
    .locals 1

    .prologue
    .line 2234
    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->aj:I

    return v0
.end method

.method public ae()Z
    .locals 1

    .prologue
    .line 2238
    iget-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->L:Z

    return v0
.end method

.method protected ag()Z
    .locals 2

    .prologue
    .line 2717
    iget-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->an:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected ag_()V
    .locals 1

    .prologue
    .line 1232
    invoke-super {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->ag_()V

    .line 1233
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aD()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1234
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->c()V

    .line 1238
    :cond_0
    :goto_0
    return-void

    .line 1235
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/yb;

    invoke-virtual {v0}, Lcom/twitter/android/yb;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1236
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/app/users/UsersFragment;->h(I)Z

    goto :goto_0
.end method

.method protected ah()Z
    .locals 2

    .prologue
    .line 2724
    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    const/16 v1, 0x25

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected ai()Z
    .locals 2

    .prologue
    .line 2729
    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    const/16 v1, 0x26

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected aj()Z
    .locals 2

    .prologue
    .line 2734
    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 2735
    invoke-static {}, Lcom/twitter/android/revenue/z;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2734
    :goto_0
    return v0

    .line 2735
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected ak()V
    .locals 6

    .prologue
    .line 2796
    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->H:Ljava/util/List;

    .line 2797
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2798
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->P()Ljava/lang/String;

    move-result-object v0

    .line 2799
    if-eqz v0, :cond_0

    .line 2800
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v3

    .line 2801
    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 2802
    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/util/List;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    .line 2803
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->j(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 2800
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 2805
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2807
    :cond_1
    return-void
.end method

.method protected al()V
    .locals 3

    .prologue
    .line 2878
    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->aj:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twitter/app/users/UsersFragment;->aj:I

    .line 2879
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->G()V

    .line 2880
    invoke-direct {p0}, Lcom/twitter/app/users/UsersFragment;->bj()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2881
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 2883
    :cond_0
    return-void
.end method

.method b(JILcss;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 9

    .prologue
    .line 2383
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p6, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p7, v0, v1

    invoke-static {v0}, Lcom/twitter/library/scribe/ScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Lcom/twitter/app/users/UsersFragment;->a(JILcss;Ljava/lang/String;Ljava/lang/String;I)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    return-object v0
.end method

.method b(J)Ljava/lang/Long;
    .locals 3

    .prologue
    .line 2042
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2043
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/yb;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/yb;->b(J)Ljava/lang/Long;

    .line 2045
    :cond_0
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->d:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method b(JILcss;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .prologue
    .line 2534
    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    .line 2535
    invoke-virtual {p0, v0}, Lcom/twitter/app/users/UsersFragment;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 2534
    invoke-static {p6, v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2536
    if-eqz v0, :cond_1

    .line 2537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":user:profile_click"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v8, p7

    .line 2538
    invoke-virtual/range {v1 .. v8}, Lcom/twitter/app/users/UsersFragment;->a(JILcss;Ljava/lang/String;Ljava/lang/String;I)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    .line 2539
    iget v1, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 2540
    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->j(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 2542
    :cond_0
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 2544
    :cond_1
    return-void
.end method

.method protected b(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 1366
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 1367
    instance-of v1, v0, Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 1368
    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/app/users/UsersFragment;->startActivity(Landroid/content/Intent;)V

    .line 1370
    :cond_0
    return-void
.end method

.method public b(Lcom/twitter/library/widget/UserView;JI)V
    .locals 8

    .prologue
    .line 1514
    invoke-virtual {p1}, Lcom/twitter/library/widget/UserView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/android/xy;

    .line 1517
    iget-object v0, p1, Lcom/twitter/library/widget/UserView;->r:Lcom/twitter/library/widget/ActionButton;

    invoke-virtual {v0}, Lcom/twitter/library/widget/ActionButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1518
    invoke-virtual {p1}, Lcom/twitter/library/widget/UserView;->getPromotedContent()Lcss;

    move-result-object v4

    move-object v1, p0

    move-wide v2, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/twitter/app/users/UsersFragment;->c(JLcss;Lcom/twitter/android/xy;I)V

    .line 1519
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->ah()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1520
    iget-object v0, p1, Lcom/twitter/library/widget/UserView;->r:Lcom/twitter/library/widget/ActionButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/ActionButton;->setVisibility(I)V

    .line 1521
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/UserView;->setFollowVisibility(I)V

    .line 1526
    :cond_0
    :goto_0
    return-void

    .line 1524
    :cond_1
    invoke-virtual {p1}, Lcom/twitter/library/widget/UserView;->getPromotedContent()Lcss;

    move-result-object v4

    move-object v1, p0

    move-wide v2, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/twitter/app/users/UsersFragment;->b(JLcss;Lcom/twitter/android/xy;I)V

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2488
    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    sparse-switch v0, :sswitch_data_0

    .line 2506
    const/4 v0, 0x0

    .line 2511
    :goto_0
    if-eqz v0, :cond_0

    .line 2512
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 2514
    :cond_0
    return-void

    .line 2490
    :sswitch_0
    const-string/jumbo v0, "followers:::"

    goto :goto_0

    .line 2494
    :sswitch_1
    const-string/jumbo v0, "following:::"

    goto :goto_0

    .line 2498
    :sswitch_2
    invoke-direct {p0}, Lcom/twitter/app/users/UsersFragment;->bn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2502
    :sswitch_3
    const-string/jumbo v0, "category:::user"

    goto :goto_0

    .line 2488
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x6 -> :sswitch_3
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 1773
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/app/users/UsersFragment;->a(Z)V

    .line 1775
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->L:Z

    if-nez v0, :cond_0

    .line 1776
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->v()V

    .line 1778
    :cond_0
    return-void
.end method

.method public bd_()V
    .locals 6

    .prologue
    .line 2164
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aQ()Landroid/database/Cursor;

    move-result-object v0

    .line 2165
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2166
    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    .line 2170
    :cond_0
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2171
    const/4 v3, 0x7

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 2172
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v2, 0x1

    invoke-static {v3, v2}, Lcom/twitter/model/core/p;->a(II)I

    move-result v2

    invoke-virtual {v1, v4, v5, v2}, Lcom/twitter/library/util/FriendshipCache;->b(JI)V

    .line 2174
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2176
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/yb;

    invoke-virtual {v0}, Lcom/twitter/android/yb;->notifyDataSetChanged()V

    .line 2178
    :cond_1
    return-void
.end method

.method public be_()V
    .locals 1

    .prologue
    .line 2182
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/twitter/app/users/UsersFragment;->j(I)Z

    .line 2183
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/app/users/UsersFragment;->a(Z)V

    .line 2184
    return-void
.end method

.method public bf_()V
    .locals 4

    .prologue
    .line 2188
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aQ()Landroid/database/Cursor;

    move-result-object v0

    .line 2189
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2190
    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    .line 2193
    :cond_0
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2194
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/twitter/library/util/FriendshipCache;->c(J)V

    .line 2195
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2197
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/yb;

    invoke-virtual {v0}, Lcom/twitter/android/yb;->notifyDataSetChanged()V

    .line 2199
    :cond_1
    return-void
.end method

.method public bg_()V
    .locals 1

    .prologue
    .line 2203
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/twitter/app/users/UsersFragment;->j(I)Z

    .line 2204
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/app/users/UsersFragment;->a(Z)V

    .line 2205
    return-void
.end method

.method protected bj_()V
    .locals 2

    .prologue
    .line 460
    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->ab()I

    move-result v0

    if-nez v0, :cond_0

    .line 461
    iget-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->au:Z

    if-eqz v0, :cond_1

    .line 463
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/app/users/UsersFragment;->k(I)V

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/app/users/UsersFragment;->k(I)V

    goto :goto_0
.end method

.method c(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2548
    sparse-switch p1, :sswitch_data_0

    .line 2587
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2550
    :sswitch_0
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->af:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2551
    const-string/jumbo v0, "explore_email:category:"

    goto :goto_0

    .line 2553
    :cond_0
    const-string/jumbo v0, "category::"

    goto :goto_0

    .line 2557
    :sswitch_1
    const-string/jumbo v0, "welcome:who_to_follow:"

    goto :goto_0

    .line 2560
    :sswitch_2
    const-string/jumbo v0, "who_to_follow::"

    goto :goto_0

    .line 2563
    :sswitch_3
    const-string/jumbo v0, "similar_to::"

    goto :goto_0

    .line 2566
    :sswitch_4
    const-string/jumbo v0, "followers::"

    goto :goto_0

    .line 2569
    :sswitch_5
    const-string/jumbo v0, "blocked::"

    goto :goto_0

    .line 2572
    :sswitch_6
    const-string/jumbo v0, "blocked_imported::"

    goto :goto_0

    .line 2575
    :sswitch_7
    const-string/jumbo v0, "muted::"

    goto :goto_0

    .line 2578
    :sswitch_8
    const-string/jumbo v0, "muted_automated::"

    goto :goto_0

    .line 2581
    :sswitch_9
    const-string/jumbo v0, "people:address_book:active_contacts"

    goto :goto_0

    .line 2584
    :sswitch_a
    const-string/jumbo v0, "people:address_book:all_contacts"

    goto :goto_0

    .line 2548
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_5
        0x6 -> :sswitch_0
        0xa -> :sswitch_3
        0x13 -> :sswitch_1
        0x15 -> :sswitch_2
        0x1a -> :sswitch_7
        0x1c -> :sswitch_a
        0x25 -> :sswitch_6
        0x26 -> :sswitch_8
        0x29 -> :sswitch_9
    .end sparse-switch
.end method

.method protected c(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 1373
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 1374
    instance-of v1, v0, Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 1375
    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/app/users/UsersFragment;->startActivity(Landroid/content/Intent;)V

    .line 1377
    :cond_0
    return-void
.end method

.method public c(Lcom/twitter/library/widget/UserView;JI)V
    .locals 8

    .prologue
    .line 1529
    invoke-virtual {p1}, Lcom/twitter/library/widget/UserView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/android/xy;

    .line 1530
    invoke-virtual {p1}, Lcom/twitter/library/widget/UserView;->b()Z

    move-result v0

    .line 1531
    if-eqz v0, :cond_0

    .line 1532
    invoke-virtual {p1}, Lcom/twitter/library/widget/UserView;->getPromotedContent()Lcss;

    move-result-object v4

    move-object v1, p0

    move-wide v2, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/twitter/app/users/UsersFragment;->e(JLcss;Lcom/twitter/android/xy;I)V

    .line 1536
    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->ai()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/twitter/library/widget/UserView;->a(ZZ)V

    .line 1537
    return-void

    .line 1534
    :cond_0
    invoke-virtual {p1}, Lcom/twitter/library/widget/UserView;->getPromotedContent()Lcss;

    move-result-object v4

    move-object v1, p0

    move-wide v2, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/twitter/app/users/UsersFragment;->d(JLcss;Lcom/twitter/android/xy;I)V

    goto :goto_0

    .line 1536
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected c(Z)[J
    .locals 4

    .prologue
    .line 2022
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2024
    if-eqz p1, :cond_1

    .line 2026
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aQ()Landroid/database/Cursor;

    move-result-object v1

    .line 2027
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2029
    :cond_0
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2030
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2031
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2036
    :cond_1
    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->l:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 2038
    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->e(Ljava/util/Collection;)[J

    move-result-object v0

    return-object v0
.end method

.method e(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2286
    sparse-switch p1, :sswitch_data_0

    .line 2341
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2288
    :sswitch_0
    const-string/jumbo v0, "following:following:"

    goto :goto_0

    .line 2291
    :sswitch_1
    const-string/jumbo v0, "followers:followers:"

    goto :goto_0

    .line 2294
    :sswitch_2
    const-string/jumbo v0, "favorited_by::"

    goto :goto_0

    .line 2297
    :sswitch_3
    const-string/jumbo v0, "retweeted_by::"

    goto :goto_0

    .line 2300
    :sswitch_4
    iget-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->au:Z

    if-eqz v0, :cond_0

    .line 2301
    const-string/jumbo v0, "people:address_book:all_contacts"

    goto :goto_0

    .line 2303
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":follow_friends:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2307
    :sswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":follow_friends:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2310
    :sswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":who_to_follow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2313
    :sswitch_7
    const-string/jumbo v0, "who_to_follow::"

    goto :goto_0

    .line 2316
    :sswitch_8
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->af:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2317
    const-string/jumbo v0, "explore_email:category:"

    goto :goto_0

    .line 2319
    :cond_1
    const-string/jumbo v0, "category::"

    goto :goto_0

    .line 2323
    :sswitch_9
    const-string/jumbo v0, "similar_to::"

    goto :goto_0

    .line 2326
    :sswitch_a
    const-string/jumbo v0, "blocked::"

    goto :goto_0

    .line 2329
    :sswitch_b
    const-string/jumbo v0, "blocked_imported::"

    goto :goto_0

    .line 2332
    :sswitch_c
    const-string/jumbo v0, "muted::"

    goto/16 :goto_0

    .line 2335
    :sswitch_d
    const-string/jumbo v0, "muted_automated::"

    goto/16 :goto_0

    .line 2338
    :sswitch_e
    const-string/jumbo v0, "people:address_book:active_contacts"

    goto/16 :goto_0

    .line 2286
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_a
        0x6 -> :sswitch_8
        0x7 -> :sswitch_5
        0xa -> :sswitch_9
        0xb -> :sswitch_2
        0xc -> :sswitch_3
        0x13 -> :sswitch_6
        0x15 -> :sswitch_7
        0x1a -> :sswitch_c
        0x1c -> :sswitch_4
        0x25 -> :sswitch_b
        0x26 -> :sswitch_d
        0x29 -> :sswitch_e
    .end sparse-switch
.end method

.method protected e_(I)V
    .locals 10
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 816
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 817
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 818
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 820
    iget v4, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    sparse-switch v4, :sswitch_data_0

    .line 900
    invoke-virtual {p0, p1}, Lcom/twitter/app/users/UsersFragment;->p(I)Lcom/twitter/android/yb;

    move-result-object v0

    .line 901
    invoke-virtual {v0, p0}, Lcom/twitter/android/yb;->a(Lcom/twitter/android/kn;)V

    .line 902
    new-instance v1, Lcom/twitter/android/widget/er;

    new-array v2, v8, [Landroid/widget/BaseAdapter;

    aput-object v0, v2, v9

    invoke-direct {v1, v2, v8}, Lcom/twitter/android/widget/er;-><init>([Landroid/widget/BaseAdapter;I)V

    iput-object v1, p0, Lcom/twitter/app/users/UsersFragment;->q:Lcom/twitter/android/widget/er;

    .line 903
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/app/users/UsersFragment;->q:Lcom/twitter/android/widget/er;

    invoke-virtual {v1, v0, v2}, Lcom/twitter/app/common/list/aa;->a(Lcvt;Landroid/widget/ListAdapter;)V

    .line 907
    :goto_0
    return-void

    .line 823
    :sswitch_0
    invoke-direct {p0, p1, v9}, Lcom/twitter/app/users/UsersFragment;->a(IZ)Lcom/twitter/android/mv;

    move-result-object v0

    .line 824
    iget-wide v4, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    .line 825
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->ai()Z

    move-result v1

    invoke-virtual {v0, v8, v1}, Lcom/twitter/android/mv;->a(ZZ)V

    .line 827
    :cond_0
    invoke-virtual {v0, p0}, Lcom/twitter/android/mv;->a(Lcom/twitter/android/kn;)V

    .line 828
    new-instance v1, Lcom/twitter/android/widget/er;

    new-array v2, v8, [Landroid/widget/BaseAdapter;

    aput-object v0, v2, v9

    invoke-direct {v1, v2, v8}, Lcom/twitter/android/widget/er;-><init>([Landroid/widget/BaseAdapter;I)V

    iput-object v1, p0, Lcom/twitter/app/users/UsersFragment;->q:Lcom/twitter/android/widget/er;

    .line 829
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/app/users/UsersFragment;->q:Lcom/twitter/android/widget/er;

    invoke-virtual {v1, v0, v2}, Lcom/twitter/app/common/list/aa;->a(Lcvt;Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 836
    :sswitch_1
    invoke-direct {p0, p1, v8}, Lcom/twitter/app/users/UsersFragment;->a(IZ)Lcom/twitter/android/mv;

    move-result-object v0

    .line 837
    invoke-virtual {v0, p0}, Lcom/twitter/android/mv;->a(Lcom/twitter/android/kn;)V

    .line 838
    new-instance v1, Lcom/twitter/android/widget/er;

    new-array v2, v8, [Landroid/widget/BaseAdapter;

    aput-object v0, v2, v9

    invoke-direct {v1, v2, v8}, Lcom/twitter/android/widget/er;-><init>([Landroid/widget/BaseAdapter;I)V

    iput-object v1, p0, Lcom/twitter/app/users/UsersFragment;->q:Lcom/twitter/android/widget/er;

    .line 839
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/app/users/UsersFragment;->q:Lcom/twitter/android/widget/er;

    invoke-virtual {v1, v0, v2}, Lcom/twitter/app/common/list/aa;->a(Lcvt;Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 843
    :sswitch_2
    new-instance v0, Lcom/twitter/android/hm;

    new-instance v2, Lcom/twitter/app/users/s;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/twitter/app/users/s;-><init>(Lcom/twitter/app/users/UsersFragment;Lcom/twitter/app/users/r;)V

    iget-object v3, p0, Lcom/twitter/app/users/UsersFragment;->n:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/hm;-><init>(Landroid/content/Context;Lcom/twitter/library/widget/e;Ljava/util/Map;)V

    .line 845
    new-instance v1, Lcom/twitter/android/widget/er;

    new-array v2, v8, [Landroid/widget/BaseAdapter;

    aput-object v0, v2, v9

    invoke-direct {v1, v2, v8}, Lcom/twitter/android/widget/er;-><init>([Landroid/widget/BaseAdapter;I)V

    iput-object v1, p0, Lcom/twitter/app/users/UsersFragment;->q:Lcom/twitter/android/widget/er;

    .line 846
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/app/users/UsersFragment;->q:Lcom/twitter/android/widget/er;

    invoke-virtual {v1, v0, v2}, Lcom/twitter/app/common/list/aa;->a(Lcvt;Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 851
    :sswitch_3
    invoke-direct {p0, p1, v9}, Lcom/twitter/app/users/UsersFragment;->a(IZ)Lcom/twitter/android/mv;

    move-result-object v2

    .line 852
    invoke-virtual {v2, p0}, Lcom/twitter/android/yb;->a(Lcom/twitter/android/kn;)V

    .line 854
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    .line 856
    if-eqz v0, :cond_1

    iget-wide v4, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    iget-wide v6, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 857
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->ai()Z

    move-result v3

    invoke-virtual {v2, v8, v3}, Lcom/twitter/android/yb;->a(ZZ)V

    .line 861
    :cond_1
    if-eqz v0, :cond_2

    iget v3, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    if-ne v3, v8, :cond_2

    iget-wide v4, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    iget-wide v6, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    iget-boolean v0, v0, Lcom/twitter/model/core/TwitterUser;->m:Z

    if-eqz v0, :cond_2

    .line 863
    new-instance v0, Lcom/twitter/app/users/q;

    invoke-direct {v0}, Lcom/twitter/app/users/q;-><init>()V

    const/16 v3, 0x12

    .line 864
    invoke-virtual {v0, v3}, Lcom/twitter/app/users/q;->a(I)Lcom/twitter/app/users/q;

    move-result-object v0

    .line 865
    invoke-virtual {v0, v1}, Lcom/twitter/app/users/q;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 866
    new-instance v3, Lcom/twitter/android/qg;

    new-instance v4, Lcom/twitter/android/qh;

    const v5, 0x7f0a03bb

    .line 867
    invoke-virtual {v1, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v0}, Lcom/twitter/android/qh;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    invoke-direct {v3, v4}, Lcom/twitter/android/qg;-><init>(Lcom/twitter/android/qh;)V

    .line 869
    new-instance v0, Lcom/twitter/android/widget/er;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/widget/BaseAdapter;

    aput-object v3, v1, v9

    aput-object v2, v1, v8

    invoke-direct {v0, v1, v8}, Lcom/twitter/android/widget/er;-><init>([Landroid/widget/BaseAdapter;I)V

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->q:Lcom/twitter/android/widget/er;

    .line 871
    iput v9, p0, Lcom/twitter/app/users/UsersFragment;->s:I

    .line 872
    iput-object v3, p0, Lcom/twitter/app/users/UsersFragment;->r:Lcom/twitter/android/qg;

    .line 876
    :goto_1
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->q:Lcom/twitter/android/widget/er;

    invoke-virtual {v0, v2, v1}, Lcom/twitter/app/common/list/aa;->a(Lcvt;Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 874
    :cond_2
    new-instance v0, Lcom/twitter/android/widget/er;

    new-array v1, v8, [Landroid/widget/BaseAdapter;

    aput-object v2, v1, v9

    invoke-direct {v0, v1, v8}, Lcom/twitter/android/widget/er;-><init>([Landroid/widget/BaseAdapter;I)V

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->q:Lcom/twitter/android/widget/er;

    goto :goto_1

    .line 880
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/twitter/app/users/UsersFragment;->p(I)Lcom/twitter/android/yb;

    move-result-object v0

    .line 881
    invoke-virtual {v0, v8}, Lcom/twitter/android/yb;->d(Z)V

    .line 882
    invoke-virtual {v0, p0}, Lcom/twitter/android/yb;->a(Lcom/twitter/android/kn;)V

    .line 883
    new-instance v1, Lcom/twitter/android/widget/er;

    new-array v2, v8, [Landroid/widget/BaseAdapter;

    aput-object v0, v2, v9

    invoke-direct {v1, v2, v8}, Lcom/twitter/android/widget/er;-><init>([Landroid/widget/BaseAdapter;I)V

    iput-object v1, p0, Lcom/twitter/app/users/UsersFragment;->q:Lcom/twitter/android/widget/er;

    .line 884
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/app/users/UsersFragment;->q:Lcom/twitter/android/widget/er;

    invoke-virtual {v1, v0, v2}, Lcom/twitter/app/common/list/aa;->a(Lcvt;Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 891
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/twitter/app/users/UsersFragment;->p(I)Lcom/twitter/android/yb;

    move-result-object v0

    .line 892
    invoke-virtual {v0, v8}, Lcom/twitter/android/yb;->d(Z)V

    .line 893
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->ai()Z

    move-result v1

    invoke-virtual {v0, v8, v1}, Lcom/twitter/android/yb;->a(ZZ)V

    .line 894
    invoke-virtual {v0, p0}, Lcom/twitter/android/yb;->a(Lcom/twitter/android/kn;)V

    .line 895
    new-instance v1, Lcom/twitter/android/widget/er;

    new-array v2, v8, [Landroid/widget/BaseAdapter;

    aput-object v0, v2, v9

    invoke-direct {v1, v2, v8}, Lcom/twitter/android/widget/er;-><init>([Landroid/widget/BaseAdapter;I)V

    iput-object v1, p0, Lcom/twitter/app/users/UsersFragment;->q:Lcom/twitter/android/widget/er;

    .line 896
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/app/users/UsersFragment;->q:Lcom/twitter/android/widget/er;

    invoke-virtual {v1, v0, v2}, Lcom/twitter/app/common/list/aa;->a(Lcvt;Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 820
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_3
        0x2 -> :sswitch_5
        0x4 -> :sswitch_4
        0xa -> :sswitch_1
        0x10 -> :sswitch_0
        0x12 -> :sswitch_2
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x1a -> :sswitch_5
        0x1d -> :sswitch_3
        0x25 -> :sswitch_5
        0x26 -> :sswitch_5
    .end sparse-switch
.end method

.method protected f_(I)Z
    .locals 11

    .prologue
    const/4 v10, 0x7

    const/4 v5, 0x6

    const/4 v4, 0x3

    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 1827
    iget v1, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    packed-switch v1, :pswitch_data_0

    .line 1980
    :pswitch_0
    new-instance v1, Lbtw;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lbtw;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;I)V

    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->G:Ljava/lang/String;

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    .line 1982
    invoke-virtual {v1, v0, v2, v3}, Lbtw;->a(Ljava/lang/String;J)Lbtw;

    move-result-object v0

    .line 1983
    invoke-virtual {p0, p1}, Lcom/twitter/app/users/UsersFragment;->i(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lbtw;->c(I)Lbtw;

    move-result-object v0

    const/4 v1, 0x4

    .line 1980
    invoke-virtual {p0, v0, v1, p1}, Lcom/twitter/app/users/UsersFragment;->c(Lcom/twitter/library/service/x;II)Z

    :cond_0
    :goto_0
    move v0, v9

    .line 1987
    :cond_1
    :goto_1
    return v0

    .line 1829
    :pswitch_1
    new-instance v0, Lbtw;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-direct {v0, v1, v2, v9}, Lbtw;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;I)V

    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->G:Ljava/lang/String;

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    .line 1831
    invoke-virtual {v0, v1, v2, v3}, Lbtw;->a(Ljava/lang/String;J)Lbtw;

    move-result-object v0

    .line 1832
    invoke-virtual {p0, p1}, Lcom/twitter/app/users/UsersFragment;->i(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lbtw;->c(I)Lbtw;

    move-result-object v0

    .line 1829
    invoke-virtual {p0, v0, v4, p1}, Lcom/twitter/app/users/UsersFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 1834
    new-instance v0, Lbuo;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v2

    .line 1835
    invoke-virtual {p0, p1}, Lcom/twitter/app/users/UsersFragment;->i(I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lbuo;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;I)V

    .line 1834
    invoke-virtual {p0, v0, v9, p1}, Lcom/twitter/app/users/UsersFragment;->c(Lcom/twitter/library/service/x;II)Z

    goto :goto_0

    .line 1840
    :pswitch_2
    new-instance v0, Lbtw;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v2

    const/16 v3, 0x1d

    invoke-direct {v0, v1, v2, v3}, Lbtw;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;I)V

    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->G:Ljava/lang/String;

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    .line 1842
    invoke-virtual {v0, v1, v2, v3}, Lbtw;->a(Ljava/lang/String;J)Lbtw;

    move-result-object v0

    .line 1843
    invoke-virtual {p0, p1}, Lcom/twitter/app/users/UsersFragment;->i(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lbtw;->c(I)Lbtw;

    move-result-object v0

    const/16 v1, 0xd

    .line 1840
    invoke-virtual {p0, v0, v1, p1}, Lcom/twitter/app/users/UsersFragment;->c(Lcom/twitter/library/service/x;II)Z

    goto :goto_0

    .line 1848
    :pswitch_3
    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->af:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 1849
    new-instance v1, Lcom/twitter/app/users/u;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/app/users/UsersFragment;->af:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/twitter/app/users/u;-><init>(Lcom/twitter/app/users/UsersFragment;Landroid/support/v4/app/FragmentActivity;Ljava/util/List;Lcom/twitter/app/users/r;)V

    new-array v0, v0, [Ljava/lang/Void;

    .line 1850
    invoke-virtual {v1, v0}, Lcom/twitter/app/users/u;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1852
    :cond_2
    new-instance v1, Lcom/twitter/library/api/n;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v3

    iget-wide v4, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    iget-object v6, p0, Lcom/twitter/app/users/UsersFragment;->F:Ljava/lang/String;

    const/4 v7, -0x1

    invoke-direct/range {v1 .. v7}, Lcom/twitter/library/api/n;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLjava/lang/String;I)V

    const/16 v0, 0xf

    invoke-virtual {p0, v1, v0, p1}, Lcom/twitter/app/users/UsersFragment;->c(Lcom/twitter/library/service/x;II)Z

    goto/16 :goto_0

    .line 1858
    :pswitch_4
    new-instance v0, Lbpo;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v2

    iget v3, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    iget-wide v4, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    iget-wide v6, p0, Lcom/twitter/app/users/UsersFragment;->j:J

    .line 1859
    invoke-virtual {p0, p1}, Lcom/twitter/app/users/UsersFragment;->i(I)I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lbpo;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;IJJI)V

    .line 1858
    invoke-virtual {p0, v0, v10, p1}, Lcom/twitter/app/users/UsersFragment;->c(Lcom/twitter/library/service/x;II)Z

    goto/16 :goto_0

    .line 1863
    :pswitch_5
    new-instance v0, Lbpo;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v2

    iget v3, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    iget-wide v4, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    iget-wide v6, p0, Lcom/twitter/app/users/UsersFragment;->j:J

    .line 1864
    invoke-virtual {p0, p1}, Lcom/twitter/app/users/UsersFragment;->i(I)I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lbpo;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;IJJI)V

    .line 1863
    invoke-virtual {p0, v0, v10, p1}, Lcom/twitter/app/users/UsersFragment;->c(Lcom/twitter/library/service/x;II)Z

    goto/16 :goto_0

    .line 1869
    :pswitch_6
    new-instance v1, Lbum;

    .line 1870
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v3

    iget v4, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    invoke-direct {v1, v2, v3, v4}, Lbum;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;I)V

    .line 1871
    invoke-virtual {p0, p1}, Lcom/twitter/app/users/UsersFragment;->i(I)I

    move-result v2

    iput v2, v1, Lbum;->c:I

    .line 1872
    iget v2, p0, Lcom/twitter/app/users/UsersFragment;->c:I

    iput v2, v1, Lbum;->j:I

    .line 1873
    if-ne p1, v9, :cond_3

    move v0, v9

    :cond_3
    invoke-virtual {p0, v0}, Lcom/twitter/app/users/UsersFragment;->c(Z)[J

    move-result-object v0

    iput-object v0, v1, Lbum;->i:[J

    .line 1874
    invoke-virtual {p0, v1, v5, p1}, Lcom/twitter/app/users/UsersFragment;->c(Lcom/twitter/library/service/x;II)Z

    goto/16 :goto_0

    .line 1879
    :pswitch_7
    new-instance v1, Lbum;

    .line 1880
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v3

    iget v4, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    invoke-direct {v1, v2, v3, v4}, Lbum;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;I)V

    .line 1881
    iput v0, v1, Lbum;->c:I

    .line 1882
    iput v5, v1, Lbum;->j:I

    .line 1883
    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    iput-wide v2, v1, Lbum;->b:J

    .line 1884
    invoke-virtual {p0, v1, v5, p1}, Lcom/twitter/app/users/UsersFragment;->c(Lcom/twitter/library/service/x;II)Z

    goto/16 :goto_0

    .line 1890
    :pswitch_8
    invoke-direct {p0}, Lcom/twitter/app/users/UsersFragment;->bj()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1891
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->G()V

    goto/16 :goto_1

    .line 1895
    :cond_4
    iget-boolean v1, p0, Lcom/twitter/app/users/UsersFragment;->au:Z

    if-nez v1, :cond_9

    .line 1899
    iget v1, p0, Lcom/twitter/app/users/UsersFragment;->u:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_8

    .line 1900
    invoke-direct {p0, p1}, Lcom/twitter/app/users/UsersFragment;->q(I)V

    .line 1902
    iget v1, p0, Lcom/twitter/app/users/UsersFragment;->u:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/twitter/app/users/UsersFragment;->u:I

    move v1, v9

    .line 1908
    :goto_2
    iget-boolean v2, p0, Lcom/twitter/app/users/UsersFragment;->au:Z

    if-eqz v2, :cond_5

    .line 1909
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/twitter/app/users/UsersFragment;->f(Ljava/lang/String;)V

    .line 1911
    :cond_5
    if-ne p1, v4, :cond_7

    .line 1912
    invoke-direct {p0}, Lcom/twitter/app/users/UsersFragment;->bi()Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v1, :cond_a

    :cond_6
    move v1, v9

    .line 1914
    :cond_7
    :goto_3
    if-nez v1, :cond_0

    .line 1915
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->G()V

    goto/16 :goto_1

    .line 1904
    :cond_8
    iput-boolean v9, p0, Lcom/twitter/app/users/UsersFragment;->ac:Z

    .line 1905
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->ab()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/twitter/app/users/UsersFragment;->k(I)V

    :cond_9
    move v1, v0

    goto :goto_2

    :cond_a
    move v1, v0

    .line 1912
    goto :goto_3

    .line 1921
    :pswitch_9
    if-ne p1, v4, :cond_1

    .line 1922
    invoke-direct {p0}, Lcom/twitter/app/users/UsersFragment;->bi()Z

    goto/16 :goto_0

    .line 1932
    :pswitch_a
    new-instance v0, Lbtx;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lbtx;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    .line 1933
    iget-object v1, v0, Lbtx;->a:Lbuu;

    iget-object v2, p0, Lcom/twitter/app/users/UsersFragment;->E:[J

    invoke-virtual {v1, v2}, Lbuu;->a([J)Lbuu;

    move-result-object v1

    iget v2, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    .line 1934
    invoke-virtual {v1, v2}, Lbuu;->a(I)Lbuu;

    move-result-object v1

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->j:J

    .line 1935
    invoke-virtual {v1, v2, v3}, Lbuu;->a(J)Lbuu;

    .line 1937
    const/16 v1, 0xe

    invoke-virtual {p0, v0, v1, p1}, Lcom/twitter/app/users/UsersFragment;->c(Lcom/twitter/library/service/x;II)Z

    goto/16 :goto_0

    .line 1941
    :pswitch_b
    new-instance v0, Lbuo;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v2

    .line 1942
    invoke-virtual {p0, p1}, Lcom/twitter/app/users/UsersFragment;->i(I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lbuo;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;I)V

    .line 1941
    invoke-virtual {p0, v0, v9, p1}, Lcom/twitter/app/users/UsersFragment;->c(Lcom/twitter/library/service/x;II)Z

    goto/16 :goto_0

    .line 1947
    :pswitch_c
    new-instance v0, Lbtw;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v2

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lbtw;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;I)V

    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->G:Ljava/lang/String;

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    .line 1949
    invoke-virtual {v0, v1, v2, v3}, Lbtw;->a(Ljava/lang/String;J)Lbtw;

    move-result-object v0

    .line 1950
    invoke-virtual {p0, p1}, Lcom/twitter/app/users/UsersFragment;->i(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lbtw;->c(I)Lbtw;

    move-result-object v0

    const/4 v1, 0x5

    .line 1947
    invoke-virtual {p0, v0, v1, p1}, Lcom/twitter/app/users/UsersFragment;->c(Lcom/twitter/library/service/x;II)Z

    goto/16 :goto_0

    .line 1955
    :pswitch_d
    new-instance v0, Lbtw;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lbtw;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;I)V

    .line 1956
    invoke-virtual {p0, p1}, Lcom/twitter/app/users/UsersFragment;->i(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lbtw;->c(I)Lbtw;

    move-result-object v0

    const/16 v1, 0x13

    .line 1955
    invoke-virtual {p0, v0, v1, p1}, Lcom/twitter/app/users/UsersFragment;->c(Lcom/twitter/library/service/x;II)Z

    goto/16 :goto_0

    .line 1961
    :pswitch_e
    new-instance v0, Lbtw;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v2

    const/16 v3, 0x25

    invoke-direct {v0, v1, v2, v3}, Lbtw;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;I)V

    .line 1962
    invoke-virtual {p0, p1}, Lcom/twitter/app/users/UsersFragment;->i(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lbtw;->c(I)Lbtw;

    move-result-object v0

    const/16 v1, 0x16

    .line 1961
    invoke-virtual {p0, v0, v1, p1}, Lcom/twitter/app/users/UsersFragment;->c(Lcom/twitter/library/service/x;II)Z

    goto/16 :goto_0

    .line 1967
    :pswitch_f
    new-instance v0, Lbtw;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v2

    const/16 v3, 0x1a

    invoke-direct {v0, v1, v2, v3}, Lbtw;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;I)V

    .line 1968
    invoke-virtual {p0, p1}, Lcom/twitter/app/users/UsersFragment;->i(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lbtw;->c(I)Lbtw;

    move-result-object v0

    const/16 v1, 0x17

    .line 1967
    invoke-virtual {p0, v0, v1, p1}, Lcom/twitter/app/users/UsersFragment;->c(Lcom/twitter/library/service/x;II)Z

    goto/16 :goto_0

    .line 1973
    :pswitch_10
    new-instance v0, Lbtw;

    .line 1974
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v2

    const/16 v3, 0x26

    invoke-direct {v0, v1, v2, v3}, Lbtw;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;I)V

    .line 1975
    invoke-virtual {p0, p1}, Lcom/twitter/app/users/UsersFragment;->i(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lbtw;->c(I)Lbtw;

    move-result-object v0

    const/16 v1, 0x1a

    .line 1973
    invoke-virtual {p0, v0, v1, p1}, Lcom/twitter/app/users/UsersFragment;->c(Lcom/twitter/library/service/x;II)Z

    goto/16 :goto_0

    .line 1827
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_d
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_a
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public g()V
    .locals 1

    .prologue
    .line 1710
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/app/users/UsersFragment;->h(I)Z

    .line 1711
    return-void
.end method

.method protected h()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1682
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aQ()Landroid/database/Cursor;

    move-result-object v0

    .line 1683
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1684
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aG()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 1685
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/16 v2, 0x190

    if-ge v1, v2, :cond_1

    .line 1688
    iget v1, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/twitter/app/users/UsersFragment;->k:Z

    if-eqz v1, :cond_1

    .line 1689
    :cond_0
    invoke-virtual {p0, v3}, Lcom/twitter/app/users/UsersFragment;->h(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1691
    const-string/jumbo v1, "get_older"

    invoke-virtual {p0, v1}, Lcom/twitter/app/users/UsersFragment;->b(Ljava/lang/String;)V

    .line 1695
    :cond_1
    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->aq:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/twitter/app/users/UsersFragment;->bg()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1697
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 1698
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->aq:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1699
    iput-boolean v3, p0, Lcom/twitter/app/users/UsersFragment;->ar:Z

    .line 1706
    :cond_2
    :goto_0
    return-void

    .line 1701
    :cond_3
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->aq:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1702
    iput-boolean v4, p0, Lcom/twitter/app/users/UsersFragment;->ar:Z

    goto :goto_0
.end method

.method protected h(I)Z
    .locals 1

    .prologue
    .line 1823
    invoke-virtual {p0, p1}, Lcom/twitter/app/users/UsersFragment;->l(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/twitter/app/users/UsersFragment;->f_(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected i(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1998
    packed-switch p1, :pswitch_data_0

    .line 2016
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid fetch type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2004
    :pswitch_0
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aQ()Landroid/database/Cursor;

    move-result-object v1

    .line 2005
    if-eqz v1, :cond_0

    .line 2006
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 2007
    const/4 v0, 0x1

    .line 2012
    :cond_0
    :pswitch_1
    return v0

    .line 1998
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->ag:Ljava/lang/String;

    return-object v0
.end method

.method protected j(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2100
    iget-boolean v1, p0, Lcom/twitter/app/users/UsersFragment;->ai:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/twitter/app/users/UsersFragment;->ae:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_0

    .line 2101
    iput-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->ai:Z

    .line 2102
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->c()V

    .line 2105
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k(I)V
    .locals 0

    .prologue
    .line 2226
    iput p1, p0, Lcom/twitter/app/users/UsersFragment;->ak:I

    .line 2227
    return-void
.end method

.method public l()V
    .locals 1

    .prologue
    .line 2082
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->y:Z

    .line 2083
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/yb;

    invoke-virtual {v0}, Lcom/twitter/android/yb;->notifyDataSetChanged()V

    .line 2084
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->C()V

    .line 2085
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 2089
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->y:Z

    .line 2090
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 620
    invoke-super {p0, p1}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 621
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->F()V

    .line 622
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    const v2, 0x7f130427

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->aq:Landroid/widget/TextView;

    .line 623
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->aq:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/twitter/app/users/UsersFragment;->bg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->aq:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0039

    iget v4, p0, Lcom/twitter/app/users/UsersFragment;->ap:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/twitter/app/users/UsersFragment;->ap:I

    .line 626
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    .line 625
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 624
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    iget-object v2, p0, Lcom/twitter/app/users/UsersFragment;->aq:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->ar:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 629
    :cond_0
    return-void

    .line 627
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 1011
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aO()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1084
    :cond_0
    :goto_0
    return-void

    .line 1014
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1019
    :pswitch_0
    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/twitter/app/users/UsersFragment;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1020
    const-string/jumbo v0, "user_id"

    invoke-virtual {p3, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1021
    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const-string/jumbo v0, "friendship"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    const-string/jumbo v0, "friendship"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1024
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/yb;

    .line 1025
    const/16 v1, 0x12

    iget v5, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    if-ne v1, v5, :cond_5

    .line 1026
    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->n:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1027
    if-eqz v1, :cond_2

    .line 1028
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 1030
    :pswitch_2
    invoke-static {v4}, Lcom/twitter/model/core/p;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1031
    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->n:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1032
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1031
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    invoke-virtual {v0}, Lcom/twitter/android/yb;->notifyDataSetChanged()V

    goto :goto_0

    .line 1038
    :pswitch_3
    invoke-static {v4}, Lcom/twitter/model/core/p;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1039
    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->n:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1040
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1039
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    invoke-virtual {v0}, Lcom/twitter/android/yb;->notifyDataSetChanged()V

    goto :goto_0

    .line 1052
    :cond_2
    invoke-static {v4}, Lcom/twitter/model/core/p;->c(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1053
    invoke-static {v4}, Lcom/twitter/model/core/p;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1054
    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->n:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    invoke-virtual {v0}, Lcom/twitter/android/yb;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1057
    :cond_3
    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->n:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    invoke-virtual {v0}, Lcom/twitter/android/yb;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1061
    :cond_4
    invoke-static {v4}, Lcom/twitter/model/core/p;->j(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1064
    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->n:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    invoke-virtual {v0}, Lcom/twitter/android/yb;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1069
    :cond_5
    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    .line 1070
    invoke-virtual {v1, v2, v3, v4}, Lcom/twitter/library/util/FriendshipCache;->a(JI)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1071
    invoke-virtual {v1, v2, v3, v4}, Lcom/twitter/library/util/FriendshipCache;->b(JI)V

    .line 1072
    invoke-virtual {v0}, Lcom/twitter/android/yb;->notifyDataSetChanged()V

    .line 1073
    iput-boolean v6, p0, Lcom/twitter/app/users/UsersFragment;->w:Z

    goto/16 :goto_0

    .line 1014
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 1028
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 333
    invoke-super {p0, p1}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->onAttach(Landroid/app/Activity;)V

    .line 334
    invoke-direct {p0}, Lcom/twitter/app/users/UsersFragment;->am()V

    .line 335
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    .prologue
    const v3, 0x7f130378

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 1384
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1385
    if-eq v0, v3, :cond_0

    const v2, 0x7f1302dd

    if-ne v0, v2, :cond_4

    .line 1386
    :cond_0
    if-ne v0, v3, :cond_3

    .line 1387
    const-string/jumbo v0, "find_friends"

    invoke-direct {p0, v0}, Lcom/twitter/app/users/UsersFragment;->c(Ljava/lang/String;)V

    .line 1392
    :goto_0
    new-instance v0, Lcom/twitter/android/FollowFlowController;

    const-string/jumbo v1, "who_to_follow"

    invoke-direct {v0, v1}, Lcom/twitter/android/FollowFlowController;-><init>(Ljava/lang/String;)V

    .line 1393
    invoke-virtual {v0, v9}, Lcom/twitter/android/FollowFlowController;->a(Z)Lcom/twitter/android/FollowFlowController;

    move-result-object v0

    .line 1394
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/FollowFlowController;->d(Landroid/content/Context;)Lcom/twitter/android/FollowFlowController;

    move-result-object v0

    .line 1395
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->Q()Lcom/twitter/app/users/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/app/users/y;->B()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1396
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/twitter/android/RootTabbedFindPeopleActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/FollowFlowController;->a(Landroid/content/Intent;)Lcom/twitter/android/FollowFlowController;

    .line 1399
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/FollowFlowController;->c(Landroid/app/Activity;)V

    .line 1402
    iput-boolean v9, p0, Lcom/twitter/app/users/UsersFragment;->am:Z

    .line 1430
    :cond_2
    :goto_1
    return-void

    .line 1389
    :cond_3
    const-string/jumbo v0, "find_more_friends"

    invoke-direct {p0, v0}, Lcom/twitter/app/users/UsersFragment;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 1403
    :cond_4
    const v2, 0x7f13034f

    if-ne v0, v2, :cond_7

    .line 1404
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1407
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aQ()Landroid/database/Cursor;

    move-result-object v2

    .line 1408
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1409
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v3, v0, [J

    .line 1410
    iget-object v4, p0, Lcom/twitter/app/users/UsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    move v0, v1

    .line 1415
    :cond_5
    const/4 v5, 0x2

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 1416
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, 0x7

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    or-int/lit8 v8, v8, 0x1

    invoke-virtual {v4, v6, v7, v8}, Lcom/twitter/library/util/FriendshipCache;->b(JI)V

    .line 1417
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v3, v0

    .line 1418
    add-int/lit8 v0, v0, 0x1

    .line 1419
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1420
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v9}, Lcom/twitter/app/users/UsersFragment;->a(Lcom/twitter/library/client/Session;[JZ)V

    .line 1421
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/yb;

    invoke-virtual {v0}, Lcom/twitter/android/yb;->notifyDataSetChanged()V

    .line 1422
    invoke-direct {p0}, Lcom/twitter/app/users/UsersFragment;->bk()V

    .line 1424
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 1425
    :cond_7
    const v2, 0x7f1302de

    if-ne v0, v2, :cond_2

    .line 1426
    new-instance v0, Lcom/twitter/android/FollowFlowController;

    const-string/jumbo v2, "discover"

    invoke-direct {v0, v2}, Lcom/twitter/android/FollowFlowController;-><init>(Ljava/lang/String;)V

    .line 1427
    invoke-virtual {v0, v1}, Lcom/twitter/android/FollowFlowController;->e(Z)Lcom/twitter/android/FollowFlowController;

    move-result-object v0

    .line 1428
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/FollowFlowController;->c(Landroid/app/Activity;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 345
    invoke-super {p0, p1}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 347
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->Q()Lcom/twitter/app/users/y;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Lcom/twitter/app/users/y;->n()I

    move-result v1

    iput v1, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    .line 351
    invoke-virtual {v0}, Lcom/twitter/app/users/y;->G()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/app/users/UsersFragment;->af:Ljava/util/ArrayList;

    .line 353
    invoke-direct {p0}, Lcom/twitter/app/users/UsersFragment;->bl()V

    .line 354
    new-instance v1, Lcom/twitter/android/widget/do;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/twitter/android/widget/do;-><init>(Landroid/content/Context;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 355
    invoke-virtual {v0}, Lcom/twitter/app/users/y;->F()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/app/users/UsersFragment;->F:Ljava/lang/String;

    .line 357
    invoke-virtual {v0}, Lcom/twitter/app/users/y;->o()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->j:J

    .line 358
    invoke-virtual {v0}, Lcom/twitter/app/users/y;->p()[J

    move-result-object v1

    .line 359
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 360
    iput-object v1, p0, Lcom/twitter/app/users/UsersFragment;->E:[J

    .line 362
    :cond_0
    invoke-virtual {v0}, Lcom/twitter/app/users/y;->I()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/app/users/UsersFragment;->G:Ljava/lang/String;

    .line 363
    invoke-virtual {v0}, Lcom/twitter/app/users/y;->J()I

    move-result v1

    iput v1, p0, Lcom/twitter/app/users/UsersFragment;->J:I

    .line 364
    invoke-virtual {v0}, Lcom/twitter/app/users/y;->H()I

    move-result v1

    iput v1, p0, Lcom/twitter/app/users/UsersFragment;->c:I

    .line 366
    invoke-virtual {v0}, Lcom/twitter/app/users/y;->K()Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/app/users/UsersFragment;->ae:Z

    .line 368
    invoke-virtual {v0}, Lcom/twitter/app/users/y;->L()Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/app/users/UsersFragment;->an:Z

    .line 370
    invoke-virtual {v0}, Lcom/twitter/app/users/y;->m()I

    move-result v1

    iput v1, p0, Lcom/twitter/app/users/UsersFragment;->ap:I

    .line 372
    invoke-virtual {v0}, Lcom/twitter/app/users/y;->O()Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/app/users/UsersFragment;->as:Z

    .line 374
    invoke-virtual {v0}, Lcom/twitter/app/users/y;->P()Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/app/users/UsersFragment;->at:Z

    .line 376
    invoke-virtual {v0}, Lcom/twitter/app/users/y;->Q()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/app/users/UsersFragment;->ag:Ljava/lang/String;

    .line 378
    invoke-static {}, Lcgb;->a()Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/app/users/UsersFragment;->au:Z

    .line 380
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->bj_()V

    .line 382
    if-eqz p1, :cond_9

    .line 383
    const-string/jumbo v0, "state_load_flags"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twitter/app/users/UsersFragment;->u:I

    .line 384
    const-string/jumbo v0, "state_dialog_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/app/users/UsersFragment;->e:J

    .line 385
    const-string/jumbo v0, "state_dialog_pc"

    .line 386
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 385
    invoke-static {v0}, Lcss;->a([B)Lcss;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->g:Lcss;

    .line 387
    const-string/jumbo v0, "state_dialog_user_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->f:Ljava/lang/String;

    .line 388
    const-string/jumbo v0, "state_dialog_user_position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twitter/app/users/UsersFragment;->i:I

    .line 389
    const-string/jumbo v0, "state_pending_follows"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->l:Ljava/util/HashSet;

    .line 391
    const-string/jumbo v0, "state_lookup_complete_pages"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twitter/app/users/UsersFragment;->K:I

    .line 392
    const-string/jumbo v0, "state_lookup_complete"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->L:Z

    .line 393
    const-string/jumbo v0, "state_reverse_lookup_complete"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->M:Z

    .line 394
    const-string/jumbo v0, "state_wtf_complete"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->ac:Z

    .line 395
    const-string/jumbo v0, "state_completed_components"

    .line 396
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twitter/app/users/UsersFragment;->aj:I

    .line 397
    const-string/jumbo v0, "state_total_progress_components"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twitter/app/users/UsersFragment;->ak:I

    .line 399
    const-string/jumbo v0, "state_user_ids"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->E:[J

    .line 400
    const-string/jumbo v0, "state_friendship_cache"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 401
    const-string/jumbo v0, "state_friendship_cache"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/util/FriendshipCache;

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    .line 406
    :goto_0
    const-string/jumbo v0, "state_incoming_friendship_cache"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 408
    const-string/jumbo v0, "state_incoming_friendship_cache"

    .line 410
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 411
    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->n:Ljava/util/HashMap;

    .line 415
    :goto_1
    const-string/jumbo v0, "state_total_users"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twitter/app/users/UsersFragment;->x:I

    .line 416
    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    :cond_1
    const-string/jumbo v0, "state_fetched_category_users"

    .line 418
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 419
    const-string/jumbo v0, "state_fetched_category_users"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->v:Z

    .line 421
    :cond_2
    const-string/jumbo v0, "state_loader_initialized"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 422
    const-string/jumbo v0, "state_loader_initialized"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->ai:Z

    .line 425
    :cond_3
    const-string/jumbo v0, "state_hide_contacts_import_cta"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->am:Z

    .line 426
    const-string/jumbo v0, "is_hidden"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->y:Z

    .line 427
    const-string/jumbo v0, "fast_follow_visible"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->ar:Z

    .line 428
    const-string/jumbo v0, "data_was_fetched"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->ah:Z

    .line 444
    :goto_2
    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    invoke-static {v0}, Lcom/twitter/app/users/UsersFragment;->g(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->H:Ljava/util/List;

    .line 446
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->I:Ljava/util/Set;

    .line 449
    :cond_4
    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_5

    .line 450
    new-instance v0, Lcom/twitter/app/users/x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/app/users/x;-><init>(Lcom/twitter/app/users/UsersFragment;Lcom/twitter/app/users/r;)V

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->ao:Lcom/twitter/app/users/x;

    .line 451
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->ab:Lcom/twitter/library/client/bd;

    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->ao:Lcom/twitter/app/users/x;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/z;)V

    .line 454
    :cond_5
    if-nez p1, :cond_6

    iget-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->y:Z

    if-nez v0, :cond_6

    .line 455
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->C()V

    .line 457
    :cond_6
    return-void

    .line 404
    :cond_7
    new-instance v0, Lcom/twitter/library/util/FriendshipCache;

    invoke-direct {v0}, Lcom/twitter/library/util/FriendshipCache;-><init>()V

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    goto/16 :goto_0

    .line 413
    :cond_8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->n:Ljava/util/HashMap;

    goto/16 :goto_1

    .line 430
    :cond_9
    iput v4, p0, Lcom/twitter/app/users/UsersFragment;->u:I

    .line 431
    invoke-virtual {v0}, Lcom/twitter/app/users/y;->E()Lcom/twitter/library/util/FriendshipCache;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/app/users/UsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    .line 432
    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    if-nez v1, :cond_a

    .line 433
    new-instance v1, Lcom/twitter/library/util/FriendshipCache;

    invoke-direct {v1}, Lcom/twitter/library/util/FriendshipCache;-><init>()V

    iput-object v1, p0, Lcom/twitter/app/users/UsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    .line 435
    :cond_a
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/twitter/app/users/UsersFragment;->l:Ljava/util/HashSet;

    .line 437
    iget v1, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_b

    .line 438
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/twitter/app/users/UsersFragment;->n:Ljava/util/HashMap;

    .line 441
    :cond_b
    invoke-virtual {v0}, Lcom/twitter/app/users/y;->D()Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/app/users/UsersFragment;->am:Z

    .line 442
    invoke-virtual {v0}, Lcom/twitter/app/users/y;->M()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->y:Z

    goto :goto_2
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
    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 1118
    packed-switch p1, :pswitch_data_0

    move-object v0, v4

    .line 1133
    :goto_0
    return-object v0

    .line 1120
    :pswitch_0
    sget-object v0, Lcom/twitter/library/provider/dk;->t:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    invoke-static {v0, v2, v3}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1123
    new-instance v0, Lcom/twitter/android/bt;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lchs;->a:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/bt;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1126
    :pswitch_1
    new-instance v0, Lcom/twitter/android/bt;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/app/users/UsersFragment;->z:Landroid/net/Uri;

    .line 1127
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/app/users/UsersFragment;->A:[Ljava/lang/String;

    const-string/jumbo v4, "(users_friendship IS NULL OR (users_friendship & 1 == 0)) AND user_groups_user_id!=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    iget-wide v6, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    .line 1129
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/twitter/app/users/UsersFragment;->B:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/bt;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    invoke-virtual {v0, v8}, Lcom/twitter/android/bt;->a(Z)Lcom/twitter/android/bt;

    move-result-object v0

    goto :goto_0

    .line 1118
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 936
    invoke-super {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->onDestroy()V

    .line 937
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->ao:Lcom/twitter/app/users/x;

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->ab:Lcom/twitter/library/client/bd;

    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->ao:Lcom/twitter/app/users/x;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->b(Lcom/twitter/library/service/z;)V

    .line 940
    :cond_0
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 136
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/app/users/UsersFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 1228
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 967
    invoke-super {p0, p1}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 968
    const-string/jumbo v0, "state_dialog_user"

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->e:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 969
    const-string/jumbo v0, "state_dialog_user_position"

    iget v1, p0, Lcom/twitter/app/users/UsersFragment;->i:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 970
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->g:Lcss;

    if-eqz v0, :cond_0

    .line 971
    const-string/jumbo v0, "state_dialog_pc"

    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->g:Lcss;

    invoke-static {v1}, Lcss;->a(Lcss;)[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 974
    const-string/jumbo v0, "state_dialog_user_token"

    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    :cond_1
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->l:Ljava/util/HashSet;

    if-eqz v0, :cond_2

    .line 977
    const-string/jumbo v0, "state_pending_follows"

    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->l:Ljava/util/HashSet;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 979
    :cond_2
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->E:[J

    if-eqz v0, :cond_3

    .line 980
    const-string/jumbo v0, "state_user_ids"

    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->E:[J

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 982
    :cond_3
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v0}, Lcom/twitter/library/util/FriendshipCache;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 983
    const-string/jumbo v0, "state_friendship_cache"

    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 985
    :cond_4
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->n:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 986
    const-string/jumbo v0, "state_incoming_friendship_cache"

    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->n:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 988
    :cond_5
    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_7

    .line 990
    :cond_6
    const-string/jumbo v0, "state_fetched_category_users"

    iget-boolean v1, p0, Lcom/twitter/app/users/UsersFragment;->v:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 992
    :cond_7
    const-string/jumbo v0, "state_load_flags"

    iget v1, p0, Lcom/twitter/app/users/UsersFragment;->u:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 993
    iget-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->ae:Z

    if-eqz v0, :cond_8

    .line 994
    const-string/jumbo v0, "state_loader_initialized"

    iget-boolean v1, p0, Lcom/twitter/app/users/UsersFragment;->ai:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 996
    :cond_8
    const-string/jumbo v0, "state_lookup_complete_pages"

    iget v1, p0, Lcom/twitter/app/users/UsersFragment;->K:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 997
    const-string/jumbo v0, "state_lookup_complete"

    iget-boolean v1, p0, Lcom/twitter/app/users/UsersFragment;->L:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 998
    const-string/jumbo v0, "state_reverse_lookup_complete"

    iget-boolean v1, p0, Lcom/twitter/app/users/UsersFragment;->M:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 999
    const-string/jumbo v0, "state_wtf_complete"

    iget-boolean v1, p0, Lcom/twitter/app/users/UsersFragment;->ac:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1000
    const-string/jumbo v0, "state_completed_components"

    iget v1, p0, Lcom/twitter/app/users/UsersFragment;->aj:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1001
    const-string/jumbo v0, "state_total_progress_components"

    iget v1, p0, Lcom/twitter/app/users/UsersFragment;->ak:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1002
    const-string/jumbo v0, "state_total_users"

    iget v1, p0, Lcom/twitter/app/users/UsersFragment;->x:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1003
    const-string/jumbo v0, "state_hide_contacts_import_cta"

    iget-boolean v1, p0, Lcom/twitter/app/users/UsersFragment;->am:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1004
    const-string/jumbo v0, "is_hidden"

    iget-boolean v1, p0, Lcom/twitter/app/users/UsersFragment;->y:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1005
    const-string/jumbo v0, "fast_follow_visible"

    iget-boolean v1, p0, Lcom/twitter/app/users/UsersFragment;->ar:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1006
    const-string/jumbo v0, "data_was_fetched"

    iget-boolean v1, p0, Lcom/twitter/app/users/UsersFragment;->ah:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1007
    return-void
.end method

.method public onStop()V
    .locals 12

    .prologue
    .line 944
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v2

    .line 945
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 946
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/Long;

    .line 947
    new-instance v0, Lbux;

    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->a_:Landroid/content/Context;

    iget-wide v3, p0, Lcom/twitter/app/users/UsersFragment;->aa:J

    iget v5, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    iget-wide v6, p0, Lcom/twitter/app/users/UsersFragment;->j:J

    .line 949
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lbux;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JIJJLjava/lang/Integer;)V

    .line 950
    const/16 v1, 0x12

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3}, Lcom/twitter/app/users/UsersFragment;->c(Lcom/twitter/library/service/x;II)Z

    goto :goto_0

    .line 953
    :cond_0
    iget-object v0, p0, Lcom/twitter/app/users/UsersFragment;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 955
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 956
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/yb;

    invoke-virtual {v0}, Lcom/twitter/android/yb;->c()V

    .line 958
    :cond_2
    iget v0, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    invoke-static {v0}, Lcom/twitter/app/users/UsersFragment;->g(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 959
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->ak()V

    .line 962
    :cond_3
    invoke-super {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->onStop()V

    .line 963
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 544
    invoke-super {p0, p1, p2}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 545
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    .line 546
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 547
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->w()Landroid/view/ViewGroup;

    move-result-object v1

    const-string/jumbo v2, "UsersFragment"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 548
    return-void
.end method

.method p(I)Lcom/twitter/android/yb;
    .locals 6
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 2709
    new-instance v0, Lcom/twitter/android/yb;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v4, p0, Lcom/twitter/app/users/UsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    .line 2710
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->x()Z

    move-result v5

    move v2, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/yb;-><init>(Landroid/content/Context;ILcom/twitter/library/widget/e;Lcom/twitter/library/util/FriendshipCache;Z)V

    .line 2711
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->ag()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/yb;->e(Z)V

    .line 2712
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->ah()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/yb;->f(Z)V

    .line 2713
    return-object v0
.end method

.method public synthetic p()Lcom/twitter/app/common/list/w;
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->Q()Lcom/twitter/app/users/y;

    move-result-object v0

    return-object v0
.end method

.method public synthetic q()Lcom/twitter/app/common/base/f;
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->Q()Lcom/twitter/app/users/y;

    move-result-object v0

    return-object v0
.end method

.method protected v()V
    .locals 1

    .prologue
    .line 1784
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->L:Z

    .line 1785
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->al()V

    .line 1786
    return-void
.end method

.method protected v_()Landroid/support/v4/content/Loader;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 1088
    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->j:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 1089
    const-string/jumbo v1, "user_groups_type=? AND user_groups_tag=?"

    iput-object v1, p0, Lcom/twitter/app/users/UsersFragment;->C:Ljava/lang/String;

    .line 1090
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget v2, p0, Lcom/twitter/app/users/UsersFragment;->t:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    iget-wide v2, p0, Lcom/twitter/app/users/UsersFragment;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/twitter/app/users/UsersFragment;->D:[Ljava/lang/String;

    .line 1110
    :goto_0
    new-instance v0, Lcom/twitter/android/bt;

    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/app/users/UsersFragment;->z:Landroid/net/Uri;

    .line 1111
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/app/users/UsersFragment;->A:[Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/app/users/UsersFragment;->C:Ljava/lang/String;

    iget-object v5, p0, Lcom/twitter/app/users/UsersFragment;->D:[Ljava/lang/String;

    iget-object v6, p0, Lcom/twitter/app/users/UsersFragment;->B:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/bt;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    invoke-virtual {v0, v8}, Lcom/twitter/android/bt;->a(Z)Lcom/twitter/android/bt;

    move-result-object v0

    .line 1110
    return-object v0

    .line 1091
    :cond_0
    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->E:[J

    if-eqz v1, :cond_2

    .line 1092
    iget-object v1, p0, Lcom/twitter/app/users/UsersFragment;->E:[J

    .line 1093
    array-length v2, v1

    .line 1094
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/twitter/app/users/UsersFragment;->D:[Ljava/lang/String;

    .line 1096
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "users_user_id"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, " IN (?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1097
    iget-object v4, p0, Lcom/twitter/app/users/UsersFragment;->D:[Ljava/lang/String;

    aget-wide v6, v1, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 1098
    :goto_1
    if-ge v0, v2, :cond_1

    .line 1099
    const-string/jumbo v4, ", ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1100
    iget-object v4, p0, Lcom/twitter/app/users/UsersFragment;->D:[Ljava/lang/String;

    aget-wide v6, v1, v0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 1098
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1102
    :cond_1
    const-string/jumbo v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/users/UsersFragment;->C:Ljava/lang/String;

    goto :goto_0

    .line 1105
    :cond_2
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->O()V

    goto :goto_0
.end method

.method protected w()Landroid/view/ViewGroup;
    .locals 6

    .prologue
    const v5, 0x7f130020

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 552
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 553
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 556
    const v1, 0x7f0403f1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 557
    const v1, 0x7f1302dd

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 559
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    iget-boolean v2, p0, Lcom/twitter/app/users/UsersFragment;->am:Z

    if-eqz v2, :cond_0

    .line 561
    const v2, 0x7f130375

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 562
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 563
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 565
    :cond_0
    invoke-direct {p0}, Lcom/twitter/app/users/UsersFragment;->an()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 567
    invoke-direct {p0, v0}, Lcom/twitter/app/users/UsersFragment;->a(Landroid/view/View;)V

    .line 576
    :cond_1
    :goto_0
    return-object v0

    .line 568
    :cond_2
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->Q()Lcom/twitter/app/users/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/app/users/y;->C()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 569
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 570
    :cond_3
    invoke-direct {p0}, Lcom/twitter/app/users/UsersFragment;->bh()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 571
    const v1, 0x7f130784

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 572
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 573
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected x()Z
    .locals 1

    .prologue
    .line 1322
    const/4 v0, 0x0

    return v0
.end method

.method protected y()Z
    .locals 1

    .prologue
    .line 636
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->S()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/app/users/UsersFragment;->U:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/app/users/UsersFragment;->Q()Lcom/twitter/app/users/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/users/y;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
