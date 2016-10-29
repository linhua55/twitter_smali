.class public Lcom/twitter/android/DMInboxFragment;
.super Lcom/twitter/app/common/list/TwitterListFragment;
.source "Twttr"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/twitter/android/autocomplete/a;
.implements Lcom/twitter/android/ne;
.implements Lcom/twitter/app/common/base/m;
.implements Lcom/twitter/ui/widget/r;


# annotations
.annotation build Lcom/twitter/app/AutoSaveState;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/app/common/list/TwitterListFragment",
        "<",
        "Lcgf;",
        "Lcom/twitter/android/dh;",
        ">;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;",
        "Lcom/twitter/android/autocomplete/a",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/twitter/android/ne;",
        "Lcom/twitter/app/common/base/m;",
        "Lcom/twitter/ui/widget/r;"
    }
.end annotation


# static fields
.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Z
    .annotation build Lcom/twitter/app/SaveState;
    .end annotation
.end field

.field private final c:Landroid/widget/AdapterView$OnItemClickListener;

.field private d:Landroid/widget/ListView;

.field private e:Lcom/twitter/android/autocomplete/adapters/l;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Lcom/twitter/ui/widget/PromptView;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 108
    const/4 v0, 0x3

    .line 109
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/twitter/util/collection/au;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/DMInboxFragment;->b:Ljava/util/Set;

    .line 108
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/twitter/app/common/list/TwitterListFragment;-><init>()V

    .line 115
    new-instance v0, Lcom/twitter/android/di;

    invoke-direct {v0, p0}, Lcom/twitter/android/di;-><init>(Lcom/twitter/android/DMInboxFragment;)V

    iput-object v0, p0, Lcom/twitter/android/DMInboxFragment;->c:Landroid/widget/AdapterView$OnItemClickListener;

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/DMInboxFragment;->h:Z

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/DMInboxFragment;)J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/twitter/android/DMInboxFragment;->aa:J

    return-wide v0
.end method

.method private static a(Landroid/widget/AdapterView;I)Lcom/twitter/library/database/dm/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;I)",
            "Lcom/twitter/library/database/dm/d;"
        }
    .end annotation

    .prologue
    .line 566
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgf;

    .line 567
    if-nez v0, :cond_0

    .line 568
    const/4 v0, 0x0

    .line 571
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcgf;->a()Lcom/twitter/library/database/dm/d;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/DMInboxFragment;Lcom/twitter/library/service/x;II)Z
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/DMInboxFragment;->c(Lcom/twitter/library/service/x;II)Z

    move-result v0

    return v0
.end method

.method private b(Z)V
    .locals 1

    .prologue
    .line 356
    iput-boolean p1, p0, Lcom/twitter/android/DMInboxFragment;->h:Z

    .line 357
    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->aV()Lcyj;

    move-result-object v0

    invoke-virtual {v0}, Lcyj;->h()V

    .line 358
    return-void
.end method

.method static synthetic b(Lcom/twitter/android/DMInboxFragment;)Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/twitter/android/DMInboxFragment;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/twitter/android/DMInboxFragment;Lcom/twitter/library/service/x;II)Z
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/DMInboxFragment;->c(Lcom/twitter/library/service/x;II)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/twitter/android/DMInboxFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/twitter/android/DMInboxFragment;->f:Ljava/lang/String;

    return-object v0
.end method

.method private c(Z)V
    .locals 3

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 470
    invoke-static {}, Lcak;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/AddressbookHelperActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/twitter/android/DMInboxFragment;->startActivity(Landroid/content/Intent;)V

    .line 479
    :goto_0
    return-void

    .line 473
    :cond_0
    new-instance v1, Lcom/twitter/android/FollowFlowController;

    const-string/jumbo v2, "messages"

    invoke-direct {v1, v2}, Lcom/twitter/android/FollowFlowController;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 474
    invoke-virtual {v1, v2}, Lcom/twitter/android/FollowFlowController;->a(Z)Lcom/twitter/android/FollowFlowController;

    move-result-object v1

    .line 475
    invoke-virtual {v1, p1}, Lcom/twitter/android/FollowFlowController;->e(Z)Lcom/twitter/android/FollowFlowController;

    move-result-object v1

    .line 476
    invoke-static {v0}, Lcom/twitter/android/dm/r;->d(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/android/FollowFlowController;->a(Landroid/content/Intent;)Lcom/twitter/android/FollowFlowController;

    move-result-object v1

    .line 477
    invoke-virtual {v1, v0}, Lcom/twitter/android/FollowFlowController;->c(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/twitter/android/DMInboxFragment;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/twitter/android/DMInboxFragment;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/twitter/android/DMInboxFragment;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method private f(Z)[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 576
    iget-object v0, p0, Lcom/twitter/android/DMInboxFragment;->f:Ljava/lang/String;

    invoke-static {v0}, Lbnx;->a(Ljava/lang/String;)Z

    move-result v3

    .line 577
    if-nez v3, :cond_1

    if-eqz p1, :cond_0

    const v0, 0x7f0a0304

    .line 578
    :goto_0
    invoke-virtual {p0, v0}, Lcom/twitter/android/DMInboxFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 580
    :goto_1
    if-nez v3, :cond_2

    const v0, 0x7f0a02aa

    invoke-virtual {p0, v0}, Lcom/twitter/android/DMInboxFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 581
    :goto_2
    const v1, 0x7f0a0541

    .line 582
    invoke-virtual {p0, v1}, Lcom/twitter/android/DMInboxFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v0, v3, v2

    .line 581
    invoke-static {v1, v3}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 586
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 577
    :cond_0
    const v0, 0x7f0a0305

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 578
    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 580
    goto :goto_2
.end method

.method static synthetic g(Lcom/twitter/android/DMInboxFragment;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method private m()V
    .locals 3

    .prologue
    .line 275
    iget-object v0, p0, Lcom/twitter/android/DMInboxFragment;->i:Lcom/twitter/ui/widget/PromptView;

    .line 277
    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1302dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 279
    iget-object v2, p0, Lcom/twitter/android/DMInboxFragment;->e:Lcom/twitter/android/autocomplete/adapters/l;

    invoke-virtual {v2}, Lcom/twitter/android/autocomplete/adapters/l;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 280
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 282
    const v1, 0x7f0a03b0

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/PromptView;->setButtonText(I)V

    .line 284
    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/library/util/m;->a(Landroid/content/Context;)Lcom/twitter/library/util/l;

    move-result-object v1

    .line 285
    invoke-interface {v1}, Lcom/twitter/library/util/l;->b()Z

    move-result v1

    .line 286
    if-eqz v1, :cond_0

    .line 288
    const v1, 0x7f0a029e

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/PromptView;->setTitle(I)V

    .line 308
    :goto_0
    return-void

    .line 292
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/util/ap;->a(Landroid/content/Context;)Lcom/twitter/android/util/al;

    move-result-object v1

    .line 295
    invoke-interface {v1}, Lcom/twitter/android/util/al;->d()Z

    move-result v2

    if-nez v2, :cond_1

    .line 296
    invoke-interface {v1}, Lcom/twitter/android/util/al;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 297
    :cond_1
    const v1, 0x7f0a029d

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/PromptView;->setTitle(I)V

    goto :goto_0

    .line 299
    :cond_2
    const v1, 0x7f0a029c

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/PromptView;->setTitle(I)V

    goto :goto_0

    .line 303
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 305
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/PromptView;->setButtonText(Ljava/lang/CharSequence;)V

    .line 306
    const v1, 0x7f0a029b

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/PromptView;->setTitle(I)V

    goto :goto_0
.end method

.method private n()V
    .locals 3

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->aI()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->ax()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    :cond_0
    new-instance v0, Lcom/twitter/library/api/dm/requests/ad;

    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/twitter/library/api/dm/requests/ad;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/DMInboxFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 353
    :cond_1
    return-void
.end method


# virtual methods
.method public N_()V
    .locals 2

    .prologue
    .line 651
    new-instance v1, Lcom/twitter/android/widget/ec;

    const/4 v0, 0x4

    invoke-direct {v1, v0}, Lcom/twitter/android/widget/ec;-><init>(I)V

    iget-boolean v0, p0, Lcom/twitter/android/DMInboxFragment;->g:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a050d

    .line 652
    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/ec;->b(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a09bb

    .line 655
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->d(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a05a7

    .line 656
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->f(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 657
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 658
    invoke-virtual {v0, p0}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/Fragment;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 659
    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 660
    return-void

    .line 651
    :cond_0
    const v0, 0x7f0a050e

    goto :goto_0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 162
    invoke-super {p0, p1, p2}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 163
    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 165
    const v0, 0x7f130045

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 166
    iget-object v3, p0, Lcom/twitter/android/DMInboxFragment;->c:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 167
    const v3, 0x7f130653

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 168
    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setScrollbarFadingEnabled(Z)V

    .line 170
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 172
    new-instance v3, Lcom/twitter/ui/widget/PromptView;

    invoke-direct {v3, v2}, Lcom/twitter/ui/widget/PromptView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/twitter/android/DMInboxFragment;->i:Lcom/twitter/ui/widget/PromptView;

    .line 173
    iget-object v3, p0, Lcom/twitter/android/DMInboxFragment;->i:Lcom/twitter/ui/widget/PromptView;

    invoke-virtual {v3, v6}, Lcom/twitter/ui/widget/PromptView;->setIsHeader(Z)V

    .line 174
    iget-object v3, p0, Lcom/twitter/android/DMInboxFragment;->i:Lcom/twitter/ui/widget/PromptView;

    invoke-virtual {v0, v3, v4, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 176
    const v3, 0x7f0400b9

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 177
    invoke-virtual {v0, v2, v4, v5}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 180
    iget-object v3, p0, Lcom/twitter/android/DMInboxFragment;->i:Lcom/twitter/ui/widget/PromptView;

    invoke-virtual {v3, p0}, Lcom/twitter/ui/widget/PromptView;->setOnPromptClickListener(Lcom/twitter/ui/widget/r;)V

    .line 181
    const v3, 0x7f1302dd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iput-object v0, p0, Lcom/twitter/android/DMInboxFragment;->d:Landroid/widget/ListView;

    .line 184
    return-object v1
.end method

.method protected a()V
    .locals 3

    .prologue
    .line 236
    invoke-super {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->a()V

    .line 237
    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->ag_()V

    .line 238
    iget-object v0, p0, Lcom/twitter/android/DMInboxFragment;->e:Lcom/twitter/android/autocomplete/adapters/l;

    invoke-virtual {v0}, Lcom/twitter/android/autocomplete/adapters/l;->i()Lcmf;

    move-result-object v0

    invoke-virtual {v0}, Lcmf;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 241
    :cond_0
    return-void
.end method

.method public a(Landroid/content/DialogInterface;II)V
    .locals 3

    .prologue
    .line 664
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 665
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 666
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x7f0a0b0a

    .line 667
    invoke-virtual {p0, v1}, Lcom/twitter/android/DMInboxFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 666
    invoke-virtual {p0, v0}, Lcom/twitter/android/DMInboxFragment;->startActivity(Landroid/content/Intent;)V

    .line 670
    :cond_0
    return-void
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
    .line 319
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 333
    :goto_0
    return-void

    .line 322
    :pswitch_0
    iget-object v1, p0, Lcom/twitter/android/DMInboxFragment;->e:Lcom/twitter/android/autocomplete/adapters/l;

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    new-instance v0, Lcme;

    new-instance v3, Lcom/twitter/android/provider/x;

    invoke-direct {v3}, Lcom/twitter/android/provider/x;-><init>()V

    invoke-direct {v0, p2, v3}, Lcme;-><init>(Landroid/database/Cursor;Lcmv;)V

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/twitter/android/autocomplete/adapters/l;->a(Ljava/lang/Object;Lcmf;)Lcmf;

    .line 326
    invoke-direct {p0}, Lcom/twitter/android/DMInboxFragment;->m()V

    goto :goto_0

    .line 325
    :cond_0
    invoke-static {}, Lcmf;->f()Lcmf;

    move-result-object v0

    goto :goto_1

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 487
    invoke-static {p1, p3}, Lcom/twitter/android/DMInboxFragment;->a(Landroid/widget/AdapterView;I)Lcom/twitter/library/database/dm/d;

    move-result-object v0

    .line 488
    if-nez v0, :cond_0

    .line 500
    :goto_0
    return-void

    .line 493
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/dm/o;

    invoke-direct {v2}, Lcom/twitter/android/dm/o;-><init>()V

    iget-object v3, v0, Lcom/twitter/library/database/dm/d;->b:Ljava/lang/String;

    .line 494
    invoke-virtual {v2, v3}, Lcom/twitter/android/dm/o;->c(Ljava/lang/String;)Lcom/twitter/android/dm/o;

    move-result-object v2

    iget-object v3, v0, Lcom/twitter/library/database/dm/d;->d:Ljava/lang/String;

    .line 495
    invoke-virtual {v2, v3}, Lcom/twitter/android/dm/o;->d(Ljava/lang/String;)Lcom/twitter/android/dm/o;

    move-result-object v2

    iget-object v0, v0, Lcom/twitter/library/database/dm/d;->e:Ljava/lang/String;

    .line 496
    invoke-virtual {v2, v0}, Lcom/twitter/android/dm/o;->e(Ljava/lang/String;)Lcom/twitter/android/dm/o;

    move-result-object v0

    .line 497
    invoke-virtual {v0}, Lcom/twitter/android/dm/o;->d()Lcom/twitter/android/dm/n;

    move-result-object v0

    .line 493
    invoke-static {v1, v0}, Lcom/twitter/android/dm/r;->a(Landroid/content/Context;Lcom/twitter/android/dm/n;)Landroid/content/Intent;

    move-result-object v0

    .line 499
    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->aI()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/twitter/app/common/base/z;->a(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/DMInboxFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected a(Lcmf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<",
            "Lcgf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 312
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcmf;)V

    .line 313
    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dh;

    invoke-virtual {v0}, Lcom/twitter/android/dh;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/twitter/android/DMInboxFragment;->b(Z)V

    .line 314
    invoke-direct {p0}, Lcom/twitter/android/DMInboxFragment;->n()V

    .line 315
    return-void

    .line 313
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/twitter/app/common/list/aj;)V
    .locals 1

    .prologue
    .line 189
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcom/twitter/app/common/list/aj;)V

    .line 190
    const v0, 0x7f0400ba

    invoke-virtual {p1, v0}, Lcom/twitter/app/common/list/aj;->c(I)Lcom/twitter/app/common/list/aj;

    .line 191
    return-void
.end method

.method protected a(Lcom/twitter/library/service/x;II)V
    .locals 3

    .prologue
    const v1, 0x7f0a0540

    const/4 v2, 0x1

    .line 591
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcom/twitter/library/service/x;II)V

    .line 593
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 594
    packed-switch p2, :pswitch_data_0

    .line 626
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 596
    :pswitch_1
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/twitter/android/DMInboxFragment;->a_:Landroid/content/Context;

    const v1, 0x7f0a021f

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 602
    :pswitch_2
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/twitter/android/DMInboxFragment;->a_:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 608
    :pswitch_3
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 609
    check-cast p1, Lcom/twitter/library/api/dm/requests/j;

    .line 610
    invoke-virtual {p1}, Lcom/twitter/library/api/dm/requests/j;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/DMInboxFragment;->j:Z

    goto :goto_0

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/DMInboxFragment;->a_:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 617
    :pswitch_4
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/twitter/android/DMInboxFragment;->a_:Landroid/content/Context;

    const v1, 0x7f0a02c6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 594
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public a(Lcom/twitter/ui/widget/PromptView;)V
    .locals 4

    .prologue
    .line 453
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "messages:inbox::import:click"

    aput-object v3, v1, v2

    .line 454
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 453
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 456
    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 457
    invoke-static {v0}, Lcom/twitter/android/util/ap;->a(Landroid/content/Context;)Lcom/twitter/android/util/al;

    move-result-object v1

    .line 458
    invoke-interface {v1}, Lcom/twitter/android/util/al;->c()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/twitter/android/DMInboxFragment;->c(Z)V

    .line 461
    invoke-interface {v1}, Lcom/twitter/android/util/al;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    const-string/jumbo v1, "messages"

    .line 463
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/twitter/android/dy;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/twitter/android/dy;

    move-result-object v0

    .line 464
    invoke-virtual {v0}, Lcom/twitter/android/dy;->a()V

    .line 466
    :cond_0
    return-void
.end method

.method protected a(Z)V
    .locals 3

    .prologue
    .line 405
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Z)V

    .line 407
    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 408
    return-void
.end method

.method protected a(I)Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 426
    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 427
    sget-object v1, Lcom/twitter/android/DMInboxFragment;->b:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 430
    new-instance v1, Lcom/twitter/library/api/dm/requests/m;

    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/twitter/library/api/dm/requests/m;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    if-ne p1, v3, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, v1, v3, p1}, Lcom/twitter/android/DMInboxFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 436
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 433
    :cond_1
    new-instance v1, Lcom/twitter/library/api/dm/requests/j;

    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/twitter/library/api/dm/requests/j;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0, p1}, Lcom/twitter/android/DMInboxFragment;->c(Lcom/twitter/library/service/x;II)Z

    goto :goto_0
.end method

.method public a(Lcyd;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    .line 383
    invoke-interface {p1}, Lcyd;->a()I

    move-result v1

    .line 384
    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    .line 385
    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    .line 387
    const v3, 0x7f1307ea

    if-ne v1, v3, :cond_0

    .line 388
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v1, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v3, "messages:navigation_bar::compose:click"

    aput-object v3, v2, v6

    .line 389
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v1

    .line 388
    invoke-static {v1}, Lbjf;->a(Lbjh;)V

    .line 390
    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/dm/m;

    invoke-direct {v2}, Lcom/twitter/android/dm/m;-><init>()V

    invoke-virtual {v2}, Lcom/twitter/android/dm/m;->d()Lcom/twitter/android/dm/l;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/twitter/android/dm/r;->a(Landroid/content/Context;Lcom/twitter/android/dm/l;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/twitter/android/DMInboxFragment;->startActivity(Landroid/content/Intent;)V

    .line 399
    :goto_0
    return v0

    .line 392
    :cond_0
    const v3, 0x7f1307eb

    if-ne v1, v3, :cond_1

    .line 393
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v1, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v3, v0, [Ljava/lang/String;

    const-string/jumbo v4, "messages:inbox::mark_all_as_read:click"

    aput-object v4, v3, v6

    .line 394
    invoke-virtual {v1, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v1

    .line 393
    invoke-static {v1}, Lbjf;->a(Lbjh;)V

    .line 395
    new-instance v1, Lcom/twitter/library/api/dm/requests/p;

    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/twitter/library/api/dm/requests/p;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    const/4 v2, 0x6

    invoke-virtual {p0, v1, v2, v6}, Lcom/twitter/android/DMInboxFragment;->c(Lcom/twitter/library/service/x;II)Z

    goto :goto_0

    .line 399
    :cond_1
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcyd;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Lcyg;)Z
    .locals 1

    .prologue
    .line 362
    const v0, 0x7f14001b

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 363
    const/4 v0, 0x1

    return v0
.end method

.method protected ag_()V
    .locals 1

    .prologue
    .line 412
    invoke-super {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->ag_()V

    .line 413
    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->aD()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dh;

    invoke-virtual {v0}, Lcom/twitter/android/dh;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/DMInboxFragment;->a(I)Z

    .line 416
    :cond_0
    return-void
.end method

.method public b(Lcyg;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 369
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->b(Lcyg;)I

    .line 370
    invoke-interface {p1}, Lcyg;->j()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/ToolBar;

    .line 371
    const v2, 0x7f1307eb

    invoke-virtual {v0, v2}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v2

    .line 372
    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->aI()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 374
    const v3, 0x7f1307ea

    invoke-virtual {v0, v3}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbjl;->b(Z)Lbjl;

    .line 376
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->aI()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/twitter/android/DMInboxFragment;->h:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lbjl;->b(Z)Lbjl;

    .line 377
    const/4 v0, 0x2

    return v0

    :cond_1
    move v0, v1

    .line 376
    goto :goto_0
.end method

.method public b(Lcom/twitter/ui/widget/PromptView;)V
    .locals 0

    .prologue
    .line 483
    return-void
.end method

.method public b(J)Z
    .locals 1

    .prologue
    .line 642
    const/4 v0, 0x1

    return v0
.end method

.method public b_(J)Z
    .locals 1

    .prologue
    .line 637
    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 218
    invoke-super {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->d()V

    .line 219
    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->aI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/DMInboxFragment;->aa:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "messages:inbox:::impression"

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->l()Lcom/twitter/android/dm/b;

    move-result-object v0

    const-string/jumbo v1, "ref_event"

    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/twitter/android/DMInboxFragment;->a:Z

    if-nez v1, :cond_1

    .line 225
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/DMInboxFragment;->aa:J

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "messages::::impression"

    aput-object v5, v4, v7

    invoke-direct {v1, v2, v3, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J[Ljava/lang/String;)V

    .line 226
    invoke-virtual {v1, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 225
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 227
    iput-boolean v6, p0, Lcom/twitter/android/DMInboxFragment;->a:Z

    .line 231
    :goto_0
    invoke-direct {p0}, Lcom/twitter/android/DMInboxFragment;->n()V

    .line 232
    return-void

    .line 229
    :cond_1
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/DMInboxFragment;->aa:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "messages::::impression"

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/DMInboxFragment;->a(I)Z

    .line 421
    return-void
.end method

.method protected h()V
    .locals 1

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->aG()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/DMInboxFragment;->j:Z

    if-eqz v0, :cond_0

    .line 631
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/DMInboxFragment;->a(I)Z

    .line 633
    :cond_0
    return-void
.end method

.method public l()Lcom/twitter/android/dm/b;
    .locals 1

    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/dm/b;->a(Landroid/os/Bundle;)Lcom/twitter/android/dm/b;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 195
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 197
    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->aI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a040f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(I)V

    .line 201
    :cond_0
    if-nez p1, :cond_1

    .line 202
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/DMInboxFragment;->a(I)Z

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/dh;

    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/twitter/android/dh;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/aa;->a(Lcvt;)V

    .line 206
    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/twitter/android/DMInboxFragment;->e:Lcom/twitter/android/autocomplete/adapters/l;

    if-nez v0, :cond_2

    .line 209
    new-instance v0, Lcom/twitter/android/autocomplete/adapters/l;

    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/android/autocomplete/adapters/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/DMInboxFragment;->e:Lcom/twitter/android/autocomplete/adapters/l;

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/DMInboxFragment;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twitter/android/DMInboxFragment;->e:Lcom/twitter/android/autocomplete/adapters/l;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/DMInboxFragment;->j:Z

    .line 213
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 442
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 443
    const v1, 0x7f1302dd

    if-ne v0, v1, :cond_0

    .line 444
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "messages:inbox:user_list:import:click"

    aput-object v2, v1, v4

    .line 445
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 444
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 446
    invoke-direct {p0, v4}, Lcom/twitter/android/DMInboxFragment;->c(Z)V

    .line 448
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->aI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/DMInboxFragment;->aa:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "messages:inbox:::impression"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 151
    :cond_0
    invoke-static {p0, p1}, Lcom/twitter/android/DMInboxFragmentSavedState;->a(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 152
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 7
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
    const/4 v4, 0x0

    .line 263
    packed-switch p1, :pswitch_data_0

    move-object v0, v4

    .line 269
    :goto_0
    return-object v0

    .line 265
    :pswitch_0
    new-instance v0, Lcom/twitter/android/bt;

    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/provider/SuggestionsProvider;->e:Landroid/net/Uri;

    sget-object v3, Lcom/twitter/android/provider/y;->a:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/bt;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 505
    invoke-static {p1, p3}, Lcom/twitter/android/DMInboxFragment;->a(Landroid/widget/AdapterView;I)Lcom/twitter/library/database/dm/d;

    move-result-object v1

    .line 506
    if-nez v1, :cond_0

    .line 560
    :goto_0
    return v0

    .line 510
    :cond_0
    iget-object v3, v1, Lcom/twitter/library/database/dm/d;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/twitter/util/object/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/twitter/android/DMInboxFragment;->f:Ljava/lang/String;

    .line 511
    iget-boolean v3, v1, Lcom/twitter/library/database/dm/d;->i:Z

    iput-boolean v3, p0, Lcom/twitter/android/DMInboxFragment;->g:Z

    .line 513
    iget-boolean v1, v1, Lcom/twitter/library/database/dm/d;->k:Z

    if-nez v1, :cond_1

    move v1, v2

    .line 514
    :goto_1
    new-instance v0, Lcom/twitter/android/widget/ec;

    invoke-direct {v0, v2}, Lcom/twitter/android/widget/ec;-><init>(I)V

    .line 515
    invoke-direct {p0, v1}, Lcom/twitter/android/DMInboxFragment;->f(Z)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/twitter/android/widget/ec;->a([Ljava/lang/CharSequence;)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 516
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/PromptDialogFragment;

    .line 517
    new-instance v3, Lcom/twitter/android/dj;

    invoke-direct {v3, p0, v1}, Lcom/twitter/android/dj;-><init>(Lcom/twitter/android/DMInboxFragment;Z)V

    invoke-virtual {v0, v3}, Lcom/twitter/android/widget/PromptDialogFragment;->a(Lcom/twitter/app/common/base/m;)Lcom/twitter/app/common/base/BaseDialogFragment;

    .line 558
    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/PromptDialogFragment;->a(Landroid/support/v4/app/Fragment;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 559
    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    move v0, v2

    .line 560
    goto :goto_0

    :cond_1
    move v1, v0

    .line 513
    goto :goto_1
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 78
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/DMInboxFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 3
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
    .line 337
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 346
    :goto_0
    return-void

    .line 339
    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/DMInboxFragment;->e:Lcom/twitter/android/autocomplete/adapters/l;

    const/4 v1, 0x0

    invoke-static {}, Lcmf;->f()Lcmf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/autocomplete/adapters/l;->a(Ljava/lang/Object;Lcmf;)Lcmf;

    goto :goto_0

    .line 337
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 157
    new-instance v0, Lcom/twitter/android/DMInboxFragmentSavedState;

    invoke-direct {v0, p0}, Lcom/twitter/android/DMInboxFragmentSavedState;-><init>(Lcom/twitter/android/DMInboxFragment;)V

    invoke-virtual {v0, p1}, Lcom/twitter/android/DMInboxFragmentSavedState;->a(Landroid/os/Bundle;)V

    .line 158
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 245
    invoke-super {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->onStart()V

    .line 251
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/DMInboxFragment;->a(Z)V

    .line 252
    return-void
.end method

.method public synthetic p()Lcom/twitter/app/common/list/w;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->l()Lcom/twitter/android/dm/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic q()Lcom/twitter/app/common/base/f;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->l()Lcom/twitter/android/dm/b;

    move-result-object v0

    return-object v0
.end method

.method protected v_()Landroid/support/v4/content/Loader;
    .locals 4
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
    .line 257
    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 258
    new-instance v2, Lwx;

    invoke-virtual {p0}, Lcom/twitter/android/DMInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lwx;-><init>(Landroid/content/Context;J)V

    return-object v2
.end method

.method public x()V
    .locals 0

    .prologue
    .line 647
    return-void
.end method
