.class Lcom/twitter/android/moments/ui/guide/bd;
.super Lcom/twitter/library/av/u;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/util/math/Size;

.field final synthetic b:Lcom/twitter/android/moments/ui/AutoplayableVideoFillCropFrameLayout;

.field final synthetic c:Lcom/twitter/model/moments/g;

.field final synthetic d:Lcom/twitter/android/moments/ui/guide/ba;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/guide/ba;Lcom/twitter/util/math/Size;Lcom/twitter/android/moments/ui/AutoplayableVideoFillCropFrameLayout;Lcom/twitter/model/moments/g;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/twitter/android/moments/ui/guide/bd;->d:Lcom/twitter/android/moments/ui/guide/ba;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/guide/bd;->a:Lcom/twitter/util/math/Size;

    iput-object p3, p0, Lcom/twitter/android/moments/ui/guide/bd;->b:Lcom/twitter/android/moments/ui/AutoplayableVideoFillCropFrameLayout;

    iput-object p4, p0, Lcom/twitter/android/moments/ui/guide/bd;->c:Lcom/twitter/model/moments/g;

    invoke-direct {p0}, Lcom/twitter/library/av/u;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/bd;->a:Lcom/twitter/util/math/Size;

    if-eqz v0, :cond_0

    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/bd;->a:Lcom/twitter/util/math/Size;

    .line 115
    invoke-virtual {v1}, Lcom/twitter/util/math/Size;->g()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/bd;->b:Lcom/twitter/android/moments/ui/AutoplayableVideoFillCropFrameLayout;

    invoke-static {p1, p2}, Lcom/twitter/util/math/Size;->a(II)Lcom/twitter/util/math/Size;

    move-result-object v2

    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/bd;->c:Lcom/twitter/model/moments/g;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/bd;->c:Lcom/twitter/model/moments/g;

    .line 117
    invoke-virtual {v0}, Lcom/twitter/model/moments/g;->a()Landroid/graphics/Rect;

    move-result-object v0

    .line 116
    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/twitter/android/moments/ui/AutoplayableVideoFillCropFrameLayout;->a(Lcom/twitter/util/math/Size;Landroid/graphics/Rect;)V

    .line 119
    :cond_1
    return-void

    .line 117
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
