.class public Lcom/twitter/android/media/stickers/StickerView;
.super Lcom/twitter/media/ui/image/MediaImageView;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/android/media/stickers/m;

.field private final k:I

.field private final l:Landroid/graphics/drawable/Drawable;

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/android/media/stickers/m;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/media/stickers/StickerView;-><init>(Landroid/content/Context;Lcom/twitter/android/media/stickers/m;Landroid/graphics/drawable/Drawable;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/android/media/stickers/m;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/twitter/media/ui/image/MediaImageView;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p2, p0, Lcom/twitter/android/media/stickers/StickerView;->a:Lcom/twitter/android/media/stickers/m;

    .line 39
    invoke-virtual {p2}, Lcom/twitter/android/media/stickers/m;->c()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/media/stickers/StickerView;->setRotation(F)V

    .line 41
    iget-object v0, p2, Lcom/twitter/android/media/stickers/m;->a:Lcpf;

    iget-object v0, v0, Lcpf;->j:Lcpu;

    iget-object v0, v0, Lcpu;->c:Lcpk;

    iget-object v0, v0, Lcpk;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v0

    const-string/jumbo v1, "stickers"

    .line 42
    invoke-virtual {v0, v1}, Lcom/twitter/media/request/b;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v0

    new-instance v1, Lcom/twitter/library/media/util/ad;

    iget-object v2, p2, Lcom/twitter/android/media/stickers/m;->a:Lcpf;

    iget-object v2, v2, Lcpf;->j:Lcpu;

    invoke-direct {v1, v2}, Lcom/twitter/library/media/util/ad;-><init>(Lcpu;)V

    .line 43
    invoke-virtual {v0, v1}, Lcom/twitter/media/request/b;->a(Lcom/twitter/media/request/d;)Lcom/twitter/media/request/b;

    move-result-object v0

    .line 41
    invoke-virtual {p0, v0}, Lcom/twitter/android/media/stickers/StickerView;->b(Lcom/twitter/media/request/b;)Z

    .line 45
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/twitter/android/media/stickers/StickerView;->setDefaultDrawableScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 46
    invoke-virtual {p0, p3}, Lcom/twitter/android/media/stickers/StickerView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/media/stickers/StickerView;->setWillNotDraw(Z)V

    .line 50
    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/StickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f045c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/media/stickers/StickerView;->k:I

    .line 51
    sget-object v0, Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;->a:Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/twitter/android/media/stickers/StickerView;->setScaleType(Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;)V

    .line 52
    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/StickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0207e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/media/stickers/StickerView;->l:Landroid/graphics/drawable/Drawable;

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/media/stickers/StickerView;->setUpdateOnResize(Z)V

    .line 54
    return-void
.end method


# virtual methods
.method public getDisplayInfo()Lcom/twitter/android/media/stickers/m;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerView;->a:Lcom/twitter/android/media/stickers/m;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/twitter/media/ui/image/MediaImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 68
    iget-boolean v0, p0, Lcom/twitter/android/media/stickers/StickerView;->m:Z

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerView;->l:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/twitter/android/media/stickers/StickerView;->k:I

    neg-int v1, v1

    iget v2, p0, Lcom/twitter/android/media/stickers/StickerView;->k:I

    neg-int v2, v2

    .line 71
    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/StickerView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/twitter/android/media/stickers/StickerView;->k:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/StickerView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/twitter/android/media/stickers/StickerView;->k:I

    add-int/2addr v4, v5

    .line 69
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 72
    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerView;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 74
    :cond_0
    return-void
.end method

.method public setIsActive(Z)V
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/twitter/android/media/stickers/StickerView;->m:Z

    .line 63
    return-void
.end method
