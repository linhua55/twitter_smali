.class public Lcom/twitter/android/dm/ShareViaDMComposeFragment;
.super Lcom/twitter/android/DMComposeFragment;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/autocomplete/n;
.implements Lcom/twitter/android/dm/widget/f;
.implements Lcom/twitter/android/provider/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/DMComposeFragment;",
        "Lcom/twitter/android/autocomplete/n",
        "<",
        "Lcom/twitter/android/provider/l;",
        "Lcom/twitter/library/provider/h;",
        ">;",
        "Lcom/twitter/android/dm/widget/f;",
        "Lcom/twitter/android/provider/e;"
    }
.end annotation


# static fields
.field private static final j:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/provider/h;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private k:Lcom/twitter/android/dm/ao;

.field private l:Lcom/twitter/android/dm/widget/ShareViaDMMessageComposer;

.field private m:Lcom/twitter/library/view/QuoteView;

.field private n:Lcom/twitter/android/dm/ah;

.field private o:Z

.field private p:Z

.field private q:Lcom/twitter/android/provider/j;

.field private r:Lcom/twitter/android/provider/l;

.field private s:Z

.field private t:Z

.field private u:Lcom/twitter/android/dm/aj;

.field private v:Lcom/twitter/model/core/ay;

.field private w:Z

.field private x:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private y:Lcom/twitter/android/dm/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/twitter/library/provider/h;->c:Lcom/twitter/util/serialization/ah;

    .line 82
    invoke-static {v0}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->j:Lcom/twitter/util/serialization/ah;

    .line 81
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/twitter/android/DMComposeFragment;-><init>()V

    return-void
.end method

.method private B()V
    .locals 2

    .prologue
    .line 129
    new-instance v0, Lcom/twitter/android/autocomplete/h;

    iget-object v1, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->q:Lcom/twitter/android/provider/j;

    invoke-direct {v0, v1, p0}, Lcom/twitter/android/autocomplete/h;-><init>(Lsb;Lcom/twitter/android/autocomplete/n;)V

    iget-object v1, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->r:Lcom/twitter/android/provider/l;

    invoke-virtual {v0, v1}, Lcom/twitter/android/autocomplete/h;->a(Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method private C()Z
    .locals 2

    .prologue
    .line 258
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private D()V
    .locals 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 301
    iget-object v1, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->h:Lcom/twitter/android/autocomplete/adapters/h;

    invoke-virtual {v1, v0}, Lcom/twitter/android/autocomplete/adapters/h;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->f:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 304
    :cond_0
    return-void
.end method

.method private E()Z
    .locals 1

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->F()Z

    move-result v0

    return v0
.end method

.method private F()Z
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->e:Lcom/twitter/android/autocomplete/ListViewSuggestionEditText;

    invoke-virtual {v0}, Lcom/twitter/android/autocomplete/ListViewSuggestionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private G()V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->n:Lcom/twitter/android/dm/ah;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->n:Lcom/twitter/android/dm/ah;

    invoke-virtual {v0}, Lcom/twitter/android/dm/ah;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 395
    :goto_0
    return-void

    .line 393
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->x:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(I)V

    goto :goto_0
.end method

.method private H()Lcom/twitter/android/dm/am;
    .locals 2

    .prologue
    .line 399
    new-instance v0, Lcom/twitter/android/dm/an;

    invoke-direct {v0}, Lcom/twitter/android/dm/an;-><init>()V

    .line 400
    invoke-direct {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->F()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/an;->a(Z)Lcom/twitter/android/dm/an;

    move-result-object v0

    .line 401
    invoke-virtual {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->w()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/an;->c(Z)Lcom/twitter/android/dm/an;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->o:Z

    .line 402
    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/an;->e(Z)Lcom/twitter/android/dm/an;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->k:Lcom/twitter/android/dm/ao;

    .line 403
    invoke-virtual {v1}, Lcom/twitter/android/dm/ao;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/an;->b(Z)Lcom/twitter/android/dm/an;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->k:Lcom/twitter/android/dm/ao;

    .line 404
    invoke-virtual {v1}, Lcom/twitter/android/dm/ao;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/an;->d(Z)Lcom/twitter/android/dm/an;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->s:Z

    .line 405
    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/an;->f(Z)Lcom/twitter/android/dm/an;

    move-result-object v0

    .line 406
    invoke-virtual {v0}, Lcom/twitter/android/dm/an;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dm/am;

    .line 399
    return-object v0
.end method

.method private I()Z
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->k:Lcom/twitter/android/dm/ao;

    invoke-virtual {v0}, Lcom/twitter/android/dm/ao;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    invoke-virtual {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->k:Lcom/twitter/android/dm/ao;

    invoke-virtual {v0}, Lcom/twitter/android/dm/ao;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 469
    :goto_0
    return v0

    .line 470
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/dm/ShareViaDMComposeFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->f:Landroid/widget/ListView;

    return-object v0
.end method

.method private a(Lcom/twitter/android/dm/widget/f;Lcom/twitter/model/core/ay;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->l:Lcom/twitter/android/dm/widget/ShareViaDMMessageComposer;

    invoke-virtual {v0, p1}, Lcom/twitter/android/dm/widget/ShareViaDMMessageComposer;->setMessageComposerListener(Lcom/twitter/android/dm/widget/f;)V

    .line 254
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->l:Lcom/twitter/android/dm/widget/ShareViaDMMessageComposer;

    invoke-virtual {v0, p2, p3, p4}, Lcom/twitter/android/dm/widget/ShareViaDMMessageComposer;->a(Lcom/twitter/model/core/ay;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/dm/ShareViaDMComposeFragment;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->s:Z

    return p1
.end method

.method static synthetic b(Lcom/twitter/android/dm/ShareViaDMComposeFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->f:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/dm/ShareViaDMComposeFragment;)Lcom/twitter/android/dm/am;
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->H()Lcom/twitter/android/dm/am;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/android/dm/ShareViaDMComposeFragment;)Lcom/twitter/android/dm/aj;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->u:Lcom/twitter/android/dm/aj;

    return-object v0
.end method

.method static synthetic e(Lcom/twitter/android/dm/ShareViaDMComposeFragment;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->D()V

    return-void
.end method

.method static synthetic f(Lcom/twitter/android/dm/ShareViaDMComposeFragment;)Lcom/twitter/android/dm/ah;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->n:Lcom/twitter/android/dm/ah;

    return-object v0
.end method

.method static synthetic g(Lcom/twitter/android/dm/ShareViaDMComposeFragment;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->G()V

    return-void
.end method

.method static synthetic h(Lcom/twitter/android/dm/ShareViaDMComposeFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->a_:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public A()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 491
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->k:Lcom/twitter/android/dm/ao;

    invoke-virtual {v0}, Lcom/twitter/android/dm/ao;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "cancel_with_selection"

    .line 493
    :goto_0
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "messages"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 494
    invoke-virtual {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->g()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v5, v2, v3

    const/4 v3, 0x3

    aput-object v5, v2, v3

    const/4 v3, 0x4

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 493
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 495
    return-void

    .line 491
    :cond_0
    const-string/jumbo v0, "cancel_without_selection"

    goto :goto_0
.end method

.method public J_()V
    .locals 3

    .prologue
    .line 278
    invoke-super {p0}, Lcom/twitter/android/DMComposeFragment;->J_()V

    .line 282
    iget-boolean v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->e:Lcom/twitter/android/autocomplete/ListViewSuggestionEditText;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/twitter/util/ui/r;->b(Landroid/content/Context;Landroid/view/View;Z)V

    .line 285
    :cond_0
    return-void
.end method

.method public M_()V
    .locals 0

    .prologue
    .line 367
    return-void
.end method

.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 4

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/twitter/android/DMComposeFragment;->a(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    .line 142
    const v0, 0x7f130277

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/view/QuoteView;

    iput-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->m:Lcom/twitter/library/view/QuoteView;

    .line 143
    const v0, 0x7f130739

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dm/widget/ShareViaDMMessageComposer;

    iput-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->l:Lcom/twitter/android/dm/widget/ShareViaDMMessageComposer;

    .line 145
    iget-boolean v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->p:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->C()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->w:Z

    if-nez v0, :cond_0

    .line 146
    new-instance v2, Lcom/twitter/android/dm/ah;

    invoke-virtual {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v0, 0x7f130733

    .line 147
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v2, v3, v0}, Lcom/twitter/android/dm/ah;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->n:Lcom/twitter/android/dm/ah;

    .line 150
    :cond_0
    iget-boolean v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->w:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->a(Z)V

    .line 151
    return-object v1

    .line 150
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 263
    invoke-super {p0}, Lcom/twitter/android/DMComposeFragment;->a()V

    .line 264
    invoke-virtual {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/twitter/model/core/TwitterUser;->Q:I

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->v:Lcom/twitter/model/core/ay;

    invoke-static {v0, p0}, Lcom/twitter/android/ShareTweetEmptyOverlay;->a(Lcom/twitter/model/core/ay;Landroid/support/v4/app/Fragment;)V

    .line 268
    :cond_0
    return-void
.end method

.method protected a(JLcom/twitter/model/core/TwitterUser;)V
    .locals 5

    .prologue
    .line 438
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/DMComposeFragment;->a(JLcom/twitter/model/core/TwitterUser;)V

    .line 439
    iget-object v1, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->k:Lcom/twitter/android/dm/ao;

    const/4 v0, 0x1

    new-array v2, v0, [Lcom/twitter/library/provider/h;

    const/4 v3, 0x0

    new-instance v0, Lcom/twitter/library/provider/l;

    invoke-direct {v0}, Lcom/twitter/library/provider/l;-><init>()V

    .line 440
    invoke-virtual {v0, p3}, Lcom/twitter/library/provider/l;->a(Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/library/provider/l;

    move-result-object v0

    .line 441
    invoke-virtual {v0}, Lcom/twitter/library/provider/l;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/provider/h;

    aput-object v0, v2, v3

    .line 439
    invoke-virtual {v1, v2}, Lcom/twitter/android/dm/ao;->a([Lcom/twitter/library/provider/h;)V

    .line 442
    return-void
.end method

.method public a(Lcom/twitter/android/provider/l;Lcmf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/provider/l;",
            "Lcmf",
            "<",
            "Lcom/twitter/library/provider/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 500
    iput-boolean v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->o:Z

    .line 501
    invoke-virtual {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 502
    invoke-virtual {p2}, Lcmf;->bb_()I

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->t:Z

    .line 503
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->f:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/dm/i;->a(Landroid/content/Context;)Landroid/view/animation/LayoutAnimationController;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 504
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->u:Lcom/twitter/android/dm/aj;

    invoke-direct {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->H()Lcom/twitter/android/dm/am;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/aj;->b(Lcom/twitter/android/dm/am;)V

    .line 506
    :cond_0
    return-void

    .line 502
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/twitter/library/database/dm/d;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 446
    iget-object v0, p1, Lcom/twitter/library/database/dm/d;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/library/database/dm/d;->j:Ljava/util/List;

    invoke-virtual {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 446
    invoke-static {v0, v1, v4, v2, v3}, Lbnx;->a(Landroid/content/Context;Ljava/util/List;ZJ)Ljava/lang/String;

    move-result-object v0

    .line 449
    :goto_0
    const-wide/16 v2, -0x1

    invoke-virtual {p0, v2, v3, v0, p1}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->a(JLjava/lang/String;Ljava/lang/Object;)V

    .line 450
    iget-object v1, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->k:Lcom/twitter/android/dm/ao;

    new-array v2, v4, [Lcom/twitter/library/provider/h;

    const/4 v3, 0x0

    new-instance v0, Lcom/twitter/library/provider/e;

    invoke-direct {v0}, Lcom/twitter/library/provider/e;-><init>()V

    invoke-virtual {v0, p1}, Lcom/twitter/library/provider/e;->a(Lcom/twitter/library/database/dm/d;)Lcom/twitter/library/provider/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/provider/e;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/provider/h;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/twitter/android/dm/ao;->a([Lcom/twitter/library/provider/h;)V

    .line 451
    return-void

    .line 446
    :cond_0
    iget-object v0, p1, Lcom/twitter/library/database/dm/d;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method protected a(Lcom/twitter/library/provider/LocalContactInfo;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 422
    invoke-super {p0, p1}, Lcom/twitter/android/DMComposeFragment;->a(Lcom/twitter/library/provider/LocalContactInfo;)V

    .line 423
    const v0, 0x7f0a0b08

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->v:Lcom/twitter/model/core/ay;

    iget-object v2, v2, Lcom/twitter/model/core/ay;->d:Ljava/lang/String;

    aput-object v2, v1, v6

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->v:Lcom/twitter/model/core/ay;

    iget-wide v4, v3, Lcom/twitter/model/core/ay;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 425
    :try_start_0
    iget-object v0, p1, Lcom/twitter/library/provider/LocalContactInfo;->c:Lcom/twitter/library/provider/LocalContactInfo$Type;

    sget-object v2, Lcom/twitter/library/provider/LocalContactInfo$Type;->a:Lcom/twitter/library/provider/LocalContactInfo$Type;

    if-ne v0, v2, :cond_0

    const v0, 0x7f0a0767

    :goto_0
    invoke-virtual {p0, v0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 427
    invoke-static {p1, v1}, Lcom/twitter/library/provider/LocalContactInfo;->a(Lcom/twitter/library/provider/LocalContactInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->startActivity(Landroid/content/Intent;)V

    .line 428
    invoke-virtual {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    :goto_1
    return-void

    .line 425
    :cond_0
    const v0, 0x7f0a0765

    goto :goto_0

    .line 429
    :catch_0
    move-exception v0

    .line 430
    iget-object v0, p1, Lcom/twitter/library/provider/LocalContactInfo;->c:Lcom/twitter/library/provider/LocalContactInfo$Type;

    sget-object v1, Lcom/twitter/library/provider/LocalContactInfo$Type;->a:Lcom/twitter/library/provider/LocalContactInfo$Type;

    if-ne v0, v1, :cond_1

    const v0, 0x7f0a0768

    :goto_2
    invoke-virtual {p0, v0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 432
    invoke-virtual {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 430
    :cond_1
    const v0, 0x7f0a0766

    goto :goto_2
.end method

.method protected a(Lcom/twitter/model/core/TwitterUser;Lcom/twitter/model/dms/ce;)V
    .locals 4

    .prologue
    .line 455
    invoke-super {p0, p1, p2}, Lcom/twitter/android/DMComposeFragment;->a(Lcom/twitter/model/core/TwitterUser;Lcom/twitter/model/dms/ce;)V

    .line 456
    iget-boolean v0, p2, Lcom/twitter/model/dms/ce;->a:Z

    if-eqz v0, :cond_0

    .line 457
    iget-object v1, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->k:Lcom/twitter/android/dm/ao;

    const/4 v0, 0x1

    new-array v2, v0, [Lcom/twitter/library/provider/h;

    const/4 v3, 0x0

    new-instance v0, Lcom/twitter/library/provider/l;

    invoke-direct {v0}, Lcom/twitter/library/provider/l;-><init>()V

    invoke-virtual {v0, p1}, Lcom/twitter/library/provider/l;->a(Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/library/provider/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/provider/l;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/provider/h;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/twitter/android/dm/ao;->a([Lcom/twitter/library/provider/h;)V

    .line 459
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcmf;)V
    .locals 0

    .prologue
    .line 71
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->a(Ljava/lang/String;Lcmf;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcmf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcmf",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->u:Lcom/twitter/android/dm/aj;

    invoke-direct {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->H()Lcom/twitter/android/dm/am;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/aj;->a(Lcom/twitter/android/dm/am;)V

    .line 290
    invoke-virtual {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->z()V

    .line 291
    invoke-direct {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->G()V

    .line 292
    invoke-direct {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->s:Z

    if-eqz v0, :cond_0

    .line 293
    invoke-direct {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->D()V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/twitter/android/DMComposeFragment;->a(Ljava/lang/Object;Lcmf;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;JLjava/lang/Object;I)Z
    .locals 6

    .prologue
    .line 71
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    move-object v0, p0

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->a(Ljava/lang/String;JLjava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;JLjava/lang/Object;I)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 411
    invoke-super/range {p0 .. p5}, Lcom/twitter/android/DMComposeFragment;->a(Ljava/lang/String;JLjava/lang/Object;I)Z

    .line 413
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->k:Lcom/twitter/android/dm/ao;

    invoke-virtual {v0}, Lcom/twitter/android/dm/ao;->d()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 414
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->l:Lcom/twitter/android/dm/widget/ShareViaDMMessageComposer;

    invoke-virtual {v0}, Lcom/twitter/android/dm/widget/ShareViaDMMessageComposer;->p()V

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->u:Lcom/twitter/android/dm/aj;

    invoke-direct {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->H()Lcom/twitter/android/dm/am;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/aj;->b(Lcom/twitter/android/dm/am;)V

    .line 417
    return v2
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 463
    invoke-super {p0, p1}, Lcom/twitter/android/DMComposeFragment;->afterTextChanged(Landroid/text/Editable;)V

    .line 464
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->k:Lcom/twitter/android/dm/ao;

    invoke-virtual {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->u()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/ao;->a(Ljava/util/Set;)V

    .line 465
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->u:Lcom/twitter/android/dm/aj;

    invoke-direct {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->H()Lcom/twitter/android/dm/am;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/aj;->b(Lcom/twitter/android/dm/am;)V

    .line 466
    return-void
.end method

.method protected b()Lsb;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lsb",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v9, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 116
    new-instance v1, Lcom/twitter/android/provider/j;

    invoke-direct {v1, v10}, Lcom/twitter/android/provider/j;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->q:Lcom/twitter/android/provider/j;

    .line 117
    new-instance v1, Lcom/twitter/android/provider/l;

    iget-object v2, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->v:Lcom/twitter/model/core/ay;

    iget-wide v2, v2, Lcom/twitter/model/core/ay;->e:J

    .line 118
    invoke-virtual {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    iget-object v6, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->v:Lcom/twitter/model/core/ay;

    iget-wide v6, v6, Lcom/twitter/model/core/ay;->b:J

    const/4 v8, 0x6

    invoke-direct/range {v1 .. v8}, Lcom/twitter/android/provider/l;-><init>(JJJI)V

    iput-object v1, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->r:Lcom/twitter/android/provider/l;

    .line 120
    invoke-static {v10}, Lcom/twitter/android/dm/h;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    invoke-static {}, Lcom/twitter/android/lb;->a()Lcom/twitter/android/lb;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.READ_CONTACTS"

    aput-object v3, v2, v9

    invoke-virtual {v1, v10, v2}, Lcom/twitter/android/lb;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    :goto_0
    new-instance v3, Lrt;

    new-instance v1, Lcom/twitter/library/util/e;

    invoke-direct {v1, v0, v10}, Lcom/twitter/library/util/e;-><init>(ZLandroid/content/Context;)V

    invoke-direct {v3, v1}, Lrt;-><init>(Lcom/twitter/library/util/e;)V

    .line 124
    new-instance v0, Lcom/twitter/android/provider/a;

    invoke-super {p0}, Lcom/twitter/android/DMComposeFragment;->b()Lsb;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->q:Lcom/twitter/android/provider/j;

    iget-object v4, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->r:Lcom/twitter/android/provider/l;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/provider/a;-><init>(Lsb;Lcom/twitter/android/provider/j;Lrt;Lcom/twitter/android/provider/l;Lcom/twitter/android/provider/e;)V

    return-object v0

    :cond_0
    move v0, v9

    .line 121
    goto :goto_0
.end method

.method public synthetic b(Ljava/lang/Object;Lcmf;)V
    .locals 0

    .prologue
    .line 71
    check-cast p1, Lcom/twitter/android/provider/l;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->a(Lcom/twitter/android/provider/l;Lcmf;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 316
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->k:Lcom/twitter/android/dm/ao;

    invoke-virtual {v0}, Lcom/twitter/android/dm/ao;->g()Lcom/twitter/library/database/dm/d;

    move-result-object v0

    .line 317
    if-nez v0, :cond_1

    move-object v1, v2

    .line 318
    :goto_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 319
    invoke-virtual {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 320
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->v:Lcom/twitter/model/core/ay;

    iget-wide v6, v0, Lcom/twitter/model/core/ay;->e:J

    .line 321
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->v:Lcom/twitter/model/core/ay;

    iget-object v0, v0, Lcom/twitter/model/core/ay;->m:Lcss;

    if-nez v0, :cond_2

    move-object v3, v2

    .line 324
    :goto_1
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->ab:Lcom/twitter/library/client/bd;

    new-instance v8, Lboe;

    invoke-virtual {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v9

    iget-object v10, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->k:Lcom/twitter/android/dm/ao;

    .line 325
    invoke-virtual {v10}, Lcom/twitter/android/dm/ao;->e()Ljava/util/List;

    move-result-object v10

    invoke-direct {v8, v5, v9, v10}, Lboe;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/util/Collection;)V

    .line 324
    invoke-virtual {v0, v8}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 326
    new-instance v0, Lcom/twitter/library/api/dm/requests/w;

    invoke-direct {v0}, Lcom/twitter/library/api/dm/requests/w;-><init>()V

    .line 327
    invoke-virtual {v0, v5}, Lcom/twitter/library/api/dm/requests/w;->a(Landroid/content/Context;)Lcom/twitter/library/api/dm/requests/w;

    move-result-object v0

    .line 328
    invoke-virtual {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/twitter/library/api/dm/requests/w;->a(Lcom/twitter/library/client/Session;)Lcom/twitter/library/api/dm/requests/w;

    move-result-object v0

    .line 329
    invoke-virtual {v0, v1}, Lcom/twitter/library/api/dm/requests/w;->b(Ljava/lang/String;)Lcom/twitter/library/api/dm/requests/w;

    move-result-object v0

    .line 330
    invoke-virtual {v0, v4}, Lcom/twitter/library/api/dm/requests/w;->c(Ljava/lang/String;)Lcom/twitter/library/api/dm/requests/w;

    move-result-object v0

    .line 331
    invoke-virtual {v0, p1}, Lcom/twitter/library/api/dm/requests/w;->d(Ljava/lang/String;)Lcom/twitter/library/api/dm/requests/w;

    move-result-object v0

    iget-object v4, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->v:Lcom/twitter/model/core/ay;

    .line 332
    invoke-virtual {v0, v4}, Lcom/twitter/library/api/dm/requests/w;->a(Lcom/twitter/model/core/ay;)Lcom/twitter/library/api/dm/requests/w;

    move-result-object v0

    iget-object v4, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->k:Lcom/twitter/android/dm/ao;

    .line 333
    invoke-virtual {v4}, Lcom/twitter/android/dm/ao;->f()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/twitter/library/api/dm/requests/w;->a(Ljava/util/Set;)Lcom/twitter/library/api/dm/requests/w;

    move-result-object v0

    .line 334
    invoke-virtual {v0}, Lcom/twitter/library/api/dm/requests/w;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/api/dm/requests/s;

    .line 335
    invoke-static {v5}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v4

    new-instance v8, Lcom/twitter/android/dm/ag;

    invoke-direct {v8, p0}, Lcom/twitter/android/dm/ag;-><init>(Lcom/twitter/android/dm/ShareViaDMComposeFragment;)V

    invoke-virtual {v4, v0, v8}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 346
    invoke-virtual {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v8

    .line 347
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, v8, v9}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v10, "messages:share_tweet_conversation:::send_tweet_dm"

    aput-object v10, v4, v11

    .line 348
    invoke-virtual {v0, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 349
    invoke-virtual {v0, v1, v6, v7, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;JLjava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    .line 350
    iget-boolean v1, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->w:Z

    if-eqz v1, :cond_0

    .line 351
    invoke-virtual {v0, v8, v9, v2, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b(JLcss;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 352
    const-string/jumbo v1, "2586390716:message_me"

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->i(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 353
    iget-object v1, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->v:Lcom/twitter/model/core/ay;

    iget-object v1, v1, Lcom/twitter/model/core/ay;->k:Lclw;

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->v:Lcom/twitter/model/core/ay;

    iget-object v1, v1, Lcom/twitter/model/core/ay;->k:Lclw;

    invoke-virtual {v1}, Lclw;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->d(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 358
    :cond_0
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 359
    const v0, 0x7f0a076a

    invoke-static {v5, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 360
    invoke-static {v5}, Lbnx;->c(Landroid/content/Context;)V

    .line 361
    const/4 v0, -0x1

    invoke-virtual {v5, v0, v2}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 362
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 363
    return-void

    .line 317
    :cond_1
    iget-object v0, v0, Lcom/twitter/library/database/dm/d;->b:Ljava/lang/String;

    move-object v1, v0

    goto/16 :goto_0

    .line 321
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->v:Lcom/twitter/model/core/ay;

    iget-object v0, v0, Lcom/twitter/model/core/ay;->m:Lcss;

    iget-object v0, v0, Lcss;->c:Ljava/lang/String;

    move-object v3, v0

    goto/16 :goto_1
.end method

.method protected f()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .prologue
    .line 157
    const v0, 0x7f040374

    return v0
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    const-string/jumbo v0, "share_tweet_user_select"

    return-object v0
.end method

.method protected h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 481
    invoke-direct {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    const-string/jumbo v0, "suggested"

    .line 484
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/twitter/android/DMComposeFragment;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-super {p0, p1}, Lcom/twitter/android/DMComposeFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 168
    if-nez p1, :cond_3

    .line 171
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->y:Lcom/twitter/android/dm/v;

    invoke-virtual {v0}, Lcom/twitter/android/dm/v;->j()Ljava/util/List;

    move-result-object v3

    .line 172
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->y:Lcom/twitter/android/dm/v;

    invoke-virtual {v0}, Lcom/twitter/android/dm/v;->c()Ljava/lang/String;

    move-result-object v2

    .line 173
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->y:Lcom/twitter/android/dm/v;

    invoke-virtual {v0}, Lcom/twitter/android/dm/v;->l()Ljava/lang/String;

    move-result-object v0

    move-object v4, v3

    move-object v5, v1

    move-object v3, v2

    move-object v2, v0

    .line 184
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 185
    iget-object v1, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->n:Lcom/twitter/android/dm/ah;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->n:Lcom/twitter/android/dm/ah;

    .line 188
    :goto_1
    new-instance v6, Lcom/twitter/android/dm/al;

    invoke-direct {v6}, Lcom/twitter/android/dm/al;-><init>()V

    new-instance v7, Lcom/twitter/android/dm/ap;

    invoke-direct {v7, v0}, Lcom/twitter/android/dm/ap;-><init>(Landroid/view/View;)V

    .line 189
    invoke-virtual {v6, v7}, Lcom/twitter/android/dm/al;->a(Lcom/twitter/android/dm/aq;)Lcom/twitter/android/dm/al;

    move-result-object v6

    new-instance v7, Lcom/twitter/android/dm/a;

    invoke-direct {v7, v0}, Lcom/twitter/android/dm/a;-><init>(Landroid/view/View;)V

    .line 190
    invoke-virtual {v6, v7}, Lcom/twitter/android/dm/al;->d(Lcom/twitter/android/dm/aq;)Lcom/twitter/android/dm/al;

    move-result-object v6

    new-instance v7, Lcom/twitter/android/dm/ab;

    invoke-direct {v7, v0}, Lcom/twitter/android/dm/ab;-><init>(Landroid/view/View;)V

    .line 191
    invoke-virtual {v6, v7}, Lcom/twitter/android/dm/al;->b(Lcom/twitter/android/dm/aq;)Lcom/twitter/android/dm/al;

    move-result-object v6

    .line 192
    invoke-virtual {v6, v1}, Lcom/twitter/android/dm/al;->c(Lcom/twitter/android/dm/aq;)Lcom/twitter/android/dm/al;

    move-result-object v1

    .line 193
    invoke-virtual {v1}, Lcom/twitter/android/dm/al;->q()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/dm/aj;

    iput-object v1, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->u:Lcom/twitter/android/dm/aj;

    .line 195
    invoke-direct {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->C()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    invoke-static {v0}, Lcom/twitter/android/dm/ai;->a(Landroid/view/View;)V

    .line 199
    :cond_0
    new-instance v0, Lcom/twitter/android/dm/ao;

    invoke-direct {v0}, Lcom/twitter/android/dm/ao;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->k:Lcom/twitter/android/dm/ao;

    .line 200
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->v:Lcom/twitter/model/core/ay;

    invoke-direct {p0, p0, v0, v3, v2}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->a(Lcom/twitter/android/dm/widget/f;Lcom/twitter/model/core/ay;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-direct {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->B()V

    .line 202
    invoke-virtual {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->z()V

    .line 204
    if-eqz v5, :cond_1

    .line 205
    iget-object v1, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->k:Lcom/twitter/android/dm/ao;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/twitter/library/provider/h;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/library/provider/h;

    invoke-virtual {v1, v0}, Lcom/twitter/android/dm/ao;->a([Lcom/twitter/library/provider/h;)V

    .line 208
    :cond_1
    invoke-direct {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->I()Z

    move-result v0

    if-nez v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/dm/ae;

    invoke-direct {v1, p0}, Lcom/twitter/android/dm/ae;-><init>(Lcom/twitter/android/dm/ShareViaDMComposeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->m:Lcom/twitter/library/view/QuoteView;

    iget-object v1, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->v:Lcom/twitter/model/core/ay;

    invoke-virtual {v0, v1}, Lcom/twitter/library/view/QuoteView;->setQuoteData(Lcom/twitter/model/core/ay;)V

    .line 222
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->e:Lcom/twitter/android/autocomplete/ListViewSuggestionEditText;

    new-instance v1, Lcom/twitter/android/dm/af;

    invoke-direct {v1, p0}, Lcom/twitter/android/dm/af;-><init>(Lcom/twitter/android/dm/ShareViaDMComposeFragment;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/autocomplete/ListViewSuggestionEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 240
    invoke-static {v4}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 241
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/twitter/model/core/TwitterUser;

    .line 242
    const-string/jumbo v1, ""

    invoke-virtual {v4}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v2

    const/4 v5, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->a(Ljava/lang/String;JLjava/lang/Object;I)Z

    goto :goto_2

    .line 176
    :cond_3
    const-string/jumbo v0, "suggestions"

    .line 177
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    sget-object v2, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->j:Lcom/twitter/util/serialization/ah;

    .line 176
    invoke-static {v0, v2}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v0

    .line 181
    goto/16 :goto_0

    .line 185
    :cond_4
    sget-object v1, Lcom/twitter/android/dm/aq;->a:Lcom/twitter/android/dm/aq;

    goto/16 :goto_1

    .line 244
    :cond_5
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->e:Lcom/twitter/android/autocomplete/ListViewSuggestionEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/autocomplete/ListViewSuggestionEditText;->setEnabled(Z)V

    .line 247
    :cond_6
    invoke-direct {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->G()V

    .line 248
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 102
    invoke-virtual {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbnx;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->p:Z

    .line 104
    new-instance v0, Lcom/twitter/android/dm/v;

    invoke-virtual {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/twitter/android/dm/v;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->y:Lcom/twitter/android/dm/v;

    .line 105
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->y:Lcom/twitter/android/dm/v;

    invoke-virtual {v0}, Lcom/twitter/android/dm/v;->i()Lcom/twitter/model/core/ay;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->v:Lcom/twitter/model/core/ay;

    .line 106
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->y:Lcom/twitter/android/dm/v;

    invoke-virtual {v0}, Lcom/twitter/android/dm/v;->k()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->w:Z

    .line 107
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->v:Lcom/twitter/model/core/ay;

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->a:Z

    .line 108
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->y:Lcom/twitter/android/dm/v;

    invoke-virtual {v0}, Lcom/twitter/android/dm/v;->m()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->x:I

    .line 110
    invoke-super {p0, p1}, Lcom/twitter/android/DMComposeFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    return-void

    :cond_0
    move v0, v2

    .line 102
    goto :goto_0

    :cond_1
    move v1, v2

    .line 107
    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 308
    invoke-super {p0, p1}, Lcom/twitter/android/DMComposeFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 309
    const-string/jumbo v0, "suggestions"

    iget-object v1, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->k:Lcom/twitter/android/dm/ao;

    invoke-virtual {v1}, Lcom/twitter/android/dm/ao;->c()[Lcom/twitter/library/provider/h;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/util/collection/r;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->j:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1, v2}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/os/Bundle;

    .line 311
    return-void
.end method

.method protected p()Z
    .locals 1

    .prologue
    .line 475
    const/4 v0, 0x0

    return v0
.end method

.method public s()V
    .locals 0

    .prologue
    .line 371
    return-void
.end method

.method public t()V
    .locals 0

    .prologue
    .line 375
    return-void
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->E()Z

    move-result v0

    return v0
.end method

.method public z()V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->l:Lcom/twitter/android/dm/widget/ShareViaDMMessageComposer;

    iget-object v1, p0, Lcom/twitter/android/dm/ShareViaDMComposeFragment;->k:Lcom/twitter/android/dm/ao;

    invoke-virtual {v1}, Lcom/twitter/android/dm/ao;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/widget/ShareViaDMMessageComposer;->setHasValidRecipients(Z)V

    .line 379
    return-void
.end method
