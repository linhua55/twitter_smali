.class public Ltv/periscope/android/view/ActionSheet;
.super Landroid/widget/RelativeLayout;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Ltv/periscope/android/view/CarouselView;

.field private c:Ltv/periscope/android/view/ah;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Landroid/support/v7/widget/RecyclerView;

.field private h:Ltv/periscope/android/view/p;

.field private i:I

.field private j:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

.field private k:Landroid/animation/Animator;

.field private l:Landroid/animation/Animator;

.field private m:I

.field private n:I

.field private final o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 228
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 220
    new-instance v0, Ltv/periscope/android/view/b;

    invoke-direct {v0, p0}, Ltv/periscope/android/view/b;-><init>(Ltv/periscope/android/view/ActionSheet;)V

    iput-object v0, p0, Ltv/periscope/android/view/ActionSheet;->o:Ljava/lang/Runnable;

    .line 229
    invoke-virtual {p0, p1}, Ltv/periscope/android/view/ActionSheet;->a(Landroid/content/Context;)V

    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 233
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 220
    new-instance v0, Ltv/periscope/android/view/b;

    invoke-direct {v0, p0}, Ltv/periscope/android/view/b;-><init>(Ltv/periscope/android/view/ActionSheet;)V

    iput-object v0, p0, Ltv/periscope/android/view/ActionSheet;->o:Ljava/lang/Runnable;

    .line 234
    invoke-virtual {p0, p1}, Ltv/periscope/android/view/ActionSheet;->a(Landroid/content/Context;)V

    .line 235
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 238
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 220
    new-instance v0, Ltv/periscope/android/view/b;

    invoke-direct {v0, p0}, Ltv/periscope/android/view/b;-><init>(Ltv/periscope/android/view/ActionSheet;)V

    iput-object v0, p0, Ltv/periscope/android/view/ActionSheet;->o:Ljava/lang/Runnable;

    .line 239
    invoke-virtual {p0, p1}, Ltv/periscope/android/view/ActionSheet;->a(Landroid/content/Context;)V

    .line 240
    return-void
.end method

.method private a(I)Landroid/animation/Animator;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 347
    invoke-virtual {p0}, Ltv/periscope/android/view/ActionSheet;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 349
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 350
    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 352
    new-array v2, v8, [I

    iget v3, p0, Ltv/periscope/android/view/ActionSheet;->m:I

    aput v3, v2, v9

    iget v3, p0, Ltv/periscope/android/view/ActionSheet;->n:I

    aput v3, v2, v10

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 353
    new-instance v3, Ltv/periscope/android/view/h;

    invoke-direct {v3, p0}, Ltv/periscope/android/view/h;-><init>(Ltv/periscope/android/view/ActionSheet;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 360
    new-instance v3, Ltv/periscope/android/view/i;

    invoke-direct {v3, p0}, Ltv/periscope/android/view/i;-><init>(Ltv/periscope/android/view/ActionSheet;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 368
    new-array v3, v8, [I

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 369
    new-instance v4, Ltv/periscope/android/view/j;

    invoke-direct {v4, p0, v3}, Ltv/periscope/android/view/j;-><init>(Ltv/periscope/android/view/ActionSheet;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 382
    new-instance v4, Ltv/periscope/android/view/k;

    invoke-direct {v4, p0}, Ltv/periscope/android/view/k;-><init>(Ltv/periscope/android/view/ActionSheet;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 390
    sget v4, Ltv/periscope/android/library/j;->ps__message_carousel_vertical_translation:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 391
    iget-object v4, p0, Ltv/periscope/android/view/ActionSheet;->b:Ltv/periscope/android/view/CarouselView;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v8, [F

    const/4 v7, 0x0

    aput v7, v6, v9

    neg-int v7, v0

    int-to-float v7, v7

    aput v7, v6, v10

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 392
    new-instance v5, Ltv/periscope/android/view/l;

    invoke-direct {v5, p0, v0}, Ltv/periscope/android/view/l;-><init>(Ltv/periscope/android/view/ActionSheet;I)V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 399
    iget-object v0, p0, Ltv/periscope/android/view/ActionSheet;->d:Landroid/widget/TextView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v8, [F

    fill-array-data v6, :array_1

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 400
    new-instance v5, Ltv/periscope/android/view/m;

    iget-object v6, p0, Ltv/periscope/android/view/ActionSheet;->d:Landroid/widget/TextView;

    invoke-direct {v5, p0, v6}, Ltv/periscope/android/view/m;-><init>(Ltv/periscope/android/view/ActionSheet;Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 407
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v2, v5, v9

    aput-object v4, v5, v10

    aput-object v0, v5, v8

    const/4 v0, 0x3

    aput-object v3, v5, v0

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 408
    new-instance v0, Ltv/periscope/android/view/n;

    invoke-direct {v0, p0}, Ltv/periscope/android/view/n;-><init>(Ltv/periscope/android/view/ActionSheet;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 414
    return-object v1

    .line 368
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 399
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Ltv/periscope/android/view/ActionSheet;)Ltv/periscope/android/view/p;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Ltv/periscope/android/view/ActionSheet;->h:Ltv/periscope/android/view/p;

    return-object v0
.end method

.method private b(I)Landroid/animation/Animator;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 418
    invoke-virtual {p0}, Ltv/periscope/android/view/ActionSheet;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 420
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 421
    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 423
    new-array v2, v7, [I

    iget v3, p0, Ltv/periscope/android/view/ActionSheet;->n:I

    aput v3, v2, v8

    iget v3, p0, Ltv/periscope/android/view/ActionSheet;->m:I

    aput v3, v2, v9

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 424
    new-instance v3, Ltv/periscope/android/view/c;

    invoke-direct {v3, p0}, Ltv/periscope/android/view/c;-><init>(Ltv/periscope/android/view/ActionSheet;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 432
    new-array v3, v7, [I

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 433
    new-instance v4, Ltv/periscope/android/view/d;

    invoke-direct {v4, p0, v3}, Ltv/periscope/android/view/d;-><init>(Ltv/periscope/android/view/ActionSheet;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 446
    new-instance v4, Ltv/periscope/android/view/e;

    invoke-direct {v4, p0}, Ltv/periscope/android/view/e;-><init>(Ltv/periscope/android/view/ActionSheet;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 454
    sget v4, Ltv/periscope/android/library/j;->ps__message_carousel_vertical_translation:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 455
    iget-object v4, p0, Ltv/periscope/android/view/ActionSheet;->b:Ltv/periscope/android/view/CarouselView;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v7, [F

    neg-int v0, v0

    int-to-float v0, v0

    aput v0, v6, v8

    const/4 v0, 0x0

    aput v0, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 457
    iget-object v4, p0, Ltv/periscope/android/view/ActionSheet;->d:Landroid/widget/TextView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v7, [F

    fill-array-data v6, :array_1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 458
    new-instance v5, Ltv/periscope/android/view/f;

    invoke-direct {v5, p0}, Ltv/periscope/android/view/f;-><init>(Ltv/periscope/android/view/ActionSheet;)V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 465
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v2, v5, v8

    aput-object v0, v5, v9

    aput-object v4, v5, v7

    const/4 v0, 0x3

    aput-object v3, v5, v0

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 466
    new-instance v0, Ltv/periscope/android/view/g;

    invoke-direct {v0, p0}, Ltv/periscope/android/view/g;-><init>(Ltv/periscope/android/view/ActionSheet;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 477
    return-object v1

    .line 432
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 457
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic b(Ltv/periscope/android/view/ActionSheet;)Ltv/periscope/android/view/CarouselView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Ltv/periscope/android/view/ActionSheet;->b:Ltv/periscope/android/view/CarouselView;

    return-object v0
.end method

.method static synthetic c(Ltv/periscope/android/view/ActionSheet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Ltv/periscope/android/view/ActionSheet;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Ltv/periscope/android/view/ActionSheet;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Ltv/periscope/android/view/ActionSheet;->n:I

    return v0
.end method

.method static synthetic e(Ltv/periscope/android/view/ActionSheet;)Ltv/periscope/android/view/ah;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Ltv/periscope/android/view/ActionSheet;->c:Ltv/periscope/android/view/ah;

    return-object v0
.end method

.method static synthetic f(Ltv/periscope/android/view/ActionSheet;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Ltv/periscope/android/view/ActionSheet;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method private setInfoText(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 286
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Ltv/periscope/android/view/ActionSheet;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Ltv/periscope/android/view/ActionSheet;->e:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 289
    iget-object v0, p0, Ltv/periscope/android/view/ActionSheet;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/16 v6, 0xfa

    const/high16 v5, 0x3f800000    # 1.0f

    const v4, 0x3f4ccccd    # 0.8f

    .line 243
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 246
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Ltv/periscope/android/library/n;->ps__action_sheet:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 247
    sget v0, Ltv/periscope/android/library/l;->carousel_container:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/view/ActionSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/view/ActionSheet;->a:Landroid/view/View;

    .line 248
    sget v0, Ltv/periscope/android/library/l;->message_carousel:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/view/ActionSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/view/CarouselView;

    iput-object v0, p0, Ltv/periscope/android/view/ActionSheet;->b:Ltv/periscope/android/view/CarouselView;

    .line 249
    new-instance v0, Ltv/periscope/android/view/ah;

    invoke-direct {v0, v4, v5, v4, v5}, Ltv/periscope/android/view/ah;-><init>(FFFF)V

    iput-object v0, p0, Ltv/periscope/android/view/ActionSheet;->c:Ltv/periscope/android/view/ah;

    .line 250
    iget-object v0, p0, Ltv/periscope/android/view/ActionSheet;->b:Ltv/periscope/android/view/CarouselView;

    iget-object v2, p0, Ltv/periscope/android/view/ActionSheet;->c:Ltv/periscope/android/view/ah;

    invoke-virtual {v0, v2}, Ltv/periscope/android/view/CarouselView;->setItemTransformer(Ltv/periscope/android/view/y;)V

    .line 251
    sget v0, Ltv/periscope/android/library/l;->report_comment_info:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/view/ActionSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/view/ActionSheet;->d:Landroid/widget/TextView;

    .line 252
    sget v0, Ltv/periscope/android/library/l;->report_comment_background:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/view/ActionSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/view/ActionSheet;->f:Landroid/view/View;

    .line 253
    sget v0, Ltv/periscope/android/library/l;->info_snippet:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/view/ActionSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/view/ActionSheet;->e:Landroid/widget/TextView;

    .line 254
    sget v0, Ltv/periscope/android/library/l;->actions:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/view/ActionSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Ltv/periscope/android/view/ActionSheet;->g:Landroid/support/v7/widget/RecyclerView;

    .line 255
    new-instance v0, Ltv/periscope/android/view/p;

    invoke-direct {v0, p1, p0}, Ltv/periscope/android/view/p;-><init>(Landroid/content/Context;Ltv/periscope/android/view/ActionSheet;)V

    iput-object v0, p0, Ltv/periscope/android/view/ActionSheet;->h:Ltv/periscope/android/view/p;

    .line 256
    iget-object v0, p0, Ltv/periscope/android/view/ActionSheet;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Ltv/periscope/android/view/ActionSheet;->h:Ltv/periscope/android/view/p;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 257
    new-instance v0, Ltv/periscope/android/view/q;

    invoke-virtual {p0}, Ltv/periscope/android/view/ActionSheet;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ltv/periscope/android/view/ActionSheet;->h:Ltv/periscope/android/view/p;

    invoke-direct {v0, v2, v3}, Ltv/periscope/android/view/q;-><init>(Landroid/content/Context;Ltv/periscope/android/view/p;)V

    iput-object v0, p0, Ltv/periscope/android/view/ActionSheet;->j:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    .line 259
    invoke-virtual {p0}, Ltv/periscope/android/view/ActionSheet;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 260
    sget v2, Ltv/periscope/android/library/j;->ps__report_bg_start_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Ltv/periscope/android/view/ActionSheet;->m:I

    .line 261
    sget v2, Ltv/periscope/android/library/j;->ps__report_bg_end_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Ltv/periscope/android/view/ActionSheet;->n:I

    .line 263
    invoke-direct {p0, v6}, Ltv/periscope/android/view/ActionSheet;->a(I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/view/ActionSheet;->k:Landroid/animation/Animator;

    .line 264
    invoke-direct {p0, v6}, Ltv/periscope/android/view/ActionSheet;->b(I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/view/ActionSheet;->l:Landroid/animation/Animator;

    .line 266
    iget-object v0, p0, Ltv/periscope/android/view/ActionSheet;->b:Ltv/periscope/android/view/CarouselView;

    new-instance v2, Ltv/periscope/android/view/o;

    invoke-direct {v2, v1}, Ltv/periscope/android/view/o;-><init>(I)V

    invoke-virtual {v0, v2}, Ltv/periscope/android/view/CarouselView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 267
    return-void
.end method

.method public getScrollPage()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Ltv/periscope/android/view/ActionSheet;->i:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 493
    return-void
.end method

.method public setCarouselScrollListener(Ltv/periscope/android/view/x;)V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Ltv/periscope/android/view/ActionSheet;->b:Ltv/periscope/android/view/CarouselView;

    invoke-virtual {v0, p1}, Ltv/periscope/android/view/CarouselView;->setCarouselScrollListener(Ltv/periscope/android/view/x;)V

    .line 283
    return-void
.end method
