.class public Lcom/twitter/android/dm/widget/ProgressIndicator;
.super Landroid/view/View;
.source "Twttr"


# static fields
.field private static final a:Landroid/view/animation/Interpolator;


# instance fields
.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/RectF;

.field private final d:F

.field private final e:Landroid/animation/ObjectAnimator;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/twitter/android/dm/widget/ProgressIndicator;->a:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/dm/widget/ProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-virtual {p0}, Lcom/twitter/android/dm/widget/ProgressIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f012c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/twitter/android/dm/widget/ProgressIndicator;->d:F

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/dm/widget/ProgressIndicator;->b:Landroid/graphics/Paint;

    .line 44
    iget-object v0, p0, Lcom/twitter/android/dm/widget/ProgressIndicator;->b:Landroid/graphics/Paint;

    const v1, 0x7f120153

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    iget-object v0, p0, Lcom/twitter/android/dm/widget/ProgressIndicator;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    iget-object v0, p0, Lcom/twitter/android/dm/widget/ProgressIndicator;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/twitter/android/dm/widget/ProgressIndicator;->d:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 47
    iget-object v0, p0, Lcom/twitter/android/dm/widget/ProgressIndicator;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    iget-object v0, p0, Lcom/twitter/android/dm/widget/ProgressIndicator;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 50
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/dm/widget/ProgressIndicator;->c:Landroid/graphics/RectF;

    .line 52
    const-string/jumbo v0, "progress"

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/dm/widget/ProgressIndicator;->e:Landroid/animation/ObjectAnimator;

    .line 53
    iget-object v0, p0, Lcom/twitter/android/dm/widget/ProgressIndicator;->e:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 54
    iget-object v0, p0, Lcom/twitter/android/dm/widget/ProgressIndicator;->e:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/twitter/android/dm/widget/ProgressIndicator;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 55
    return-void

    .line 52
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/twitter/android/dm/widget/ProgressIndicator;->f:I

    if-eqz v0, :cond_0

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/dm/widget/ProgressIndicator;->f:I

    .line 101
    invoke-virtual {p0}, Lcom/twitter/android/dm/widget/ProgressIndicator;->invalidate()V

    .line 103
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const v3, 0x461c4000    # 10000.0f

    .line 71
    iget-object v0, p0, Lcom/twitter/android/dm/widget/ProgressIndicator;->e:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 73
    if-gez p1, :cond_0

    int-to-float v0, p1

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    :cond_0
    move v0, v2

    .line 75
    :goto_0
    if-nez v0, :cond_3

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid progress value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Progress should be between 0 and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " inclusive."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 85
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 73
    goto :goto_0

    .line 81
    :cond_3
    iget v0, p0, Lcom/twitter/android/dm/widget/ProgressIndicator;->f:I

    if-le p1, v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/twitter/android/dm/widget/ProgressIndicator;->e:Landroid/animation/ObjectAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [I

    iget v4, p0, Lcom/twitter/android/dm/widget/ProgressIndicator;->f:I

    aput v4, v3, v1

    aput p1, v3, v2

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 83
    iget-object v0, p0, Lcom/twitter/android/dm/widget/ProgressIndicator;->e:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 109
    iget v0, p0, Lcom/twitter/android/dm/widget/ProgressIndicator;->d:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 110
    iget-object v1, p0, Lcom/twitter/android/dm/widget/ProgressIndicator;->c:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/twitter/android/dm/widget/ProgressIndicator;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/twitter/android/dm/widget/ProgressIndicator;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 112
    const/high16 v0, 0x43b40000    # 360.0f

    iget v1, p0, Lcom/twitter/android/dm/widget/ProgressIndicator;->f:I

    int-to-float v1, v1

    const v2, 0x461c4000    # 10000.0f

    div-float/2addr v1, v2

    mul-float v3, v0, v1

    .line 113
    iget-object v1, p0, Lcom/twitter/android/dm/widget/ProgressIndicator;->c:Landroid/graphics/RectF;

    const/high16 v2, 0x43870000    # 270.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/twitter/android/dm/widget/ProgressIndicator;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 114
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 60
    return-void
.end method

.method setProgress(I)V
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/twitter/android/dm/widget/ProgressIndicator;->f:I

    if-le p1, v0, :cond_0

    .line 93
    iput p1, p0, Lcom/twitter/android/dm/widget/ProgressIndicator;->f:I

    .line 94
    invoke-virtual {p0}, Lcom/twitter/android/dm/widget/ProgressIndicator;->invalidate()V

    .line 96
    :cond_0
    return-void
.end method
