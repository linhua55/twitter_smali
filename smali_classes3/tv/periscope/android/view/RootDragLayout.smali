.class public Ltv/periscope/android/view/RootDragLayout;
.super Landroid/view/ViewGroup;
.source "Twttr"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# static fields
.field private static final h:[I


# instance fields
.field public a:F

.field public b:F

.field protected c:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field

.field protected d:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field

.field protected e:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field

.field protected f:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field

.field protected g:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field

.field private i:Ltv/periscope/android/view/ax;

.field private j:Landroid/support/v4/widget/ViewDragHelper;

.field private k:Landroid/view/View;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltv/periscope/android/view/z;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltv/periscope/android/view/z;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/graphics/Paint;

.field private p:Ltv/periscope/android/view/aw;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:F

.field private u:F

.field private v:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Ltv/periscope/android/view/RootDragLayout;->h:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 61
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ltv/periscope/android/view/RootDragLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ltv/periscope/android/view/RootDragLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->l:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->m:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->n:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->o:Landroid/graphics/Paint;

    .line 55
    iput-boolean v1, p0, Ltv/periscope/android/view/RootDragLayout;->s:Z

    .line 70
    new-instance v0, Ltv/periscope/android/view/ax;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltv/periscope/android/view/ax;-><init>(Ltv/periscope/android/view/RootDragLayout;Ltv/periscope/android/view/au;)V

    iput-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->i:Ltv/periscope/android/view/ax;

    .line 72
    iput v2, p0, Ltv/periscope/android/view/RootDragLayout;->t:F

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/j;->ps__playback_control_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Ltv/periscope/android/view/RootDragLayout;->a:F

    .line 74
    iget v0, p0, Ltv/periscope/android/view/RootDragLayout;->a:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Ltv/periscope/android/view/RootDragLayout;->b:F

    .line 76
    invoke-virtual {p0}, Ltv/periscope/android/view/RootDragLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 77
    const/high16 v1, 0x43c80000    # 400.0f

    mul-float/2addr v0, v1

    .line 78
    iget-object v1, p0, Ltv/periscope/android/view/RootDragLayout;->i:Ltv/periscope/android/view/ax;

    invoke-static {p0, v2, v1}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v1

    iput-object v1, p0, Ltv/periscope/android/view/RootDragLayout;->j:Landroid/support/v4/widget/ViewDragHelper;

    .line 79
    iget-object v1, p0, Ltv/periscope/android/view/RootDragLayout;->j:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Ltv/periscope/android/library/q;->RootDragLayout:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 83
    :try_start_0
    sget v0, Ltv/periscope/android/library/q;->RootDragLayout_ps__dragChild:I

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Ltv/periscope/android/view/RootDragLayout;->c:I

    .line 84
    sget v0, Ltv/periscope/android/library/q;->RootDragLayout_ps__bottomDragChild:I

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Ltv/periscope/android/view/RootDragLayout;->d:I

    .line 85
    sget v0, Ltv/periscope/android/library/q;->RootDragLayout_ps__actionSheet:I

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Ltv/periscope/android/view/RootDragLayout;->e:I

    .line 86
    sget v0, Ltv/periscope/android/library/q;->RootDragLayout_ps__extrasActionSheet:I

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Ltv/periscope/android/view/RootDragLayout;->f:I

    .line 87
    sget v0, Ltv/periscope/android/library/q;->RootDragLayout_ps__bottomSheet:I

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Ltv/periscope/android/view/RootDragLayout;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    return-void

    .line 89
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private a(Ljava/util/List;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltv/periscope/android/view/z;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 526
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/view/z;

    .line 527
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Ltv/periscope/android/view/z;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 528
    iget-object v0, v0, Ltv/periscope/android/view/z;->a:Landroid/view/View;

    .line 531
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Ltv/periscope/android/view/RootDragLayout;)Ltv/periscope/android/view/aw;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->p:Ltv/periscope/android/view/aw;

    return-object v0
.end method

.method private a()V
    .locals 6

    .prologue
    .line 228
    iget-object v1, p0, Ltv/periscope/android/view/RootDragLayout;->k:Landroid/view/View;

    .line 229
    if-nez v1, :cond_0

    .line 237
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;

    .line 233
    iget v2, p0, Ltv/periscope/android/view/RootDragLayout;->a:F

    iget v3, v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;->a:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 234
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 235
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 236
    iget v5, v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;->leftMargin:I

    iget v0, v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v3

    add-int v3, v2, v4

    invoke-virtual {v1, v5, v2, v0, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method private a(IF)V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->j:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/widget/ViewDragHelper;->checkTouchSlop(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->j:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->getCapturedView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 501
    iget v0, p0, Ltv/periscope/android/view/RootDragLayout;->u:F

    sub-float v0, p2, v0

    .line 502
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 503
    iget-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->k:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->k:Landroid/view/View;

    invoke-direct {p0, v0}, Ltv/periscope/android/view/RootDragLayout;->f(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 504
    iget-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->j:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v1, p0, Ltv/periscope/android/view/RootDragLayout;->k:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->m:Ljava/util/List;

    invoke-direct {p0, v0}, Ltv/periscope/android/view/RootDragLayout;->b(Ljava/util/List;)Landroid/view/View;

    move-result-object v0

    .line 507
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Ltv/periscope/android/view/RootDragLayout;->f(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 508
    iget-object v1, p0, Ltv/periscope/android/view/RootDragLayout;->j:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    goto :goto_0

    .line 512
    :cond_2
    iget-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->k:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->k:Landroid/view/View;

    invoke-direct {p0, v0}, Ltv/periscope/android/view/RootDragLayout;->f(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 513
    iget-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->j:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v1, p0, Ltv/periscope/android/view/RootDragLayout;->k:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    goto :goto_0

    .line 515
    :cond_3
    iget-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->m:Ljava/util/List;

    invoke-direct {p0, v0}, Ltv/periscope/android/view/RootDragLayout;->a(Ljava/util/List;)Landroid/view/View;

    move-result-object v0

    .line 516
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Ltv/periscope/android/view/RootDragLayout;->f(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 517
    iget-object v1, p0, Ltv/periscope/android/view/RootDragLayout;->j:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private a(IIIIZ)V
    .locals 13

    .prologue
    .line 277
    invoke-virtual {p0}, Ltv/periscope/android/view/RootDragLayout;->getChildCount()I

    move-result v3

    .line 279
    invoke-virtual {p0}, Ltv/periscope/android/view/RootDragLayout;->getPaddingLeft()I

    move-result v4

    .line 280
    sub-int v0, p3, p1

    invoke-virtual {p0}, Ltv/periscope/android/view/RootDragLayout;->getPaddingRight()I

    move-result v1

    sub-int v5, v0, v1

    .line 282
    invoke-virtual {p0}, Ltv/periscope/android/view/RootDragLayout;->getPaddingTop()I

    move-result v6

    .line 283
    sub-int v0, p4, p2

    invoke-virtual {p0}, Ltv/periscope/android/view/RootDragLayout;->getPaddingBottom()I

    move-result v1

    sub-int v7, v0, v1

    .line 285
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_4

    .line 286
    invoke-virtual {p0, v2}, Ltv/periscope/android/view/RootDragLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 287
    iget-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->k:Landroid/view/View;

    if-eq v8, v0, :cond_0

    invoke-direct {p0, v8}, Ltv/periscope/android/view/RootDragLayout;->e(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 285
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 290
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;

    .line 292
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 293
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 298
    iget v1, v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;->b:I

    .line 299
    const/4 v11, -0x1

    if-ne v1, v11, :cond_2

    .line 300
    const v1, 0x800033

    .line 303
    :cond_2
    invoke-virtual {p0}, Ltv/periscope/android/view/RootDragLayout;->getLayoutDirection()I

    move-result v11

    .line 304
    invoke-static {v1, v11}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v11

    .line 305
    and-int/lit8 v12, v1, 0x70

    .line 307
    and-int/lit8 v1, v11, 0x7

    sparse-switch v1, :sswitch_data_0

    .line 319
    :cond_3
    iget v1, v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v4

    .line 322
    :goto_2
    sparse-switch v12, :sswitch_data_1

    .line 334
    iget v0, v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v6

    .line 337
    :goto_3
    add-int/2addr v9, v1

    add-int/2addr v10, v0

    invoke-virtual {v8, v1, v0, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 309
    :sswitch_0
    sub-int v1, v5, v4

    sub-int/2addr v1, v9

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v4

    iget v11, v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v11

    iget v11, v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v11

    .line 311
    goto :goto_2

    .line 313
    :sswitch_1
    if-nez p5, :cond_3

    .line 314
    sub-int v1, v5, v9

    iget v11, v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v11

    .line 315
    goto :goto_2

    .line 324
    :sswitch_2
    iget v0, v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v6

    .line 325
    goto :goto_3

    .line 327
    :sswitch_3
    sub-int v11, v7, v6

    sub-int/2addr v11, v10

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v6

    iget v12, v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;->topMargin:I

    add-int/2addr v11, v12

    iget v0, v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v11, v0

    .line 329
    goto :goto_3

    .line 331
    :sswitch_4
    sub-int v11, v7, v10

    iget v0, v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v11, v0

    .line 332
    goto :goto_3

    .line 339
    :cond_4
    return-void

    .line 307
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch

    .line 322
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method private a(IZZ)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Ltv/periscope/android/view/RootDragLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_0

    .line 121
    new-instance v1, Ltv/periscope/android/view/av;

    invoke-direct {v1, p0}, Ltv/periscope/android/view/av;-><init>(Ltv/periscope/android/view/RootDragLayout;)V

    .line 122
    iput-object v0, v1, Ltv/periscope/android/view/z;->a:Landroid/view/View;

    .line 123
    iput-boolean p2, v1, Ltv/periscope/android/view/z;->b:Z

    .line 124
    iput-boolean p3, v1, Ltv/periscope/android/view/z;->c:Z

    .line 125
    iget-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;II)V
    .locals 8

    .prologue
    .line 240
    if-nez p1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    sub-int v1, p3, p2

    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 245
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;

    .line 247
    int-to-float v4, v2

    iget v5, v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;->a:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sub-int v4, v1, v4

    .line 248
    sub-int/2addr v1, v4

    int-to-float v1, v1

    int-to-float v5, v2

    div-float v5, v1, v5

    .line 249
    iget v1, v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;->a:F

    cmpl-float v1, v5, v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 251
    :goto_1
    iget v6, v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;->leftMargin:I

    iget v7, v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v7

    add-int/2addr v2, v4

    invoke-virtual {p1, v6, v4, v3, v2}, Landroid/view/View;->layout(IIII)V

    .line 253
    if-eqz v1, :cond_0

    .line 254
    iput v5, v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;->a:F

    goto :goto_0

    .line 249
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private a(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->p:Ltv/periscope/android/view/aw;

    if-eqz v0, :cond_0

    .line 654
    if-eqz p2, :cond_1

    .line 655
    iget-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->p:Ltv/periscope/android/view/aw;

    invoke-interface {v0, p1}, Ltv/periscope/android/view/aw;->b(Landroid/view/View;)V

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 657
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->p:Ltv/periscope/android/view/aw;

    invoke-interface {v0, p1}, Ltv/periscope/android/view/aw;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic a(Ltv/periscope/android/view/RootDragLayout;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ltv/periscope/android/view/RootDragLayout;->a(Landroid/view/View;Z)V

    return-void
.end method

.method private a(Ljava/util/List;Landroid/view/View;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltv/periscope/android/view/z;",
            ">;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 263
    invoke-direct {p0, p1, p2}, Ltv/periscope/android/view/RootDragLayout;->b(Ljava/util/List;Landroid/view/View;)Ltv/periscope/android/view/z;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Ltv/periscope/android/view/RootDragLayout;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Ltv/periscope/android/view/RootDragLayout;->e(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Ltv/periscope/android/view/RootDragLayout;)Landroid/support/v4/widget/ViewDragHelper;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->j:Landroid/support/v4/widget/ViewDragHelper;

    return-object v0
.end method

.method private b(Ljava/util/List;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltv/periscope/android/view/z;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 535
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/view/z;

    .line 536
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ltv/periscope/android/view/z;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 537
    iget-object v0, v0, Ltv/periscope/android/view/z;->a:Landroid/view/View;

    .line 540
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/util/List;Landroid/view/View;)Ltv/periscope/android/view/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltv/periscope/android/view/z;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ltv/periscope/android/view/z;"
        }
    .end annotation

    .prologue
    .line 267
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/view/z;

    .line 268
    iget-object v2, v0, Ltv/periscope/android/view/z;->a:Landroid/view/View;

    if-ne v2, p2, :cond_0

    .line 272
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Ltv/periscope/android/view/RootDragLayout;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Ltv/periscope/android/view/RootDragLayout;->f(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Ltv/periscope/android/view/RootDragLayout;)F
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Ltv/periscope/android/view/RootDragLayout;->t:F

    return v0
.end method

.method static synthetic c()[I
    .locals 1

    .prologue
    .line 30
    sget-object v0, Ltv/periscope/android/view/RootDragLayout;->h:[I

    return-object v0
.end method

.method static synthetic d(Ltv/periscope/android/view/RootDragLayout;)F
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Ltv/periscope/android/view/RootDragLayout;->u:F

    return v0
.end method

.method private d()Landroid/view/View;
    .locals 4

    .prologue
    .line 411
    iget-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/view/z;

    .line 412
    iget-boolean v1, v0, Ltv/periscope/android/view/z;->c:Z

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, v0, Ltv/periscope/android/view/z;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Ltv/periscope/android/view/RootDragLayout$LayoutParams;

    iget v1, v1, Ltv/periscope/android/view/RootDragLayout$LayoutParams;->a:F

    .line 414
    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    .line 415
    iget-object v0, v0, Ltv/periscope/android/view/z;->a:Landroid/view/View;

    .line 419
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()F
    .locals 1

    .prologue
    .line 423
    invoke-direct {p0}, Ltv/periscope/android/view/RootDragLayout;->d()Landroid/view/View;

    move-result-object v0

    .line 424
    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;

    iget v0, v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;->a:F

    .line 427
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Ltv/periscope/android/view/RootDragLayout;)F
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Ltv/periscope/android/view/RootDragLayout;->v:F

    return v0
.end method

.method private e(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->m:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Ltv/periscope/android/view/RootDragLayout;->a(Ljava/util/List;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic f(Ltv/periscope/android/view/RootDragLayout;)Landroid/view/View;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->k:Landroid/view/View;

    return-object v0
.end method

.method private f(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 479
    iget-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/view/z;

    .line 480
    iget-object v2, v0, Ltv/periscope/android/view/z;->a:Landroid/view/View;

    if-eq p1, v2, :cond_0

    .line 483
    iget-object v0, v0, Ltv/periscope/android/view/z;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Ltv/periscope/android/view/RootDragLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    const/4 v0, 0x1

    .line 487
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/util/AttributeSet;)Ltv/periscope/android/view/RootDragLayout$LayoutParams;
    .locals 2

    .prologue
    .line 571
    new-instance v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;

    invoke-virtual {p0}, Ltv/periscope/android/view/RootDragLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ltv/periscope/android/view/RootDragLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 575
    if-nez p1, :cond_0

    .line 579
    :goto_0
    return v1

    .line 578
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;

    .line 579
    iget v0, v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;->a:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method protected b()Ltv/periscope/android/view/RootDragLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 552
    new-instance v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Ltv/periscope/android/view/RootDragLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public b(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 583
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 584
    iget-boolean v0, p0, Ltv/periscope/android/view/RootDragLayout;->s:Z

    if-eqz v0, :cond_2

    .line 585
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Ltv/periscope/android/view/RootDragLayout;->c:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->l:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Ltv/periscope/android/view/RootDragLayout;->a(Ljava/util/List;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 586
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;

    .line 587
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;->a:F

    .line 603
    :goto_0
    invoke-virtual {p0}, Ltv/periscope/android/view/RootDragLayout;->invalidate()V

    .line 604
    invoke-direct {p0, p1, v4}, Ltv/periscope/android/view/RootDragLayout;->a(Landroid/view/View;Z)V

    .line 605
    return-void

    .line 589
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not a drag child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 593
    iget v1, p0, Ltv/periscope/android/view/RootDragLayout;->c:I

    if-ne v0, v1, :cond_3

    .line 594
    iget-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->j:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Ltv/periscope/android/view/RootDragLayout;->a:F

    float-to-int v2, v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 596
    :cond_3
    invoke-direct {p0, p1}, Ltv/periscope/android/view/RootDragLayout;->e(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 597
    iget-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->j:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Ltv/periscope/android/view/RootDragLayout;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 599
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not a drag child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 608
    iget-boolean v0, p0, Ltv/periscope/android/view/RootDragLayout;->s:Z

    if-eqz v0, :cond_2

    .line 609
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Ltv/periscope/android/view/RootDragLayout;->c:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->l:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Ltv/periscope/android/view/RootDragLayout;->a(Ljava/util/List;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 610
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;

    .line 611
    const/4 v1, 0x0

    iput v1, v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;->a:F

    .line 627
    :goto_0
    invoke-virtual {p0}, Ltv/periscope/android/view/RootDragLayout;->invalidate()V

    .line 628
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ltv/periscope/android/view/RootDragLayout;->a(Landroid/view/View;Z)V

    .line 629
    return-void

    .line 613
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not a drag child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 616
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 617
    iget v1, p0, Ltv/periscope/android/view/RootDragLayout;->c:I

    if-ne v0, v1, :cond_3

    .line 618
    iget-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->j:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 620
    :cond_3
    invoke-direct {p0, p1}, Ltv/periscope/android/view/RootDragLayout;->e(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 621
    iget-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->j:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Ltv/periscope/android/view/RootDragLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 623
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not a drag child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 566
    instance-of v0, p1, Ltv/periscope/android/view/RootDragLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->j:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 548
    :cond_0
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 632
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 633
    iget v1, p0, Ltv/periscope/android/view/RootDragLayout;->c:I

    if-ne v0, v1, :cond_1

    .line 634
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    if-gtz v0, :cond_0

    .line 635
    invoke-virtual {p0, p1}, Ltv/periscope/android/view/RootDragLayout;->b(Landroid/view/View;)V

    .line 650
    :goto_0
    return-void

    .line 637
    :cond_0
    invoke-virtual {p0, p1}, Ltv/periscope/android/view/RootDragLayout;->c(Landroid/view/View;)V

    goto :goto_0

    .line 640
    :cond_1
    invoke-direct {p0, p1}, Ltv/periscope/android/view/RootDragLayout;->e(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 641
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Ltv/periscope/android/view/RootDragLayout;->getHeight()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 642
    invoke-virtual {p0, p1}, Ltv/periscope/android/view/RootDragLayout;->b(Landroid/view/View;)V

    goto :goto_0

    .line 644
    :cond_2
    invoke-virtual {p0, p1}, Ltv/periscope/android/view/RootDragLayout;->c(Landroid/view/View;)V

    goto :goto_0

    .line 647
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not a drag child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 664
    iget-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->l:Ljava/util/List;

    invoke-direct {p0, v0, p2}, Ltv/periscope/android/view/RootDragLayout;->b(Ljava/util/List;Landroid/view/View;)Ltv/periscope/android/view/z;

    move-result-object v0

    .line 665
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Ltv/periscope/android/view/z;->c:Z

    if-eqz v0, :cond_0

    .line 666
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;

    .line 667
    iget v2, v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;->a:F

    .line 668
    cmpl-float v3, v2, v1

    if-lez v3, :cond_0

    .line 671
    const/high16 v3, 0x43190000    # 153.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 672
    shl-int/lit8 v2, v2, 0x18

    or-int/lit8 v2, v2, 0x0

    .line 673
    iget-object v3, p0, Ltv/periscope/android/view/RootDragLayout;->o:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 675
    invoke-virtual {p0}, Ltv/periscope/android/view/RootDragLayout;->getWidth()I

    move-result v2

    int-to-float v3, v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v0, v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;->topMargin:I

    sub-int v0, v2, v0

    int-to-float v4, v0

    iget-object v5, p0, Ltv/periscope/android/view/RootDragLayout;->o:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 678
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Ltv/periscope/android/view/RootDragLayout;->b()Ltv/periscope/android/view/RootDragLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Ltv/periscope/android/view/RootDragLayout;->a(Landroid/util/AttributeSet;)Ltv/periscope/android/view/RootDragLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 557
    instance-of v0, p1, Ltv/periscope/android/view/RootDragLayout$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;

    check-cast p1, Ltv/periscope/android/view/RootDragLayout$LayoutParams;

    invoke-direct {v0, p1}, Ltv/periscope/android/view/RootDragLayout$LayoutParams;-><init>(Ltv/periscope/android/view/RootDragLayout$LayoutParams;)V

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Ltv/periscope/android/view/RootDragLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;

    invoke-direct {v0, p1}, Ltv/periscope/android/view/RootDragLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 356
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 357
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/view/RootDragLayout;->s:Z

    .line 358
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 350
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/view/RootDragLayout;->s:Z

    .line 352
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 110
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 111
    iget v0, p0, Ltv/periscope/android/view/RootDragLayout;->c:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/view/RootDragLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->k:Landroid/view/View;

    .line 112
    iget v0, p0, Ltv/periscope/android/view/RootDragLayout;->d:I

    invoke-direct {p0, v0, v2, v1}, Ltv/periscope/android/view/RootDragLayout;->a(IZZ)V

    .line 113
    iget v0, p0, Ltv/periscope/android/view/RootDragLayout;->e:I

    invoke-direct {p0, v0, v1, v2}, Ltv/periscope/android/view/RootDragLayout;->a(IZZ)V

    .line 114
    iget v0, p0, Ltv/periscope/android/view/RootDragLayout;->f:I

    invoke-direct {p0, v0, v1, v2}, Ltv/periscope/android/view/RootDragLayout;->a(IZZ)V

    .line 115
    iget v0, p0, Ltv/periscope/android/view/RootDragLayout;->g:I

    invoke-direct {p0, v0, v1, v1}, Ltv/periscope/android/view/RootDragLayout;->a(IZZ)V

    .line 116
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 365
    .line 367
    :try_start_0
    iget-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->j:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 372
    :goto_0
    iget-boolean v3, p0, Ltv/periscope/android/view/RootDragLayout;->q:Z

    if-eqz v3, :cond_0

    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v3

    if-le v3, v2, :cond_1

    .line 404
    :cond_0
    :goto_1
    return v1

    .line 368
    :catch_0
    move-exception v0

    .line 370
    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "Crash while attempting to intercept touch event"

    invoke-direct {v3, v4, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lh;->a(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0

    .line 376
    :cond_1
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v3

    .line 377
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v4

    .line 379
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 380
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 382
    iput v6, p0, Ltv/periscope/android/view/RootDragLayout;->v:F

    .line 386
    packed-switch v3, :pswitch_data_0

    :cond_2
    :pswitch_0
    move v3, v1

    .line 404
    :goto_2
    if-nez v0, :cond_3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_1

    .line 388
    :pswitch_1
    iput v6, p0, Ltv/periscope/android/view/RootDragLayout;->u:F

    .line 389
    invoke-direct {p0}, Ltv/periscope/android/view/RootDragLayout;->e()F

    move-result v3

    .line 390
    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    iget-object v3, p0, Ltv/periscope/android/view/RootDragLayout;->j:Landroid/support/v4/widget/ViewDragHelper;

    float-to-int v4, v5

    float-to-int v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0}, Ltv/periscope/android/view/RootDragLayout;->d()Landroid/view/View;

    move-result-object v4

    if-eq v3, v4, :cond_2

    move v3, v2

    .line 391
    goto :goto_2

    .line 396
    :pswitch_2
    iget-object v3, p0, Ltv/periscope/android/view/RootDragLayout;->j:Landroid/support/v4/widget/ViewDragHelper;

    float-to-int v5, v5

    float-to-int v7, v6

    invoke-virtual {v3, v5, v7}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v3

    .line 397
    if-eqz v3, :cond_4

    iget v5, p0, Ltv/periscope/android/view/RootDragLayout;->u:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 398
    :cond_4
    invoke-direct {p0, v4, v6}, Ltv/periscope/android/view/RootDragLayout;->a(IF)V

    .line 400
    :cond_5
    iput v6, p0, Ltv/periscope/android/view/RootDragLayout;->u:F

    move v3, v1

    .line 401
    goto :goto_2

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/view/RootDragLayout;->r:Z

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    .line 216
    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/view/RootDragLayout;->a(IIIIZ)V

    .line 217
    invoke-direct {p0}, Ltv/periscope/android/view/RootDragLayout;->a()V

    .line 219
    iget-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/view/z;

    .line 220
    iget-object v0, v0, Ltv/periscope/android/view/z;->a:Landroid/view/View;

    invoke-direct {p0, v0, p3, p5}, Ltv/periscope/android/view/RootDragLayout;->a(Landroid/view/View;II)V

    goto :goto_0

    .line 223
    :cond_0
    iput-boolean v5, p0, Ltv/periscope/android/view/RootDragLayout;->r:Z

    .line 224
    iput-boolean v5, p0, Ltv/periscope/android/view/RootDragLayout;->s:Z

    .line 225
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .prologue
    .line 132
    invoke-virtual {p0}, Ltv/periscope/android/view/RootDragLayout;->getChildCount()I

    move-result v11

    .line 135
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    .line 136
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    move v6, v0

    .line 137
    :goto_0
    iget-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 139
    const/4 v9, 0x0

    .line 140
    const/4 v8, 0x0

    .line 141
    const/4 v7, 0x0

    .line 143
    const/4 v0, 0x0

    move v10, v0

    :goto_1
    if-ge v10, v11, :cond_4

    .line 144
    invoke-virtual {p0, v10}, Ltv/periscope/android/view/RootDragLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 145
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_8

    .line 146
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Ltv/periscope/android/view/RootDragLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 147
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;

    .line 149
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    .line 148
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 151
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v4, v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v4, v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    .line 150
    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 152
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-static {v7, v2}, Ltv/periscope/android/view/RootDragLayout;->combineMeasuredStates(II)I

    move-result v2

    .line 153
    if-eqz v6, :cond_2

    .line 154
    iget v5, v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;->width:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    iget v0, v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;->height:I

    const/4 v5, -0x1

    if-ne v0, v5, :cond_2

    .line 156
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move v0, v2

    move v1, v3

    move v2, v4

    .line 143
    :goto_2
    add-int/lit8 v3, v10, 0x1

    move v10, v3

    move v7, v0

    move v8, v1

    move v9, v2

    goto :goto_1

    .line 136
    :cond_3
    const/4 v0, 0x0

    move v6, v0

    goto :goto_0

    .line 163
    :cond_4
    invoke-virtual {p0}, Ltv/periscope/android/view/RootDragLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Ltv/periscope/android/view/RootDragLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v8

    .line 164
    invoke-virtual {p0}, Ltv/periscope/android/view/RootDragLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Ltv/periscope/android/view/RootDragLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v9

    .line 167
    invoke-virtual {p0}, Ltv/periscope/android/view/RootDragLayout;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 168
    invoke-virtual {p0}, Ltv/periscope/android/view/RootDragLayout;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 170
    invoke-static {v0, p1, v7}, Ltv/periscope/android/view/RootDragLayout;->resolveSizeAndState(III)I

    move-result v0

    shl-int/lit8 v2, v7, 0x10

    .line 171
    invoke-static {v1, p2, v2}, Ltv/periscope/android/view/RootDragLayout;->resolveSizeAndState(III)I

    move-result v1

    .line 170
    invoke-virtual {p0, v0, v1}, Ltv/periscope/android/view/RootDragLayout;->setMeasuredDimension(II)V

    .line 174
    iget-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 175
    const/4 v0, 0x1

    if-le v4, v0, :cond_7

    .line 176
    const/4 v0, 0x0

    move v3, v0

    :goto_3
    if-ge v3, v4, :cond_7

    .line 177
    iget-object v0, p0, Ltv/periscope/android/view/RootDragLayout;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 179
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 183
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_5

    .line 184
    invoke-virtual {p0}, Ltv/periscope/android/view/RootDragLayout;->getMeasuredWidth()I

    move-result v2

    .line 185
    invoke-virtual {p0}, Ltv/periscope/android/view/RootDragLayout;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-virtual {p0}, Ltv/periscope/android/view/RootDragLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v2, v5

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v2, v5

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    .line 184
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 195
    :goto_4
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_6

    .line 196
    invoke-virtual {p0}, Ltv/periscope/android/view/RootDragLayout;->getMeasuredHeight()I

    move-result v5

    .line 197
    invoke-virtual {p0}, Ltv/periscope/android/view/RootDragLayout;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Ltv/periscope/android/view/RootDragLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v5, v6

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v1, v5, v1

    const/high16 v5, 0x40000000    # 2.0f

    .line 196
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 207
    :goto_5
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 176
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 190
    :cond_5
    invoke-virtual {p0}, Ltv/periscope/android/view/RootDragLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Ltv/periscope/android/view/RootDragLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v2, v5

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v5

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v5

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 189
    invoke-static {p1, v2, v5}, Ltv/periscope/android/view/RootDragLayout;->getChildMeasureSpec(III)I

    move-result v2

    goto :goto_4

    .line 202
    :cond_6
    invoke-virtual {p0}, Ltv/periscope/android/view/RootDragLayout;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Ltv/periscope/android/view/RootDragLayout;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 201
    invoke-static {p2, v5, v1}, Ltv/periscope/android/view/RootDragLayout;->getChildMeasureSpec(III)I

    move-result v1

    goto :goto_5

    .line 210
    :cond_7
    return-void

    :cond_8
    move v0, v7

    move v1, v8

    move v2, v9

    goto/16 :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 432
    iget-boolean v2, p0, Ltv/periscope/android/view/RootDragLayout;->q:Z

    if-nez v2, :cond_1

    .line 475
    :cond_0
    :goto_0
    return v0

    .line 438
    :cond_1
    :try_start_0
    iget-object v2, p0, Ltv/periscope/android/view/RootDragLayout;->j:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :goto_1
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v2

    if-gt v2, v1, :cond_0

    .line 447
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 448
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 450
    iput v3, p0, Ltv/periscope/android/view/RootDragLayout;->v:F

    .line 452
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v4

    .line 453
    packed-switch v4, :pswitch_data_0

    :cond_2
    :goto_2
    move v0, v1

    .line 475
    goto :goto_0

    .line 439
    :catch_0
    move-exception v2

    .line 441
    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "Crash while processing touch event"

    invoke-direct {v3, v4, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lh;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 455
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Ltv/periscope/android/view/RootDragLayout;->u:F

    goto :goto_2

    .line 459
    :pswitch_1
    iget-object v4, p0, Ltv/periscope/android/view/RootDragLayout;->j:Landroid/support/v4/widget/ViewDragHelper;

    float-to-int v2, v2

    float-to-int v5, v3

    invoke-virtual {v4, v2, v5}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v2

    .line 460
    if-eqz v2, :cond_3

    iget v4, p0, Ltv/periscope/android/view/RootDragLayout;->u:F

    sub-float/2addr v4, v3

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 461
    :cond_3
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 462
    invoke-direct {p0, v0, v3}, Ltv/periscope/android/view/RootDragLayout;->a(IF)V

    .line 464
    :cond_4
    iput v3, p0, Ltv/periscope/android/view/RootDragLayout;->u:F

    goto :goto_2

    .line 468
    :pswitch_2
    invoke-direct {p0}, Ltv/periscope/android/view/RootDragLayout;->d()Landroid/view/View;

    move-result-object v0

    .line 469
    if-eqz v0, :cond_2

    .line 470
    invoke-virtual {p0, v0}, Ltv/periscope/android/view/RootDragLayout;->c(Landroid/view/View;)V

    goto :goto_2

    .line 453
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 343
    iget-boolean v0, p0, Ltv/periscope/android/view/RootDragLayout;->r:Z

    if-nez v0, :cond_0

    .line 344
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 346
    :cond_0
    return-void
.end method

.method public setDraggable(Z)V
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Ltv/periscope/android/view/RootDragLayout;->q:Z

    .line 99
    return-void
.end method

.method public setFriction(F)V
    .locals 0

    .prologue
    .line 105
    iput p1, p0, Ltv/periscope/android/view/RootDragLayout;->t:F

    .line 106
    return-void
.end method

.method public setOnViewDragListener(Ltv/periscope/android/view/aw;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Ltv/periscope/android/view/RootDragLayout;->p:Ltv/periscope/android/view/aw;

    .line 95
    return-void
.end method
