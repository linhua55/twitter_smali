.class public Laja;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/object/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/object/c",
            "<",
            "Laja;",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:I

.field private final c:Lajc;

.field private final d:Lajd;

.field private final e:Lajd;

.field private final f:Lajd;

.field private final g:Lajd;

.field private final h:Landroid/view/animation/Interpolator;

.field private final i:Landroid/animation/ObjectAnimator;

.field private j:F

.field private k:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lajb;

    invoke-direct {v0}, Lajb;-><init>()V

    sput-object v0, Laja;->a:Lcom/twitter/util/object/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lajc;)V
    .locals 1

    .prologue
    .line 46
    sget-object v0, Laja;->a:Lcom/twitter/util/object/c;

    invoke-direct {p0, p1, p2, v0}, Laja;-><init>(Landroid/content/Context;Lajc;Lcom/twitter/util/object/c;)V

    .line 47
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lajc;Lcom/twitter/util/object/c;)V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lajc;",
            "Lcom/twitter/util/object/c",
            "<",
            "Laja;",
            "Landroid/animation/ObjectAnimator;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lajd;

    invoke-direct {v0}, Lajd;-><init>()V

    iput-object v0, p0, Laja;->d:Lajd;

    .line 37
    new-instance v0, Lajd;

    invoke-direct {v0}, Lajd;-><init>()V

    iput-object v0, p0, Laja;->e:Lajd;

    .line 38
    new-instance v0, Lajd;

    invoke-direct {v0}, Lajd;-><init>()V

    iput-object v0, p0, Laja;->f:Lajd;

    .line 39
    new-instance v0, Lajd;

    invoke-direct {v0}, Lajd;-><init>()V

    iput-object v0, p0, Laja;->g:Lajd;

    .line 42
    iput v1, p0, Laja;->j:F

    .line 43
    iput v1, p0, Laja;->k:F

    .line 52
    iput-object p2, p0, Laja;->c:Lajc;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Laja;->b:I

    .line 55
    invoke-static {}, Lcwp;->a()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Laja;->h:Landroid/view/animation/Interpolator;

    .line 56
    invoke-interface {p3, p0}, Lcom/twitter/util/object/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Laja;->i:Landroid/animation/ObjectAnimator;

    .line 57
    return-void
.end method

.method public static a(Landroid/view/View;)Laja;
    .locals 3

    .prologue
    .line 61
    new-instance v0, Laja;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Laiz;

    invoke-direct {v2, p0}, Laiz;-><init>(Landroid/view/View;)V

    invoke-direct {v0, v1, v2}, Laja;-><init>(Landroid/content/Context;Lajc;)V

    return-object v0
.end method

.method private a(FF)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 142
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laja;->g:Lajd;

    .line 143
    :goto_0
    iget v1, v0, Lajd;->a:F

    .line 144
    iget v2, v0, Lajd;->b:F

    .line 145
    iget v0, v0, Lajd;->c:F

    .line 146
    iget-object v3, p0, Laja;->e:Lajd;

    iget v3, v3, Lajd;->a:F

    invoke-static {v3, v1, p1, v4}, Lcom/twitter/util/math/b;->a(FFFZ)F

    move-result v1

    .line 147
    iget-object v3, p0, Laja;->e:Lajd;

    iget v3, v3, Lajd;->b:F

    invoke-static {v3, v2, p1, v4}, Lcom/twitter/util/math/b;->a(FFFZ)F

    move-result v2

    .line 148
    iget-object v3, p0, Laja;->e:Lajd;

    iget v3, v3, Lajd;->c:F

    invoke-static {v3, v0, p1, v4}, Lcom/twitter/util/math/b;->a(FFFZ)F

    move-result v0

    .line 149
    iget-object v3, p0, Laja;->d:Lajd;

    invoke-virtual {v3, v1, v2, v0}, Lajd;->a(FFF)V

    .line 150
    iget-object v0, p0, Laja;->c:Lajc;

    iget-object v1, p0, Laja;->d:Lajd;

    invoke-interface {v0, v1}, Lajc;->a(Lajd;)V

    .line 151
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Laja;->f:Lajd;

    goto :goto_0
.end method

.method private a(FZ)V
    .locals 4

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Laja;->a(F)V

    .line 69
    if-eqz p2, :cond_0

    .line 70
    iget-object v0, p0, Laja;->i:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 71
    iget-object v0, p0, Laja;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Laja;->b()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 72
    iget-object v0, p0, Laja;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Laja;->a()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 73
    iget-object v0, p0, Laja;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Laja;->setZoomLevel(F)V

    goto :goto_0

    .line 70
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private c(F)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 154
    cmpl-float v0, p1, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    move v3, v0

    .line 155
    :goto_0
    if-eqz v3, :cond_2

    iget-object v0, p0, Laja;->f:Lajd;

    move-object v2, v0

    .line 156
    :goto_1
    if-eqz v3, :cond_3

    iget-object v0, p0, Laja;->g:Lajd;

    .line 158
    :goto_2
    iget-object v3, p0, Laja;->c:Lajc;

    invoke-interface {v3}, Lajc;->a()F

    move-result v3

    .line 159
    add-float/2addr v3, p1

    iget-object v5, p0, Laja;->f:Lajd;

    iget v5, v5, Lajd;->a:F

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, v6

    iget-object v6, p0, Laja;->g:Lajd;

    iget v6, v6, Lajd;->a:F

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v6, v7

    invoke-static {v3, v5, v6}, Lcom/twitter/util/math/b;->a(FFF)F

    move-result v3

    .line 163
    iget-object v5, p0, Laja;->f:Lajd;

    iget v5, v5, Lajd;->a:F

    .line 164
    iget-object v6, p0, Laja;->g:Lajd;

    iget v6, v6, Lajd;->a:F

    .line 165
    cmpl-float v7, v5, v6

    if-eqz v7, :cond_0

    .line 166
    cmpl-float v1, p1, v1

    if-lez v1, :cond_4

    sub-float v1, v3, v5

    sub-float v5, v6, v5

    div-float/2addr v1, v5

    .line 171
    :cond_0
    :goto_3
    iget v5, v2, Lajd;->b:F

    iget v6, v0, Lajd;->b:F

    .line 172
    invoke-static {v5, v6, v1, v4}, Lcom/twitter/util/math/b;->a(FFFZ)F

    move-result v5

    .line 173
    iget v2, v2, Lajd;->c:F

    iget v0, v0, Lajd;->c:F

    .line 174
    invoke-static {v2, v0, v1, v4}, Lcom/twitter/util/math/b;->a(FFFZ)F

    move-result v0

    .line 175
    iget-object v1, p0, Laja;->d:Lajd;

    invoke-virtual {v1, v3, v5, v0}, Lajd;->a(FFF)V

    .line 176
    iget-object v0, p0, Laja;->c:Lajc;

    iget-object v1, p0, Laja;->d:Lajd;

    invoke-interface {v0, v1}, Lajc;->a(Lajd;)V

    .line 177
    return-void

    :cond_1
    move v3, v4

    .line 154
    goto :goto_0

    .line 155
    :cond_2
    iget-object v0, p0, Laja;->g:Lajd;

    move-object v2, v0

    goto :goto_1

    .line 156
    :cond_3
    iget-object v0, p0, Laja;->f:Lajd;

    goto :goto_2

    .line 166
    :cond_4
    sub-float v1, v3, v6

    sub-float/2addr v5, v6

    div-float/2addr v1, v5

    goto :goto_3
.end method


# virtual methods
.method public a()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Laja;->h:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method a(F)V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Laja;->e:Lajd;

    iget-object v1, p0, Laja;->c:Lajc;

    invoke-interface {v1}, Lajc;->a()F

    move-result v1

    iput v1, v0, Lajd;->a:F

    .line 82
    iget-object v0, p0, Laja;->e:Lajd;

    iget-object v1, p0, Laja;->c:Lajc;

    invoke-interface {v1}, Lajc;->b()F

    move-result v1

    iput v1, v0, Lajd;->b:F

    .line 83
    iget-object v0, p0, Laja;->e:Lajd;

    iget-object v1, p0, Laja;->c:Lajc;

    invoke-interface {v1}, Lajc;->c()F

    move-result v1

    iput v1, v0, Lajd;->c:F

    .line 84
    iput p1, p0, Laja;->k:F

    .line 85
    return-void
.end method

.method public a(Laix;)V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Laja;->g:Lajd;

    iget-object v1, p1, Laix;->b:Lajd;

    invoke-virtual {v0, v1}, Lajd;->a(Lajd;)V

    .line 181
    iget-object v0, p0, Laja;->f:Lajd;

    iget-object v1, p1, Laix;->a:Lajd;

    invoke-virtual {v0, v1}, Lajd;->a(Lajd;)V

    .line 182
    invoke-virtual {p0}, Laja;->getZoomLevel()F

    move-result v0

    invoke-virtual {p0, v0}, Laja;->setZoomLevel(F)V

    .line 183
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Laja;->a(FZ)V

    .line 123
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Laja;->b:I

    return v0
.end method

.method public b(F)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1}, Laja;->c(F)V

    .line 105
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 129
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, p1}, Laja;->a(FZ)V

    .line 130
    return-void
.end method

.method public getZoomLevel()F
    .locals 1
    .annotation build Latx;
    .end annotation

    .prologue
    .line 113
    iget v0, p0, Laja;->j:F

    return v0
.end method

.method public setZoomLevel(F)V
    .locals 2
    .annotation build Latx;
    .end annotation

    .prologue
    .line 94
    const v0, -0x41b33333    # -0.2f

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {p1, v0, v1}, Lcom/twitter/util/math/b;->a(FFF)F

    move-result v0

    iput v0, p0, Laja;->j:F

    .line 95
    iget v0, p0, Laja;->j:F

    iget v1, p0, Laja;->k:F

    invoke-direct {p0, v0, v1}, Laja;->a(FF)V

    .line 96
    return-void
.end method
