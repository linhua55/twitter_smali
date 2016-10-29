.class public Lcom/twitter/app/common/list/TwitterListFragment;
.super Lcom/twitter/library/client/AbsFragment;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/list/ag;
.implements Lcom/twitter/app/common/list/d;
.implements Lcom/twitter/app/common/list/h;
.implements Lcyh;
.implements Lcyi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "A:",
        "Lcvt",
        "<TT;>;>",
        "Lcom/twitter/library/client/AbsFragment;",
        "Lcom/twitter/app/common/list/ag;",
        "Lcom/twitter/app/common/list/d;",
        "Lcom/twitter/app/common/list/h",
        "<TT;>;",
        "Lcyh;",
        "Lcyi;"
    }
.end annotation


# instance fields
.field protected U:Z

.field protected V:Z

.field protected W:Z

.field protected X:Lcom/twitter/android/av/s;

.field protected Y:Lcom/twitter/app/common/list/a;

.field protected Z:Lcom/twitter/library/scribe/TwitterScribeItem;

.field private a:Lcom/twitter/app/common/list/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/app/common/list/f",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/twitter/app/common/list/ah;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/twitter/android/client/v;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Landroid/os/Handler;

.field private e:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private final f:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcyj;

.field private h:Lcom/twitter/android/client/c;

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Lcom/twitter/app/common/base/TwitterFragmentActivity;

.field private n:Lcom/twitter/refresh/widget/j;

.field private o:Lcom/twitter/library/av/b;

.field private p:Lcom/twitter/android/revenue/ak;

.field private q:Lavm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lavm",
            "<",
            "Lcmf",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final r:Lavg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lavg",
            "<",
            "Lcmf",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/twitter/library/client/AbsFragment;-><init>()V

    .line 92
    sget-object v0, Lcom/twitter/app/common/list/a;->a:Lcom/twitter/app/common/list/a;

    iput-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->Y:Lcom/twitter/app/common/list/a;

    .line 99
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->b:Ljava/util/Set;

    .line 100
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->c:Ljava/util/Set;

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->d:Landroid/os/Handler;

    .line 105
    new-instance v0, Lcom/twitter/app/common/list/o;

    invoke-direct {v0, p0}, Lcom/twitter/app/common/list/o;-><init>(Lcom/twitter/app/common/list/TwitterListFragment;)V

    iput-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->f:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 147
    sget-object v0, Lcyj;->a:Lcyj;

    iput-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->g:Lcyj;

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->l:Z

    .line 162
    new-instance v0, Lcom/twitter/app/common/list/p;

    invoke-direct {v0, p0}, Lcom/twitter/app/common/list/p;-><init>(Lcom/twitter/app/common/list/TwitterListFragment;)V

    iput-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->r:Lavg;

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->s:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic a(Lcom/twitter/app/common/list/TwitterListFragment;)Lcom/twitter/app/common/list/f;
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->n()Lcom/twitter/app/common/list/f;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1104
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    move-object v0, v1

    .line 1127
    :goto_0
    return-object v0

    .line 1106
    :pswitch_1
    const-string/jumbo v0, "get_newer"

    .line 1127
    :goto_1
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const/4 v3, 0x3

    aput-object v1, v2, v3

    const/4 v1, 0x4

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1110
    :pswitch_2
    const-string/jumbo v0, "get_older"

    goto :goto_1

    .line 1115
    :pswitch_3
    const-string/jumbo v0, "get_initial"

    goto :goto_1

    .line 1119
    :pswitch_4
    const-string/jumbo v0, "get_middle"

    goto :goto_1

    .line 1104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 595
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->o:Lcom/twitter/library/av/b;

    if-nez v0, :cond_1

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aQ()Landroid/database/Cursor;

    move-result-object v0

    .line 601
    if-eqz v0, :cond_0

    .line 602
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 604
    iget-object v2, p0, Lcom/twitter/app/common/list/TwitterListFragment;->o:Lcom/twitter/library/av/b;

    new-instance v3, Lcom/twitter/library/av/ad;

    invoke-direct {v3, v0}, Lcom/twitter/library/av/ad;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v2, v3, v1}, Lcom/twitter/library/av/b;->a(Lcom/twitter/library/av/ac;I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/app/common/list/TwitterListFragment;I)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/twitter/app/common/list/TwitterListFragment;)Z
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->bd()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/twitter/app/common/list/TwitterListFragment;I)Z
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->l(I)Z

    move-result v0

    return v0
.end method

.method private c(I)V
    .locals 2

    .prologue
    .line 1082
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1083
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    .line 1084
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1085
    invoke-virtual {v0}, Lcom/twitter/app/common/list/aa;->o()V

    .line 1090
    :cond_0
    :goto_0
    return-void

    .line 1086
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1087
    invoke-virtual {v0}, Lcom/twitter/app/common/list/aa;->n()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/twitter/app/common/list/TwitterListFragment;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->l:Z

    return v0
.end method

.method static synthetic d(Lcom/twitter/app/common/list/TwitterListFragment;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method private n()Lcom/twitter/app/common/list/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/app/common/list/f",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 492
    iget-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->a:Lcom/twitter/app/common/list/f;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/f;

    return-object v0
.end method

.method private o()V
    .locals 2

    .prologue
    .line 1196
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1197
    iget-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->d:Landroid/os/Handler;

    new-instance v1, Lcom/twitter/app/common/list/u;

    invoke-direct {v1, p0}, Lcom/twitter/app/common/list/u;-><init>(Lcom/twitter/app/common/list/TwitterListFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1206
    :cond_0
    return-void
.end method


# virtual methods
.method protected A()Z
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method protected B()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 855
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/twitter/app/common/list/aa;->a(II)V

    .line 856
    return-void
.end method

.method protected D()Z
    .locals 1

    .prologue
    .line 672
    const/4 v0, 0x0

    return v0
.end method

.method protected E()Z
    .locals 1

    .prologue
    .line 682
    const/4 v0, 0x0

    return v0
.end method

.method protected I()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public J()V
    .locals 0

    .prologue
    .line 505
    return-void
.end method

.method public K()V
    .locals 0

    .prologue
    .line 510
    return-void
.end method

.method public L()V
    .locals 0

    .prologue
    .line 515
    return-void
.end method

.method public N()V
    .locals 0

    .prologue
    .line 829
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->g()V

    .line 830
    return-void
.end method

.method protected Q_()V
    .locals 3

    .prologue
    .line 870
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 871
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget v1, p0, Lcom/twitter/app/common/list/TwitterListFragment;->i:I

    iget v2, p0, Lcom/twitter/app/common/list/TwitterListFragment;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/twitter/app/common/list/aa;->a(II)V

    .line 873
    :cond_0
    return-void
.end method

.method protected Z()Lcom/twitter/refresh/widget/a;
    .locals 5

    .prologue
    .line 408
    new-instance v0, Lcom/twitter/refresh/widget/a;

    const/4 v1, -0x1

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/refresh/widget/a;-><init>(IJI)V

    return-object v0
.end method

.method protected a(J)I
    .locals 7

    .prologue
    const/4 v1, -0x1

    .line 833
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, p1, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aC()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    .line 845
    :cond_1
    :goto_0
    return v0

    .line 837
    :cond_2
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 838
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    .line 840
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_3

    .line 841
    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-eqz v4, :cond_1

    .line 840
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 845
    goto :goto_0
.end method

.method protected a(Lcom/twitter/android/client/v;)Lcom/twitter/app/common/list/TwitterListFragment;
    .locals 2

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->c:Ljava/util/Set;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1027
    return-object p0
.end method

.method public final a(Lcom/twitter/app/common/list/ah;)Lcom/twitter/app/common/list/TwitterListFragment;
    .locals 1

    .prologue
    .line 895
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/app/common/list/aa;->a(Lcom/twitter/app/common/list/ah;)V

    .line 900
    :goto_0
    return-object p0

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lcom/twitter/refresh/widget/j;)Lcom/twitter/app/common/list/TwitterListFragment;
    .locals 1

    .prologue
    .line 819
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/app/common/list/aa;->a(Lcom/twitter/refresh/widget/j;)V

    .line 824
    :goto_0
    return-object p0

    .line 822
    :cond_0
    iput-object p1, p0, Lcom/twitter/app/common/list/TwitterListFragment;->n:Lcom/twitter/refresh/widget/j;

    goto :goto_0
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 264
    invoke-super {p0}, Lcom/twitter/library/client/AbsFragment;->a()V

    .line 268
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->be()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/ba;

    .line 269
    iget v0, v0, Lcom/twitter/library/client/ba;->c:I

    invoke-direct {p0, v0}, Lcom/twitter/app/common/list/TwitterListFragment;->c(I)V

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->Q_()V

    .line 273
    iget-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->Y:Lcom/twitter/app/common/list/a;

    invoke-virtual {v0}, Lcom/twitter/app/common/list/a;->a()Z

    .line 274
    iget-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->X:Lcom/twitter/android/av/s;

    invoke-virtual {v0}, Lcom/twitter/android/av/s;->d()V

    .line 276
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aD()Z

    move-result v0

    if-nez v0, :cond_1

    .line 278
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->c()V

    .line 280
    :cond_1
    invoke-direct {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->n()Lcom/twitter/app/common/list/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/list/f;->d()V

    .line 281
    return-void
.end method

.method protected a(JJ)V
    .locals 0

    .prologue
    .line 927
    return-void
.end method

.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .prologue
    .line 438
    return-void
.end method

.method protected a(Lcmf;)V
    .locals 6
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aO()Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    :goto_0
    return-void

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    .line 337
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/app/common/list/aa;->w()Lcom/twitter/refresh/widget/a;

    move-result-object v1

    .line 338
    invoke-virtual {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->b(Lcmf;)V

    .line 339
    invoke-virtual {p0, v1}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcom/twitter/refresh/widget/a;)V

    .line 342
    iget-boolean v2, p0, Lcom/twitter/app/common/list/TwitterListFragment;->W:Z

    if-eqz v2, :cond_1

    .line 344
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->Z()Lcom/twitter/refresh/widget/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcom/twitter/refresh/widget/a;Z)V

    .line 345
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/twitter/app/common/list/TwitterListFragment;->W:Z

    .line 357
    :goto_1
    invoke-static {v0}, Lcom/twitter/util/ui/a;->a(Landroid/widget/ListView;)V

    goto :goto_0

    .line 346
    :cond_1
    iget-wide v2, v1, Lcom/twitter/refresh/widget/a;->c:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 348
    iget-wide v2, v1, Lcom/twitter/refresh/widget/a;->c:J

    invoke-virtual {p0, v2, v3}, Lcom/twitter/app/common/list/TwitterListFragment;->a(J)I

    move-result v2

    .line 349
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 350
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->B()V

    goto :goto_1

    .line 352
    :cond_2
    iget v1, v1, Lcom/twitter/refresh/widget/a;->d:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_1

    .line 355
    :cond_3
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->Q_()V

    goto :goto_1
.end method

.method public a(Lcmf;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 524
    invoke-virtual {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcmf;)V

    .line 525
    return-void
.end method

.method protected a(Lcom/twitter/app/common/inject/v;)V
    .locals 7

    .prologue
    .line 697
    invoke-super {p0, p1}, Lcom/twitter/library/client/AbsFragment;->a(Lcom/twitter/app/common/inject/v;)V

    .line 698
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/twitter/app/common/list/aa;

    .line 700
    iget-object v0, v6, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 701
    iget-object v0, v6, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/twitter/app/common/list/q;

    invoke-direct {v1, p0}, Lcom/twitter/app/common/list/q;-><init>(Lcom/twitter/app/common/list/TwitterListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 708
    :cond_0
    invoke-virtual {v6, p0}, Lcom/twitter/app/common/list/aa;->a(Lcom/twitter/app/common/list/ag;)V

    .line 709
    iget-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->n:Lcom/twitter/refresh/widget/j;

    invoke-virtual {v6, v0}, Lcom/twitter/app/common/list/aa;->a(Lcom/twitter/refresh/widget/j;)V

    .line 712
    new-instance v0, Lcom/twitter/android/av/s;

    iget-object v1, p0, Lcom/twitter/app/common/list/TwitterListFragment;->a_:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/twitter/android/av/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->X:Lcom/twitter/android/av/s;

    .line 713
    iget-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->X:Lcom/twitter/android/av/s;

    invoke-virtual {v0, v6}, Lcom/twitter/android/av/s;->a(Lcom/twitter/app/common/list/aa;)V

    .line 715
    iget-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/ah;

    .line 716
    invoke-virtual {v6, v0}, Lcom/twitter/app/common/list/aa;->a(Lcom/twitter/app/common/list/ah;)V

    goto :goto_0

    .line 718
    :cond_1
    iget-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 719
    new-instance v0, Lcom/twitter/app/common/list/r;

    invoke-direct {v0, p0}, Lcom/twitter/app/common/list/r;-><init>(Lcom/twitter/app/common/list/TwitterListFragment;)V

    invoke-virtual {v6, v0}, Lcom/twitter/app/common/list/aa;->a(Lcom/twitter/app/common/list/ah;)V

    .line 728
    new-instance v0, Lcom/twitter/app/common/list/s;

    invoke-direct {v0, p0, v6}, Lcom/twitter/app/common/list/s;-><init>(Lcom/twitter/app/common/list/TwitterListFragment;Lcom/twitter/app/common/list/aa;)V

    invoke-virtual {v6, v0}, Lcom/twitter/app/common/list/aa;->a(Lcom/twitter/app/common/list/ai;)V

    .line 736
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->E()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 737
    iget-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->a_:Landroid/content/Context;

    .line 739
    invoke-static {}, Lcom/twitter/android/revenue/z;->b()F

    move-result v1

    .line 740
    invoke-static {}, Lcom/twitter/android/revenue/z;->c()D

    move-result-wide v2

    .line 741
    invoke-static {}, Lcom/twitter/android/revenue/z;->d()Z

    move-result v4

    .line 742
    invoke-static {}, Lcom/twitter/android/revenue/z;->e()Z

    move-result v5

    .line 738
    invoke-static/range {v0 .. v5}, Lcom/twitter/android/revenue/ak;->a(Landroid/content/Context;FDZZ)Lcom/twitter/android/revenue/ak;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->p:Lcom/twitter/android/revenue/ak;

    .line 743
    iget-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->p:Lcom/twitter/android/revenue/ak;

    invoke-virtual {v6, v0}, Lcom/twitter/app/common/list/aa;->a(Lcom/twitter/app/common/list/af;)V

    .line 745
    :cond_2
    return-void
.end method

.method protected a(Lcom/twitter/app/common/list/aj;)V
    .locals 3

    .prologue
    .line 748
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->p()Lcom/twitter/app/common/list/w;

    move-result-object v1

    .line 749
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/app/common/list/aj;->a(Ljava/lang/String;)Lcom/twitter/app/common/list/aj;

    move-result-object v0

    .line 750
    invoke-virtual {v1}, Lcom/twitter/app/common/list/w;->u()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/twitter/app/common/list/aj;->a(I)Lcom/twitter/app/common/list/aj;

    move-result-object v0

    .line 751
    invoke-virtual {v1}, Lcom/twitter/app/common/list/w;->v()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/twitter/app/common/list/aj;->b(I)Lcom/twitter/app/common/list/aj;

    move-result-object v0

    const v2, 0x7f040174

    .line 752
    invoke-virtual {v0, v2}, Lcom/twitter/app/common/list/aj;->c(I)Lcom/twitter/app/common/list/aj;

    move-result-object v0

    const v2, 0x7f040306

    .line 753
    invoke-virtual {v0, v2}, Lcom/twitter/app/common/list/aj;->d(I)Lcom/twitter/app/common/list/aj;

    move-result-object v0

    .line 754
    invoke-virtual {v1}, Lcom/twitter/app/common/list/w;->w()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/twitter/app/common/list/aj;->e(I)Lcom/twitter/app/common/list/aj;

    move-result-object v2

    .line 755
    invoke-virtual {p1}, Lcom/twitter/app/common/list/aj;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0400e7

    :goto_0
    invoke-virtual {v2, v0}, Lcom/twitter/app/common/list/aj;->f(I)Lcom/twitter/app/common/list/aj;

    move-result-object v0

    .line 757
    invoke-virtual {v1}, Lcom/twitter/app/common/list/w;->z()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/twitter/app/common/list/aj;->a(Z)Lcom/twitter/app/common/list/aj;

    move-result-object v0

    .line 758
    invoke-virtual {v1}, Lcom/twitter/app/common/list/w;->t()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/twitter/app/common/list/aj;->g(I)Lcom/twitter/app/common/list/aj;

    move-result-object v0

    .line 759
    invoke-virtual {v1}, Lcom/twitter/app/common/list/w;->x()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/twitter/app/common/list/aj;->h(I)Lcom/twitter/app/common/list/aj;

    move-result-object v0

    .line 760
    invoke-virtual {v1}, Lcom/twitter/app/common/list/w;->y()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/twitter/app/common/list/aj;->i(I)Lcom/twitter/app/common/list/aj;

    move-result-object v0

    .line 761
    invoke-virtual {v1}, Lcom/twitter/app/common/list/w;->s()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/aj;->b(Z)Lcom/twitter/app/common/list/aj;

    .line 762
    return-void

    .line 755
    :cond_0
    const v0, 0x7f0400e5

    goto :goto_0
.end method

.method protected final a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 0

    .prologue
    .line 946
    iput-object p1, p0, Lcom/twitter/app/common/list/TwitterListFragment;->e:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 947
    return-void
.end method

.method protected a(Lcom/twitter/library/service/x;II)V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1061
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/library/client/AbsFragment;->a(Lcom/twitter/library/service/x;II)V

    .line 1062
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aC()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1064
    if-ne p3, v1, :cond_3

    .line 1065
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/list/aa;->t()V

    .line 1070
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->n()Lcom/twitter/app/common/list/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/list/f;->a()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 1071
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aD()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    .line 1072
    invoke-direct {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->o()V

    .line 1076
    :cond_1
    const/4 v0, 0x4

    if-ne p3, v0, :cond_2

    .line 1077
    invoke-direct {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->n()Lcom/twitter/app/common/list/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/app/common/list/f;->b(Lcom/twitter/library/service/x;)V

    .line 1079
    :cond_2
    return-void

    .line 1066
    :cond_3
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 1067
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->bb()V

    goto :goto_0
.end method

.method protected a(Lcom/twitter/refresh/widget/a;)V
    .locals 3

    .prologue
    .line 1169
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aC()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/app/common/list/TwitterListFragment;->l(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1170
    iget-wide v0, p1, Lcom/twitter/refresh/widget/a;->c:J

    invoke-virtual {p0, v0, v1}, Lcom/twitter/app/common/list/TwitterListFragment;->a(J)I

    move-result v0

    .line 1171
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v1

    iget v2, p1, Lcom/twitter/refresh/widget/a;->b:I

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/app/common/list/aa;->a(Z)Z

    .line 1173
    :cond_0
    return-void

    .line 1171
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/twitter/refresh/widget/a;Z)V
    .locals 0

    .prologue
    .line 867
    return-void
.end method

.method protected a(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/av/ae;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 617
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->o:Lcom/twitter/library/av/b;

    if-nez v0, :cond_1

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    new-instance v0, Lcom/twitter/library/av/af;

    invoke-direct {v0, p1}, Lcom/twitter/library/av/af;-><init>(Ljava/util/List;)V

    .line 622
    iget-object v1, p0, Lcom/twitter/app/common/list/TwitterListFragment;->o:Lcom/twitter/library/av/b;

    invoke-virtual {v1, v0, p2}, Lcom/twitter/library/av/b;->a(Lcom/twitter/library/av/ac;I)V

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 376
    if-eqz p1, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->r()V

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->q:Lavm;

    if-eqz v0, :cond_3

    .line 380
    iget-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->q:Lavm;

    instance-of v0, v0, Lavn;

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->q:Lavm;

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavn;

    invoke-interface {v0}, Lavn;->a()V

    .line 383
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->bc()V

    .line 387
    :cond_2
    :goto_0
    return-void

    .line 384
    :cond_3
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 385
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/twitter/app/common/list/TwitterListFragment;->f:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_0
.end method

.method public a(Lcyd;)Z
    .locals 1

    .prologue
    .line 1006
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcyg;)Z
    .locals 1

    .prologue
    .line 987
    const/4 v0, 0x0

    return v0
.end method

.method public aC()Z
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->ay()Z

    move-result v0

    return v0
.end method

.method public aD()Z
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aP()Lcvt;

    move-result-object v0

    invoke-virtual {v0}, Lcvt;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aE()Lcom/twitter/app/common/list/aa;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/app/common/list/aa",
            "<TT;TA;>;"
        }
    .end annotation

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->az()Lcom/twitter/app/common/inject/v;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/aa;

    return-object v0
.end method

.method public aF()I
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aC()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/list/aa;->k()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aG()Z
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aC()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-boolean v0, v0, Lcom/twitter/app/common/list/aa;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final aH()V
    .locals 2

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->n()Lcom/twitter/app/common/list/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/f;->a(I)V

    .line 249
    return-void
.end method

.method protected aI()Z
    .locals 1

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->u_()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected aJ()V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->r()V

    .line 363
    return-void
.end method

.method protected aK()V
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Z)V

    .line 370
    return-void
.end method

.method protected aL()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 399
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->t_()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    .line 401
    instance-of v2, v0, Lcom/twitter/android/bt;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/twitter/android/bt;

    invoke-virtual {v0}, Lcom/twitter/android/bt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 403
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 401
    goto :goto_0

    :cond_1
    move v0, v1

    .line 403
    goto :goto_0
.end method

.method public final aM()Z
    .locals 1

    .prologue
    .line 539
    iget-boolean v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->k:Z

    return v0
.end method

.method protected aN()V
    .locals 3

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v1, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    .line 582
    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 583
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 584
    :goto_0
    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 583
    invoke-direct {p0, v0}, Lcom/twitter/app/common/list/TwitterListFragment;->a(I)V

    .line 586
    :cond_0
    return-void

    .line 584
    :cond_1
    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    goto :goto_0
.end method

.method protected final aO()Z
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->s:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->s:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 632
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aC()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/list/aa;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final aP()Lcvt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/list/aa;->g()Lcvt;

    move-result-object v0

    return-object v0
.end method

.method protected aQ()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 652
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aP()Lcvt;

    move-result-object v0

    .line 653
    instance-of v1, v0, Lcmw;

    if-eqz v1, :cond_0

    .line 654
    invoke-virtual {v0}, Lcvt;->i()Lcmf;

    move-result-object v0

    check-cast v0, Lcmd;

    invoke-interface {v0}, Lcmd;->a()Landroid/database/Cursor;

    move-result-object v0

    .line 662
    :goto_0
    return-object v0

    .line 656
    :cond_0
    invoke-virtual {v0}, Lcvt;->i()Lcmf;

    move-result-object v0

    .line 657
    instance-of v1, v0, Lcmb;

    if-eqz v1, :cond_2

    .line 658
    invoke-virtual {v0}, Lcmf;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lbap;->a()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_1
    check-cast v0, Lcmb;

    invoke-virtual {v0}, Lcmb;->a()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 662
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected aR()V
    .locals 2

    .prologue
    .line 883
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 884
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    .line 885
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 886
    if-eqz v1, :cond_0

    .line 887
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lcom/twitter/app/common/list/TwitterListFragment;->j:I

    .line 888
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->i:I

    .line 891
    :cond_0
    return-void
.end method

.method public final aS()Z
    .locals 1

    .prologue
    .line 933
    iget-boolean v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->l:Z

    return v0
.end method

.method protected aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->e:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    return-object v0
.end method

.method protected aU()Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->Z:Lcom/twitter/library/scribe/TwitterScribeItem;

    return-object v0
.end method

.method public aV()Lcyj;
    .locals 1

    .prologue
    .line 982
    iget-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->g:Lcyj;

    return-object v0
.end method

.method public aW()I
    .locals 1

    .prologue
    .line 1010
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aP()Lcvt;

    move-result-object v0

    invoke-virtual {v0}, Lcvt;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected aX()Layj;
    .locals 1

    .prologue
    .line 1014
    invoke-static {}, Layj;->b()Layj;

    move-result-object v0

    return-object v0
.end method

.method protected final aY()Lcom/twitter/android/client/c;
    .locals 1

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->h:Lcom/twitter/android/client/c;

    return-object v0
.end method

.method public aZ()Lcom/twitter/app/common/base/TwitterFragmentActivity;
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->m:Lcom/twitter/app/common/base/TwitterFragmentActivity;

    return-object v0
.end method

.method protected a_(I)Z
    .locals 1

    .prologue
    .line 814
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->l(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected aa()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 876
    iput v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->i:I

    .line 877
    iput v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->j:I

    .line 878
    return-void
.end method

.method protected af()Lcom/twitter/app/common/list/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/app/common/list/f",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 487
    new-instance v0, Lcom/twitter/app/common/list/f;

    invoke-direct {v0, p0}, Lcom/twitter/app/common/list/f;-><init>(Lcom/twitter/app/common/list/h;)V

    return-object v0
.end method

.method protected ag_()V
    .locals 0

    .prologue
    .line 393
    return-void
.end method

.method public as()V
    .locals 1

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->I()V

    .line 222
    invoke-direct {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->n()Lcom/twitter/app/common/list/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/list/f;->c()V

    .line 224
    :cond_0
    return-void
.end method

.method public at()V
    .locals 0

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->A()Z

    .line 229
    return-void
.end method

.method public b(Lcyg;)I
    .locals 1

    .prologue
    .line 993
    const/4 v0, 0x2

    return v0
.end method

.method public b(Lcmf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aD()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcmf;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    invoke-direct {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->o()V

    .line 426
    :goto_0
    return-void

    .line 424
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/app/common/list/aa;->a(Lcmf;)V

    goto :goto_0
.end method

.method protected b(Lcom/twitter/library/service/x;II)V
    .locals 0

    .prologue
    .line 1053
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/library/client/AbsFragment;->b(Lcom/twitter/library/service/x;II)V

    .line 1055
    invoke-direct {p0, p3}, Lcom/twitter/app/common/list/TwitterListFragment;->c(I)V

    .line 1056
    return-void
.end method

.method public ba()V
    .locals 1

    .prologue
    .line 1158
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1159
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/list/aa;->u()V

    .line 1161
    :cond_0
    return-void
.end method

.method protected bb()V
    .locals 2

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->d:Landroid/os/Handler;

    new-instance v1, Lcom/twitter/app/common/list/t;

    invoke-direct {v1, p0}, Lcom/twitter/app/common/list/t;-><init>(Lcom/twitter/app/common/list/TwitterListFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1188
    return-void
.end method

.method protected bc()V
    .locals 0

    .prologue
    .line 1221
    return-void
.end method

.method protected c()V
    .locals 4

    .prologue
    .line 319
    iget-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->q:Lavm;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->q:Lavm;

    iget-object v1, p0, Lcom/twitter/app/common/list/TwitterListFragment;->r:Lavg;

    invoke-interface {v0, v1}, Lavm;->a(Lavg;)V

    .line 324
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/app/common/list/TwitterListFragment;->f:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_0
.end method

.method public c(Lcyg;)V
    .locals 0

    .prologue
    .line 998
    return-void
.end method

.method protected d(Lcom/twitter/app/common/inject/t;)Lcom/twitter/app/common/inject/c;
    .locals 4

    .prologue
    .line 688
    new-instance v1, Lcom/twitter/app/common/list/aj;

    invoke-direct {v1}, Lcom/twitter/app/common/list/aj;-><init>()V

    .line 689
    invoke-virtual {p0, v1}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcom/twitter/app/common/list/aj;)V

    .line 690
    invoke-static {}, Lcom/twitter/app/common/list/l;->c()Lcom/twitter/app/common/list/n;

    move-result-object v2

    new-instance v3, Lcom/twitter/app/common/list/ap;

    .line 691
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/base/BaseFragmentActivity;

    invoke-direct {v3, v0, v1}, Lcom/twitter/app/common/list/ap;-><init>(Lcom/twitter/app/common/base/BaseFragmentActivity;Lcom/twitter/app/common/list/aj;)V

    invoke-virtual {v2, v3}, Lcom/twitter/app/common/list/n;->a(Lcom/twitter/app/common/list/ap;)Lcom/twitter/app/common/list/n;

    move-result-object v0

    .line 692
    invoke-virtual {v0}, Lcom/twitter/app/common/list/n;->a()Lcom/twitter/app/common/list/z;

    move-result-object v0

    .line 690
    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1002
    return-void
.end method

.method public final d(Z)V
    .locals 0

    .prologue
    .line 942
    iput-boolean p1, p0, Lcom/twitter/app/common/list/TwitterListFragment;->l:Z

    .line 943
    return-void
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aR()V

    .line 290
    iget-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->X:Lcom/twitter/android/av/s;

    invoke-virtual {v0}, Lcom/twitter/android/av/s;->c()V

    .line 291
    invoke-direct {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->n()Lcom/twitter/app/common/list/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/list/f;->e()V

    .line 292
    invoke-super {p0}, Lcom/twitter/library/client/AbsFragment;->e()V

    .line 293
    return-void
.end method

.method protected e(Z)V
    .locals 2

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1040
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1041
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1042
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/v;

    .line 1043
    if-eqz v0, :cond_0

    .line 1044
    invoke-interface {v0, p1}, Lcom/twitter/android/client/v;->b(Z)V

    goto :goto_0

    .line 1046
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1049
    :cond_1
    return-void
.end method

.method protected f()Lavm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lavm",
            "<",
            "Lcmf",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 1214
    const/4 v0, 0x0

    return-object v0
.end method

.method public final f(J)V
    .locals 5

    .prologue
    .line 909
    iget-wide v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->aa:J

    .line 910
    iput-wide p1, p0, Lcom/twitter/app/common/list/TwitterListFragment;->aa:J

    .line 911
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aC()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 912
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/twitter/app/common/list/aa;->a(Z)Z

    .line 914
    :cond_0
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/twitter/app/common/list/TwitterListFragment;->a(JJ)V

    .line 915
    iget-boolean v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->l:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 916
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aK()V

    .line 918
    :cond_2
    return-void
.end method

.method protected g()V
    .locals 0

    .prologue
    .line 798
    return-void
.end method

.method protected h()V
    .locals 0

    .prologue
    .line 801
    return-void
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1098
    const-string/jumbo v0, "unknown"

    return-object v0
.end method

.method protected j()Z
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public n(I)V
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/app/common/list/aa;->a(I)V

    .line 210
    :cond_0
    return-void
.end method

.method protected o(I)V
    .locals 1

    .prologue
    .line 571
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->V:Z

    if-eqz v0, :cond_0

    .line 572
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aN()V

    .line 574
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 545
    invoke-super {p0, p1}, Lcom/twitter/library/client/AbsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 546
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aZ()Lcom/twitter/app/common/base/TwitterFragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 547
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aZ()Lcom/twitter/app/common/base/TwitterFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->Z()Lcyj;

    move-result-object v0

    .line 548
    invoke-virtual {v0, p0}, Lcyj;->a(Lcyi;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    invoke-virtual {v0, p0}, Lcyj;->a(Lcyh;)V

    .line 551
    :cond_0
    iput-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->g:Lcyj;

    .line 553
    :cond_1
    iget-boolean v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->V:Z

    if-eqz v0, :cond_2

    .line 554
    new-instance v0, Lcom/twitter/library/av/b;

    iget-object v1, p0, Lcom/twitter/app/common/list/TwitterListFragment;->a_:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/twitter/library/av/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->o:Lcom/twitter/library/av/b;

    .line 558
    :cond_2
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->f()Lavm;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->q:Lavm;

    .line 562
    new-instance v0, Lcom/twitter/app/common/list/a;

    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->z()Lcom/twitter/app/common/list/b;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/twitter/app/common/list/a;-><init>(Lcom/twitter/app/common/list/b;Lcom/twitter/app/common/list/d;)V

    iput-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->Y:Lcom/twitter/app/common/list/a;

    .line 563
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 1139
    invoke-super {p0, p1}, Lcom/twitter/library/client/AbsFragment;->onAttach(Landroid/app/Activity;)V

    .line 1141
    instance-of v0, p1, Lcom/twitter/app/common/base/TwitterFragmentActivity;

    if-eqz v0, :cond_0

    .line 1142
    check-cast p1, Lcom/twitter/app/common/base/TwitterFragmentActivity;

    iput-object p1, p0, Lcom/twitter/app/common/list/TwitterListFragment;->m:Lcom/twitter/app/common/base/TwitterFragmentActivity;

    .line 1144
    :cond_0
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->U:Z

    .line 1145
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 448
    invoke-super {p0, p1}, Lcom/twitter/library/client/AbsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 450
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 451
    invoke-static {v0}, Lcom/twitter/android/client/c;->a(Landroid/content/Context;)Lcom/twitter/android/client/c;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->h:Lcom/twitter/android/client/c;

    .line 452
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aZ()Lcom/twitter/app/common/base/TwitterFragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aZ()Lcom/twitter/app/common/base/TwitterFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->ad()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->k:Z

    .line 455
    if-eqz p1, :cond_2

    .line 456
    const-string/jumbo v0, "scroll_pos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->i:I

    .line 457
    const-string/jumbo v0, "scroll_off"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->j:I

    .line 458
    iput-boolean v2, p0, Lcom/twitter/app/common/list/TwitterListFragment;->W:Z

    .line 465
    :goto_1
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->p()Lcom/twitter/app/common/list/w;

    move-result-object v0

    .line 466
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/app/common/list/w;->a(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/app/common/list/TwitterListFragment;->aa:J

    .line 467
    invoke-virtual {v0}, Lcom/twitter/app/common/list/w;->A()Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->Z:Lcom/twitter/library/scribe/TwitterScribeItem;

    .line 470
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->D()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->V:Z

    .line 471
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->af()Lcom/twitter/app/common/list/f;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->a:Lcom/twitter/app/common/list/f;

    .line 472
    return-void

    :cond_1
    move v0, v1

    .line 453
    goto :goto_0

    .line 460
    :cond_2
    iput v1, p0, Lcom/twitter/app/common/list/TwitterListFragment;->i:I

    .line 461
    iput v1, p0, Lcom/twitter/app/common/list/TwitterListFragment;->j:I

    .line 462
    iput-boolean v1, p0, Lcom/twitter/app/common/list/TwitterListFragment;->W:Z

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 766
    iget-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->o:Lcom/twitter/library/av/b;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->o:Lcom/twitter/library/av/b;

    invoke-virtual {v0}, Lcom/twitter/library/av/b;->a()V

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->X:Lcom/twitter/android/av/s;

    if-eqz v0, :cond_1

    .line 771
    iget-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->X:Lcom/twitter/android/av/s;

    invoke-virtual {v0}, Lcom/twitter/android/av/s;->e()V

    .line 774
    :cond_1
    iget-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->p:Lcom/twitter/android/revenue/ak;

    if-eqz v0, :cond_2

    .line 775
    iget-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->p:Lcom/twitter/android/revenue/ak;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/ak;->a()V

    .line 777
    :cond_2
    iget-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->g:Lcyj;

    invoke-virtual {v0, p0}, Lcyj;->b(Lcyi;)V

    .line 778
    iget-object v0, p0, Lcom/twitter/app/common/list/TwitterListFragment;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 779
    invoke-direct {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->n()Lcom/twitter/app/common/list/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/list/f;->f()V

    .line 780
    invoke-super {p0}, Lcom/twitter/library/client/AbsFragment;->onDestroy()V

    .line 781
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 785
    invoke-super {p0, p1}, Lcom/twitter/library/client/AbsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 786
    const-string/jumbo v0, "scroll_pos"

    iget v1, p0, Lcom/twitter/app/common/list/TwitterListFragment;->i:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 787
    const-string/jumbo v0, "scroll_off"

    iget v1, p0, Lcom/twitter/app/common/list/TwitterListFragment;->j:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 788
    return-void
.end method

.method public p()Lcom/twitter/app/common/list/w;
    .locals 1

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/app/common/list/w;->d(Landroid/os/Bundle;)Lcom/twitter/app/common/list/w;

    move-result-object v0

    return-object v0
.end method

.method public synthetic q()Lcom/twitter/app/common/base/f;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->p()Lcom/twitter/app/common/list/w;

    move-result-object v0

    return-object v0
.end method

.method public r()V
    .locals 2

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/aa;->a(Lcmf;)V

    .line 435
    :cond_0
    return-void
.end method

.method public s_()V
    .locals 0

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->r()V

    .line 520
    return-void
.end method

.method protected v_()Landroid/support/v4/content/Loader;
    .locals 1
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
    .line 328
    const/4 v0, 0x0

    return-object v0
.end method

.method protected z()Lcom/twitter/app/common/list/b;
    .locals 1

    .prologue
    .line 479
    new-instance v0, Lcom/twitter/app/common/list/v;

    invoke-direct {v0, p0}, Lcom/twitter/app/common/list/v;-><init>(Lcom/twitter/app/common/list/TwitterListFragment;)V

    return-object v0
.end method
