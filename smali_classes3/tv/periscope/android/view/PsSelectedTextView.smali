.class public Ltv/periscope/android/view/PsSelectedTextView;
.super Ltv/periscope/android/view/PsTextView;
.source "Twttr"


# instance fields
.field private final a:Landroid/graphics/drawable/shapes/RectShape;

.field private final b:Landroid/graphics/Paint;

.field private c:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1}, Ltv/periscope/android/view/PsTextView;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/view/PsSelectedTextView;->a:Landroid/graphics/drawable/shapes/RectShape;

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/view/PsSelectedTextView;->b:Landroid/graphics/Paint;

    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ltv/periscope/android/view/PsSelectedTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ltv/periscope/android/view/PsTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/view/PsSelectedTextView;->a:Landroid/graphics/drawable/shapes/RectShape;

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/view/PsSelectedTextView;->b:Landroid/graphics/Paint;

    .line 25
    invoke-direct {p0, p1, p2}, Ltv/periscope/android/view/PsSelectedTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Ltv/periscope/android/view/PsTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/view/PsSelectedTextView;->a:Landroid/graphics/drawable/shapes/RectShape;

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/view/PsSelectedTextView;->b:Landroid/graphics/Paint;

    .line 30
    invoke-direct {p0, p1, p2}, Ltv/periscope/android/view/PsSelectedTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    .line 34
    sget-object v0, Ltv/periscope/android/library/q;->PsSelectedTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 36
    :try_start_0
    sget v0, Ltv/periscope/android/library/q;->PsSelectedTextView_ps__indicatorSize:I

    const/high16 v2, 0x41100000    # 9.0f

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Ltv/periscope/android/view/PsSelectedTextView;->c:F

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Ltv/periscope/android/library/q;->PsSelectedTextView_ps__indicatorColor:I

    sget v3, Ltv/periscope/android/library/i;->ps__white:I

    .line 38
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 37
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 39
    iget-object v2, p0, Ltv/periscope/android/view/PsSelectedTextView;->b:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    return-void

    .line 41
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 47
    invoke-super {p0, p1}, Ltv/periscope/android/view/PsTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 49
    iget-object v0, p0, Ltv/periscope/android/view/PsSelectedTextView;->a:Landroid/graphics/drawable/shapes/RectShape;

    invoke-virtual {p0}, Ltv/periscope/android/view/PsSelectedTextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Ltv/periscope/android/view/PsSelectedTextView;->c:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/shapes/RectShape;->resize(FF)V

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    move-result v0

    .line 52
    const/4 v1, 0x0

    invoke-virtual {p0}, Ltv/periscope/android/view/PsSelectedTextView;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Ltv/periscope/android/view/PsSelectedTextView;->a:Landroid/graphics/drawable/shapes/RectShape;

    invoke-virtual {v3}, Landroid/graphics/drawable/shapes/RectShape;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 53
    invoke-virtual {p0}, Ltv/periscope/android/view/PsSelectedTextView;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Ltv/periscope/android/view/PsSelectedTextView;->a:Landroid/graphics/drawable/shapes/RectShape;

    iget-object v2, p0, Ltv/periscope/android/view/PsSelectedTextView;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2}, Landroid/graphics/drawable/shapes/RectShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 57
    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 58
    return-void
.end method
