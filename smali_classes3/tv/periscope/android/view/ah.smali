.class public Ltv/periscope/android/view/ah;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ltv/periscope/android/view/y;


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F

.field private e:I


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Ltv/periscope/android/view/ah;->a:F

    .line 19
    iput p2, p0, Ltv/periscope/android/view/ah;->b:F

    .line 20
    iput p3, p0, Ltv/periscope/android/view/ah;->c:F

    .line 21
    iput p4, p0, Ltv/periscope/android/view/ah;->d:F

    .line 22
    return-void
.end method

.method private a(F)F
    .locals 3

    .prologue
    .line 31
    iget v0, p0, Ltv/periscope/android/view/ah;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Ltv/periscope/android/view/ah;->a:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    return v0
.end method

.method private a(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private b(F)F
    .locals 3

    .prologue
    .line 35
    iget v0, p0, Ltv/periscope/android/view/ah;->d:F

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Ltv/periscope/android/view/ah;->c:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    return v0
.end method

.method private b(Landroid/view/View;)F
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private b(Landroid/view/View;Landroid/view/View;)F
    .locals 2

    .prologue
    .line 25
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 26
    invoke-direct {p0, p1, p2}, Ltv/periscope/android/view/ah;->c(Landroid/view/View;Landroid/view/View;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 27
    div-float v0, v1, v0

    return v0
.end method

.method private c(Landroid/view/View;Landroid/view/View;)F
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ltv/periscope/android/view/ah;->b(Landroid/view/View;)F

    move-result v0

    invoke-direct {p0, p2}, Ltv/periscope/android/view/ah;->a(Landroid/view/View;)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Ltv/periscope/android/view/ah;->e:I

    .line 52
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/View;)V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 56
    sget v0, Ltv/periscope/android/library/l;->message:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 57
    invoke-direct {p0, p1}, Ltv/periscope/android/view/ah;->b(Landroid/view/View;)F

    move-result v0

    .line 58
    invoke-direct {p0, p1, p2}, Ltv/periscope/android/view/ah;->b(Landroid/view/View;Landroid/view/View;)F

    move-result v2

    .line 59
    invoke-direct {p0, v2}, Ltv/periscope/android/view/ah;->a(F)F

    move-result v3

    .line 71
    invoke-direct {p0, p2}, Ltv/periscope/android/view/ah;->a(Landroid/view/View;)F

    move-result v4

    cmpg-float v0, v4, v0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    .line 73
    :goto_0
    mul-int/lit8 v4, v0, -0x1

    .line 74
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Ltv/periscope/android/view/ah;->a:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    .line 75
    mul-float/2addr v5, v2

    int-to-float v4, v4

    mul-float/2addr v4, v5

    .line 77
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    invoke-virtual {v1, v5}, Landroid/view/View;->setPivotX(F)V

    .line 78
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setPivotY(F)V

    .line 81
    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 82
    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 85
    float-to-int v3, v4

    if-nez v3, :cond_1

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 92
    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 94
    invoke-direct {p0, v2}, Ltv/periscope/android/view/ah;->b(F)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 95
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 88
    :cond_1
    iget v3, p0, Ltv/periscope/android/view/ah;->e:I

    mul-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1
.end method
