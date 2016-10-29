.class public abstract Ltv/periscope/android/ui/love/b;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final b:Ljava/util/Random;


# instance fields
.field protected a:Ltv/periscope/android/ui/love/c;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Ltv/periscope/android/ui/love/b;->b:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 44
    sget v1, Ltv/periscope/android/library/j;->ps__heart_anim_init_x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Ltv/periscope/android/ui/love/b;->c:I

    .line 45
    sget v1, Ltv/periscope/android/library/j;->ps__heart_anim_init_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Ltv/periscope/android/ui/love/b;->d:I

    .line 46
    sget v1, Ltv/periscope/android/library/j;->ps__heart_anim_bezier_x_rand:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Ltv/periscope/android/ui/love/b;->e:I

    .line 47
    sget v1, Ltv/periscope/android/library/j;->ps__heart_anim_length:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Ltv/periscope/android/ui/love/b;->f:I

    .line 48
    sget v1, Ltv/periscope/android/library/j;->ps__heart_anim_length_rand:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Ltv/periscope/android/ui/love/b;->g:I

    .line 49
    sget v1, Ltv/periscope/android/library/m;->ps__heart_anim_bezier_factor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Ltv/periscope/android/ui/love/b;->h:I

    .line 50
    sget v1, Ltv/periscope/android/library/j;->ps__heart_anim_x_point_factor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Ltv/periscope/android/ui/love/b;->i:I

    .line 51
    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/atomic/AtomicInteger;Ltv/periscope/android/ui/love/HeartView;Landroid/view/View;I)Landroid/graphics/Path;
    .locals 12

    .prologue
    .line 72
    sget-object v0, Ltv/periscope/android/ui/love/b;->b:Ljava/util/Random;

    .line 74
    iget v1, p0, Ltv/periscope/android/ui/love/b;->e:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 75
    iget v2, p0, Ltv/periscope/android/ui/love/b;->e:I

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 78
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, p0, Ltv/periscope/android/ui/love/b;->d:I

    sub-int/2addr v3, v4

    invoke-virtual {p2}, Ltv/periscope/android/ui/love/HeartView;->getHeartHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    sub-int/2addr v3, v4

    .line 80
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0xf

    iget v5, p0, Ltv/periscope/android/ui/love/b;->f:I

    mul-int v5, v5, p4

    add-int/2addr v4, v5

    .line 83
    iget v5, p0, Ltv/periscope/android/ui/love/b;->g:I

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, v4

    .line 85
    int-to-float v4, v0

    iget v5, p0, Ltv/periscope/android/ui/love/b;->h:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v7, v4

    .line 86
    iget v4, p0, Ltv/periscope/android/ui/love/b;->i:I

    add-int v8, v4, v1

    .line 87
    iget v1, p0, Ltv/periscope/android/ui/love/b;->i:I

    add-int v9, v1, v2

    .line 88
    sub-int v10, v3, v0

    .line 89
    div-int/lit8 v0, v0, 0x2

    sub-int v11, v3, v0

    .line 91
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 92
    iget v1, p0, Ltv/periscope/android/ui/love/b;->c:I

    int-to-float v1, v1

    int-to-float v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 94
    iget v1, p0, Ltv/periscope/android/ui/love/b;->c:I

    int-to-float v1, v1

    sub-int v2, v3, v7

    int-to-float v2, v2

    int-to-float v3, v8

    add-int v4, v11, v7

    int-to-float v4, v4

    int-to-float v5, v8

    int-to-float v6, v11

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 99
    int-to-float v1, v8

    int-to-float v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 101
    int-to-float v1, v8

    sub-int v2, v11, v7

    int-to-float v2, v2

    int-to-float v3, v9

    add-int v4, v10, v7

    int-to-float v4, v4

    int-to-float v5, v9

    int-to-float v6, v10

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 106
    return-object v0
.end method

.method public abstract a()V
.end method

.method public abstract a(Ltv/periscope/android/ui/love/HeartView;Landroid/view/ViewGroup;Z)V
.end method

.method public a(Ltv/periscope/android/ui/love/c;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Ltv/periscope/android/ui/love/b;->a:Ltv/periscope/android/ui/love/c;

    .line 55
    return-void
.end method

.method public b()F
    .locals 2

    .prologue
    .line 110
    sget-object v0, Ltv/periscope/android/ui/love/b;->b:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v1, 0x41e4cccd    # 28.6f

    mul-float/2addr v0, v1

    const v1, 0x4164cccd    # 14.3f

    sub-float/2addr v0, v1

    return v0
.end method
