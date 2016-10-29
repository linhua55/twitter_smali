.class public Ltv/periscope/android/view/PsLoading;
.super Landroid/widget/ImageView;
.source "Twttr"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private d:Landroid/animation/ValueAnimator;

.field private e:Landroid/animation/ValueAnimator;

.field private f:Landroid/graphics/drawable/BitmapDrawable;

.field private g:F

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ltv/periscope/android/view/PsLoading;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ltv/periscope/android/view/PsLoading;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    invoke-direct {p0, p1, p2, p3}, Ltv/periscope/android/view/PsLoading;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method static synthetic a(Ltv/periscope/android/view/PsLoading;F)F
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Ltv/periscope/android/view/PsLoading;->g:F

    return p1
.end method

.method static synthetic a(Ltv/periscope/android/view/PsLoading;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Ltv/periscope/android/view/PsLoading;->f:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 67
    sget-object v0, Ltv/periscope/android/library/q;->PsLoading:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    sget v1, Ltv/periscope/android/library/q;->PsLoading_ps__halfHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 69
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    invoke-virtual {p0}, Ltv/periscope/android/view/PsLoading;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 74
    if-nez v0, :cond_1

    .line 75
    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {p0}, Ltv/periscope/android/view/PsLoading;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/k;->ps__bg_loading_half:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Ltv/periscope/android/view/PsLoading;->f:Landroid/graphics/drawable/BitmapDrawable;

    .line 84
    :goto_0
    iget-object v0, p0, Ltv/periscope/android/view/PsLoading;->f:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/view/PsLoading;->a:Landroid/graphics/Bitmap;

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Ltv/periscope/android/view/PsLoading;->b:Landroid/graphics/Paint;

    .line 86
    new-instance v0, Ltv/periscope/android/view/ao;

    invoke-direct {v0, p0}, Ltv/periscope/android/view/ao;-><init>(Ltv/periscope/android/view/PsLoading;)V

    iput-object v0, p0, Ltv/periscope/android/view/PsLoading;->c:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 103
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 104
    new-array v1, v4, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Ltv/periscope/android/view/PsLoading;->d:Landroid/animation/ValueAnimator;

    .line 105
    iget-object v1, p0, Ltv/periscope/android/view/PsLoading;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 106
    iget-object v0, p0, Ltv/periscope/android/view/PsLoading;->d:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 107
    iget-object v0, p0, Ltv/periscope/android/view/PsLoading;->d:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 108
    iget-object v0, p0, Ltv/periscope/android/view/PsLoading;->d:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x6a4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 110
    new-array v0, v4, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/view/PsLoading;->e:Landroid/animation/ValueAnimator;

    .line 111
    iget-object v0, p0, Ltv/periscope/android/view/PsLoading;->e:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 112
    iget-object v0, p0, Ltv/periscope/android/view/PsLoading;->e:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 113
    iget-object v0, p0, Ltv/periscope/android/view/PsLoading;->e:Landroid/animation/ValueAnimator;

    new-instance v1, Ltv/periscope/android/view/ap;

    invoke-direct {v1, p0}, Ltv/periscope/android/view/ap;-><init>(Ltv/periscope/android/view/PsLoading;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 119
    iget-object v0, p0, Ltv/periscope/android/view/PsLoading;->e:Landroid/animation/ValueAnimator;

    new-instance v1, Ltv/periscope/android/view/aq;

    invoke-direct {v1, p0}, Ltv/periscope/android/view/aq;-><init>(Ltv/periscope/android/view/PsLoading;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 125
    return-void

    .line 78
    :cond_0
    invoke-virtual {p0}, Ltv/periscope/android/view/PsLoading;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/k;->ps__bg_loading:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Ltv/periscope/android/view/PsLoading;->f:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    .line 81
    :cond_1
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Ltv/periscope/android/view/PsLoading;->f:Landroid/graphics/drawable/BitmapDrawable;

    goto/16 :goto_0

    .line 104
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 110
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic a(Ltv/periscope/android/view/PsLoading;Z)Z
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Ltv/periscope/android/view/PsLoading;->h:Z

    return p1
.end method

.method static synthetic b(Ltv/periscope/android/view/PsLoading;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Ltv/periscope/android/view/PsLoading;->h:Z

    return v0
.end method

.method static synthetic c(Ltv/periscope/android/view/PsLoading;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ltv/periscope/android/view/PsLoading;->d()V

    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p0}, Ltv/periscope/android/view/PsLoading;->clearAnimation()V

    .line 153
    iget-object v0, p0, Ltv/periscope/android/view/PsLoading;->d:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 154
    iget-object v0, p0, Ltv/periscope/android/view/PsLoading;->d:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Ltv/periscope/android/view/PsLoading;->c:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 155
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ltv/periscope/android/view/PsLoading;->setVisibility(I)V

    .line 156
    invoke-virtual {p0}, Ltv/periscope/android/view/PsLoading;->a()V

    .line 157
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/periscope/android/view/PsLoading;->h:Z

    .line 55
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltv/periscope/android/view/PsLoading;->setVisibility(I)V

    .line 140
    iget-boolean v0, p0, Ltv/periscope/android/view/PsLoading;->h:Z

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p0}, Ltv/periscope/android/view/PsLoading;->a()V

    .line 142
    iget-object v0, p0, Ltv/periscope/android/view/PsLoading;->d:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Ltv/periscope/android/view/PsLoading;->c:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 143
    iget-object v0, p0, Ltv/periscope/android/view/PsLoading;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 145
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Ltv/periscope/android/view/PsLoading;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 149
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 62
    invoke-direct {p0}, Ltv/periscope/android/view/PsLoading;->d()V

    .line 63
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 129
    invoke-virtual {p0}, Ltv/periscope/android/view/PsLoading;->getWidth()I

    move-result v1

    .line 130
    iget-object v0, p0, Ltv/periscope/android/view/PsLoading;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 131
    iget v0, p0, Ltv/periscope/android/view/PsLoading;->g:F

    neg-float v0, v0

    float-to-int v0, v0

    .line 132
    :goto_0
    if-ge v0, v1, :cond_0

    .line 133
    iget-object v3, p0, Ltv/periscope/android/view/PsLoading;->a:Landroid/graphics/Bitmap;

    int-to-float v4, v0

    const/4 v5, 0x0

    iget-object v6, p0, Ltv/periscope/android/view/PsLoading;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 134
    add-int/2addr v0, v2

    goto :goto_0

    .line 136
    :cond_0
    return-void
.end method
