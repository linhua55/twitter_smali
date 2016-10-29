.class public Lcom/twitter/android/rb;
.super Lcom/twitter/android/gx;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/widget/dl;


# instance fields
.field private A:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private B:Z

.field private final C:Z

.field private D:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final E:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private final F:Lcom/twitter/android/timeline/ay;

.field private final G:Lcom/twitter/android/timeline/cx;

.field private final H:Lcom/twitter/android/timeline/dc;

.field private final I:Lcom/twitter/android/sn;

.field private final J:Lcom/twitter/android/timeline/cr;

.field private final K:Lcom/twitter/android/timeline/at;

.field private final L:Lcom/twitter/android/timeline/cd;

.field private final M:Lcom/twitter/android/revenue/d;

.field private final N:Lcom/twitter/android/revenue/p;

.field private final O:Lcom/twitter/model/timeline/bu;

.field private final P:Lcom/twitter/android/timeline/c;

.field private final Q:Z

.field private final i:I

.field private final j:Lcom/twitter/android/timeline/an;

.field private final k:Lcom/twitter/android/timeline/ct;

.field private final l:Lcom/twitter/android/timeline/ax;

.field private final m:Lcom/twitter/android/ys;

.field private final n:Lcom/twitter/android/si;

.field private final o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Lcom/twitter/android/av/ae;

.field private q:I

.field private r:Lcom/twitter/android/kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/android/kn",
            "<",
            "Landroid/view/View;",
            "Lcss;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Lcom/twitter/android/kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/android/kn",
            "<",
            "Landroid/view/View;",
            "Lcom/twitter/android/timeline/bp;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Lcom/twitter/android/kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/android/kn",
            "<",
            "Landroid/view/View;",
            "Lcom/twitter/android/timeline/bp;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Landroid/view/LayoutInflater;

.field private final v:Lcom/twitter/android/trends/l;

.field private final w:I

.field private final x:I

.field private final y:Lcom/twitter/android/timeline/ae;

.field private z:Lcom/twitter/android/util/au;


# direct methods
.method public constructor <init>(Lcom/twitter/app/common/base/TwitterFragmentActivity;IZLcom/twitter/library/view/aa;Lcom/twitter/android/timeline/ax;Lcom/twitter/android/timeline/an;Lcom/twitter/android/timeline/ct;Lcom/twitter/android/ys;Lcom/twitter/android/si;Lcom/twitter/library/util/FriendshipCache;Lcom/twitter/library/scribe/TwitterScribeAssociation;ZLcom/twitter/android/timeline/cx;Lcom/twitter/android/timeline/dc;Lcom/twitter/android/timeline/ay;Lcom/twitter/android/timeline/ae;Lcom/twitter/android/sn;Lcom/twitter/ui/view/s;Lcom/twitter/android/kn;Lcom/twitter/android/kn;Lcom/twitter/android/revenue/d;Lcom/twitter/android/revenue/p;Lcom/twitter/android/av/ae;Lcom/twitter/model/timeline/bu;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/app/common/base/TwitterFragmentActivity;",
            "IZ",
            "Lcom/twitter/library/view/aa;",
            "Lcom/twitter/android/timeline/ax;",
            "Lcom/twitter/android/timeline/an;",
            "Lcom/twitter/android/timeline/ct;",
            "Lcom/twitter/android/ys;",
            "Lcom/twitter/android/si;",
            "Lcom/twitter/library/util/FriendshipCache;",
            "Lcom/twitter/library/scribe/TwitterScribeAssociation;",
            "Z",
            "Lcom/twitter/android/timeline/cx;",
            "Lcom/twitter/android/timeline/dc;",
            "Lcom/twitter/android/timeline/ay;",
            "Lcom/twitter/android/timeline/ae;",
            "Lcom/twitter/android/sn;",
            "Lcom/twitter/ui/view/s;",
            "Lcom/twitter/android/kn",
            "<",
            "Landroid/view/View;",
            "Lcom/twitter/android/timeline/bp;",
            ">;",
            "Lcom/twitter/android/kn",
            "<",
            "Landroid/view/View;",
            "Lcom/twitter/android/timeline/bp;",
            ">;",
            "Lcom/twitter/android/revenue/d;",
            "Lcom/twitter/android/revenue/p;",
            "Lcom/twitter/android/av/ae;",
            "Lcom/twitter/model/timeline/bu;",
            ")V"
        }
    .end annotation

    .prologue
    .line 248
    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p10

    move v6, p2

    move-object/from16 v7, p11

    move-object/from16 v8, p18

    invoke-direct/range {v1 .. v8}, Lcom/twitter/android/gx;-><init>(Lcom/twitter/app/common/base/TwitterFragmentActivity;ZLcom/twitter/library/view/aa;Lcom/twitter/library/util/FriendshipCache;ILcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/ui/view/s;)V

    .line 189
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/twitter/android/rb;->o:Ljava/util/HashMap;

    .line 250
    iput p2, p0, Lcom/twitter/android/rb;->i:I

    .line 251
    iput-object p5, p0, Lcom/twitter/android/rb;->l:Lcom/twitter/android/timeline/ax;

    .line 252
    iput-object p6, p0, Lcom/twitter/android/rb;->j:Lcom/twitter/android/timeline/an;

    .line 253
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/twitter/android/rb;->k:Lcom/twitter/android/timeline/ct;

    .line 254
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/twitter/android/rb;->m:Lcom/twitter/android/ys;

    .line 255
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/twitter/android/rb;->n:Lcom/twitter/android/si;

    .line 256
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/rb;->u:Landroid/view/LayoutInflater;

    .line 257
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/twitter/android/rb;->x:I

    .line 258
    invoke-direct {p0}, Lcom/twitter/android/rb;->l()V

    .line 259
    new-instance v1, Lcom/twitter/android/trends/l;

    invoke-virtual {p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/twitter/android/trends/l;-><init>(Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/twitter/android/rb;->v:Lcom/twitter/android/trends/l;

    .line 260
    move/from16 v0, p12

    iput-boolean v0, p0, Lcom/twitter/android/rb;->C:Z

    .line 261
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/twitter/android/rb;->F:Lcom/twitter/android/timeline/ay;

    .line 262
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/twitter/android/rb;->G:Lcom/twitter/android/timeline/cx;

    .line 263
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/twitter/android/rb;->H:Lcom/twitter/android/timeline/dc;

    .line 264
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/twitter/android/rb;->y:Lcom/twitter/android/timeline/ae;

    .line 265
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/twitter/android/rb;->E:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 266
    const v1, 0x7f020292

    iput v1, p0, Lcom/twitter/android/rb;->w:I

    .line 267
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/twitter/android/rb;->I:Lcom/twitter/android/sn;

    .line 268
    new-instance v1, Lcom/twitter/android/timeline/cr;

    const v2, 0x7f040248

    iget-object v3, p0, Lcom/twitter/android/rb;->m:Lcom/twitter/android/ys;

    move-object/from16 v0, p10

    invoke-direct {v1, v2, v0, v3}, Lcom/twitter/android/timeline/cr;-><init>(ILcom/twitter/library/util/FriendshipCache;Lcom/twitter/android/ys;)V

    iput-object v1, p0, Lcom/twitter/android/rb;->J:Lcom/twitter/android/timeline/cr;

    .line 270
    new-instance v1, Lcom/twitter/android/timeline/cd;

    iget-object v2, p0, Lcom/twitter/android/rb;->a:Lcom/twitter/app/common/base/TwitterFragmentActivity;

    iget-object v3, p0, Lcom/twitter/android/rb;->d:Lcom/twitter/library/view/aa;

    iget-object v4, p0, Lcom/twitter/android/rb;->I:Lcom/twitter/android/sn;

    .line 271
    invoke-static {}, Lcom/twitter/android/revenue/z;->f()I

    move-result v6

    move-object/from16 v5, p10

    move-object/from16 v7, p18

    invoke-direct/range {v1 .. v7}, Lcom/twitter/android/timeline/cd;-><init>(Lcom/twitter/app/common/base/TwitterFragmentActivity;Lcom/twitter/library/view/aa;Lcom/twitter/android/sn;Lcom/twitter/library/util/FriendshipCache;ILcom/twitter/ui/view/s;)V

    iput-object v1, p0, Lcom/twitter/android/rb;->L:Lcom/twitter/android/timeline/cd;

    .line 273
    iget-object v1, p0, Lcom/twitter/android/rb;->a:Lcom/twitter/app/common/base/TwitterFragmentActivity;

    iget-object v2, p0, Lcom/twitter/android/rb;->E:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v3, p0, Lcom/twitter/android/rb;->c:Lcom/twitter/library/client/bk;

    iget-object v4, p0, Lcom/twitter/android/rb;->F:Lcom/twitter/android/timeline/ay;

    .line 274
    invoke-static {v1, v2, v3, v4}, Lcom/twitter/android/timeline/at;->a(Landroid/app/Activity;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/client/bk;Lcom/twitter/android/timeline/ay;)Lcom/twitter/android/timeline/at;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/rb;->K:Lcom/twitter/android/timeline/at;

    .line 276
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/twitter/android/rb;->s:Lcom/twitter/android/kn;

    .line 277
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/twitter/android/rb;->t:Lcom/twitter/android/kn;

    .line 278
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/twitter/android/rb;->M:Lcom/twitter/android/revenue/d;

    .line 279
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/twitter/android/rb;->N:Lcom/twitter/android/revenue/p;

    .line 280
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/twitter/android/rb;->p:Lcom/twitter/android/av/ae;

    .line 281
    new-instance v1, Lcom/twitter/android/timeline/c;

    invoke-direct {v1}, Lcom/twitter/android/timeline/c;-><init>()V

    iput-object v1, p0, Lcom/twitter/android/rb;->P:Lcom/twitter/android/timeline/c;

    .line 282
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/twitter/android/rb;->O:Lcom/twitter/model/timeline/bu;

    .line 283
    invoke-static {}, Lcbe;->a()Lcbe;

    move-result-object v1

    invoke-virtual {v1}, Lcbe;->b()Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/android/rb;->Q:Z

    .line 284
    return-void
.end method

.method private a(Lcom/twitter/android/timeline/bp;Lcom/twitter/android/timeline/bj;)I
    .locals 3

    .prologue
    const/16 v0, 0x8

    .line 1982
    instance-of v1, p1, Lcom/twitter/android/timeline/cv;

    if-eqz v1, :cond_0

    .line 1983
    check-cast p1, Lcom/twitter/android/timeline/cv;

    .line 1984
    iget-object v1, p1, Lcom/twitter/android/timeline/cv;->c:Lcom/twitter/model/timeline/dh;

    iget v1, v1, Lcom/twitter/model/timeline/dh;->b:I

    packed-switch v1, :pswitch_data_0

    .line 1999
    :cond_0
    :goto_0
    return v0

    .line 1986
    :pswitch_0
    iget-object v1, p0, Lcom/twitter/android/rb;->O:Lcom/twitter/model/timeline/bu;

    iget-boolean v1, v1, Lcom/twitter/model/timeline/bu;->d:Z

    const/16 v2, 0x17

    invoke-static {v1, p2, v0, v2}, Lcom/twitter/android/rb;->a(ZLcom/twitter/android/timeline/bj;II)I

    move-result v0

    goto :goto_0

    .line 1990
    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/rb;->O:Lcom/twitter/model/timeline/bu;

    iget-boolean v0, v0, Lcom/twitter/model/timeline/bu;->e:Z

    const/16 v1, 0x1a

    const/16 v2, 0x18

    invoke-static {v0, p2, v1, v2}, Lcom/twitter/android/rb;->a(ZLcom/twitter/android/timeline/bj;II)I

    move-result v0

    goto :goto_0

    .line 1984
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(ZLcom/twitter/android/timeline/bj;II)I
    .locals 1

    .prologue
    .line 431
    if-eqz p0, :cond_1

    .line 432
    iget-boolean v0, p1, Lcom/twitter/android/timeline/bj;->m:Z

    if-eqz v0, :cond_0

    .line 438
    :goto_0
    return p2

    :cond_0
    move p2, p3

    .line 435
    goto :goto_0

    .line 438
    :cond_1
    const/16 p2, 0x8

    goto :goto_0
.end method

.method private a(Lcom/twitter/model/topic/trends/a;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1551
    if-eqz p1, :cond_1

    .line 1552
    iget-object v0, p1, Lcom/twitter/model/topic/trends/a;->d:Lcom/twitter/model/topic/trends/d;

    .line 1553
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/model/topic/trends/d;->a()I

    move-result v0

    .line 1555
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/rb;->A:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 1557
    :goto_1
    return-object v0

    .line 1553
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 1557
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    .line 580
    iget-object v0, p0, Lcom/twitter/android/rb;->u:Landroid/view/LayoutInflater;

    const v1, 0x7f040130

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/CarouselRowView;

    .line 582
    new-instance v1, Lcom/twitter/android/rd;

    new-instance v2, Lcom/twitter/android/widget/j;

    .line 583
    invoke-virtual {p0}, Lcom/twitter/android/rb;->j()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/rb;->L:Lcom/twitter/android/timeline/cd;

    invoke-direct {v2, v3, v4}, Lcom/twitter/android/widget/j;-><init>(Landroid/content/Context;Lcom/twitter/android/widget/l;)V

    invoke-direct {v1, v0, v2}, Lcom/twitter/android/rd;-><init>(Lcom/twitter/android/widget/CarouselRowView;Lcom/twitter/android/widget/j;)V

    .line 584
    new-instance v2, Lcom/twitter/android/rk;

    invoke-direct {v2}, Lcom/twitter/android/rk;-><init>()V

    .line 585
    invoke-virtual {v2, v1}, Lcom/twitter/android/rk;->a(Lcom/twitter/android/rd;)Lcom/twitter/android/rk;

    move-result-object v2

    const/4 v3, 0x6

    .line 586
    invoke-virtual {v2, v3}, Lcom/twitter/android/rk;->a(I)Lcom/twitter/android/rk;

    move-result-object v2

    .line 587
    invoke-virtual {v2}, Lcom/twitter/android/rk;->a()Lcom/twitter/android/rj;

    move-result-object v2

    .line 588
    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/CarouselRowView;->setTag(Ljava/lang/Object;)V

    .line 590
    new-instance v2, Lcom/twitter/android/widget/m;

    iget-object v3, v1, Lcom/twitter/android/rd;->a:Lcom/twitter/android/widget/CarouselRowView;

    iget v4, p0, Lcom/twitter/android/rb;->x:I

    new-instance v5, Lcom/twitter/android/timeline/cb;

    invoke-direct {v5}, Lcom/twitter/android/timeline/cb;-><init>()V

    invoke-direct {v2, v3, p1, v4, v5}, Lcom/twitter/android/widget/m;-><init>(Lcom/twitter/android/widget/CarouselRowView;Landroid/view/ViewParent;ILcom/twitter/android/widget/n;)V

    .line 593
    iget-object v1, v1, Lcom/twitter/android/rd;->a:Lcom/twitter/android/widget/CarouselRowView;

    invoke-virtual {v1, v2}, Lcom/twitter/android/widget/CarouselRowView;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 595
    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;Lcom/twitter/android/timeline/at;)Landroid/view/View;
    .locals 6

    .prologue
    .line 631
    iget-object v0, p0, Lcom/twitter/android/rb;->u:Landroid/view/LayoutInflater;

    const v1, 0x7f040125

    const/4 v2, 0x0

    .line 632
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/AutoPlayableCarouselRowView;

    .line 633
    iget-object v1, p0, Lcom/twitter/android/rb;->p:Lcom/twitter/android/av/ae;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/AutoPlayableCarouselRowView;->setAutoPlayableItemPositionListener(Lcom/twitter/android/av/ae;)V

    .line 635
    new-instance v1, Lcom/twitter/android/widget/ew;

    .line 636
    invoke-virtual {p0}, Lcom/twitter/android/rb;->j()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/twitter/android/widget/ew;-><init>(Landroid/content/Context;Lcom/twitter/android/widget/l;)V

    .line 637
    invoke-virtual {p0}, Lcom/twitter/android/rb;->j()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/twitter/android/widget/ey;->a(Lcom/twitter/android/widget/j;Landroid/content/Context;)V

    .line 638
    new-instance v2, Lcom/twitter/android/rd;

    invoke-direct {v2, v0, v1}, Lcom/twitter/android/rd;-><init>(Lcom/twitter/android/widget/CarouselRowView;Lcom/twitter/android/widget/j;)V

    .line 639
    new-instance v1, Lcom/twitter/android/rk;

    invoke-direct {v1}, Lcom/twitter/android/rk;-><init>()V

    .line 640
    invoke-virtual {v1, v2}, Lcom/twitter/android/rk;->a(Lcom/twitter/android/rd;)Lcom/twitter/android/rk;

    move-result-object v1

    const/4 v3, 0x6

    .line 641
    invoke-virtual {v1, v3}, Lcom/twitter/android/rk;->a(I)Lcom/twitter/android/rk;

    move-result-object v1

    .line 642
    invoke-virtual {v1}, Lcom/twitter/android/rk;->a()Lcom/twitter/android/rj;

    move-result-object v1

    .line 643
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/AutoPlayableCarouselRowView;->setTag(Ljava/lang/Object;)V

    .line 645
    iget-object v1, p0, Lcom/twitter/android/rb;->F:Lcom/twitter/android/timeline/ay;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/twitter/android/timeline/ar;

    iget-object v3, p0, Lcom/twitter/android/rb;->F:Lcom/twitter/android/timeline/ay;

    invoke-direct {v1, v3}, Lcom/twitter/android/timeline/ar;-><init>(Lcom/twitter/android/timeline/ay;)V

    .line 648
    :goto_0
    new-instance v3, Lcom/twitter/android/widget/m;

    iget-object v4, v2, Lcom/twitter/android/rd;->a:Lcom/twitter/android/widget/CarouselRowView;

    iget v5, p0, Lcom/twitter/android/rb;->x:I

    invoke-direct {v3, v4, p1, v5, v1}, Lcom/twitter/android/widget/m;-><init>(Lcom/twitter/android/widget/CarouselRowView;Landroid/view/ViewParent;ILcom/twitter/android/widget/n;)V

    .line 650
    iget-object v1, v2, Lcom/twitter/android/rd;->a:Lcom/twitter/android/widget/CarouselRowView;

    invoke-virtual {v1, v3}, Lcom/twitter/android/widget/CarouselRowView;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 651
    iget-object v1, v2, Lcom/twitter/android/rd;->a:Lcom/twitter/android/widget/CarouselRowView;

    iget-object v2, p0, Lcom/twitter/android/rb;->l:Lcom/twitter/android/timeline/ax;

    invoke-virtual {v1, v2}, Lcom/twitter/android/widget/CarouselRowView;->setDismissClickListener(Landroid/view/View$OnClickListener;)V

    .line 652
    return-object v0

    .line 645
    :cond_0
    sget-object v1, Lcom/twitter/android/widget/n;->c:Lcom/twitter/android/widget/n;

    goto :goto_0
.end method

.method private a(Landroid/view/ViewGroup;Lcom/twitter/android/timeline/cr;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v4, 0x1

    .line 601
    iget-object v0, p0, Lcom/twitter/android/rb;->u:Landroid/view/LayoutInflater;

    const v1, 0x7f040132

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/CarouselRowView;

    .line 608
    new-instance v1, Lcom/twitter/android/widget/j;

    .line 609
    invoke-virtual {p0}, Lcom/twitter/android/rb;->j()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/twitter/android/widget/j;-><init>(Landroid/content/Context;Lcom/twitter/android/widget/l;)V

    .line 610
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110001

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/twitter/android/widget/j;->a(F)V

    .line 611
    new-instance v2, Lcom/twitter/android/rd;

    invoke-direct {v2, v0, v1}, Lcom/twitter/android/rd;-><init>(Lcom/twitter/android/widget/CarouselRowView;Lcom/twitter/android/widget/j;)V

    .line 612
    new-instance v1, Lcom/twitter/android/rk;

    invoke-direct {v1}, Lcom/twitter/android/rk;-><init>()V

    .line 613
    invoke-virtual {v1, v2}, Lcom/twitter/android/rk;->a(Lcom/twitter/android/rd;)Lcom/twitter/android/rk;

    move-result-object v1

    const/4 v3, 0x6

    .line 614
    invoke-virtual {v1, v3}, Lcom/twitter/android/rk;->a(I)Lcom/twitter/android/rk;

    move-result-object v1

    .line 615
    invoke-virtual {v1}, Lcom/twitter/android/rk;->a()Lcom/twitter/android/rj;

    move-result-object v1

    .line 616
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/CarouselRowView;->setTag(Ljava/lang/Object;)V

    .line 618
    new-instance v1, Lcom/twitter/android/widget/m;

    iget-object v3, v2, Lcom/twitter/android/rd;->a:Lcom/twitter/android/widget/CarouselRowView;

    iget v4, p0, Lcom/twitter/android/rb;->x:I

    new-instance v5, Lcom/twitter/android/timeline/cq;

    iget-object v6, p0, Lcom/twitter/android/rb;->H:Lcom/twitter/android/timeline/dc;

    iget-object v7, p0, Lcom/twitter/android/rb;->E:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v8, p0, Lcom/twitter/android/rb;->c:Lcom/twitter/library/client/bk;

    .line 621
    invoke-virtual {v8}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v8

    invoke-virtual {v8}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/twitter/android/timeline/cq;-><init>(Lcom/twitter/android/timeline/dc;Lcom/twitter/library/scribe/TwitterScribeAssociation;J)V

    invoke-direct {v1, v3, p1, v4, v5}, Lcom/twitter/android/widget/m;-><init>(Lcom/twitter/android/widget/CarouselRowView;Landroid/view/ViewParent;ILcom/twitter/android/widget/n;)V

    .line 622
    iget-object v3, v2, Lcom/twitter/android/rd;->a:Lcom/twitter/android/widget/CarouselRowView;

    invoke-virtual {v3, v1}, Lcom/twitter/android/widget/CarouselRowView;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 623
    iget-object v1, v2, Lcom/twitter/android/rd;->a:Lcom/twitter/android/widget/CarouselRowView;

    iget-object v2, p0, Lcom/twitter/android/rb;->k:Lcom/twitter/android/timeline/ct;

    invoke-virtual {v1, v2}, Lcom/twitter/android/widget/CarouselRowView;->setDismissClickListener(Landroid/view/View$OnClickListener;)V

    .line 625
    return-object v0
.end method

.method private a(ILandroid/database/Cursor;Landroid/view/View;)Lbiv;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 996
    new-instance v2, Lbiv;

    invoke-direct {v2}, Lbiv;-><init>()V

    .line 997
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 998
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    .line 1000
    const-string/jumbo v0, "Bind-current cursor"

    invoke-static {p2}, Landroid/database/DatabaseUtils;->dumpCurrentRowToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    .line 1001
    if-eq p1, v4, :cond_0

    .line 1002
    invoke-interface {p2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1003
    const-string/jumbo v0, "Bind-cursor"

    invoke-static {p2}, Landroid/database/DatabaseUtils;->dumpCurrentRowToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    .line 1006
    :cond_0
    invoke-virtual {p0, p1}, Lcom/twitter/android/rb;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/bp;

    .line 1007
    invoke-virtual {p0, v0}, Lcom/twitter/android/rb;->a(Lcom/twitter/android/timeline/bp;)I

    move-result v5

    .line 1008
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Timeline Item:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, " viewType:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " Pos:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " Pos now:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1010
    const-string/jumbo v4, "Bind info"

    invoke-virtual {v2, v4, v0}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    .line 1012
    if-eqz p3, :cond_2

    .line 1013
    const-string/jumbo v0, "Bind-view"

    invoke-static {p3, v1}, Lcom/twitter/util/ui/r;->a(Landroid/view/View;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    .line 1014
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1015
    if-eqz v0, :cond_1

    .line 1017
    const-string/jumbo v4, "Bind-LayoutParams"

    invoke-static {v0}, Lcom/twitter/util/ui/r;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    .line 1020
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1021
    instance-of v4, v0, Lcom/twitter/android/rf;

    if-eqz v4, :cond_2

    .line 1022
    check-cast v0, Lcom/twitter/android/rf;

    .line 1023
    iget-object v0, v0, Lcom/twitter/android/rf;->a:Lcom/twitter/android/UmfInlinePromptView;

    iget-object v0, v0, Lcom/twitter/android/UmfInlinePromptView;->a:Lcom/twitter/model/timeline/w;

    .line 1024
    if-eqz v0, :cond_5

    .line 1025
    const-string/jumbo v4, "Bind-Prompt"

    invoke-virtual {v2, v4, v0}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    :cond_2
    :goto_0
    move v0, v1

    .line 1032
    :goto_1
    if-ge v0, v3, :cond_4

    .line 1035
    invoke-virtual {p0, v0}, Lcom/twitter/android/rb;->getItemViewType(I)I

    move-result v1

    .line 1036
    const/16 v4, 0xa

    if-eq v1, v4, :cond_3

    const/16 v4, 0xb

    if-ne v1, v4, :cond_6

    .line 1037
    :cond_3
    const-string/jumbo v3, "Bind-Prompt info"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " pos="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    .line 1038
    const-string/jumbo v0, "Bind-Prompt cursor"

    invoke-static {p2}, Landroid/database/DatabaseUtils;->dumpCurrentRowToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    .line 1043
    :cond_4
    invoke-interface {p2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1045
    return-object v2

    .line 1027
    :cond_5
    const-string/jumbo v0, "Bind-Prompt"

    const-string/jumbo v4, "null"

    invoke-virtual {v2, v0, v4}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    goto :goto_0

    .line 1032
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/bm;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/MediaEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1568
    invoke-static {p1}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1569
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/bm;

    iget-object v0, v0, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    sget-object v1, Lcom/twitter/util/math/Size;->b:Lcom/twitter/util/math/Size;

    invoke-static {v0, v1}, Lcug;->d(Ljava/lang/Iterable;Lcom/twitter/util/math/Size;)Ljava/util/List;

    move-result-object v0

    .line 1571
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private a(ILandroid/view/View;Lcss;Ljava/lang/String;ZIZ)V
    .locals 3

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/twitter/android/rb;->r:Lcom/twitter/android/kn;

    if-eqz v0, :cond_0

    .line 1531
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1532
    const-string/jumbo v1, "position"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1533
    const-string/jumbo v1, "entity_id"

    invoke-virtual {p0, p1}, Lcom/twitter/android/rb;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    const-string/jumbo v1, "isread"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1536
    const-string/jumbo v1, "changes"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1537
    const-string/jumbo v1, "description"

    .line 1538
    invoke-static {p7}, Lcom/twitter/model/topic/i;->a(Z)Ljava/lang/String;

    move-result-object v2

    .line 1537
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    iget-object v1, p0, Lcom/twitter/android/rb;->r:Lcom/twitter/android/kn;

    invoke-interface {v1, p2, p3, v0}, Lcom/twitter/android/kn;->a(Landroid/view/View;Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 1541
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/twitter/android/timeline/cj;Landroid/widget/TextView;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1515
    iget-object v0, p2, Lcom/twitter/android/timeline/cj;->b:Ljava/lang/String;

    .line 1516
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1517
    invoke-static {v1}, Lcom/twitter/library/view/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1518
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1519
    new-instance v3, Lcom/twitter/library/view/d;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v3, v1, v0}, Lcom/twitter/library/view/d;-><init>(Ljava/lang/String;I)V

    .line 1520
    invoke-static {p1, v2, v3, p3, v4}, Lcom/twitter/library/view/d;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Lcom/twitter/library/view/d;Landroid/view/View;Z)I

    .line 1521
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1525
    :goto_0
    return-void

    .line 1523
    :cond_0
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(Landroid/content/res/Resources;Landroid/view/View;Lcom/twitter/android/timeline/bb;Landroid/os/Bundle;I)V
    .locals 8

    .prologue
    .line 1842
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/rj;

    .line 1843
    iget-object v5, p3, Lcom/twitter/android/timeline/bb;->a:Lcmf;

    .line 1844
    iget-object v0, v2, Lcom/twitter/android/rj;->b:Lcom/twitter/android/rd;

    iget-object v1, v0, Lcom/twitter/android/rd;->a:Lcom/twitter/android/widget/CarouselRowView;

    .line 1845
    const v0, 0x7f13006f

    invoke-virtual {v1, v0, p3}, Lcom/twitter/android/widget/CarouselRowView;->a(ILcom/twitter/android/timeline/bp;)V

    .line 1846
    invoke-static {p3}, Lcom/twitter/android/rb;->b(Lcom/twitter/android/timeline/bp;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/CarouselRowView;->setShowDismiss(Z)V

    .line 1847
    iget-object v0, p3, Lcom/twitter/android/timeline/bb;->b:Lcom/twitter/model/moments/aw;

    iget-object v0, v0, Lcom/twitter/model/moments/aw;->b:Ljava/lang/String;

    const v3, 0x7f0a08a8

    .line 1850
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1848
    invoke-static {v0, v3}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1847
    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/CarouselRowView;->setTitleText(Ljava/lang/String;)V

    .line 1851
    iget-object v3, p3, Lcom/twitter/android/timeline/bb;->o:Lcom/twitter/model/timeline/al;

    invoke-virtual {p3}, Lcom/twitter/android/timeline/bb;->c()Lcom/twitter/android/timeline/bj;

    move-result-object v4

    iget-object v0, v2, Lcom/twitter/android/rj;->b:Lcom/twitter/android/rd;

    iget-object v7, v0, Lcom/twitter/android/rd;->b:Lcom/twitter/android/widget/j;

    move-object v0, p0

    move-object v1, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/rb;->a(Landroid/view/View;Lcom/twitter/android/rj;Lcom/twitter/model/timeline/al;Lcom/twitter/android/timeline/bj;Lcmf;Landroid/os/Bundle;Lcom/twitter/android/widget/j;)V

    .line 1856
    iget-object v0, v2, Lcom/twitter/android/rj;->b:Lcom/twitter/android/rd;

    iget-object v0, v0, Lcom/twitter/android/rd;->b:Lcom/twitter/android/widget/j;

    invoke-virtual {v0}, Lcom/twitter/android/widget/j;->notifyDataSetChanged()V

    .line 1858
    iget-object v0, p0, Lcom/twitter/android/rb;->F:Lcom/twitter/android/timeline/ay;

    if-eqz v0, :cond_0

    .line 1859
    iget-object v0, p0, Lcom/twitter/android/rb;->F:Lcom/twitter/android/timeline/ay;

    .line 1860
    invoke-virtual {v0, p3, p5}, Lcom/twitter/android/timeline/ay;->a(Lcom/twitter/android/timeline/bb;I)V

    .line 1862
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Lcom/twitter/android/rj;Lcom/twitter/model/timeline/al;Lcom/twitter/android/timeline/bj;Lcmf;Landroid/os/Bundle;Lcom/twitter/android/widget/j;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1771
    iput-object p3, p2, Lcom/twitter/android/rj;->p:Lcom/twitter/model/timeline/al;

    .line 1772
    iget-object v3, p2, Lcom/twitter/android/rj;->b:Lcom/twitter/android/rd;

    .line 1773
    iget v4, v3, Lcom/twitter/android/rd;->e:I

    .line 1774
    iget-object v0, p4, Lcom/twitter/android/timeline/bj;->a:Ljava/lang/String;

    iget-object v5, v3, Lcom/twitter/android/rd;->c:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/twitter/util/aj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 1775
    :goto_0
    iget v5, p4, Lcom/twitter/android/timeline/bj;->k:I

    if-eq v4, v5, :cond_2

    .line 1777
    :goto_1
    iget-object v4, v3, Lcom/twitter/android/rd;->a:Lcom/twitter/android/widget/CarouselRowView;

    .line 1778
    if-nez v0, :cond_0

    if-eqz v1, :cond_4

    .line 1779
    :cond_0
    iget-object v1, p4, Lcom/twitter/android/timeline/bj;->a:Ljava/lang/String;

    iput-object v1, v3, Lcom/twitter/android/rd;->c:Ljava/lang/String;

    .line 1780
    iget v1, p4, Lcom/twitter/android/timeline/bj;->k:I

    iput v1, v3, Lcom/twitter/android/rd;->e:I

    .line 1783
    if-eqz v0, :cond_3

    .line 1788
    :goto_2
    invoke-virtual {p7, p5}, Lcom/twitter/android/widget/j;->a(Lcmf;)V

    .line 1789
    invoke-virtual {v4, p7}, Lcom/twitter/android/widget/CarouselRowView;->setCarouselAdapter(Lcom/twitter/android/widget/j;)V

    .line 1790
    invoke-virtual {v4, v2}, Lcom/twitter/android/widget/CarouselRowView;->setCurrentItemIndex(I)V

    .line 1799
    :goto_3
    return-void

    :cond_1
    move v0, v2

    .line 1774
    goto :goto_0

    :cond_2
    move v1, v2

    .line 1775
    goto :goto_1

    .line 1786
    :cond_3
    invoke-virtual {v4}, Lcom/twitter/android/widget/CarouselRowView;->getCurrentItemIndex()I

    move-result v2

    goto :goto_2

    .line 1793
    :cond_4
    invoke-virtual {v4}, Lcom/twitter/android/widget/CarouselRowView;->getCurrentItemIndex()I

    move-result v0

    .line 1794
    invoke-virtual {v4}, Lcom/twitter/android/widget/CarouselRowView;->getCarouselAdapter()Lcom/twitter/android/widget/j;

    move-result-object v1

    .line 1795
    invoke-virtual {v1}, Lcom/twitter/android/widget/j;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    move v2, v0

    .line 1796
    :cond_5
    invoke-virtual {v1, p5}, Lcom/twitter/android/widget/j;->a(Lcmf;)V

    .line 1797
    invoke-virtual {v4, v2}, Lcom/twitter/android/widget/CarouselRowView;->setCurrentItemIndex(I)V

    goto :goto_3
.end method

.method private a(Landroid/view/View;Lcom/twitter/android/timeline/af;I)V
    .locals 2

    .prologue
    .line 1750
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/rj;

    .line 1751
    iget-object v0, v0, Lcom/twitter/android/rj;->n:Lcom/twitter/android/rg;

    .line 1752
    iget-object v0, v0, Lcom/twitter/android/rg;->a:Landroid/widget/TextView;

    .line 1753
    iget-object v1, p2, Lcom/twitter/android/timeline/af;->a:Lcom/twitter/model/timeline/t;

    iget-object v1, v1, Lcom/twitter/model/timeline/t;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1754
    iget-object v0, p0, Lcom/twitter/android/rb;->y:Lcom/twitter/android/timeline/ae;

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/twitter/android/timeline/ae;->a(Lcom/twitter/android/timeline/af;I)V

    .line 1755
    return-void
.end method

.method private a(Landroid/view/View;Lcom/twitter/android/timeline/ah;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 1712
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/rj;

    .line 1713
    iget-object v3, v0, Lcom/twitter/android/rj;->k:Lcom/twitter/android/rh;

    .line 1714
    if-eqz v3, :cond_0

    iget-object v1, p2, Lcom/twitter/android/timeline/ah;->a:Lcom/twitter/model/moments/bg;

    if-eqz v1, :cond_0

    .line 1715
    iget-object v1, p2, Lcom/twitter/android/timeline/ah;->a:Lcom/twitter/model/moments/bg;

    iget-object v1, v1, Lcom/twitter/model/moments/bg;->c:Lcom/twitter/model/moments/ad;

    .line 1716
    iget-object v4, v3, Lcom/twitter/android/rh;->b:Lcom/twitter/android/widget/bn;

    invoke-virtual {v4}, Lcom/twitter/android/widget/bn;->b()Landroid/widget/TextView;

    move-result-object v4

    .line 1717
    iget-object v5, v1, Lcom/twitter/model/moments/ad;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1719
    iget-object v4, p2, Lcom/twitter/android/timeline/ah;->a:Lcom/twitter/model/moments/bg;

    iget v4, v4, Lcom/twitter/model/moments/bg;->b:I

    if-ne v4, v6, :cond_4

    .line 1720
    iget-object v4, v1, Lcom/twitter/model/moments/ad;->i:Ljava/lang/String;

    invoke-static {v4}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1721
    invoke-virtual {p0}, Lcom/twitter/android/rb;->j()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f0a0571

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1730
    :goto_0
    iget-object v3, v3, Lcom/twitter/android/rh;->b:Lcom/twitter/android/widget/bn;

    invoke-virtual {v3}, Lcom/twitter/android/widget/bn;->c()Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/twitter/android/rb;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1732
    :cond_0
    iget-object v0, v0, Lcom/twitter/android/rj;->l:Lcom/twitter/android/vy;

    .line 1733
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/twitter/android/vy;->d:Lcom/twitter/library/widget/TweetView;

    .line 1734
    :cond_1
    if-eqz v2, :cond_2

    .line 1735
    const v0, 0x7f13006f

    invoke-virtual {v2, v0, p2}, Lcom/twitter/library/widget/TweetView;->setTag(ILjava/lang/Object;)V

    .line 1737
    :cond_2
    return-void

    .line 1723
    :cond_3
    invoke-virtual {p0}, Lcom/twitter/android/rb;->j()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0570

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v1, v1, Lcom/twitter/model/moments/ad;->i:Ljava/lang/String;

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1725
    :cond_4
    iget-object v1, p2, Lcom/twitter/android/timeline/ah;->a:Lcom/twitter/model/moments/bg;

    iget v1, v1, Lcom/twitter/model/moments/bg;->b:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_5

    .line 1726
    invoke-virtual {p0}, Lcom/twitter/android/rb;->j()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f0a055f

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    move-object v1, v2

    .line 1728
    goto :goto_0
.end method

.method private a(Landroid/view/View;Lcom/twitter/android/timeline/bd;Landroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/twitter/android/timeline/bd",
            "<",
            "Lcom/twitter/android/timeline/cn;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1807
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/rj;

    .line 1808
    iget-object v3, p2, Lcom/twitter/android/timeline/bd;->o:Lcom/twitter/model/timeline/al;

    .line 1809
    invoke-virtual {p2}, Lcom/twitter/android/timeline/bd;->c()Lcom/twitter/android/timeline/bj;

    move-result-object v4

    iget-object v5, p2, Lcom/twitter/android/timeline/bd;->a:Lcmf;

    iget-object v0, v2, Lcom/twitter/android/rj;->b:Lcom/twitter/android/rd;

    iget-object v7, v0, Lcom/twitter/android/rd;->b:Lcom/twitter/android/widget/j;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/rb;->a(Landroid/view/View;Lcom/twitter/android/rj;Lcom/twitter/model/timeline/al;Lcom/twitter/android/timeline/bj;Lcmf;Landroid/os/Bundle;Lcom/twitter/android/widget/j;)V

    .line 1811
    return-void
.end method

.method static a(Landroid/view/View;Lcom/twitter/android/timeline/bp;Landroid/view/View$OnClickListener;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 1596
    const v0, 0x7f13006f

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1597
    if-eqz p2, :cond_0

    .line 1598
    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1600
    :cond_0
    invoke-static {p1}, Lcom/twitter/android/rb;->b(Lcom/twitter/android/timeline/bp;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1601
    return-void

    .line 1600
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private a(Landroid/view/View;Lcom/twitter/android/timeline/bp;Landroid/view/View$OnClickListener;Ljava/lang/String;I)V
    .locals 3
    .param p5    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 1673
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/rj;

    .line 1674
    iget-object v0, v0, Lcom/twitter/android/rj;->i:Lcom/twitter/android/qi;

    .line 1675
    iget-object v1, v0, Lcom/twitter/android/qi;->a:Landroid/widget/TextView;

    .line 1676
    iget-object v0, v0, Lcom/twitter/android/qi;->d:Landroid/view/View;

    .line 1678
    invoke-static {p4}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1679
    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1684
    :goto_0
    invoke-static {v0, p2, p3}, Lcom/twitter/android/rb;->a(Landroid/view/View;Lcom/twitter/android/timeline/bp;Landroid/view/View$OnClickListener;)V

    .line 1685
    return-void

    .line 1681
    :cond_0
    invoke-virtual {v1, p5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Lcom/twitter/android/timeline/bw;I)V
    .locals 3

    .prologue
    .line 1740
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/rj;

    .line 1741
    iget-object v0, v0, Lcom/twitter/android/rj;->m:Lcom/twitter/android/ri;

    .line 1742
    iget-object v1, v0, Lcom/twitter/android/ri;->a:Lcom/twitter/library/widget/TimelineMessageView;

    iget-object v2, p2, Lcom/twitter/android/timeline/bw;->a:Lcom/twitter/model/timeline/bk;

    invoke-virtual {v1, v2}, Lcom/twitter/library/widget/TimelineMessageView;->a(Lcom/twitter/model/timeline/bk;)V

    .line 1743
    iget-object v0, v0, Lcom/twitter/android/ri;->a:Lcom/twitter/library/widget/TimelineMessageView;

    const v1, 0x7f13006f

    invoke-virtual {v0, v1, p2}, Lcom/twitter/library/widget/TimelineMessageView;->setTag(ILjava/lang/Object;)V

    .line 1744
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1745
    const-string/jumbo v1, "position"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1746
    iget-object v1, p0, Lcom/twitter/android/rb;->t:Lcom/twitter/android/kn;

    invoke-interface {v1, p1, p2, v0}, Lcom/twitter/android/kn;->a(Landroid/view/View;Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 1747
    return-void
.end method

.method private a(Landroid/view/View;Lcom/twitter/android/timeline/cv;Landroid/os/Bundle;I)V
    .locals 8

    .prologue
    .line 1819
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/rj;

    .line 1820
    iget-object v0, p2, Lcom/twitter/android/timeline/cv;->c:Lcom/twitter/model/timeline/dh;

    iget-object v3, v0, Lcom/twitter/model/timeline/dh;->e:Lcom/twitter/model/timeline/al;

    .line 1821
    iget-object v5, p2, Lcom/twitter/android/timeline/cv;->a:Lcmf;

    .line 1822
    iget-object v0, v2, Lcom/twitter/android/rj;->b:Lcom/twitter/android/rd;

    iget-object v0, v0, Lcom/twitter/android/rd;->a:Lcom/twitter/android/widget/CarouselRowView;

    .line 1823
    const v1, 0x7f13006f

    invoke-virtual {v0, v1, p2}, Lcom/twitter/android/widget/CarouselRowView;->a(ILcom/twitter/android/timeline/bp;)V

    .line 1824
    invoke-static {p2}, Lcom/twitter/android/rb;->b(Lcom/twitter/android/timeline/bp;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/CarouselRowView;->setShowDismiss(Z)V

    .line 1825
    iget-object v1, p2, Lcom/twitter/android/timeline/cv;->c:Lcom/twitter/model/timeline/dh;

    iget-object v1, v1, Lcom/twitter/model/timeline/dh;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1826
    iget-object v1, p2, Lcom/twitter/android/timeline/cv;->c:Lcom/twitter/model/timeline/dh;

    iget-object v1, v1, Lcom/twitter/model/timeline/dh;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/CarouselRowView;->setTitleText(Ljava/lang/String;)V

    .line 1828
    :cond_0
    invoke-virtual {p2}, Lcom/twitter/android/timeline/cv;->c()Lcom/twitter/android/timeline/bj;

    move-result-object v4

    iget-object v0, v2, Lcom/twitter/android/rj;->b:Lcom/twitter/android/rd;

    iget-object v7, v0, Lcom/twitter/android/rd;->b:Lcom/twitter/android/widget/j;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/rb;->a(Landroid/view/View;Lcom/twitter/android/rj;Lcom/twitter/model/timeline/al;Lcom/twitter/android/timeline/bj;Lcmf;Landroid/os/Bundle;Lcom/twitter/android/widget/j;)V

    .line 1830
    iget-object v0, p0, Lcom/twitter/android/rb;->G:Lcom/twitter/android/timeline/cx;

    if-eqz v0, :cond_1

    .line 1831
    iget-object v0, p0, Lcom/twitter/android/rb;->G:Lcom/twitter/android/timeline/cx;

    invoke-virtual {v0, p2, p4}, Lcom/twitter/android/timeline/cx;->a(Lcom/twitter/android/timeline/cv;I)V

    .line 1833
    :cond_1
    return-void
.end method

.method private varargs a(Landroid/view/View;[I)V
    .locals 4

    .prologue
    .line 2369
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget v2, p2, v0

    .line 2370
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2371
    if-eqz v2, :cond_0

    .line 2372
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2369
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2375
    :cond_1
    return-void
.end method

.method private static a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1865
    if-eqz p0, :cond_0

    .line 1866
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1867
    invoke-static {p1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1869
    :cond_0
    return-void

    .line 1867
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/twitter/android/timeline/bp;Landroid/view/View;Landroid/content/Context;I)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 1577
    check-cast p1, Lcom/twitter/android/timeline/a;

    .line 1578
    iget-object v0, p0, Lcom/twitter/android/rb;->M:Lcom/twitter/android/revenue/d;

    iget-object v2, p1, Lcom/twitter/android/timeline/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/twitter/android/revenue/d;->c(Ljava/lang/String;)Lcom/twitter/android/revenue/a;

    move-result-object v2

    .line 1579
    if-eqz v2, :cond_1

    move v0, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AdSlot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/twitter/android/timeline/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " did not receive an ad when it should have."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/twitter/util/j;->a(ZLjava/lang/String;)Z

    .line 1580
    iget-object v0, p0, Lcom/twitter/android/rb;->P:Lcom/twitter/android/timeline/c;

    invoke-virtual {v0, p1, v2}, Lcom/twitter/android/timeline/c;->a(Lcom/twitter/android/timeline/a;Lcom/twitter/android/revenue/a;)Lcom/twitter/android/timeline/bp;

    move-result-object v0

    .line 1581
    if-eqz v0, :cond_0

    .line 1582
    invoke-super {p0, p2, p3, v0, p4}, Lcom/twitter/android/gx;->a(Landroid/view/View;Landroid/content/Context;Lcom/twitter/android/timeline/bp;I)V

    .line 1585
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/vy;

    .line 1586
    iget-object v2, v0, Lcom/twitter/android/vy;->d:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v2, v1}, Lcom/twitter/library/widget/TweetView;->setCurationAction(I)V

    .line 1589
    iget-object v1, p0, Lcom/twitter/android/rb;->N:Lcom/twitter/android/revenue/p;

    iget-object v0, v0, Lcom/twitter/android/vy;->d:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v1, v0}, Lcom/twitter/android/revenue/p;->a(Lcom/twitter/library/widget/TweetView;)V

    .line 1591
    :cond_0
    return-void

    .line 1579
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/twitter/internal/android/widget/GroupedRowView;IZZZZZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 1907
    if-nez p3, :cond_0

    .line 1908
    if-eqz p4, :cond_3

    .line 1909
    packed-switch p1, :pswitch_data_0

    .line 1923
    if-nez p2, :cond_0

    .line 1924
    invoke-virtual {p0, v1}, Lcom/twitter/internal/android/widget/GroupedRowView;->setStyle(I)V

    .line 1941
    :cond_0
    :goto_0
    return-void

    .line 1911
    :pswitch_0
    if-eqz p5, :cond_1

    .line 1913
    invoke-virtual {p0, v1}, Lcom/twitter/internal/android/widget/GroupedRowView;->setStyle(I)V

    goto :goto_0

    .line 1914
    :cond_1
    if-eqz p2, :cond_2

    if-nez p6, :cond_2

    .line 1915
    invoke-virtual {p0}, Lcom/twitter/internal/android/widget/GroupedRowView;->a()V

    goto :goto_0

    .line 1918
    :cond_2
    invoke-virtual {p0, v2}, Lcom/twitter/internal/android/widget/GroupedRowView;->setStyle(I)V

    goto :goto_0

    .line 1929
    :cond_3
    if-nez p5, :cond_6

    .line 1931
    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x7

    if-ne p1, v0, :cond_5

    .line 1933
    :cond_4
    invoke-virtual {p0, v1}, Lcom/twitter/internal/android/widget/GroupedRowView;->setStyle(I)V

    goto :goto_0

    .line 1935
    :cond_5
    invoke-virtual {p0, v2}, Lcom/twitter/internal/android/widget/GroupedRowView;->setStyle(I)V

    goto :goto_0

    .line 1938
    :cond_6
    invoke-virtual {p0, v1}, Lcom/twitter/internal/android/widget/GroupedRowView;->setStyle(I)V

    goto :goto_0

    .line 1909
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lcom/twitter/internal/android/widget/GroupedRowView;ZZZ)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1883
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1884
    if-eqz p3, :cond_1

    .line 1886
    invoke-virtual {p0, v0}, Lcom/twitter/internal/android/widget/GroupedRowView;->setSingle(Z)V

    .line 1887
    invoke-virtual {p0, v3}, Lcom/twitter/internal/android/widget/GroupedRowView;->setStyle(I)V

    .line 1901
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/twitter/internal/android/widget/GroupedRowView;->setGroupStyle(I)V

    .line 1902
    return-void

    .line 1889
    :cond_1
    invoke-virtual {p0, v1}, Lcom/twitter/internal/android/widget/GroupedRowView;->setSingle(Z)V

    goto :goto_0

    .line 1892
    :cond_2
    invoke-virtual {p0, v0}, Lcom/twitter/internal/android/widget/GroupedRowView;->setSingle(Z)V

    .line 1893
    if-eqz p3, :cond_3

    .line 1894
    invoke-virtual {p0, v2}, Lcom/twitter/internal/android/widget/GroupedRowView;->setStyle(I)V

    goto :goto_0

    .line 1895
    :cond_3
    if-eqz p1, :cond_4

    .line 1896
    invoke-virtual {p0, v1}, Lcom/twitter/internal/android/widget/GroupedRowView;->setStyle(I)V

    goto :goto_0

    .line 1897
    :cond_4
    if-eqz p2, :cond_0

    .line 1898
    invoke-virtual {p0, v3}, Lcom/twitter/internal/android/widget/GroupedRowView;->setStyle(I)V

    goto :goto_0
.end method

.method static a(Lcom/twitter/android/timeline/bp;Lcom/twitter/model/core/Tweet;)Z
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 1646
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->ac()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1647
    invoke-static {p0}, Lcom/twitter/android/rb;->c(Lcom/twitter/android/timeline/bp;)Z

    move-result v0

    .line 1651
    :goto_0
    return v0

    .line 1649
    :cond_0
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->t()Z

    move-result v0

    goto :goto_0
.end method

.method private b(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 657
    iget-object v0, p0, Lcom/twitter/android/rb;->u:Landroid/view/LayoutInflater;

    const v1, 0x7f0401fc

    invoke-virtual {v0, v1, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 658
    new-instance v1, Lcom/twitter/android/rh;

    invoke-direct {v1, v0}, Lcom/twitter/android/rh;-><init>(Landroid/view/ViewGroup;)V

    .line 659
    new-instance v2, Lcom/twitter/android/rk;

    invoke-direct {v2}, Lcom/twitter/android/rk;-><init>()V

    .line 660
    invoke-virtual {v2, v1}, Lcom/twitter/android/rk;->a(Lcom/twitter/android/rh;)Lcom/twitter/android/rk;

    move-result-object v2

    const/16 v3, 0x8

    .line 661
    invoke-virtual {v2, v3}, Lcom/twitter/android/rk;->a(I)Lcom/twitter/android/rk;

    move-result-object v2

    .line 662
    invoke-virtual {v2}, Lcom/twitter/android/rk;->a()Lcom/twitter/android/rj;

    move-result-object v2

    .line 663
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 664
    iget-object v2, v1, Lcom/twitter/android/rh;->b:Lcom/twitter/android/widget/bn;

    invoke-virtual {v2}, Lcom/twitter/android/widget/bn;->b()Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lcom/twitter/library/util/al;->a:F

    .line 665
    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 666
    iget-object v1, v1, Lcom/twitter/android/rh;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/android/rb;->j()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12016c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 668
    return-object v0
.end method

.method static b(Lcom/twitter/android/timeline/bp;)Z
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 1615
    invoke-static {p0}, Lcom/twitter/android/rb;->c(Lcom/twitter/android/timeline/bp;)Z

    move-result v0

    return v0
.end method

.method private c(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 812
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/twitter/android/rb;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private c(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .prologue
    .line 833
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private c(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 673
    iget-object v0, p0, Lcom/twitter/android/rb;->u:Landroid/view/LayoutInflater;

    const v1, 0x7f0403b7

    invoke-virtual {v0, v1, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 674
    new-instance v1, Lcom/twitter/android/rl;

    invoke-direct {v1, v0}, Lcom/twitter/android/rl;-><init>(Landroid/view/View;)V

    .line 675
    iget-object v2, v1, Lcom/twitter/android/rl;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/twitter/android/rb;->v:Lcom/twitter/android/trends/l;

    .line 676
    invoke-virtual {v3}, Lcom/twitter/android/trends/l;->a()F

    move-result v3

    .line 675
    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 677
    new-instance v2, Lcom/twitter/android/rk;

    invoke-direct {v2}, Lcom/twitter/android/rk;-><init>()V

    .line 678
    invoke-virtual {v2, v1}, Lcom/twitter/android/rk;->a(Lcom/twitter/android/rl;)Lcom/twitter/android/rk;

    move-result-object v1

    const/4 v2, 0x2

    .line 679
    invoke-virtual {v1, v2}, Lcom/twitter/android/rk;->a(I)Lcom/twitter/android/rk;

    move-result-object v1

    .line 680
    invoke-virtual {v1}, Lcom/twitter/android/rk;->a()Lcom/twitter/android/rj;

    move-result-object v1

    .line 681
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 682
    return-object v0
.end method

.method static c(Lcom/twitter/android/timeline/bp;)Z
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 1667
    invoke-virtual {p0}, Lcom/twitter/android/timeline/bp;->c()Lcom/twitter/android/timeline/bj;

    move-result-object v0

    iget v0, v0, Lcom/twitter/android/timeline/bj;->o:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .prologue
    .line 2358
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0402ba

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2361
    const v0, 0x7f13010c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2362
    invoke-static {}, Lcom/twitter/android/revenue/z;->h()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2364
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, v1, v0}, Lcom/twitter/android/rb;->a(Landroid/view/View;[I)V

    .line 2365
    return-object v1

    .line 2364
    :array_0
    .array-data 4
        0x7f13010c
        0x7f1304be
        0x7f13050f
    .end array-data
.end method

.method private d(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 686
    iget-object v0, p0, Lcom/twitter/android/rb;->u:Landroid/view/LayoutInflater;

    const v1, 0x7f0403c4

    invoke-virtual {v0, v1, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 687
    iget-object v1, p0, Lcom/twitter/android/rb;->v:Lcom/twitter/android/trends/l;

    invoke-virtual {v1}, Lcom/twitter/android/trends/l;->a()F

    move-result v1

    .line 688
    iget-object v2, p0, Lcom/twitter/android/rb;->v:Lcom/twitter/android/trends/l;

    invoke-virtual {v2}, Lcom/twitter/android/trends/l;->c()F

    move-result v2

    .line 689
    new-instance v3, Lcom/twitter/android/rq;

    invoke-direct {v3, v0}, Lcom/twitter/android/rq;-><init>(Landroid/view/View;)V

    .line 691
    iget-object v4, v3, Lcom/twitter/android/rq;->e:Lcom/twitter/android/rm;

    iget-object v4, v4, Lcom/twitter/android/rm;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 693
    iget-object v4, v3, Lcom/twitter/android/rq;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 695
    iget-object v4, v3, Lcom/twitter/android/rq;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 696
    iget-object v1, v3, Lcom/twitter/android/rq;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 699
    new-instance v1, Lcom/twitter/android/rk;

    invoke-direct {v1}, Lcom/twitter/android/rk;-><init>()V

    .line 700
    invoke-virtual {v1, v3}, Lcom/twitter/android/rk;->a(Lcom/twitter/android/rq;)Lcom/twitter/android/rk;

    move-result-object v1

    const/4 v2, 0x5

    .line 701
    invoke-virtual {v1, v2}, Lcom/twitter/android/rk;->a(I)Lcom/twitter/android/rk;

    move-result-object v1

    const-string/jumbo v2, "trendsplus"

    .line 702
    invoke-virtual {v1, v2}, Lcom/twitter/android/rk;->a(Ljava/lang/String;)Lcom/twitter/android/rk;

    move-result-object v1

    .line 703
    invoke-virtual {v1}, Lcom/twitter/android/rk;->a()Lcom/twitter/android/rj;

    move-result-object v1

    .line 704
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 705
    return-object v0
.end method

.method private static d(Lcom/twitter/android/timeline/bp;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1944
    instance-of v1, p0, Lcom/twitter/android/timeline/cn;

    if-eqz v1, :cond_0

    .line 1945
    check-cast p0, Lcom/twitter/android/timeline/cn;

    .line 1946
    iget-object v1, p0, Lcom/twitter/android/timeline/cn;->b:Lcom/twitter/model/core/Tweet;

    .line 1947
    invoke-virtual {v1}, Lcom/twitter/model/core/Tweet;->ac()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/twitter/model/core/Tweet;->s()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1949
    :cond_0
    return v0
.end method

.method private static e(Lcom/twitter/android/timeline/bp;)I
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1953
    instance-of v2, p0, Lcom/twitter/android/timeline/cj;

    if-eqz v2, :cond_7

    .line 1954
    check-cast p0, Lcom/twitter/android/timeline/cj;

    .line 1955
    iget-object v3, p0, Lcom/twitter/android/timeline/cj;->e:Lcom/twitter/model/topic/i;

    .line 1956
    iget-object v2, p0, Lcom/twitter/android/timeline/cj;->c:Lcss;

    .line 1957
    iget-object v4, p0, Lcom/twitter/android/timeline/cj;->d:Ljava/lang/String;

    .line 1959
    if-eqz v2, :cond_0

    move v2, v0

    .line 1960
    :goto_0
    if-eqz v3, :cond_1

    iget-boolean v3, v3, Lcom/twitter/model/topic/i;->j:Z

    if-eqz v3, :cond_1

    .line 1961
    :goto_1
    invoke-static {v4}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1963
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 1964
    const/16 v0, 0x10

    .line 1978
    :goto_2
    return v0

    :cond_0
    move v2, v1

    .line 1959
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1960
    goto :goto_1

    .line 1965
    :cond_2
    if-eqz v0, :cond_3

    .line 1966
    const/16 v0, 0xf

    goto :goto_2

    .line 1967
    :cond_3
    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 1968
    const/16 v0, 0x11

    goto :goto_2

    .line 1969
    :cond_4
    if-eqz v2, :cond_5

    .line 1970
    const/16 v0, 0xd

    goto :goto_2

    .line 1971
    :cond_5
    if-eqz v1, :cond_6

    .line 1972
    const/16 v0, 0xe

    goto :goto_2

    .line 1974
    :cond_6
    const/16 v0, 0x9

    goto :goto_2

    .line 1978
    :cond_7
    const/16 v0, 0x8

    goto :goto_2
.end method

.method private e(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 709
    iget-object v0, p0, Lcom/twitter/android/rb;->u:Landroid/view/LayoutInflater;

    const v1, 0x7f0403c8

    invoke-virtual {v0, v1, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 711
    iget-object v1, p0, Lcom/twitter/android/rb;->v:Lcom/twitter/android/trends/l;

    invoke-virtual {v1}, Lcom/twitter/android/trends/l;->a()F

    move-result v1

    .line 712
    iget-object v2, p0, Lcom/twitter/android/rb;->v:Lcom/twitter/android/trends/l;

    invoke-virtual {v2}, Lcom/twitter/android/trends/l;->c()F

    move-result v2

    .line 713
    new-instance v3, Lcom/twitter/android/rp;

    invoke-direct {v3, v0}, Lcom/twitter/android/rp;-><init>(Landroid/view/View;)V

    .line 716
    iget-object v4, v3, Lcom/twitter/android/rp;->e:Lcom/twitter/android/rm;

    iget-object v4, v4, Lcom/twitter/android/rm;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 718
    iget-object v4, v3, Lcom/twitter/android/rp;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 720
    iget-object v1, v3, Lcom/twitter/android/rp;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 722
    new-instance v1, Lcom/twitter/android/rk;

    invoke-direct {v1}, Lcom/twitter/android/rk;-><init>()V

    .line 723
    invoke-virtual {v1, v3}, Lcom/twitter/android/rk;->a(Lcom/twitter/android/rp;)Lcom/twitter/android/rk;

    move-result-object v1

    const/4 v2, 0x5

    .line 724
    invoke-virtual {v1, v2}, Lcom/twitter/android/rk;->a(I)Lcom/twitter/android/rk;

    move-result-object v1

    const-string/jumbo v2, "trendsplus"

    .line 725
    invoke-virtual {v1, v2}, Lcom/twitter/android/rk;->a(Ljava/lang/String;)Lcom/twitter/android/rk;

    move-result-object v1

    .line 726
    invoke-virtual {v1}, Lcom/twitter/android/rk;->a()Lcom/twitter/android/rj;

    move-result-object v1

    .line 727
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 728
    return-object v0
.end method

.method private f(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 732
    iget-object v0, p0, Lcom/twitter/android/rb;->u:Landroid/view/LayoutInflater;

    const v1, 0x7f0403c7

    invoke-virtual {v0, v1, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 734
    iget-object v1, p0, Lcom/twitter/android/rb;->v:Lcom/twitter/android/trends/l;

    invoke-virtual {v1}, Lcom/twitter/android/trends/l;->a()F

    move-result v1

    .line 735
    new-instance v2, Lcom/twitter/android/rp;

    invoke-direct {v2, v0}, Lcom/twitter/android/rp;-><init>(Landroid/view/View;)V

    .line 738
    iget-object v3, v2, Lcom/twitter/android/rp;->e:Lcom/twitter/android/rm;

    iget-object v3, v3, Lcom/twitter/android/rm;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 740
    iget-object v3, v2, Lcom/twitter/android/rp;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 742
    new-instance v1, Lcom/twitter/android/rk;

    invoke-direct {v1}, Lcom/twitter/android/rk;-><init>()V

    .line 743
    invoke-virtual {v1, v2}, Lcom/twitter/android/rk;->a(Lcom/twitter/android/rp;)Lcom/twitter/android/rk;

    move-result-object v1

    const/4 v2, 0x5

    .line 744
    invoke-virtual {v1, v2}, Lcom/twitter/android/rk;->a(I)Lcom/twitter/android/rk;

    move-result-object v1

    const-string/jumbo v2, "trendsplus"

    .line 745
    invoke-virtual {v1, v2}, Lcom/twitter/android/rk;->a(Ljava/lang/String;)Lcom/twitter/android/rk;

    move-result-object v1

    .line 746
    invoke-virtual {v1}, Lcom/twitter/android/rk;->a()Lcom/twitter/android/rj;

    move-result-object v1

    .line 747
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 748
    return-object v0
.end method

.method private g(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 752
    iget-object v0, p0, Lcom/twitter/android/rb;->u:Landroid/view/LayoutInflater;

    const v1, 0x7f0403ba

    invoke-virtual {v0, v1, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 754
    iget-object v1, p0, Lcom/twitter/android/rb;->v:Lcom/twitter/android/trends/l;

    invoke-virtual {v1}, Lcom/twitter/android/trends/l;->a()F

    move-result v1

    .line 755
    new-instance v2, Lcom/twitter/android/rq;

    invoke-direct {v2, v0}, Lcom/twitter/android/rq;-><init>(Landroid/view/View;)V

    .line 757
    iget-object v3, v2, Lcom/twitter/android/rq;->e:Lcom/twitter/android/rm;

    iget-object v3, v3, Lcom/twitter/android/rm;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 759
    iget-object v3, v2, Lcom/twitter/android/rq;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 761
    iget-object v3, v2, Lcom/twitter/android/rq;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 762
    new-instance v1, Lcom/twitter/android/rk;

    invoke-direct {v1}, Lcom/twitter/android/rk;-><init>()V

    .line 763
    invoke-virtual {v1, v2}, Lcom/twitter/android/rk;->a(Lcom/twitter/android/rq;)Lcom/twitter/android/rk;

    move-result-object v1

    const/4 v2, 0x5

    .line 764
    invoke-virtual {v1, v2}, Lcom/twitter/android/rk;->a(I)Lcom/twitter/android/rk;

    move-result-object v1

    const-string/jumbo v2, "trendsplus"

    .line 765
    invoke-virtual {v1, v2}, Lcom/twitter/android/rk;->a(Ljava/lang/String;)Lcom/twitter/android/rk;

    move-result-object v1

    .line 766
    invoke-virtual {v1}, Lcom/twitter/android/rk;->a()Lcom/twitter/android/rj;

    move-result-object v1

    .line 767
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 768
    return-object v0
.end method

.method private h(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 772
    iget-object v0, p0, Lcom/twitter/android/rb;->u:Landroid/view/LayoutInflater;

    const v1, 0x7f0403c1

    invoke-virtual {v0, v1, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 774
    iget-object v1, p0, Lcom/twitter/android/rb;->v:Lcom/twitter/android/trends/l;

    invoke-virtual {v1}, Lcom/twitter/android/trends/l;->a()F

    move-result v1

    .line 775
    iget-object v2, p0, Lcom/twitter/android/rb;->v:Lcom/twitter/android/trends/l;

    invoke-virtual {v2}, Lcom/twitter/android/trends/l;->b()F

    move-result v2

    .line 776
    new-instance v3, Lcom/twitter/android/ro;

    invoke-direct {v3, v0}, Lcom/twitter/android/ro;-><init>(Landroid/view/View;)V

    .line 778
    iget-object v4, v3, Lcom/twitter/android/ro;->b:Lcom/twitter/android/rm;

    iget-object v4, v4, Lcom/twitter/android/rm;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 780
    iget-object v2, v3, Lcom/twitter/android/ro;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 782
    new-instance v1, Lcom/twitter/android/rk;

    invoke-direct {v1}, Lcom/twitter/android/rk;-><init>()V

    .line 783
    invoke-virtual {v1, v3}, Lcom/twitter/android/rk;->a(Lcom/twitter/android/ro;)Lcom/twitter/android/rk;

    move-result-object v1

    const/4 v2, 0x5

    .line 784
    invoke-virtual {v1, v2}, Lcom/twitter/android/rk;->a(I)Lcom/twitter/android/rk;

    move-result-object v1

    const-string/jumbo v2, "trendsplus"

    .line 785
    invoke-virtual {v1, v2}, Lcom/twitter/android/rk;->a(Ljava/lang/String;)Lcom/twitter/android/rk;

    move-result-object v1

    .line 786
    invoke-virtual {v1}, Lcom/twitter/android/rk;->a()Lcom/twitter/android/rj;

    move-result-object v1

    .line 787
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 788
    return-object v0
.end method

.method private i(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 792
    iget-object v0, p0, Lcom/twitter/android/rb;->u:Landroid/view/LayoutInflater;

    const v1, 0x7f0403c2

    invoke-virtual {v0, v1, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 794
    iget-object v1, p0, Lcom/twitter/android/rb;->v:Lcom/twitter/android/trends/l;

    invoke-virtual {v1}, Lcom/twitter/android/trends/l;->a()F

    move-result v1

    .line 795
    iget-object v2, p0, Lcom/twitter/android/rb;->v:Lcom/twitter/android/trends/l;

    invoke-virtual {v2}, Lcom/twitter/android/trends/l;->b()F

    move-result v2

    .line 796
    new-instance v3, Lcom/twitter/android/rn;

    invoke-direct {v3, v0}, Lcom/twitter/android/rn;-><init>(Landroid/view/View;)V

    .line 798
    iget-object v4, v3, Lcom/twitter/android/rn;->c:Lcom/twitter/android/rm;

    iget-object v4, v4, Lcom/twitter/android/rm;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 800
    iget-object v2, v3, Lcom/twitter/android/rn;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 802
    new-instance v1, Lcom/twitter/android/rk;

    invoke-direct {v1}, Lcom/twitter/android/rk;-><init>()V

    .line 803
    invoke-virtual {v1, v3}, Lcom/twitter/android/rk;->a(Lcom/twitter/android/rn;)Lcom/twitter/android/rk;

    move-result-object v1

    const/4 v2, 0x5

    .line 804
    invoke-virtual {v1, v2}, Lcom/twitter/android/rk;->a(I)Lcom/twitter/android/rk;

    move-result-object v1

    const-string/jumbo v2, "trendsplus"

    .line 805
    invoke-virtual {v1, v2}, Lcom/twitter/android/rk;->a(Ljava/lang/String;)Lcom/twitter/android/rk;

    move-result-object v1

    .line 806
    invoke-virtual {v1}, Lcom/twitter/android/rk;->a()Lcom/twitter/android/rj;

    move-result-object v1

    .line 807
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 808
    return-object v0
.end method

.method private j(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 862
    iget-object v0, p0, Lcom/twitter/android/rb;->u:Landroid/view/LayoutInflater;

    const v1, 0x7f040122

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 863
    const v0, 0x7f1303b0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/InlineDismissView;

    .line 864
    new-instance v2, Lcom/twitter/android/hu;

    invoke-direct {v2, v0}, Lcom/twitter/android/hu;-><init>(Lcom/twitter/library/widget/InlineDismissView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 865
    return-object v1
.end method

.method private k(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 870
    iget-object v0, p0, Lcom/twitter/android/rb;->u:Landroid/view/LayoutInflater;

    const v1, 0x7f04012e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 871
    const v0, 0x7f1303b3

    .line 872
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/TimelineMessageView;

    .line 873
    new-instance v2, Lcom/twitter/android/rk;

    invoke-direct {v2}, Lcom/twitter/android/rk;-><init>()V

    new-instance v3, Lcom/twitter/android/ri;

    invoke-direct {v3, v0}, Lcom/twitter/android/ri;-><init>(Lcom/twitter/library/widget/TimelineMessageView;)V

    .line 874
    invoke-virtual {v2, v3}, Lcom/twitter/android/rk;->a(Lcom/twitter/android/ri;)Lcom/twitter/android/rk;

    move-result-object v2

    const/16 v3, 0x9

    .line 875
    invoke-virtual {v2, v3}, Lcom/twitter/android/rk;->a(I)Lcom/twitter/android/rk;

    move-result-object v2

    .line 876
    invoke-virtual {v2}, Lcom/twitter/android/rk;->a()Lcom/twitter/android/rj;

    move-result-object v2

    .line 873
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 877
    iget-object v2, p0, Lcom/twitter/android/rb;->n:Lcom/twitter/android/si;

    invoke-virtual {v0, v2}, Lcom/twitter/library/widget/TimelineMessageView;->a(Lcom/twitter/library/widget/au;)Lcom/twitter/library/widget/TimelineMessageView;

    .line 878
    return-object v1
.end method

.method private l(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 882
    iget-object v0, p0, Lcom/twitter/android/rb;->u:Landroid/view/LayoutInflater;

    const v1, 0x7f04012f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 883
    new-instance v1, Lcom/twitter/android/rg;

    invoke-direct {v1, v0}, Lcom/twitter/android/rg;-><init>(Landroid/view/View;)V

    .line 884
    new-instance v2, Lcom/twitter/android/rk;

    invoke-direct {v2}, Lcom/twitter/android/rk;-><init>()V

    .line 885
    invoke-virtual {v2, v1}, Lcom/twitter/android/rk;->a(Lcom/twitter/android/rg;)Lcom/twitter/android/rk;

    move-result-object v1

    const/16 v2, 0xa

    .line 886
    invoke-virtual {v1, v2}, Lcom/twitter/android/rk;->a(I)Lcom/twitter/android/rk;

    move-result-object v1

    .line 887
    invoke-virtual {v1}, Lcom/twitter/android/rk;->a()Lcom/twitter/android/rj;

    move-result-object v1

    .line 884
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 888
    return-object v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 297
    iget v0, p0, Lcom/twitter/android/rb;->i:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/twitter/android/rb;->a:Lcom/twitter/app/common/base/TwitterFragmentActivity;

    invoke-static {v0}, Lcom/twitter/android/trends/b;->a(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/rb;->A:Landroid/util/SparseArray;

    .line 301
    :cond_0
    return-void
.end method

.method private m()Landroid/view/View;
    .locals 3

    .prologue
    .line 827
    iget-object v0, p0, Lcom/twitter/android/rb;->u:Landroid/view/LayoutInflater;

    const v1, 0x7f04011d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 828
    invoke-virtual {p0, v0}, Lcom/twitter/android/rb;->a(Landroid/view/View;)V

    .line 829
    return-object v0
.end method


# virtual methods
.method protected a(Lcom/twitter/android/timeline/bp;)I
    .locals 6

    .prologue
    const/16 v0, 0x1a

    const/16 v1, 0x8

    .line 319
    invoke-virtual {p1}, Lcom/twitter/android/timeline/bp;->c()Lcom/twitter/android/timeline/bj;

    move-result-object v2

    .line 321
    iget v3, v2, Lcom/twitter/android/timeline/bj;->f:I

    .line 323
    iget v4, v2, Lcom/twitter/android/timeline/bj;->c:I

    .line 324
    iget-boolean v5, v2, Lcom/twitter/android/timeline/bj;->j:Z

    .line 325
    packed-switch v4, :pswitch_data_0

    .line 425
    :cond_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/twitter/android/gx;->a(Lcom/twitter/android/timeline/bp;)I

    move-result v1

    :cond_1
    :goto_0
    :pswitch_1
    return v1

    .line 327
    :pswitch_2
    if-eqz v5, :cond_2

    .line 328
    const/4 v1, 0x7

    goto :goto_0

    .line 329
    :cond_2
    invoke-static {v3}, Lcom/twitter/model/timeline/bg;->b(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 330
    const/4 v1, 0x2

    goto :goto_0

    .line 331
    :cond_3
    invoke-static {v3}, Lcom/twitter/model/timeline/bg;->m(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 332
    iget-object v1, p0, Lcom/twitter/android/rb;->O:Lcom/twitter/model/timeline/bu;

    iget-boolean v1, v1, Lcom/twitter/model/timeline/bu;->b:Z

    const/16 v3, 0xc

    invoke-static {v1, v2, v0, v3}, Lcom/twitter/android/rb;->a(ZLcom/twitter/android/timeline/bj;II)I

    move-result v1

    goto :goto_0

    .line 334
    :cond_4
    invoke-static {v3}, Lcom/twitter/model/timeline/bg;->o(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/twitter/android/rb;->O:Lcom/twitter/model/timeline/bu;

    iget-boolean v1, v1, Lcom/twitter/model/timeline/bu;->d:Z

    const/16 v3, 0x15

    invoke-static {v1, v2, v0, v3}, Lcom/twitter/android/rb;->a(ZLcom/twitter/android/timeline/bj;II)I

    move-result v1

    goto :goto_0

    .line 344
    :pswitch_3
    invoke-static {v3}, Lcom/twitter/model/timeline/bg;->c(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 345
    const/4 v1, 0x3

    goto :goto_0

    .line 346
    :cond_5
    invoke-static {v3}, Lcom/twitter/model/timeline/bg;->d(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 347
    const/4 v1, 0x4

    goto :goto_0

    .line 348
    :cond_6
    invoke-static {v3}, Lcom/twitter/model/timeline/bg;->n(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 349
    iget-object v0, p0, Lcom/twitter/android/rb;->O:Lcom/twitter/model/timeline/bu;

    iget-boolean v0, v0, Lcom/twitter/model/timeline/bu;->b:Z

    const/16 v3, 0x16

    invoke-static {v0, v2, v1, v3}, Lcom/twitter/android/rb;->a(ZLcom/twitter/android/timeline/bj;II)I

    move-result v1

    goto :goto_0

    .line 351
    :cond_7
    invoke-static {v3}, Lcom/twitter/model/timeline/bg;->g(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 352
    iget-object v0, p0, Lcom/twitter/android/rb;->O:Lcom/twitter/model/timeline/bu;

    iget-boolean v0, v0, Lcom/twitter/model/timeline/bu;->j:Z

    if-eqz v0, :cond_8

    const/16 v0, 0x12

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_1

    .line 353
    :cond_9
    iget-boolean v4, p0, Lcom/twitter/android/rb;->C:Z

    if-eqz v4, :cond_a

    invoke-static {p1}, Lcom/twitter/android/rb;->d(Lcom/twitter/android/timeline/bp;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 354
    const/16 v1, 0x13

    goto :goto_0

    .line 355
    :cond_a
    invoke-static {v3}, Lcom/twitter/model/timeline/bg;->p(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 356
    iget-object v1, p0, Lcom/twitter/android/rb;->O:Lcom/twitter/model/timeline/bu;

    iget-boolean v1, v1, Lcom/twitter/model/timeline/bu;->c:Z

    const/16 v3, 0x14

    invoke-static {v1, v2, v0, v3}, Lcom/twitter/android/rb;->a(ZLcom/twitter/android/timeline/bj;II)I

    move-result v1

    goto :goto_0

    .line 358
    :cond_b
    invoke-static {v3}, Lcom/twitter/model/timeline/bg;->s(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 359
    invoke-static {}, Lcey;->n()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 361
    :cond_c
    invoke-virtual {p1}, Lcom/twitter/android/timeline/bp;->c()Lcom/twitter/android/timeline/bj;

    move-result-object v2

    iget-boolean v2, v2, Lcom/twitter/android/timeline/bj;->m:Z

    if-eqz v2, :cond_d

    move v1, v0

    .line 362
    goto/16 :goto_0

    .line 363
    :cond_d
    invoke-static {v3}, Lcom/twitter/model/timeline/bg;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 365
    check-cast v0, Lcom/twitter/android/timeline/cn;

    .line 366
    iget-object v2, v0, Lcom/twitter/android/timeline/cn;->b:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v2}, Lcom/twitter/model/core/Tweet;->c()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/twitter/android/rb;->O:Lcom/twitter/model/timeline/bu;

    iget-boolean v2, v2, Lcom/twitter/model/timeline/bu;->l:Z

    if-eqz v2, :cond_1

    .line 371
    :cond_e
    iget-object v2, p0, Lcom/twitter/android/rb;->D:Ljava/util/Set;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/twitter/android/rb;->D:Ljava/util/Set;

    iget-object v0, v0, Lcom/twitter/android/timeline/cn;->b:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 378
    :pswitch_4
    invoke-static {p1}, Lcom/twitter/android/rb;->e(Lcom/twitter/android/timeline/bp;)I

    move-result v1

    goto/16 :goto_0

    .line 381
    :pswitch_5
    iget-object v0, p0, Lcom/twitter/android/rb;->O:Lcom/twitter/model/timeline/bu;

    iget-boolean v0, v0, Lcom/twitter/model/timeline/bu;->h:Z

    if-eqz v0, :cond_1

    const/16 v1, 0x1b

    goto/16 :goto_0

    .line 384
    :pswitch_6
    invoke-static {v3}, Lcom/twitter/model/timeline/bg;->v(I)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xb

    :goto_2
    move v1, v0

    goto/16 :goto_0

    :cond_f
    const/16 v0, 0xa

    goto :goto_2

    .line 388
    :pswitch_7
    invoke-static {v3}, Lcom/twitter/model/timeline/bg;->q(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    invoke-direct {p0, p1, v2}, Lcom/twitter/android/rb;->a(Lcom/twitter/android/timeline/bp;Lcom/twitter/android/timeline/bj;)I

    move-result v1

    goto/16 :goto_0

    .line 394
    :pswitch_8
    invoke-static {v3}, Lcom/twitter/model/timeline/bg;->t(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    invoke-static {}, Lcey;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x19

    goto/16 :goto_0

    .line 401
    :pswitch_9
    invoke-static {}, Lcey;->k()Z

    move-result v1

    const/16 v3, 0x1d

    invoke-static {v1, v2, v0, v3}, Lcom/twitter/android/rb;->a(ZLcom/twitter/android/timeline/bj;II)I

    move-result v1

    goto/16 :goto_0

    .line 405
    :pswitch_a
    iget-object v0, p0, Lcom/twitter/android/rb;->O:Lcom/twitter/model/timeline/bu;

    iget-boolean v0, v0, Lcom/twitter/model/timeline/bu;->i:Z

    if-eqz v0, :cond_1

    .line 406
    check-cast p1, Lcom/twitter/android/timeline/a;

    .line 407
    iget-object v0, p0, Lcom/twitter/android/rb;->M:Lcom/twitter/android/revenue/d;

    iget-object v1, p1, Lcom/twitter/android/timeline/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/android/revenue/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 408
    const-string/jumbo v1, "tweet"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 409
    const/16 v1, 0x1c

    goto/16 :goto_0

    .line 411
    :cond_10
    const/16 v1, 0x1e

    goto/16 :goto_0

    .line 418
    :pswitch_b
    iget-object v0, p0, Lcom/twitter/android/rb;->O:Lcom/twitter/model/timeline/bu;

    iget-boolean v0, v0, Lcom/twitter/model/timeline/bu;->k:Z

    const/4 v3, 0x5

    invoke-static {v0, v2, v1, v3}, Lcom/twitter/android/rb;->a(ZLcom/twitter/android/timeline/bj;II)I

    move-result v1

    goto/16 :goto_0

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 146
    check-cast p1, Lcom/twitter/android/timeline/bp;

    invoke-virtual {p0, p1}, Lcom/twitter/android/rb;->a(Lcom/twitter/android/timeline/bp;)I

    move-result v0

    return v0
.end method

.method a(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 816
    iget-object v0, p0, Lcom/twitter/android/rb;->u:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 817
    new-instance v1, Lcom/twitter/android/qi;

    invoke-direct {v1, v0}, Lcom/twitter/android/qi;-><init>(Landroid/view/View;)V

    .line 818
    new-instance v2, Lcom/twitter/android/rk;

    invoke-direct {v2}, Lcom/twitter/android/rk;-><init>()V

    .line 819
    invoke-virtual {v2, v1}, Lcom/twitter/android/rk;->a(Lcom/twitter/android/qi;)Lcom/twitter/android/rk;

    move-result-object v1

    const/4 v2, 0x3

    .line 820
    invoke-virtual {v1, v2}, Lcom/twitter/android/rk;->a(I)Lcom/twitter/android/rk;

    move-result-object v1

    .line 821
    invoke-virtual {v1}, Lcom/twitter/android/rk;->a()Lcom/twitter/android/rj;

    move-result-object v1

    .line 822
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 823
    return-object v0
.end method

.method protected a(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    .prologue
    .line 837
    new-instance v0, Lcom/twitter/internal/android/widget/GroupedRowView;

    invoke-direct {v0, p1}, Lcom/twitter/internal/android/widget/GroupedRowView;-><init>(Landroid/content/Context;)V

    .line 838
    new-instance v1, Lcom/twitter/android/UmfInlinePromptView;

    invoke-direct {v1, p1}, Lcom/twitter/android/UmfInlinePromptView;-><init>(Landroid/content/Context;)V

    .line 839
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/twitter/android/UmfInlinePromptView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 841
    invoke-virtual {v1}, Lcom/twitter/android/UmfInlinePromptView;->e()V

    .line 842
    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/GroupedRowView;->addView(Landroid/view/View;)V

    .line 843
    new-instance v2, Lcom/twitter/android/rf;

    invoke-direct {v2, v1}, Lcom/twitter/android/rf;-><init>(Lcom/twitter/android/UmfInlinePromptView;)V

    invoke-virtual {v0, v2}, Lcom/twitter/internal/android/widget/GroupedRowView;->setTag(Ljava/lang/Object;)V

    .line 844
    return-object v0
.end method

.method protected a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 849
    iget-object v0, p0, Lcom/twitter/android/rb;->u:Landroid/view/LayoutInflater;

    const v1, 0x7f040136

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 850
    check-cast v0, Lcom/twitter/internal/android/widget/GroupedRowView;

    invoke-virtual {v0, v2}, Lcom/twitter/internal/android/widget/GroupedRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/WhoToFollowUsersView;

    .line 851
    iget-object v2, p0, Lcom/twitter/android/rb;->m:Lcom/twitter/android/ys;

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/WhoToFollowUsersView;->setWhoToFollowUserClickListener(Lcom/twitter/android/ys;)V

    .line 852
    new-instance v2, Lcom/twitter/android/rk;

    invoke-direct {v2}, Lcom/twitter/android/rk;-><init>()V

    .line 853
    invoke-virtual {v2, v0}, Lcom/twitter/android/rk;->a(Lcom/twitter/android/widget/WhoToFollowUsersView;)Lcom/twitter/android/rk;

    move-result-object v0

    const/4 v2, 0x7

    .line 854
    invoke-virtual {v0, v2}, Lcom/twitter/android/rk;->a(I)Lcom/twitter/android/rk;

    move-result-object v0

    .line 855
    invoke-virtual {v0}, Lcom/twitter/android/rk;->a()Lcom/twitter/android/rj;

    move-result-object v0

    .line 856
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 857
    return-object v1
.end method

.method public a(Landroid/content/Context;Lcom/twitter/android/timeline/bp;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 450
    invoke-virtual {p0, p2}, Lcom/twitter/android/rb;->a(Lcom/twitter/android/timeline/bp;)I

    move-result v0

    .line 452
    packed-switch v0, :pswitch_data_0

    .line 561
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/gx;->a(Landroid/content/Context;Lcom/twitter/android/timeline/bp;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 565
    :goto_0
    return-object v0

    .line 454
    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/rb;->u:Landroid/view/LayoutInflater;

    const v1, 0x7f04011a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 455
    new-instance v1, Lcom/twitter/android/re;

    invoke-direct {v1, v0}, Lcom/twitter/android/re;-><init>(Landroid/view/View;)V

    .line 457
    new-instance v2, Lcom/twitter/android/rk;

    invoke-direct {v2}, Lcom/twitter/android/rk;-><init>()V

    .line 458
    invoke-virtual {v2, v1}, Lcom/twitter/android/rk;->a(Lcom/twitter/android/re;)Lcom/twitter/android/rk;

    move-result-object v1

    const/4 v2, 0x0

    .line 459
    invoke-virtual {v1, v2}, Lcom/twitter/android/rk;->a(I)Lcom/twitter/android/rk;

    move-result-object v1

    .line 460
    invoke-virtual {v1}, Lcom/twitter/android/rk;->a()Lcom/twitter/android/rj;

    move-result-object v1

    .line 461
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 465
    :pswitch_2
    invoke-direct {p0}, Lcom/twitter/android/rb;->m()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 469
    :pswitch_3
    invoke-direct {p0}, Lcom/twitter/android/rb;->m()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 473
    :pswitch_4
    invoke-direct {p0, p3}, Lcom/twitter/android/rb;->c(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 477
    :pswitch_5
    invoke-direct {p0, p3}, Lcom/twitter/android/rb;->d(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 481
    :pswitch_6
    invoke-direct {p0, p3}, Lcom/twitter/android/rb;->e(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 485
    :pswitch_7
    invoke-direct {p0, p3}, Lcom/twitter/android/rb;->f(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 489
    :pswitch_8
    invoke-direct {p0, p3}, Lcom/twitter/android/rb;->g(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 493
    :pswitch_9
    invoke-direct {p0, p3}, Lcom/twitter/android/rb;->h(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 497
    :pswitch_a
    invoke-direct {p0, p3}, Lcom/twitter/android/rb;->i(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 501
    :pswitch_b
    const v0, 0x7f040126

    invoke-direct {p0, v0}, Lcom/twitter/android/rb;->c(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 506
    :pswitch_c
    const v0, 0x7f04011f

    invoke-direct {p0, v0}, Lcom/twitter/android/rb;->c(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 511
    :pswitch_d
    invoke-direct {p0, p1}, Lcom/twitter/android/rb;->c(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 515
    :pswitch_e
    invoke-direct {p0, p3}, Lcom/twitter/android/rb;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 520
    :pswitch_f
    invoke-virtual {p0, p1}, Lcom/twitter/android/rb;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 524
    :pswitch_10
    invoke-direct {p0, p1}, Lcom/twitter/android/rb;->d(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 525
    invoke-virtual {p0, v0}, Lcom/twitter/android/rb;->a(Landroid/view/View;)V

    goto :goto_0

    .line 529
    :pswitch_11
    invoke-virtual {p0, p1, p3}, Lcom/twitter/android/rb;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 533
    :pswitch_12
    iget-object v0, p0, Lcom/twitter/android/rb;->J:Lcom/twitter/android/timeline/cr;

    invoke-direct {p0, p3, v0}, Lcom/twitter/android/rb;->a(Landroid/view/ViewGroup;Lcom/twitter/android/timeline/cr;)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    .line 537
    :pswitch_13
    iget-object v0, p0, Lcom/twitter/android/rb;->K:Lcom/twitter/android/timeline/at;

    invoke-direct {p0, p3, v0}, Lcom/twitter/android/rb;->a(Landroid/view/ViewGroup;Lcom/twitter/android/timeline/at;)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    .line 541
    :pswitch_14
    invoke-direct {p0, p3}, Lcom/twitter/android/rb;->b(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    .line 545
    :pswitch_15
    invoke-direct {p0, p3}, Lcom/twitter/android/rb;->j(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    .line 549
    :pswitch_16
    invoke-direct {p0, p3}, Lcom/twitter/android/rb;->k(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    .line 553
    :pswitch_17
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/gx;->a(Landroid/content/Context;Lcom/twitter/android/timeline/bp;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    .line 557
    :pswitch_18
    invoke-direct {p0, p3}, Lcom/twitter/android/rb;->l(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    .line 452
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_18
        :pswitch_4
        :pswitch_b
        :pswitch_d
        :pswitch_5
        :pswitch_f
        :pswitch_f
        :pswitch_c
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_7
        :pswitch_e
        :pswitch_10
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_13
        :pswitch_d
    .end packed-switch
.end method

.method public bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 146
    check-cast p2, Lcom/twitter/android/timeline/bp;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/rb;->a(Landroid/content/Context;Lcom/twitter/android/timeline/bp;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/view/View;Lcom/twitter/android/timeline/cn;I)Lcom/twitter/model/core/Tweet;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1690
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/gx;->a(Landroid/view/View;Lcom/twitter/android/timeline/cn;I)Lcom/twitter/model/core/Tweet;

    move-result-object v1

    .line 1691
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/vy;

    .line 1692
    iget-object v0, v0, Lcom/twitter/android/vy;->d:Lcom/twitter/library/widget/TweetView;

    .line 1693
    iget-object v2, p0, Lcom/twitter/android/rb;->z:Lcom/twitter/android/util/au;

    if-eqz v2, :cond_0

    .line 1694
    iget-object v2, p0, Lcom/twitter/android/rb;->z:Lcom/twitter/android/util/au;

    invoke-virtual {v2}, Lcom/twitter/android/util/au;->a()Lcom/twitter/android/util/a;

    move-result-object v2

    .line 1695
    iget-wide v4, v1, Lcom/twitter/model/core/Tweet;->C:J

    invoke-virtual {v2, v4, v5}, Lcom/twitter/android/util/a;->a(J)Lcom/twitter/model/timeline/w;

    move-result-object v3

    .line 1696
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/twitter/model/timeline/w;->m()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1697
    invoke-virtual {v3}, Lcom/twitter/model/timeline/w;->j()Lcom/twitter/model/core/TweetActionType;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/twitter/library/widget/TweetView;->a(Lcom/twitter/model/core/TweetActionType;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1698
    invoke-virtual {v0, v6}, Lcom/twitter/library/widget/TweetView;->setShowActionPrompt(Z)V

    .line 1699
    invoke-virtual {v0, v3}, Lcom/twitter/library/widget/TweetView;->setActionPrompt(Lcom/twitter/model/timeline/w;)V

    .line 1700
    invoke-virtual {v3, v6}, Lcom/twitter/model/timeline/w;->a(Z)V

    .line 1701
    invoke-virtual {v3}, Lcom/twitter/model/timeline/w;->d()V

    .line 1702
    iget-object v0, p0, Lcom/twitter/android/rb;->b:Lcom/twitter/android/client/c;

    iget v2, v3, Lcom/twitter/model/timeline/w;->c:I

    invoke-virtual {v0, v2}, Lcom/twitter/android/client/c;->a(I)V

    .line 1708
    :cond_0
    :goto_0
    return-object v1

    .line 1704
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/twitter/library/widget/TweetView;->setShowActionPrompt(Z)V

    .line 1705
    iget-wide v4, v1, Lcom/twitter/model/core/Tweet;->C:J

    invoke-virtual {v2, v4, v5}, Lcom/twitter/android/util/a;->b(J)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;III)V
    .locals 6

    .prologue
    .line 961
    sub-int v0, p2, p3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 962
    invoke-virtual {p0, v0}, Lcom/twitter/android/rb;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/bp;

    .line 963
    instance-of v1, v0, Lcom/twitter/android/timeline/ap;

    if-eqz v1, :cond_0

    move-object v2, v0

    .line 964
    check-cast v2, Lcom/twitter/android/timeline/ap;

    .line 965
    iget-object v3, p0, Lcom/twitter/android/rb;->j:Lcom/twitter/android/timeline/an;

    iget-object v0, v2, Lcom/twitter/android/timeline/ap;->b:Lcom/twitter/model/timeline/aa;

    iget-object v4, v0, Lcom/twitter/model/timeline/aa;->b:Ljava/lang/String;

    const v5, 0x7f0a06cc

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/rb;->a(Landroid/view/View;Lcom/twitter/android/timeline/bp;Landroid/view/View$OnClickListener;Ljava/lang/String;I)V

    .line 971
    :goto_0
    return-void

    .line 968
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attempted to display a pinned header for an unsupported item type.\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lbix;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected a(Landroid/view/View;Landroid/content/Context;Lcom/twitter/android/timeline/bp;I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .prologue
    .line 1053
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/twitter/android/rb;->b(Landroid/view/View;Landroid/content/Context;Lcom/twitter/android/timeline/bp;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    :goto_0
    return-void

    .line 1054
    :catch_0
    move-exception v0

    .line 1055
    invoke-virtual {p0}, Lcom/twitter/android/rb;->g()Lcom/twitter/android/timeline/br;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/timeline/br;->a()Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {p0, p4, v1, p1}, Lcom/twitter/android/rb;->a(ILandroid/database/Cursor;Landroid/view/View;)Lbiv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbiv;->a(Ljava/lang/Throwable;)Lbiv;

    move-result-object v0

    invoke-static {v0}, Lbix;->a(Lbiv;)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Landroid/view/View;Landroid/content/Context;Ljava/lang/Object;I)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .prologue
    .line 146
    check-cast p3, Lcom/twitter/android/timeline/bp;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/twitter/android/rb;->a(Landroid/view/View;Landroid/content/Context;Lcom/twitter/android/timeline/bp;I)V

    return-void
.end method

.method protected a(Landroid/view/View;Lcom/twitter/android/timeline/z;)V
    .locals 3

    .prologue
    .line 892
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/rf;

    .line 894
    iget-object v1, v0, Lcom/twitter/android/rf;->a:Lcom/twitter/android/UmfInlinePromptView;

    iget-object v1, v1, Lcom/twitter/android/UmfInlinePromptView;->a:Lcom/twitter/model/timeline/w;

    .line 895
    if-eqz v1, :cond_0

    iget-object v2, p2, Lcom/twitter/android/timeline/z;->a:Lcom/twitter/model/timeline/w;

    invoke-virtual {v1, v2}, Lcom/twitter/model/timeline/w;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/twitter/android/rf;->a:Lcom/twitter/android/UmfInlinePromptView;

    .line 896
    invoke-virtual {v1}, Lcom/twitter/android/UmfInlinePromptView;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 897
    iget-object v1, v0, Lcom/twitter/android/rf;->a:Lcom/twitter/android/UmfInlinePromptView;

    invoke-virtual {v1}, Lcom/twitter/android/UmfInlinePromptView;->c()V

    .line 898
    iget-object v0, v0, Lcom/twitter/android/rf;->a:Lcom/twitter/android/UmfInlinePromptView;

    invoke-virtual {v0}, Lcom/twitter/android/UmfInlinePromptView;->e()V

    .line 902
    :goto_0
    return-void

    .line 900
    :cond_0
    iget-object v0, v0, Lcom/twitter/android/rf;->a:Lcom/twitter/android/UmfInlinePromptView;

    iget-object v1, p2, Lcom/twitter/android/timeline/z;->a:Lcom/twitter/model/timeline/w;

    invoke-virtual {v0, v1}, Lcom/twitter/android/UmfInlinePromptView;->a(Lcom/twitter/model/timeline/w;)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/android/kn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/kn",
            "<",
            "Landroid/view/View;",
            "Lcss;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2007
    iput-object p1, p0, Lcom/twitter/android/rb;->r:Lcom/twitter/android/kn;

    .line 2008
    return-void
.end method

.method public a(Lcom/twitter/android/util/au;)V
    .locals 0

    .prologue
    .line 2003
    iput-object p1, p0, Lcom/twitter/android/rb;->z:Lcom/twitter/android/util/au;

    .line 2004
    return-void
.end method

.method public a(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    iput-object p1, p0, Lcom/twitter/android/rb;->D:Ljava/util/Set;

    .line 288
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 978
    iput-boolean p1, p0, Lcom/twitter/android/rb;->B:Z

    .line 979
    return-void
.end method

.method public a(I)Z
    .locals 2

    .prologue
    .line 443
    invoke-virtual {p0, p1}, Lcom/twitter/android/rb;->getItemViewType(I)I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a_(II)I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 916
    .line 918
    iget-object v0, p0, Lcom/twitter/android/rb;->O:Lcom/twitter/model/timeline/bu;

    iget-boolean v0, v0, Lcom/twitter/model/timeline/bu;->b:Z

    if-eqz v0, :cond_3

    .line 919
    sub-int v3, p1, p2

    .line 920
    invoke-virtual {p0}, Lcom/twitter/android/rb;->g()Lcom/twitter/android/timeline/br;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/br;

    .line 921
    if-ltz v3, :cond_3

    .line 922
    invoke-virtual {v0}, Lcom/twitter/android/timeline/br;->c()I

    move-result v4

    .line 923
    invoke-virtual {p0, v3}, Lcom/twitter/android/rb;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/timeline/bp;

    .line 924
    if-eqz v1, :cond_2

    .line 925
    invoke-virtual {v1}, Lcom/twitter/android/timeline/bp;->c()Lcom/twitter/android/timeline/bj;

    move-result-object v1

    .line 927
    iget-boolean v5, v1, Lcom/twitter/android/timeline/bj;->m:Z

    if-nez v5, :cond_1

    .line 928
    iget v5, v1, Lcom/twitter/android/timeline/bj;->q:I

    packed-switch v5, :pswitch_data_0

    .line 943
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid pinned header state "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v1, v1, Lcom/twitter/android/timeline/bj;->q:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lbix;->a(Ljava/lang/Throwable;)V

    move v1, v2

    .line 951
    :goto_0
    if-eq v4, v3, :cond_0

    .line 952
    invoke-virtual {v0, v4}, Lcom/twitter/android/timeline/br;->d_(I)Z

    :cond_0
    move v0, v1

    .line 956
    :goto_1
    return v0

    :pswitch_0
    move v1, v2

    .line 931
    goto :goto_0

    .line 934
    :pswitch_1
    const/4 v2, 0x1

    move v1, v2

    .line 935
    goto :goto_0

    .line 938
    :pswitch_2
    const/4 v2, 0x2

    move v1, v2

    .line 939
    goto :goto_0

    :cond_1
    move v1, v2

    .line 948
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    .line 928
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected b()Lcmv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcmv",
            "<",
            "Lcom/twitter/android/timeline/bp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    new-instance v0, Lcmr;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/twitter/android/timeline/bo;->a(Z)Lcmv;

    move-result-object v1

    invoke-direct {v0, v1}, Lcmr;-><init>(Lcmv;)V

    return-object v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1873
    invoke-virtual {p0}, Lcom/twitter/android/rb;->g()Lcom/twitter/android/timeline/br;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/br;

    .line 1874
    invoke-virtual {v0, p1}, Lcom/twitter/android/timeline/br;->i(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Landroid/view/View;Landroid/content/Context;Lcom/twitter/android/timeline/bp;I)V
    .locals 24

    .prologue
    .line 1063
    if-nez p4, :cond_6

    const/4 v6, 0x1

    move v14, v6

    .line 1064
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/rb;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move/from16 v0, p4

    if-ne v0, v6, :cond_7

    const/4 v6, 0x1

    move v7, v6

    .line 1066
    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/twitter/android/timeline/bp;->c()Lcom/twitter/android/timeline/bj;

    move-result-object v6

    .line 1068
    iget v8, v6, Lcom/twitter/android/timeline/bj;->f:I

    .line 1069
    iget v15, v6, Lcom/twitter/android/timeline/bj;->b:I

    .line 1071
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/twitter/android/rb;->a(Lcom/twitter/android/timeline/bp;)I

    move-result v16

    .line 1072
    iget-boolean v0, v6, Lcom/twitter/android/timeline/bj;->i:Z

    move/from16 v17, v0

    .line 1073
    iget-boolean v0, v6, Lcom/twitter/android/timeline/bj;->j:Z

    move/from16 v18, v0

    .line 1074
    iget-boolean v0, v6, Lcom/twitter/android/timeline/bj;->g:Z

    move/from16 v19, v0

    .line 1075
    iget-boolean v0, v6, Lcom/twitter/android/timeline/bj;->h:Z

    move/from16 v20, v0

    .line 1076
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1077
    const-string/jumbo v6, "position"

    move/from16 v0, p4

    invoke-virtual {v10, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1079
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/twitter/config/AppConfig;->p()Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0xc

    move/from16 v0, v16

    if-eq v0, v6, :cond_1

    .line 1080
    invoke-virtual/range {p3 .. p4}, Lcom/twitter/android/timeline/bp;->a(I)Ljava/lang/String;

    move-result-object v9

    .line 1081
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 1082
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/twitter/android/rb;->Q:Z

    if-eqz v11, :cond_0

    instance-of v11, v6, Lcom/twitter/android/vy;

    if-eqz v11, :cond_0

    .line 1083
    check-cast v6, Lcom/twitter/android/vy;

    .line 1084
    iget-object v6, v6, Lcom/twitter/android/vy;->d:Lcom/twitter/library/widget/TweetView;

    const v11, 0x7f130083

    invoke-virtual {v6, v11, v9}, Lcom/twitter/library/widget/TweetView;->setTag(ILjava/lang/Object;)V

    .line 1086
    :cond_0
    const v6, 0x7f130083

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1089
    :cond_1
    packed-switch v16, :pswitch_data_0

    .line 1464
    invoke-super/range {p0 .. p4}, Lcom/twitter/android/gx;->a(Landroid/view/View;Landroid/content/Context;Lcom/twitter/android/timeline/bp;I)V

    .line 1465
    invoke-static {v8}, Lcom/twitter/model/timeline/bg;->f(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1466
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/twitter/android/vy;

    .line 1467
    iget-object v6, v6, Lcom/twitter/android/vy;->d:Lcom/twitter/library/widget/TweetView;

    .line 1468
    invoke-virtual {v6}, Lcom/twitter/library/widget/TweetView;->getTweet()Lcom/twitter/model/core/Tweet;

    move-result-object v7

    .line 1469
    move-object/from16 v0, p3

    invoke-static {v0, v7}, Lcom/twitter/android/rb;->a(Lcom/twitter/android/timeline/bp;Lcom/twitter/model/core/Tweet;)Z

    move-result v9

    if-eqz v9, :cond_24

    .line 1470
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/twitter/library/widget/TweetView;->setCurationAction(I)V

    .line 1476
    :goto_2
    invoke-static {v8}, Lcom/twitter/model/timeline/bg;->k(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1477
    new-instance v6, Lcom/twitter/library/scribe/TwitterScribeLog;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/rb;->c:Lcom/twitter/library/client/bk;

    .line 1478
    invoke-virtual {v8}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v8

    invoke-virtual {v8}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "instant_timeline"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x2

    .line 1479
    invoke-virtual {v7}, Lcom/twitter/model/core/Tweet;->Y()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string/jumbo v10, "tweet"

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string/jumbo v10, "impression"

    aput-object v10, v8, v9

    invoke-virtual {v6, v8}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v6

    check-cast v6, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v8, v7, Lcom/twitter/model/core/Tweet;->p:J

    .line 1480
    invoke-virtual {v6, v8, v9}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(J)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v6

    .line 1477
    invoke-static {v6}, Lbjf;->a(Lbjh;)V

    .line 1485
    :cond_2
    move-object/from16 v0, p0

    iget v6, v0, Lcom/twitter/android/rb;->i:I

    if-nez v6, :cond_3

    move-object/from16 v0, p3

    instance-of v6, v0, Lcom/twitter/android/timeline/aq;

    if-eqz v6, :cond_3

    .line 1486
    new-instance v6, Lcom/twitter/library/scribe/TwitterScribeLog;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/rb;->c:Lcom/twitter/library/client/bk;

    invoke-virtual {v7}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v7

    invoke-virtual {v7}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "home::gap::impression"

    aput-object v9, v7, v8

    .line 1487
    invoke-virtual {v6, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v6

    .line 1486
    invoke-static {v6}, Lbjf;->a(Lbjh;)V

    .line 1494
    :cond_3
    :goto_3
    :pswitch_0
    const/16 v6, 0x12

    move/from16 v0, v16

    if-eq v6, v0, :cond_4

    const/16 v6, 0x18

    move/from16 v0, v16

    if-eq v6, v0, :cond_4

    const/16 v6, 0x1d

    move/from16 v0, v16

    if-eq v6, v0, :cond_4

    const/16 v6, 0x1a

    move/from16 v0, v16

    if-ne v6, v0, :cond_26

    .line 1498
    :cond_4
    check-cast p1, Lcom/twitter/internal/android/widget/GroupedRowView;

    .line 1499
    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/twitter/internal/android/widget/GroupedRowView;->setSingle(Z)V

    .line 1500
    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/twitter/internal/android/widget/GroupedRowView;->setGroupStyle(I)V

    .line 1501
    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/twitter/internal/android/widget/GroupedRowView;->setStyle(I)V

    .line 1511
    :cond_5
    :goto_4
    return-void

    .line 1063
    :cond_6
    const/4 v6, 0x0

    move v14, v6

    goto/16 :goto_0

    .line 1064
    :cond_7
    const/4 v6, 0x0

    move v7, v6

    goto/16 :goto_1

    .line 1091
    :pswitch_1
    check-cast p3, Lcom/twitter/android/timeline/l;

    .line 1092
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/twitter/android/rj;

    .line 1093
    iget-object v7, v6, Lcom/twitter/android/rj;->a:Lcom/twitter/android/re;

    .line 1095
    const-wide/16 v8, 0x0

    .line 1097
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/twitter/android/timeline/l;->a:Lcom/twitter/model/timeline/e;

    .line 1098
    if-eqz v6, :cond_8

    .line 1099
    iget-wide v8, v6, Lcom/twitter/model/timeline/e;->b:J

    .line 1100
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c001b

    iget v12, v6, Lcom/twitter/model/timeline/e;->c:I

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/16 v21, 0x0

    iget v6, v6, Lcom/twitter/model/timeline/e;->c:I

    .line 1101
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v13, v21

    .line 1100
    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1105
    :goto_5
    iput-wide v8, v7, Lcom/twitter/android/re;->c:J

    .line 1106
    iget-object v8, v7, Lcom/twitter/android/re;->b:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1107
    iget-object v6, v7, Lcom/twitter/android/re;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1108
    invoke-static {}, Lcam;->a()Lcam;

    move-result-object v8

    invoke-virtual {v8}, Lcam;->c()I

    move-result v8

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1109
    iget-object v6, v7, Lcom/twitter/android/re;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->requestLayout()V

    goto :goto_3

    .line 1103
    :cond_8
    const v6, 0x7f0a08ea

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 1114
    :pswitch_2
    if-nez v19, :cond_9

    const/4 v6, 0x1

    move v8, v6

    .line 1115
    :goto_6
    if-nez v20, :cond_a

    const/4 v6, 0x1

    move v7, v6

    .line 1116
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/twitter/android/vy;

    .line 1117
    check-cast p3, Lcom/twitter/android/timeline/cn;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/rb;->a(Landroid/view/View;Lcom/twitter/android/timeline/cn;I)Lcom/twitter/model/core/Tweet;

    .line 1118
    iget-object v9, v6, Lcom/twitter/android/vy;->d:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v9, v8, v7}, Lcom/twitter/library/widget/TweetView;->a(ZZ)V

    .line 1119
    iget-object v7, v6, Lcom/twitter/android/vy;->d:Lcom/twitter/library/widget/TweetView;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/twitter/android/rb;->Q:Z

    if-eqz v6, :cond_b

    const/4 v6, 0x2

    :goto_8
    invoke-virtual {v7, v6}, Lcom/twitter/library/widget/TweetView;->setCurationAction(I)V

    goto/16 :goto_3

    .line 1114
    :cond_9
    const/4 v6, 0x0

    move v8, v6

    goto :goto_6

    .line 1115
    :cond_a
    const/4 v6, 0x0

    move v7, v6

    goto :goto_7

    .line 1119
    :cond_b
    const/4 v6, 0x0

    goto :goto_8

    .line 1124
    :pswitch_3
    check-cast p3, Lcom/twitter/android/timeline/bd;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v10}, Lcom/twitter/android/rb;->a(Landroid/view/View;Lcom/twitter/android/timeline/bd;Landroid/os/Bundle;)V

    goto/16 :goto_3

    .line 1128
    :pswitch_4
    check-cast p3, Lcom/twitter/android/events/c;

    .line 1129
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/twitter/android/rj;

    .line 1130
    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/twitter/android/events/c;->a:Ljava/lang/String;

    iput-object v7, v6, Lcom/twitter/android/rj;->s:Ljava/lang/String;

    .line 1131
    const-string/jumbo v7, "trend"

    iput-object v7, v6, Lcom/twitter/android/rj;->q:Ljava/lang/String;

    .line 1132
    iget-object v8, v6, Lcom/twitter/android/rj;->c:Lcom/twitter/android/rl;

    .line 1133
    iget-object v7, v8, Lcom/twitter/android/rl;->c:Landroid/widget/TextView;

    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/twitter/android/events/c;->b:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1135
    move-object/from16 v0, p3

    iget v7, v0, Lcom/twitter/android/events/c;->d:I

    const/4 v9, 0x2

    if-ne v7, v9, :cond_c

    .line 1136
    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/twitter/android/events/c;->e:Lcom/twitter/android/widget/TopicView$TopicData;

    iput-object v7, v8, Lcom/twitter/android/rl;->f:Lcom/twitter/android/widget/TopicView$TopicData;

    .line 1140
    :cond_c
    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/twitter/android/events/c;->f:Lcss;

    .line 1141
    if-eqz v9, :cond_10

    .line 1142
    iget-object v7, v8, Lcom/twitter/android/rl;->e:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1143
    invoke-virtual {v9}, Lcss;->c()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1144
    iget-object v7, v8, Lcom/twitter/android/rl;->d:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1203
    :goto_9
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/rb;->r:Lcom/twitter/android/kn;

    if-eqz v7, :cond_3

    .line 1205
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/rb;->o:Ljava/util/HashMap;

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/twitter/android/events/c;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 1206
    move-object/from16 v0, p0

    iget v7, v0, Lcom/twitter/android/rb;->q:I

    .line 1207
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/rb;->o:Ljava/util/HashMap;

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/twitter/android/events/c;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/twitter/android/rb;->q:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    move-object/from16 v0, p0

    iget v8, v0, Lcom/twitter/android/rb;->q:I

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/twitter/android/rb;->q:I

    .line 1212
    :goto_a
    iput v7, v6, Lcom/twitter/android/rj;->r:I

    .line 1213
    const-string/jumbo v6, "trend_cursor"

    invoke-virtual {v10, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1214
    const-string/jumbo v6, "tweet_count"

    move-object/from16 v0, p3

    iget v7, v0, Lcom/twitter/android/events/c;->g:I

    invoke-virtual {v10, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1215
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/rb;->r:Lcom/twitter/android/kn;

    move-object/from16 v0, p1

    invoke-interface {v6, v0, v9, v10}, Lcom/twitter/android/kn;->a(Landroid/view/View;Ljava/lang/Object;Landroid/os/Bundle;)V

    goto/16 :goto_3

    .line 1146
    :cond_d
    iget-object v7, v8, Lcom/twitter/android/rl;->d:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1147
    iget-object v7, v9, Lcss;->g:Ljava/lang/String;

    invoke-static {v7}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1148
    iget-object v7, v8, Lcom/twitter/android/rl;->d:Landroid/widget/TextView;

    const v11, 0x7f0a06ae

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v0, v9, Lcss;->g:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v12, v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1151
    :cond_e
    invoke-virtual {v9}, Lcss;->b()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1152
    iget-object v7, v8, Lcom/twitter/android/rl;->d:Landroid/widget/TextView;

    const v8, 0x7f020291

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v7, v8, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_9

    .line 1155
    :cond_f
    iget-object v7, v8, Lcom/twitter/android/rl;->d:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/twitter/android/rb;->w:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v7, v8, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_9

    .line 1159
    :cond_10
    iget-object v7, v8, Lcom/twitter/android/rl;->d:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1161
    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/twitter/android/events/c;->c:Lcom/twitter/model/topic/l;

    iget v7, v7, Lcom/twitter/model/topic/l;->b:I

    packed-switch v7, :pswitch_data_1

    .line 1167
    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/twitter/android/events/c;->c:Lcom/twitter/model/topic/l;

    iget-boolean v7, v7, Lcom/twitter/model/topic/l;->d:Z

    if-eqz v7, :cond_11

    .line 1168
    const v7, 0x7f0206c2

    .line 1175
    :goto_b
    iget-object v11, v8, Lcom/twitter/android/rl;->b:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/rb;->j()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v11, v7}, Lcom/twitter/media/ui/image/MediaImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1177
    move-object/from16 v0, p3

    iget v11, v0, Lcom/twitter/android/events/c;->g:I

    .line 1178
    if-lez v11, :cond_12

    .line 1181
    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/twitter/android/events/c;->c:Lcom/twitter/model/topic/l;

    iget v7, v7, Lcom/twitter/model/topic/l;->b:I

    packed-switch v7, :pswitch_data_2

    .line 1191
    const v7, 0x7f0a0394

    .line 1195
    :goto_c
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 1196
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    int-to-long v0, v11

    move-wide/from16 v22, v0

    invoke-static/range {v21 .. v23}, Lcom/twitter/util/s;->a(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v12, v13

    .line 1195
    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1197
    iget-object v11, v8, Lcom/twitter/android/rl;->e:Landroid/widget/TextView;

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1198
    iget-object v7, v8, Lcom/twitter/android/rl;->e:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 1163
    :pswitch_5
    const v7, 0x7f0206c7

    .line 1164
    goto :goto_b

    .line 1170
    :cond_11
    const v7, 0x7f0206ca

    goto :goto_b

    .line 1183
    :pswitch_6
    const v7, 0x7f0a0395

    .line 1184
    goto :goto_c

    .line 1187
    :pswitch_7
    const v7, 0x7f0a0394

    .line 1188
    goto :goto_c

    .line 1200
    :cond_12
    iget-object v7, v8, Lcom/twitter/android/rl;->e:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 1210
    :cond_13
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/rb;->o:Ljava/util/HashMap;

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/twitter/android/events/c;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto/16 :goto_a

    .line 1221
    :pswitch_8
    check-cast p3, Lcom/twitter/android/timeline/cj;

    .line 1222
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/twitter/android/rj;

    .line 1223
    iget-object v8, v6, Lcom/twitter/android/rj;->e:Lcom/twitter/android/rp;

    .line 1225
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1227
    iget-object v10, v8, Lcom/twitter/android/rp;->d:Landroid/view/View;

    if-eqz v7, :cond_15

    const/4 v7, 0x4

    :goto_d
    invoke-virtual {v10, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1228
    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/twitter/android/timeline/cj;->a:Ljava/lang/String;

    iput-object v7, v6, Lcom/twitter/android/rj;->s:Ljava/lang/String;

    .line 1229
    iget-object v6, v8, Lcom/twitter/android/rp;->e:Lcom/twitter/android/rm;

    iget-object v6, v6, Lcom/twitter/android/rm;->b:Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v6}, Lcom/twitter/android/rb;->a(Landroid/content/Context;Lcom/twitter/android/timeline/cj;Landroid/widget/TextView;)V

    .line 1231
    iget-object v6, v8, Lcom/twitter/android/rp;->c:Landroid/widget/TextView;

    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/twitter/android/timeline/cj;->d:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/twitter/android/rb;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1233
    iget-object v6, v8, Lcom/twitter/android/rp;->b:Landroid/widget/TextView;

    const v7, 0x7f0a06ae

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/twitter/android/timeline/cj;->c:Lcss;

    iget-object v12, v12, Lcss;->g:Ljava/lang/String;

    aput-object v12, v10, v11

    .line 1234
    invoke-virtual {v9, v7, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1233
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1236
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/twitter/android/timeline/cj;->c:Lcss;

    invoke-virtual {v6}, Lcss;->b()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 1237
    iget-object v6, v8, Lcom/twitter/android/rp;->a:Landroid/widget/ImageView;

    const v7, 0x7f020291

    .line 1238
    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1237
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1243
    :goto_e
    iget-object v6, v8, Lcom/twitter/android/rp;->f:Lcom/twitter/android/trends/TrendBadgesView;

    if-eqz v6, :cond_14

    .line 1244
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/twitter/android/timeline/cj;->e:Lcom/twitter/model/topic/i;

    if-nez v6, :cond_17

    const/4 v6, 0x0

    .line 1245
    :goto_f
    iget-object v7, v8, Lcom/twitter/android/rp;->f:Lcom/twitter/android/trends/TrendBadgesView;

    invoke-virtual {v7, v6}, Lcom/twitter/android/trends/TrendBadgesView;->setBadges(Ljava/util/List;)V

    .line 1247
    :cond_14
    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/twitter/android/timeline/cj;->c:Lcss;

    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/twitter/android/timeline/cj;->b:Ljava/lang/String;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v6, p0

    move/from16 v7, p4

    move-object/from16 v8, p1

    invoke-direct/range {v6 .. v13}, Lcom/twitter/android/rb;->a(ILandroid/view/View;Lcss;Ljava/lang/String;ZIZ)V

    goto/16 :goto_3

    .line 1227
    :cond_15
    const/4 v7, 0x0

    goto :goto_d

    .line 1240
    :cond_16
    iget-object v6, v8, Lcom/twitter/android/rp;->a:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/twitter/android/rb;->w:I

    .line 1241
    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1240
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_e

    .line 1244
    :cond_17
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/twitter/android/timeline/cj;->e:Lcom/twitter/model/topic/i;

    iget-object v6, v6, Lcom/twitter/model/topic/i;->l:Ljava/util/List;

    goto :goto_f

    .line 1252
    :pswitch_9
    check-cast p3, Lcom/twitter/android/timeline/cj;

    .line 1254
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/twitter/android/rj;

    .line 1255
    iget-object v8, v6, Lcom/twitter/android/rj;->f:Lcom/twitter/android/ro;

    .line 1257
    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/twitter/android/timeline/cj;->e:Lcom/twitter/model/topic/i;

    if-eqz v7, :cond_18

    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/twitter/android/timeline/cj;->e:Lcom/twitter/model/topic/i;

    iget-object v7, v7, Lcom/twitter/model/topic/i;->h:Ljava/lang/String;

    .line 1260
    :goto_10
    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/twitter/android/timeline/cj;->a:Ljava/lang/String;

    iput-object v9, v6, Lcom/twitter/android/rj;->s:Ljava/lang/String;

    .line 1261
    iget-object v6, v8, Lcom/twitter/android/ro;->b:Lcom/twitter/android/rm;

    iget-object v6, v6, Lcom/twitter/android/rm;->b:Landroid/widget/TextView;

    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/twitter/android/timeline/cj;->b:Ljava/lang/String;

    .line 1262
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1263
    iget-object v6, v8, Lcom/twitter/android/ro;->a:Landroid/widget/TextView;

    invoke-static {v6, v7}, Lcom/twitter/android/rb;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1264
    const/4 v9, 0x0

    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/twitter/android/timeline/cj;->b:Ljava/lang/String;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v6, p0

    move/from16 v7, p4

    move-object/from16 v8, p1

    invoke-direct/range {v6 .. v13}, Lcom/twitter/android/rb;->a(ILandroid/view/View;Lcss;Ljava/lang/String;ZIZ)V

    goto/16 :goto_3

    .line 1257
    :cond_18
    const/4 v7, 0x0

    goto :goto_10

    .line 1269
    :pswitch_a
    check-cast p3, Lcom/twitter/android/timeline/cj;

    .line 1271
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/twitter/android/rj;

    .line 1272
    iget-object v7, v6, Lcom/twitter/android/rj;->g:Lcom/twitter/android/rn;

    .line 1274
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 1276
    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/twitter/android/timeline/cj;->a:Ljava/lang/String;

    iput-object v9, v6, Lcom/twitter/android/rj;->s:Ljava/lang/String;

    .line 1277
    iget-object v6, v7, Lcom/twitter/android/rn;->c:Lcom/twitter/android/rm;

    iget-object v6, v6, Lcom/twitter/android/rm;->b:Landroid/widget/TextView;

    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/twitter/android/timeline/cj;->b:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1280
    iget-object v6, v7, Lcom/twitter/android/rn;->b:Landroid/widget/TextView;

    const v9, 0x7f0a06ae

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/twitter/android/timeline/cj;->c:Lcss;

    iget-object v12, v12, Lcss;->g:Ljava/lang/String;

    aput-object v12, v10, v11

    .line 1281
    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1280
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1283
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/twitter/android/timeline/cj;->c:Lcss;

    invoke-virtual {v6}, Lcss;->b()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1284
    iget-object v6, v7, Lcom/twitter/android/rn;->a:Landroid/widget/ImageView;

    const v7, 0x7f020291

    .line 1285
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1284
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1290
    :goto_11
    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/twitter/android/timeline/cj;->c:Lcss;

    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/twitter/android/timeline/cj;->b:Ljava/lang/String;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v6, p0

    move/from16 v7, p4

    move-object/from16 v8, p1

    invoke-direct/range {v6 .. v13}, Lcom/twitter/android/rb;->a(ILandroid/view/View;Lcss;Ljava/lang/String;ZIZ)V

    goto/16 :goto_3

    .line 1287
    :cond_19
    iget-object v6, v7, Lcom/twitter/android/rn;->a:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/twitter/android/rb;->w:I

    .line 1288
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1287
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_11

    .line 1296
    :pswitch_b
    check-cast p3, Lcom/twitter/android/timeline/cj;

    .line 1297
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/twitter/android/rj;

    .line 1298
    iget-object v13, v6, Lcom/twitter/android/rj;->d:Lcom/twitter/android/rq;

    .line 1306
    iget-object v8, v13, Lcom/twitter/android/rq;->h:Landroid/view/View;

    if-eqz v7, :cond_1b

    const/4 v7, 0x4

    :goto_12
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1308
    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/twitter/android/timeline/cj;->e:Lcom/twitter/model/topic/i;

    if-eqz v7, :cond_1c

    .line 1309
    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/twitter/android/timeline/cj;->e:Lcom/twitter/model/topic/i;

    iget v9, v7, Lcom/twitter/model/topic/i;->i:I

    .line 1310
    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/twitter/android/timeline/cj;->e:Lcom/twitter/model/topic/i;

    iget-object v11, v7, Lcom/twitter/model/topic/i;->h:Ljava/lang/String;

    .line 1311
    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/twitter/android/timeline/cj;->e:Lcom/twitter/model/topic/i;

    iget-object v7, v7, Lcom/twitter/model/topic/i;->c:Lcom/twitter/model/topic/trends/a;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/twitter/android/rb;->a(Lcom/twitter/model/topic/trends/a;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1312
    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/twitter/android/timeline/cj;->e:Lcom/twitter/model/topic/i;

    iget-object v7, v7, Lcom/twitter/model/topic/i;->f:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/twitter/android/rb;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 1313
    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/twitter/android/timeline/cj;->e:Lcom/twitter/model/topic/i;

    iget-object v7, v7, Lcom/twitter/model/topic/i;->l:Ljava/util/List;

    .line 1314
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/twitter/android/timeline/cj;->e:Lcom/twitter/model/topic/i;

    iget v12, v12, Lcom/twitter/model/topic/i;->g:I

    .line 1324
    :goto_13
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/twitter/android/timeline/cj;->a:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v0, v6, Lcom/twitter/android/rj;->s:Ljava/lang/String;

    .line 1325
    iget-object v6, v13, Lcom/twitter/android/rq;->e:Lcom/twitter/android/rm;

    iget-object v6, v6, Lcom/twitter/android/rm;->b:Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v6}, Lcom/twitter/android/rb;->a(Landroid/content/Context;Lcom/twitter/android/timeline/cj;Landroid/widget/TextView;)V

    .line 1326
    iget-object v6, v13, Lcom/twitter/android/rq;->a:Landroid/widget/TextView;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/twitter/android/rb;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1327
    iget-object v6, v13, Lcom/twitter/android/rq;->g:Landroid/widget/TextView;

    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/twitter/android/timeline/cj;->d:Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/twitter/android/rb;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1328
    iget-object v6, v13, Lcom/twitter/android/rq;->b:Landroid/widget/TextView;

    invoke-static {v6, v11}, Lcom/twitter/android/rb;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1329
    iget-object v6, v13, Lcom/twitter/android/rq;->e:Lcom/twitter/android/rm;

    iget-object v6, v6, Lcom/twitter/android/rm;->b:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v6, v9, v11, v10, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1331
    iget-object v6, v13, Lcom/twitter/android/rq;->c:Lcom/twitter/library/media/widget/TweetMediaView;

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lcom/twitter/library/media/widget/TweetMediaView;->a(Ljava/lang/Iterable;Ljava/lang/String;)V

    .line 1332
    iget-object v6, v13, Lcom/twitter/android/rq;->c:Lcom/twitter/library/media/widget/TweetMediaView;

    const v9, 0x7f0a08cd

    invoke-virtual {v6, v9}, Lcom/twitter/library/media/widget/TweetMediaView;->setBadgeText(I)V

    .line 1333
    iget-object v6, v13, Lcom/twitter/android/rq;->i:Lcom/twitter/android/trends/TrendBadgesView;

    if-eqz v6, :cond_1a

    .line 1334
    iget-object v6, v13, Lcom/twitter/android/rq;->i:Lcom/twitter/android/trends/TrendBadgesView;

    invoke-virtual {v6, v7}, Lcom/twitter/android/trends/TrendBadgesView;->setBadges(Ljava/util/List;)V

    .line 1336
    :cond_1a
    invoke-static {v8}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_1d

    .line 1337
    iget-object v6, v13, Lcom/twitter/android/rq;->c:Lcom/twitter/library/media/widget/TweetMediaView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/twitter/library/media/widget/TweetMediaView;->setVisibility(I)V

    .line 1338
    iget-object v6, v13, Lcom/twitter/android/rq;->d:Lcom/twitter/media/ui/image/AspectRatioFrameLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/twitter/media/ui/image/AspectRatioFrameLayout;->setVisibility(I)V

    .line 1339
    iget-object v6, v13, Lcom/twitter/android/rq;->f:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1345
    :goto_14
    const/4 v9, 0x0

    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/twitter/android/timeline/cj;->b:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-boolean v11, v0, Lcom/twitter/android/timeline/cj;->f:Z

    const/4 v13, 0x0

    move-object/from16 v6, p0

    move/from16 v7, p4

    move-object/from16 v8, p1

    invoke-direct/range {v6 .. v13}, Lcom/twitter/android/rb;->a(ILandroid/view/View;Lcss;Ljava/lang/String;ZIZ)V

    goto/16 :goto_3

    .line 1306
    :cond_1b
    const/4 v7, 0x0

    goto/16 :goto_12

    .line 1316
    :cond_1c
    const/4 v9, -0x1

    .line 1317
    const/4 v11, 0x0

    .line 1318
    const/4 v10, 0x0

    .line 1319
    const/4 v8, 0x0

    .line 1320
    const/4 v7, 0x0

    .line 1321
    const/4 v12, 0x0

    goto/16 :goto_13

    .line 1341
    :cond_1d
    iget-object v6, v13, Lcom/twitter/android/rq;->c:Lcom/twitter/library/media/widget/TweetMediaView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/twitter/library/media/widget/TweetMediaView;->setVisibility(I)V

    .line 1342
    iget-object v6, v13, Lcom/twitter/android/rq;->d:Lcom/twitter/media/ui/image/AspectRatioFrameLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/twitter/media/ui/image/AspectRatioFrameLayout;->setVisibility(I)V

    .line 1343
    iget-object v6, v13, Lcom/twitter/android/rq;->f:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_14

    .line 1350
    :pswitch_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/twitter/android/rj;

    .line 1351
    iget-object v6, v6, Lcom/twitter/android/rj;->i:Lcom/twitter/android/qi;

    .line 1354
    iget-object v6, v6, Lcom/twitter/android/qi;->a:Landroid/widget/TextView;

    const v7, 0x7f0a010c

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 1359
    :pswitch_d
    const/16 v6, 0xb

    move/from16 v0, v16

    if-ne v0, v6, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/twitter/android/rb;->B:Z

    if-nez v6, :cond_1e

    .line 1360
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/twitter/android/rb;->B:Z

    .line 1362
    :cond_1e
    check-cast p3, Lcom/twitter/android/timeline/z;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/rb;->a(Landroid/view/View;Lcom/twitter/android/timeline/z;)V

    goto/16 :goto_3

    :pswitch_e
    move-object/from16 v8, p3

    .line 1366
    check-cast v8, Lcom/twitter/android/timeline/ap;

    .line 1367
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/rb;->j:Lcom/twitter/android/timeline/an;

    iget-object v6, v8, Lcom/twitter/android/timeline/ap;->b:Lcom/twitter/model/timeline/aa;

    iget-object v10, v6, Lcom/twitter/model/timeline/aa;->b:Ljava/lang/String;

    const v11, 0x7f0a06cc

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v11}, Lcom/twitter/android/rb;->a(Landroid/view/View;Lcom/twitter/android/timeline/bp;Landroid/view/View$OnClickListener;Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 1372
    :pswitch_f
    check-cast p3, Lcom/twitter/android/timeline/ap;

    .line 1373
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/twitter/android/timeline/ap;->a:Lcom/twitter/android/timeline/cn;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-virtual {v0, v1, v6, v2}, Lcom/twitter/android/rb;->a(Landroid/view/View;Lcom/twitter/android/timeline/cn;I)Lcom/twitter/model/core/Tweet;

    .line 1374
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/twitter/android/vy;

    .line 1375
    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/twitter/android/timeline/ap;->a:Lcom/twitter/android/timeline/cn;

    iget-object v7, v7, Lcom/twitter/android/timeline/cn;->b:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v7}, Lcom/twitter/model/core/Tweet;->t()Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 1376
    iget-object v6, v6, Lcom/twitter/android/vy;->d:Lcom/twitter/library/widget/TweetView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/twitter/library/widget/TweetView;->setCurationAction(I)V

    goto/16 :goto_3

    .line 1377
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/twitter/android/rb;->Q:Z

    if-eqz v7, :cond_20

    .line 1378
    iget-object v6, v6, Lcom/twitter/android/vy;->d:Lcom/twitter/library/widget/TweetView;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/twitter/library/widget/TweetView;->setCurationAction(I)V

    goto/16 :goto_3

    .line 1380
    :cond_20
    iget-object v6, v6, Lcom/twitter/android/vy;->d:Lcom/twitter/library/widget/TweetView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/twitter/library/widget/TweetView;->setCurationAction(I)V

    goto/16 :goto_3

    .line 1385
    :pswitch_10
    check-cast p3, Lcom/twitter/android/timeline/cn;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/rb;->a(Landroid/view/View;Lcom/twitter/android/timeline/cn;I)Lcom/twitter/model/core/Tweet;

    .line 1386
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/twitter/android/vy;

    .line 1387
    iget-object v7, v6, Lcom/twitter/android/vy;->d:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v7}, Lcom/twitter/library/widget/TweetView;->getTweet()Lcom/twitter/model/core/Tweet;

    move-result-object v7

    invoke-virtual {v7}, Lcom/twitter/model/core/Tweet;->t()Z

    move-result v7

    if-eqz v7, :cond_21

    .line 1388
    iget-object v6, v6, Lcom/twitter/android/vy;->d:Lcom/twitter/library/widget/TweetView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/twitter/library/widget/TweetView;->setCurationAction(I)V

    goto/16 :goto_3

    .line 1390
    :cond_21
    iget-object v6, v6, Lcom/twitter/android/vy;->d:Lcom/twitter/library/widget/TweetView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/twitter/library/widget/TweetView;->setCurationAction(I)V

    goto/16 :goto_3

    .line 1398
    :pswitch_11
    invoke-static/range {p3 .. p3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/twitter/android/timeline/a;

    .line 1399
    const-string/jumbo v7, "ad_slot_id"

    iget-object v6, v6, Lcom/twitter/android/timeline/a;->a:Ljava/lang/String;

    invoke-virtual {v10, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/rb;->g:Lcom/twitter/android/kn;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v6, v0, v7, v10}, Lcom/twitter/android/kn;->a(Landroid/view/View;Ljava/lang/Object;Landroid/os/Bundle;)V

    goto/16 :goto_3

    :pswitch_12
    move-object/from16 v6, p3

    .line 1406
    check-cast v6, Lcom/twitter/android/timeline/cv;

    .line 1407
    iget-object v6, v6, Lcom/twitter/android/timeline/cv;->b:Lcmf;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcmf;->a(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/twitter/android/timeline/cn;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-virtual {v0, v1, v6, v2}, Lcom/twitter/android/rb;->a(Landroid/view/View;Lcom/twitter/android/timeline/cn;I)Lcom/twitter/model/core/Tweet;

    .line 1408
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/twitter/android/vy;

    .line 1409
    invoke-static/range {p3 .. p3}, Lcom/twitter/android/rb;->b(Lcom/twitter/android/timeline/bp;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 1410
    iget-object v6, v6, Lcom/twitter/android/vy;->d:Lcom/twitter/library/widget/TweetView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/twitter/library/widget/TweetView;->setCurationAction(I)V

    goto/16 :goto_3

    .line 1411
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/twitter/android/rb;->Q:Z

    if-eqz v7, :cond_23

    .line 1412
    iget-object v6, v6, Lcom/twitter/android/vy;->d:Lcom/twitter/library/widget/TweetView;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/twitter/library/widget/TweetView;->setCurationAction(I)V

    goto/16 :goto_3

    .line 1414
    :cond_23
    iget-object v6, v6, Lcom/twitter/android/vy;->d:Lcom/twitter/library/widget/TweetView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/twitter/library/widget/TweetView;->setCurationAction(I)V

    goto/16 :goto_3

    :pswitch_13
    move-object/from16 v8, p3

    .line 1419
    check-cast v8, Lcom/twitter/android/timeline/cv;

    .line 1420
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/rb;->k:Lcom/twitter/android/timeline/ct;

    iget-object v6, v8, Lcom/twitter/android/timeline/cv;->c:Lcom/twitter/model/timeline/dh;

    iget-object v10, v6, Lcom/twitter/model/timeline/dh;->c:Ljava/lang/String;

    const v11, 0x7f0a09b6

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v11}, Lcom/twitter/android/rb;->a(Landroid/view/View;Lcom/twitter/android/timeline/bp;Landroid/view/View$OnClickListener;Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 1425
    :pswitch_14
    check-cast p3, Lcom/twitter/android/timeline/cv;

    .line 1426
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/twitter/android/rj;

    .line 1427
    iget-object v6, v6, Lcom/twitter/android/rj;->j:Lcom/twitter/android/widget/WhoToFollowUsersView;

    .line 1428
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/rb;->d()Lcom/twitter/library/util/FriendshipCache;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/rb;->H:Lcom/twitter/android/timeline/dc;

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v6, v0, v7, v1, v8}, Lcom/twitter/android/widget/WhoToFollowUsersView;->a(Lcom/twitter/android/timeline/cv;Lcom/twitter/library/util/FriendshipCache;ILcom/twitter/android/timeline/dc;)V

    .line 1429
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/rb;->G:Lcom/twitter/android/timeline/cx;

    if-eqz v6, :cond_3

    .line 1430
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/rb;->G:Lcom/twitter/android/timeline/cx;

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v6, v0, v1}, Lcom/twitter/android/timeline/cx;->a(Lcom/twitter/android/timeline/cv;I)V

    goto/16 :goto_3

    .line 1435
    :pswitch_15
    check-cast p3, Lcom/twitter/android/timeline/cv;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v10, v3}, Lcom/twitter/android/rb;->a(Landroid/view/View;Lcom/twitter/android/timeline/cv;Landroid/os/Bundle;I)V

    goto/16 :goto_3

    .line 1439
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/rb;->a:Lcom/twitter/app/common/base/TwitterFragmentActivity;

    invoke-virtual {v6}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v9, p3

    .line 1440
    check-cast v9, Lcom/twitter/android/timeline/bb;

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move/from16 v11, p4

    invoke-direct/range {v6 .. v11}, Lcom/twitter/android/rb;->a(Landroid/content/res/Resources;Landroid/view/View;Lcom/twitter/android/timeline/bb;Landroid/os/Bundle;I)V

    goto/16 :goto_3

    .line 1444
    :pswitch_17
    check-cast p3, Lcom/twitter/android/timeline/ah;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/rb;->a(Landroid/view/View;Lcom/twitter/android/timeline/ah;)V

    goto/16 :goto_3

    .line 1448
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/rb;->s:Lcom/twitter/android/kn;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v6, v0, v1, v10}, Lcom/twitter/android/kn;->a(Landroid/view/View;Ljava/lang/Object;Landroid/os/Bundle;)V

    goto/16 :goto_3

    .line 1452
    :pswitch_19
    check-cast p3, Lcom/twitter/android/timeline/bw;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/rb;->a(Landroid/view/View;Lcom/twitter/android/timeline/bw;I)V

    goto/16 :goto_3

    .line 1456
    :pswitch_1a
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/android/rb;->a(Lcom/twitter/android/timeline/bp;Landroid/view/View;Landroid/content/Context;I)V

    goto/16 :goto_3

    .line 1460
    :pswitch_1b
    check-cast p3, Lcom/twitter/android/timeline/af;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/rb;->a(Landroid/view/View;Lcom/twitter/android/timeline/af;I)V

    goto/16 :goto_3

    .line 1471
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/twitter/android/rb;->Q:Z

    if-eqz v9, :cond_25

    .line 1472
    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Lcom/twitter/library/widget/TweetView;->setCurationAction(I)V

    goto/16 :goto_2

    .line 1474
    :cond_25
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/twitter/library/widget/TweetView;->setCurationAction(I)V

    goto/16 :goto_2

    .line 1502
    :cond_26
    const/16 v6, 0x8

    move/from16 v0, v16

    if-eq v0, v6, :cond_5

    const/16 v6, 0x1e

    move/from16 v0, v16

    if-eq v0, v6, :cond_5

    const/16 v6, 0x13

    move/from16 v0, v16

    if-eq v0, v6, :cond_5

    move-object/from16 v6, p1

    .line 1504
    check-cast v6, Lcom/twitter/internal/android/widget/GroupedRowView;

    .line 1506
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v6, v0, v1, v14}, Lcom/twitter/android/rb;->a(Lcom/twitter/internal/android/widget/GroupedRowView;ZZZ)V

    move v7, v15

    move/from16 v8, v17

    move/from16 v9, v18

    move/from16 v10, v19

    move/from16 v11, v20

    move v12, v14

    .line 1508
    invoke-static/range {v6 .. v12}, Lcom/twitter/android/rb;->a(Lcom/twitter/internal/android/widget/GroupedRowView;IZZZZZ)V

    goto/16 :goto_4

    .line 1089
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1b
        :pswitch_4
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_8
        :pswitch_b
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_3
        :pswitch_10
        :pswitch_12
        :pswitch_13
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_16
        :pswitch_11
    .end packed-switch

    .line 1161
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
    .end packed-switch

    .line 1181
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 974
    iget-boolean v0, p0, Lcom/twitter/android/rb;->B:Z

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Lcom/twitter/android/rb;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/bp;

    .line 311
    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p0, v0}, Lcom/twitter/android/rb;->a(Lcom/twitter/android/timeline/bp;)I

    move-result v0

    .line 314
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 983
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/twitter/android/rf;

    if-eqz v0, :cond_0

    .line 984
    invoke-virtual {p0, p1}, Lcom/twitter/android/rb;->getItemViewType(I)I

    move-result v0

    .line 985
    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 986
    invoke-virtual {p0}, Lcom/twitter/android/rb;->g()Lcom/twitter/android/timeline/br;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/timeline/br;->a()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/android/rb;->a(ILandroid/database/Cursor;Landroid/view/View;)Lbiv;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "cursor moved"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 987
    invoke-virtual {v0, v1}, Lbiv;->a(Ljava/lang/Throwable;)Lbiv;

    move-result-object v0

    .line 986
    invoke-static {v0}, Lbix;->a(Lbiv;)V

    .line 988
    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p3}, Lcom/twitter/android/gx;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 992
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/gx;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 305
    const/16 v0, 0x1f

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2

    .prologue
    .line 906
    invoke-virtual {p0, p1}, Lcom/twitter/android/rb;->getItemViewType(I)I

    move-result v0

    .line 907
    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 909
    :cond_0
    const/4 v0, 0x0

    .line 911
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/twitter/android/gx;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method
