.class public Lcom/twitter/android/av/watchmode/view/ab;
.super Lcom/twitter/android/client/at;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/av/watchmode/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/client/at",
        "<",
        "Lcom/twitter/library/av/playback/AVDataSource;",
        "Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;",
        ">;",
        "Lcom/twitter/android/av/watchmode/a;"
    }
.end annotation


# instance fields
.field final a:Lrx/ap;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final c:Lcom/twitter/android/av/watchmode/d;

.field private final d:Lcom/twitter/android/av/s;

.field private final e:Lcom/twitter/android/av/watchmode/view/ah;

.field private final f:Landroid/os/Handler;

.field private final g:Lum;

.field private final h:Lcom/twitter/android/av/bt;

.field private final i:Lcom/twitter/android/av/watchmode/g;

.field private final j:Lcom/twitter/android/av/watchmode/view/g;

.field private final k:Lcom/twitter/library/av/b;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Lcom/twitter/android/client/au;Lcom/twitter/android/av/watchmode/d;Lcom/twitter/android/av/watchmode/g;Landroid/os/Handler;Lcom/twitter/android/av/watchmode/view/w;Laux;)V
    .locals 18

    .prologue
    .line 67
    new-instance v8, Lcom/twitter/android/av/s;

    .line 71
    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v8, v3, v4}, Lcom/twitter/android/av/s;-><init>(Landroid/content/Context;Z)V

    new-instance v9, Lcom/twitter/android/av/watchmode/view/aa;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v9, v0, v1, v2}, Lcom/twitter/android/av/watchmode/view/aa;-><init>(Landroid/view/LayoutInflater;Lcom/twitter/android/av/watchmode/d;Lcom/twitter/android/kn;)V

    new-instance v10, Lcom/twitter/android/av/watchmode/view/ah;

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v10, v3}, Lcom/twitter/android/av/watchmode/view/ah;-><init>(Landroid/content/Context;)V

    new-instance v11, Lcom/twitter/android/av/watchmode/view/y;

    .line 74
    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v11, v3}, Lcom/twitter/android/av/watchmode/view/y;-><init>(Landroid/content/Context;)V

    new-instance v13, Lcom/twitter/android/av/bt;

    .line 76
    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v13, v3}, Lcom/twitter/android/av/bt;-><init>(Landroid/content/Context;)V

    new-instance v15, Lcom/twitter/android/av/watchmode/view/h;

    invoke-direct {v15}, Lcom/twitter/android/av/watchmode/view/h;-><init>()V

    new-instance v17, Lcom/twitter/library/av/b;

    .line 80
    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lcom/twitter/library/av/b;-><init>(Landroid/content/Context;)V

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v12, p5

    move-object/from16 v14, p6

    move-object/from16 v16, p7

    .line 67
    invoke-direct/range {v3 .. v17}, Lcom/twitter/android/av/watchmode/view/ab;-><init>(Landroid/view/LayoutInflater;Lcom/twitter/android/client/au;Lcom/twitter/android/av/watchmode/d;Lcom/twitter/android/av/watchmode/g;Lcom/twitter/android/av/s;Lcom/twitter/android/av/watchmode/view/aa;Lcom/twitter/android/av/watchmode/view/ah;Lcom/twitter/android/av/watchmode/view/y;Landroid/os/Handler;Lcom/twitter/android/av/bt;Lcom/twitter/android/av/watchmode/view/w;Lcom/twitter/android/av/watchmode/view/h;Laux;Lcom/twitter/library/av/b;)V

    .line 81
    return-void
.end method

.method constructor <init>(Landroid/view/LayoutInflater;Lcom/twitter/android/client/au;Lcom/twitter/android/av/watchmode/d;Lcom/twitter/android/av/watchmode/g;Lcom/twitter/android/av/s;Lcom/twitter/android/av/watchmode/view/aa;Lcom/twitter/android/av/watchmode/view/ah;Lcom/twitter/android/av/watchmode/view/y;Landroid/os/Handler;Lcom/twitter/android/av/bt;Lcom/twitter/android/av/watchmode/view/w;Lcom/twitter/android/av/watchmode/view/h;Laux;Lcom/twitter/library/av/b;)V
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/client/at;-><init>(Landroid/view/LayoutInflater;Lcom/twitter/android/client/au;)V

    .line 94
    invoke-virtual {p0, p6}, Lcom/twitter/android/av/watchmode/view/ab;->a(Lcom/twitter/android/client/av;)V

    .line 95
    new-instance v1, Lcom/twitter/android/av/watchmode/view/t;

    iget-object v2, p0, Lcom/twitter/android/av/watchmode/view/ab;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v1, v2}, Lcom/twitter/android/av/watchmode/view/t;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p6, v1}, Lcom/twitter/android/av/watchmode/view/aa;->a(Lcom/twitter/android/av/watchmode/view/t;)V

    .line 96
    invoke-virtual {p6, p4}, Lcom/twitter/android/av/watchmode/view/aa;->a(Lcom/twitter/android/av/watchmode/view/p;)V

    .line 97
    iput-object p5, p0, Lcom/twitter/android/av/watchmode/view/ab;->d:Lcom/twitter/android/av/s;

    .line 98
    iget-object v1, p0, Lcom/twitter/android/av/watchmode/view/ab;->d:Lcom/twitter/android/av/s;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/twitter/android/av/s;->a(I)V

    .line 99
    iget-object v1, p0, Lcom/twitter/android/av/watchmode/view/ab;->d:Lcom/twitter/android/av/s;

    invoke-virtual {v1, p0}, Lcom/twitter/android/av/s;->a(Lcom/twitter/android/client/at;)V

    .line 100
    iput-object p7, p0, Lcom/twitter/android/av/watchmode/view/ab;->e:Lcom/twitter/android/av/watchmode/view/ah;

    .line 101
    iput-object p3, p0, Lcom/twitter/android/av/watchmode/view/ab;->c:Lcom/twitter/android/av/watchmode/d;

    .line 102
    iput-object p9, p0, Lcom/twitter/android/av/watchmode/view/ab;->f:Landroid/os/Handler;

    .line 103
    iput-object p10, p0, Lcom/twitter/android/av/watchmode/view/ab;->h:Lcom/twitter/android/av/bt;

    .line 104
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/twitter/android/av/watchmode/view/ab;->k:Lcom/twitter/library/av/b;

    .line 106
    new-instance v1, Lum;

    iget-object v2, p0, Lcom/twitter/android/av/watchmode/view/ab;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v1, v2, p1}, Lum;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/view/LayoutInflater;)V

    iput-object v1, p0, Lcom/twitter/android/av/watchmode/view/ab;->g:Lum;

    .line 107
    iput-object p4, p0, Lcom/twitter/android/av/watchmode/view/ab;->i:Lcom/twitter/android/av/watchmode/g;

    .line 108
    iget-object v1, p0, Lcom/twitter/android/av/watchmode/view/ab;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/twitter/android/av/watchmode/view/ab;->g:Lum;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 109
    iget-object v1, p0, Lcom/twitter/android/av/watchmode/view/ab;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lul;

    invoke-direct {v2}, Lul;-><init>()V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 111
    iget-object v1, p0, Lcom/twitter/android/av/watchmode/view/ab;->c:Lcom/twitter/android/av/watchmode/d;

    invoke-interface {v1}, Lcom/twitter/android/av/watchmode/d;->a()Lrx/o;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/av/watchmode/view/ac;

    invoke-direct {v2, p0}, Lcom/twitter/android/av/watchmode/view/ac;-><init>(Lcom/twitter/android/av/watchmode/view/ab;)V

    invoke-virtual {v1, v2}, Lrx/o;->c(Ldjf;)Lrx/ap;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/av/watchmode/view/ab;->a:Lrx/ap;

    .line 136
    invoke-virtual {p0}, Lcom/twitter/android/av/watchmode/view/ab;->aK_()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f13079e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 137
    new-instance v2, Lcom/twitter/android/av/watchmode/view/ad;

    move-object/from16 v0, p13

    invoke-direct {v2, p0, v0}, Lcom/twitter/android/av/watchmode/view/ad;-><init>(Lcom/twitter/android/av/watchmode/view/ab;Laux;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v1, p0, Lcom/twitter/android/av/watchmode/view/ab;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/twitter/android/av/watchmode/view/ab;->h:Lcom/twitter/android/av/bt;

    invoke-virtual {p12, v1, v2}, Lcom/twitter/android/av/watchmode/view/h;->a(Landroid/support/v7/widget/RecyclerView;Lcom/twitter/android/av/bt;)Lcom/twitter/android/av/watchmode/view/g;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/av/watchmode/view/ab;->j:Lcom/twitter/android/av/watchmode/view/g;

    .line 144
    iget-object v1, p0, Lcom/twitter/android/av/watchmode/view/ab;->j:Lcom/twitter/android/av/watchmode/view/g;

    invoke-virtual {p0, v1}, Lcom/twitter/android/av/watchmode/view/ab;->a(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 145
    iget-object v1, p0, Lcom/twitter/android/av/watchmode/view/ab;->i:Lcom/twitter/android/av/watchmode/g;

    invoke-virtual {p0, v1}, Lcom/twitter/android/av/watchmode/view/ab;->a(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 147
    iget-object v1, p0, Lcom/twitter/android/av/watchmode/view/ab;->e:Lcom/twitter/android/av/watchmode/view/ah;

    invoke-virtual {p0, v1}, Lcom/twitter/android/av/watchmode/view/ab;->a(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 148
    invoke-virtual {p0, p8}, Lcom/twitter/android/av/watchmode/view/ab;->a(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 150
    iget-object v1, p0, Lcom/twitter/android/av/watchmode/view/ab;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    instance-of v1, v1, Lcom/twitter/android/av/watchmode/WatchModeLayoutManager;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/twitter/android/av/watchmode/view/ab;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/av/watchmode/WatchModeLayoutManager;

    invoke-virtual {v1, p0}, Lcom/twitter/android/av/watchmode/WatchModeLayoutManager;->a(Lcom/twitter/android/av/watchmode/a;)V

    .line 154
    :cond_0
    invoke-virtual {p0, p11}, Lcom/twitter/android/av/watchmode/view/ab;->a(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 156
    invoke-virtual {p0}, Lcom/twitter/android/av/watchmode/view/ab;->q()Lcom/twitter/app/common/inject/o;

    move-result-object v1

    .line 157
    iget-object v2, p0, Lcom/twitter/android/av/watchmode/view/ab;->i:Lcom/twitter/android/av/watchmode/g;

    invoke-virtual {v1, v2}, Lcom/twitter/app/common/inject/o;->a(Ljava/lang/Object;)Lcom/twitter/app/common/inject/o;

    .line 158
    invoke-virtual {v1, p8}, Lcom/twitter/app/common/inject/o;->a(Ljava/lang/Object;)Lcom/twitter/app/common/inject/o;

    .line 159
    iget-object v2, p0, Lcom/twitter/android/av/watchmode/view/ab;->e:Lcom/twitter/android/av/watchmode/view/ah;

    invoke-virtual {v1, v2}, Lcom/twitter/app/common/inject/o;->a(Ljava/lang/Object;)Lcom/twitter/app/common/inject/o;

    .line 160
    iget-object v2, p0, Lcom/twitter/android/av/watchmode/view/ab;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/app/common/inject/o;->a(Ljava/lang/Object;)Lcom/twitter/app/common/inject/o;

    .line 161
    invoke-virtual {v1, p11}, Lcom/twitter/app/common/inject/o;->a(Ljava/lang/Object;)Lcom/twitter/app/common/inject/o;

    .line 162
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/av/watchmode/view/ab;)Lcom/twitter/library/av/b;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/ab;->k:Lcom/twitter/library/av/b;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/av/watchmode/view/ab;)Lum;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/ab;->g:Lum;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/av/watchmode/view/ab;)Lcom/twitter/android/av/s;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/ab;->d:Lcom/twitter/android/av/s;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/android/av/watchmode/view/ab;)Lcom/twitter/android/av/watchmode/view/ah;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/ab;->e:Lcom/twitter/android/av/watchmode/view/ah;

    return-object v0
.end method

.method static synthetic e(Lcom/twitter/android/av/watchmode/view/ab;)Lcom/twitter/android/av/watchmode/g;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/ab;->i:Lcom/twitter/android/av/watchmode/g;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 211
    invoke-super {p0, p1}, Lcom/twitter/android/client/at;->a(Landroid/content/res/Configuration;)V

    .line 217
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/ab;->h:Lcom/twitter/android/av/bt;

    invoke-virtual {v0}, Lcom/twitter/android/av/bt;->a()V

    .line 223
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/ab;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/av/watchmode/view/af;

    invoke-direct {v1, p0}, Lcom/twitter/android/av/watchmode/view/af;-><init>(Lcom/twitter/android/av/watchmode/view/ab;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 230
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/ab;->h:Lcom/twitter/android/av/bt;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/av/bt;->a(J)V

    goto :goto_0
.end method

.method public aL_()V
    .locals 2

    .prologue
    .line 166
    invoke-super {p0}, Lcom/twitter/android/client/at;->aL_()V

    .line 171
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/ab;->f:Landroid/os/Handler;

    new-instance v1, Lcom/twitter/android/av/watchmode/view/ae;

    invoke-direct {v1, p0}, Lcom/twitter/android/av/watchmode/view/ae;-><init>(Lcom/twitter/android/av/watchmode/view/ab;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 178
    return-void
.end method

.method public aM_()V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Lcom/twitter/android/client/at;->aM_()V

    .line 183
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/ab;->d:Lcom/twitter/android/av/s;

    invoke-virtual {v0}, Lcom/twitter/android/av/s;->c()V

    .line 184
    return-void
.end method

.method public as_()V
    .locals 2

    .prologue
    .line 188
    invoke-super {p0}, Lcom/twitter/android/client/at;->as_()V

    .line 189
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/ab;->a:Lrx/ap;

    invoke-interface {v0}, Lrx/ap;->R_()V

    .line 190
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/ab;->k:Lcom/twitter/library/av/b;

    invoke-virtual {v0}, Lcom/twitter/library/av/b;->a()V

    .line 191
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/ab;->d:Lcom/twitter/android/av/s;

    invoke-virtual {v0}, Lcom/twitter/android/av/s;->e()V

    .line 193
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/ab;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Lcom/twitter/android/av/watchmode/WatchModeLayoutManager;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/ab;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/av/watchmode/WatchModeLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/watchmode/WatchModeLayoutManager;->a(Lcom/twitter/android/av/watchmode/a;)V

    .line 196
    :cond_0
    return-void
.end method

.method public av_()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/ab;->d:Lcom/twitter/android/av/s;

    invoke-virtual {v0}, Lcom/twitter/android/av/s;->b()V

    .line 201
    return-void
.end method
