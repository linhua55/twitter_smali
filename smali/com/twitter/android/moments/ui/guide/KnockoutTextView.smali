.class public Lcom/twitter/android/moments/ui/guide/KnockoutTextView;
.super Lcom/twitter/ui/widget/TypefacesTextView;
.source "Twttr"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Canvas;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Canvas;

.field private g:Lcom/twitter/util/math/Size;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/twitter/ui/widget/TypefacesTextView;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->h:Z

    .line 49
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->a()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/twitter/ui/widget/TypefacesTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->h:Z

    .line 54
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->a()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/ui/widget/TypefacesTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->h:Z

    .line 59
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->a()V

    .line 60
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->a:Landroid/graphics/Paint;

    .line 64
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->a:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 65
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-super {p0, v0}, Lcom/twitter/ui/widget/TypefacesTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    return-void
.end method

.method private a(II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 102
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->invalidate()V

    .line 103
    return-void
.end method


# virtual methods
.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 142
    iget-boolean v0, p0, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->h:Z

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->d:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->f:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 147
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->c:Landroid/graphics/Canvas;

    const/high16 v1, -0x1000000

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 148
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->c:Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Lcom/twitter/ui/widget/TypefacesTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 151
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->f:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->b:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 152
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->e:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 157
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 155
    invoke-super {p0, p1}, Lcom/twitter/ui/widget/TypefacesTextView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Lcom/twitter/ui/widget/TypefacesTextView;->onSizeChanged(IIII)V

    .line 120
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 122
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->e:Landroid/graphics/Bitmap;

    .line 123
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->e:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->f:Landroid/graphics/Canvas;

    .line 124
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->b:Landroid/graphics/Bitmap;

    .line 125
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->b:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->c:Landroid/graphics/Canvas;

    .line 127
    invoke-static {p1, p2}, Lcom/twitter/util/math/Size;->a(II)Lcom/twitter/util/math/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->g:Lcom/twitter/util/math/Size;

    .line 129
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 130
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->a(II)V

    .line 133
    :cond_1
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 75
    iput-object p1, p0, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->d:Landroid/graphics/drawable/Drawable;

    .line 76
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 77
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 80
    if-eq v1, v2, :cond_0

    if-ne v0, v2, :cond_1

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->getWidth()I

    move-result v1

    .line 82
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->getHeight()I

    move-result v0

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->g:Lcom/twitter/util/math/Size;

    if-eqz v2, :cond_2

    .line 87
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->g:Lcom/twitter/util/math/Size;

    invoke-virtual {v0}, Lcom/twitter/util/math/Size;->a()I

    move-result v1

    .line 88
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->g:Lcom/twitter/util/math/Size;

    invoke-virtual {v0}, Lcom/twitter/util/math/Size;->b()I

    move-result v0

    .line 95
    :cond_2
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 96
    invoke-direct {p0, v1, v0}, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->a(II)V

    .line 98
    :cond_3
    return-void
.end method

.method public setShouldKnockout(Z)V
    .locals 0

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->h:Z

    .line 137
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/guide/KnockoutTextView;->invalidate()V

    .line 138
    return-void
.end method
