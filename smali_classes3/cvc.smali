.class public Lcvc;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final a:Landroid/view/animation/Interpolator;


# instance fields
.field private final b:Landroid/view/View;

.field private final c:Landroid/graphics/RectF;

.field private final d:Lcvf;

.field private final e:Lcvb;

.field private f:F

.field private g:F

.field private h:F

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcwd;

    invoke-direct {v0}, Lcwd;-><init>()V

    sput-object v0, Lcvc;->a:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(Landroid/view/View;Landroid/graphics/RectF;Lcvf;Lcvb;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcvc;->i:I

    .line 55
    iput-object p1, p0, Lcvc;->b:Landroid/view/View;

    .line 56
    iput-object p2, p0, Lcvc;->c:Landroid/graphics/RectF;

    .line 57
    iput-object p3, p0, Lcvc;->d:Lcvf;

    .line 58
    iput-object p4, p0, Lcvc;->e:Lcvb;

    .line 59
    return-void
.end method

.method static synthetic a(Lcvc;)Landroid/view/View;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcvc;->b:Landroid/view/View;

    return-object v0
.end method

.method public static a(Landroid/view/View;Landroid/graphics/RectF;Lcvb;)Lcvc;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcvc;

    new-instance v1, Lcvf;

    invoke-direct {v1}, Lcvf;-><init>()V

    invoke-direct {v0, p0, p1, v1, p2}, Lcvc;-><init>(Landroid/view/View;Landroid/graphics/RectF;Lcvf;Lcvb;)V

    return-object v0
.end method

.method static synthetic b(Lcvc;)Lcvb;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcvc;->e:Lcvb;

    return-object v0
.end method

.method private b(F)Z
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcvc;->g:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcvc;->a:Landroid/view/animation/Interpolator;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 157
    iget-object v0, p0, Lcvc;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    .line 158
    iget v1, p0, Lcvc;->g:F

    iget v2, p0, Lcvc;->f:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 159
    invoke-direct {p0, v0}, Lcvc;->b(F)Z

    move-result v2

    if-eqz v2, :cond_1

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    .line 161
    iget-object v0, p0, Lcvc;->d:Lcvf;

    iget-object v1, p0, Lcvc;->b:Landroid/view/View;

    iget v2, p0, Lcvc;->f:F

    new-instance v3, Lcve;

    invoke-direct {v3, p0}, Lcve;-><init>(Lcvc;)V

    invoke-virtual {v0, v1, v2, v3}, Lcvf;->a(Landroid/view/View;FLandroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)V

    .line 167
    const/4 v0, 0x1

    iput v0, p0, Lcvc;->i:I

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-direct {p0, v0}, Lcvc;->b(F)Z

    move-result v2

    if-eqz v2, :cond_0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcvc;->d:Lcvf;

    iget-object v1, p0, Lcvc;->b:Landroid/view/View;

    iget v2, p0, Lcvc;->g:F

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcvf;->a(Landroid/view/View;FLandroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)V

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcvc;->i:I

    goto :goto_0
.end method

.method public a(F)V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcvc;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    mul-float/2addr v0, p1

    iget v1, p0, Lcvc;->f:F

    iget v2, p0, Lcvc;->h:F

    invoke-static {v0, v1, v2}, Lcom/twitter/util/math/b;->a(FFF)F

    move-result v0

    .line 142
    iget-object v1, p0, Lcvc;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 143
    iget-object v1, p0, Lcvc;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 144
    iget-object v1, p0, Lcvc;->e:Lcvb;

    invoke-virtual {v1}, Lcvb;->b()V

    .line 145
    invoke-direct {p0, v0}, Lcvc;->b(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x1

    iput v0, p0, Lcvc;->i:I

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcvc;->i:I

    goto :goto_0
.end method

.method a(IILcom/twitter/util/math/c;Z)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 87
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v2, p0, Lcvc;->c:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 94
    iget-object v2, p0, Lcvc;->c:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    .line 96
    invoke-static {p1, p2}, Lcom/twitter/util/math/Size;->a(II)Lcom/twitter/util/math/Size;

    move-result-object v2

    invoke-static {v4, v3}, Lcom/twitter/util/math/Size;->a(FF)Lcom/twitter/util/math/Size;

    move-result-object v5

    invoke-static {v2, v5, v1}, Lcom/twitter/util/math/b;->a(Lcom/twitter/util/math/Size;Lcom/twitter/util/math/Size;Z)F

    move-result v2

    iput v2, p0, Lcvc;->g:F

    .line 97
    iget v2, p0, Lcvc;->g:F

    const/high16 v5, 0x40a00000    # 5.0f

    mul-float/2addr v2, v5

    iput v2, p0, Lcvc;->h:F

    .line 101
    invoke-static {p1, p2}, Lcom/twitter/util/math/Size;->a(II)Lcom/twitter/util/math/Size;

    move-result-object v2

    invoke-static {v4, v3}, Lcom/twitter/util/math/Size;->a(FF)Lcom/twitter/util/math/Size;

    move-result-object v5

    invoke-static {v2, v5, v0}, Lcom/twitter/util/math/b;->a(Lcom/twitter/util/math/Size;Lcom/twitter/util/math/Size;Z)F

    move-result v2

    iput v2, p0, Lcvc;->f:F

    .line 104
    if-ge p1, p2, :cond_2

    .line 105
    iget v2, p0, Lcvc;->g:F

    iput v2, p0, Lcvc;->f:F

    .line 109
    :cond_2
    if-eqz p3, :cond_3

    if-nez p4, :cond_3

    move v2, v0

    .line 110
    :goto_1
    if-eqz p4, :cond_4

    :goto_2
    iput v0, p0, Lcvc;->i:I

    .line 111
    if-eqz v2, :cond_5

    .line 112
    int-to-float v0, p1

    invoke-virtual {p3}, Lcom/twitter/util/math/c;->c()F

    move-result v5

    mul-float/2addr v0, v5

    .line 113
    int-to-float v5, p2

    invoke-virtual {p3}, Lcom/twitter/util/math/c;->d()F

    move-result v6

    mul-float/2addr v5, v6

    .line 115
    invoke-static {v0, v5}, Lcom/twitter/util/math/Size;->a(FF)Lcom/twitter/util/math/Size;

    move-result-object v0

    .line 116
    invoke-static {v4, v3}, Lcom/twitter/util/math/Size;->a(FF)Lcom/twitter/util/math/Size;

    move-result-object v3

    .line 115
    invoke-static {v0, v3, v1}, Lcom/twitter/util/math/b;->a(Lcom/twitter/util/math/Size;Lcom/twitter/util/math/Size;Z)F

    move-result v0

    .line 124
    :goto_3
    iget-object v1, p0, Lcvc;->b:Landroid/view/View;

    iget-object v3, p0, Lcvc;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 125
    iget-object v1, p0, Lcvc;->b:Landroid/view/View;

    iget-object v3, p0, Lcvc;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotY(F)V

    .line 126
    iget-object v1, p0, Lcvc;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 127
    iget-object v1, p0, Lcvc;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 130
    if-eqz v2, :cond_0

    .line 131
    iget-object v0, p0, Lcvc;->e:Lcvb;

    invoke-virtual {v0, p3}, Lcvb;->a(Lcom/twitter/util/math/c;)V

    goto/16 :goto_0

    :cond_3
    move v2, v1

    .line 109
    goto :goto_1

    :cond_4
    move v0, v1

    .line 110
    goto :goto_2

    .line 117
    :cond_5
    if-eqz p4, :cond_6

    .line 118
    iget v0, p0, Lcvc;->f:F

    goto :goto_3

    .line 120
    :cond_6
    iget v0, p0, Lcvc;->g:F

    goto :goto_3
.end method

.method public a(Lcom/twitter/util/math/c;Z)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcvc;->b:Landroid/view/View;

    new-instance v1, Lcvd;

    invoke-direct {v1, p0, p1, p2}, Lcvd;-><init>(Lcvc;Lcom/twitter/util/math/c;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 75
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 176
    iget v1, p0, Lcvc;->i:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
