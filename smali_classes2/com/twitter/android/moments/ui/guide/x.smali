.class Lcom/twitter/android/moments/ui/guide/x;
.super Lcom/twitter/android/moments/ui/guide/v;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/moments/ui/guide/v",
        "<",
        "Lcom/twitter/android/moments/viewmodels/MomentModule;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lamc;Lcom/twitter/android/moments/ui/guide/s;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/twitter/android/moments/ui/guide/h;Lcom/twitter/android/moments/data/q;Lcom/twitter/android/moments/data/q;Lcom/twitter/android/moments/data/ae;Lahn;Lcom/twitter/android/moments/data/bo;Lcom/twitter/android/moments/ui/guide/q;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct/range {p0 .. p12}, Lcom/twitter/android/moments/ui/guide/v;-><init>(Landroid/content/Context;Lamc;Lcom/twitter/android/moments/ui/guide/s;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/twitter/android/moments/ui/guide/h;Lcom/twitter/android/moments/data/q;Lcom/twitter/android/moments/data/q;Lcom/twitter/android/moments/data/ae;Lahn;Lcom/twitter/android/moments/data/bo;Lcom/twitter/android/moments/ui/guide/q;)V

    .line 45
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/twitter/android/moments/ui/guide/v;->a()V

    .line 50
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/x;->c:Landroid/view/ViewGroup;

    const v1, 0x7f1304d5

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/FillCropFrameLayout;

    .line 52
    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/FillCropFrameLayout;->removeAllViews()V

    .line 53
    return-void
.end method

.method public b(Lcom/twitter/android/moments/viewmodels/MomentModule;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/guide/x;->a(Lcom/twitter/android/moments/viewmodels/MomentModule;)V

    .line 59
    invoke-virtual {p1}, Lcom/twitter/android/moments/viewmodels/MomentModule;->a()Lcom/twitter/android/moments/viewmodels/MomentModule$Type;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/moments/viewmodels/MomentModule$Type;->a:Lcom/twitter/android/moments/viewmodels/MomentModule$Type;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/twitter/android/moments/viewmodels/MomentModule;->a()Lcom/twitter/android/moments/viewmodels/MomentModule$Type;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/moments/viewmodels/MomentModule$Type;->b:Lcom/twitter/android/moments/viewmodels/MomentModule$Type;

    if-eq v0, v1, :cond_0

    .line 106
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-virtual {p1}, Lcom/twitter/android/moments/viewmodels/MomentModule;->a()Lcom/twitter/android/moments/viewmodels/MomentModule$Type;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/moments/viewmodels/MomentModule$Type;->a:Lcom/twitter/android/moments/viewmodels/MomentModule$Type;

    if-ne v0, v1, :cond_2

    move-object v0, p1

    .line 69
    check-cast v0, Lcom/twitter/android/moments/viewmodels/ap;

    .line 70
    invoke-virtual {v0}, Lcom/twitter/android/moments/viewmodels/ap;->h()Lcom/twitter/model/core/Tweet;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/library/av/playback/bm;->o(Lcom/twitter/model/core/Tweet;)Lcom/twitter/model/card/property/ImageSpec;

    move-result-object v4

    .line 73
    if-eqz v4, :cond_1

    .line 74
    iget-object v1, v4, Lcom/twitter/model/card/property/ImageSpec;->d:Lcom/twitter/model/card/property/Vector2F;

    iget v1, v1, Lcom/twitter/model/card/property/Vector2F;->x:F

    iget-object v3, v4, Lcom/twitter/model/card/property/ImageSpec;->d:Lcom/twitter/model/card/property/Vector2F;

    iget v3, v3, Lcom/twitter/model/card/property/Vector2F;->y:F

    invoke-static {v1, v3}, Lcom/twitter/util/math/Size;->a(FF)Lcom/twitter/util/math/Size;

    move-result-object v1

    .line 75
    iget-object v0, v0, Lcom/twitter/android/moments/viewmodels/ap;->b:Lcom/twitter/model/moments/k;

    invoke-static {v0}, Lcom/twitter/model/moments/k;->a(Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/g;

    move-result-object v3

    .line 76
    iget-object v0, v4, Lcom/twitter/model/card/property/ImageSpec;->c:Ljava/lang/String;

    :goto_1
    move-object v4, v1

    move-object v5, v3

    move-object v3, v0

    .line 89
    :goto_2
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/x;->c:Landroid/view/ViewGroup;

    const v1, 0x7f1304d5

    .line 90
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/FillCropFrameLayout;

    .line 91
    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/x;->h:Landroid/view/LayoutInflater;

    const v6, 0x7f040311

    const/4 v7, 0x0

    .line 92
    invoke-virtual {v1, v6, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/twitter/media/ui/image/MediaImageView;

    .line 94
    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/FillCropFrameLayout;->addView(Landroid/view/View;)V

    .line 96
    invoke-virtual {p1}, Lcom/twitter/android/moments/viewmodels/MomentModule;->b()Lcom/twitter/model/moments/ad;

    .line 97
    if-nez v5, :cond_3

    :goto_3
    invoke-virtual {v0, v4, v2}, Lcom/twitter/android/moments/ui/FillCropFrameLayout;->a(Lcom/twitter/util/math/Size;Landroid/graphics/Rect;)V

    .line 98
    sget-object v0, Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;->a:Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;

    invoke-virtual {v1, v0}, Lcom/twitter/media/ui/image/MediaImageView;->setScaleType(Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;)V

    .line 99
    new-instance v0, Lcom/twitter/media/request/b;

    invoke-direct {v0, v3}, Lcom/twitter/media/request/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 100
    new-instance v0, Lcom/twitter/android/moments/ui/guide/y;

    invoke-direct {v0, p0, p1, v1}, Lcom/twitter/android/moments/ui/guide/y;-><init>(Lcom/twitter/android/moments/ui/guide/x;Lcom/twitter/android/moments/viewmodels/MomentModule;Lcom/twitter/media/ui/image/MediaImageView;)V

    invoke-virtual {v1, v0}, Lcom/twitter/media/ui/image/MediaImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 78
    :cond_1
    sget-object v0, Lcom/twitter/util/math/Size;->b:Lcom/twitter/util/math/Size;

    move-object v1, v0

    move-object v3, v2

    move-object v0, v2

    .line 80
    goto :goto_1

    :cond_2
    move-object v0, p1

    .line 83
    check-cast v0, Lcom/twitter/android/moments/viewmodels/o;

    .line 84
    iget-object v1, v0, Lcom/twitter/android/moments/viewmodels/o;->a:Lcom/twitter/util/math/Size;

    .line 85
    iget-object v3, v0, Lcom/twitter/android/moments/viewmodels/o;->c:Lcom/twitter/model/moments/k;

    invoke-static {v3}, Lcom/twitter/model/moments/k;->a(Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/g;

    move-result-object v3

    .line 86
    iget-object v0, v0, Lcom/twitter/android/moments/viewmodels/o;->b:Ljava/lang/String;

    move-object v4, v1

    move-object v5, v3

    move-object v3, v0

    goto :goto_2

    .line 97
    :cond_3
    invoke-virtual {v5}, Lcom/twitter/model/moments/g;->a()Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_3
.end method
