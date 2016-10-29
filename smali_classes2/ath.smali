.class public Lath;
.super Lcom/twitter/library/widget/renderablecontent/a;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/widget/renderablecontent/a",
        "<",
        "Lcom/twitter/model/core/Tweet;",
        "Lcom/twitter/library/widget/renderablecontent/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:I

.field protected final b:I

.field protected final c:Lcjo;

.field protected final d:Lcom/twitter/library/media/widget/z;

.field protected final e:Lcom/twitter/model/core/Tweet;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/renderablecontent/DisplayMode;IILcjo;Lcom/twitter/library/media/widget/z;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 6

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p8

    move-object v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/twitter/library/widget/renderablecontent/a;-><init>(Landroid/app/Activity;Ljava/lang/Object;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 59
    iput-object p2, p0, Lath;->e:Lcom/twitter/model/core/Tweet;

    .line 60
    iput p4, p0, Lath;->a:I

    .line 61
    iput p5, p0, Lath;->b:I

    .line 62
    iput-object p6, p0, Lath;->c:Lcjo;

    .line 63
    iput-object p7, p0, Lath;->d:Lcom/twitter/library/media/widget/z;

    .line 64
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;IIII)Landroid/graphics/Rect;
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/high16 v4, -0x80000000

    .line 86
    invoke-virtual {p0}, Lath;->d()Landroid/view/View;

    move-result-object v1

    .line 87
    if-nez v1, :cond_0

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 139
    :goto_0
    return-object v0

    .line 91
    :cond_0
    sget-object v0, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->g:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    iget-object v2, p0, Lath;->n:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-eq v0, v2, :cond_2

    invoke-static {}, Lcam;->a()Lcam;

    move-result-object v0

    invoke-virtual {v0}, Lcam;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    invoke-static {p4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 92
    invoke-virtual {v1, v0, v5}, Landroid/view/View;->measure(II)V

    .line 96
    invoke-static {p1}, Lcom/twitter/util/c;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 99
    invoke-static {p1}, Lcam;->a(Landroid/content/Context;)I

    move-result v2

    .line 100
    if-le v0, v2, :cond_1

    .line 101
    int-to-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    int-to-float v2, p4

    mul-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 104
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 103
    invoke-virtual {v1, v0, v5}, Landroid/view/View;->measure(II)V

    .line 139
    :cond_1
    :goto_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p3

    invoke-direct {v0, p2, p3, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 109
    :cond_2
    iget-object v0, p0, Lath;->e:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lclw;->r()Lcom/twitter/model/card/property/ImageSpec;

    move-result-object v0

    .line 114
    :goto_2
    iget-object v2, p0, Lath;->e:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v2}, Lcom/twitter/model/core/Tweet;->ar()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 116
    iget-object v2, v0, Lcom/twitter/model/card/property/ImageSpec;->d:Lcom/twitter/model/card/property/Vector2F;

    iget v2, v2, Lcom/twitter/model/card/property/Vector2F;->x:F

    iget-object v0, v0, Lcom/twitter/model/card/property/ImageSpec;->d:Lcom/twitter/model/card/property/Vector2F;

    iget v0, v0, Lcom/twitter/model/card/property/Vector2F;->y:F

    invoke-static {v2, v0}, Lcom/twitter/util/math/Size;->a(FF)Lcom/twitter/util/math/Size;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/twitter/util/math/Size;->g()F

    move-result v0

    .line 132
    :goto_3
    int-to-float v2, p4

    div-float v0, v2, v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 135
    invoke-static {p4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 136
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 134
    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 110
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 118
    :cond_4
    iget-object v0, p0, Lath;->e:Lcom/twitter/model/core/Tweet;

    invoke-static {v0}, Lcom/twitter/library/av/playback/bm;->b(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 119
    sget-object v0, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->g:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    iget-object v2, p0, Lath;->n:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-eq v0, v2, :cond_5

    new-instance v0, Lcom/twitter/library/av/playback/TweetAVDataSource;

    iget-object v2, p0, Lath;->e:Lcom/twitter/model/core/Tweet;

    invoke-direct {v0, v2}, Lcom/twitter/library/av/playback/TweetAVDataSource;-><init>(Lcom/twitter/model/core/Tweet;)V

    .line 120
    invoke-static {v0}, Lcom/twitter/library/av/model/c;->a(Lcom/twitter/library/av/playback/AVDataSource;)Lcom/twitter/library/av/model/c;

    move-result-object v0

    .line 122
    :goto_4
    invoke-virtual {v0}, Lcom/twitter/library/av/model/c;->a()F

    move-result v0

    goto :goto_3

    .line 121
    :cond_5
    invoke-static {}, Lcom/twitter/android/revenue/z;->i()Lcom/twitter/library/av/model/c;

    move-result-object v0

    goto :goto_4

    .line 123
    :cond_6
    iget-object v0, p0, Lath;->e:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->X()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lath;->e:Lcom/twitter/model/core/Tweet;

    iget-object v0, v0, Lcom/twitter/model/core/Tweet;->R:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lath;->e:Lcom/twitter/model/core/Tweet;

    iget-object v0, v0, Lcom/twitter/model/core/Tweet;->R:Ljava/util/List;

    .line 124
    invoke-static {v0}, Lcug;->k(Ljava/lang/Iterable;)Lcom/twitter/model/media/EditableMedia;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 125
    invoke-virtual {v0}, Lcom/twitter/model/media/EditableMedia;->bo_()F

    move-result v0

    invoke-static {v0}, Lcom/twitter/library/av/playback/h;->a(F)F

    move-result v0

    goto :goto_3

    .line 127
    :cond_7
    sget-object v0, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->g:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    iget-object v2, p0, Lath;->n:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-eq v0, v2, :cond_8

    const v0, 0x3fe38e39

    goto :goto_3

    .line 129
    :cond_8
    invoke-static {}, Lcom/twitter/android/revenue/z;->i()Lcom/twitter/library/av/model/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/av/model/c;->a()F

    move-result v0

    goto :goto_3
.end method

.method protected a(Landroid/app/Activity;)Lcom/twitter/library/widget/renderablecontent/c;
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lath;->e:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lasx;

    iget-object v1, p0, Lath;->n:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    invoke-direct {v0, p1, v1}, Lasx;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcjp;

    iget-object v1, p0, Lath;->n:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    iget-object v2, p0, Lath;->c:Lcjo;

    iget-object v3, p0, Lath;->d:Lcom/twitter/library/media/widget/z;

    invoke-direct {v0, p1, v1, v2, v3}, Lcjp;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcjo;Lcom/twitter/library/media/widget/z;)V

    goto :goto_0
.end method

.method protected a()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 69
    new-instance v0, Lcjr;

    iget-object v1, p0, Lath;->e:Lcom/twitter/model/core/Tweet;

    iget-object v2, p0, Lath;->i:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget v3, p0, Lath;->a:I

    iget v4, p0, Lath;->b:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcjr;-><init>(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;II)V

    return-object v0
.end method
