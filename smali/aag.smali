.class Laag;
.super Lcwx;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/android/media/stickers/StickerMediaView;

.field private b:F

.field private c:F

.field private d:Z


# direct methods
.method constructor <init>(Lcom/twitter/android/media/stickers/StickerMediaView;Landroid/view/View;Lcwb;)V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0, p2, p3}, Lcwx;-><init>(Landroid/view/View;Lcwb;)V

    .line 242
    iput-object p1, p0, Laag;->a:Lcom/twitter/android/media/stickers/StickerMediaView;

    .line 243
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 247
    iget-object v0, p0, Laag;->a:Lcom/twitter/android/media/stickers/StickerMediaView;

    if-nez v0, :cond_0

    .line 248
    invoke-super {p0, p1, p2}, Lcwx;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 281
    :goto_0
    return v0

    .line 251
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 252
    if-nez v0, :cond_1

    .line 253
    iput-boolean v1, p0, Laag;->d:Z

    .line 254
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Laag;->b:F

    .line 255
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Laag;->c:F

    .line 256
    invoke-super {p0, p1, p2}, Lcwx;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 259
    :cond_1
    iget-boolean v2, p0, Laag;->d:Z

    if-eqz v2, :cond_2

    .line 260
    packed-switch v0, :pswitch_data_0

    .line 281
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcwx;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 262
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Laag;->b:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Laag;->e:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_3

    .line 263
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Laag;->c:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Laag;->e:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 264
    :cond_3
    iput-boolean v4, p0, Laag;->d:Z

    goto :goto_1

    .line 269
    :pswitch_1
    iget-object v0, p0, Laag;->a:Lcom/twitter/android/media/stickers/StickerMediaView;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/media/stickers/StickerMediaView;

    iget v2, p0, Laag;->b:F

    float-to-int v2, v2

    iget v3, p0, Laag;->c:F

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/media/stickers/StickerMediaView;->a(II)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 270
    goto :goto_0

    .line 272
    :cond_4
    iget-object v0, p0, Laag;->a:Lcom/twitter/android/media/stickers/StickerMediaView;

    invoke-virtual {v0, v4}, Lcom/twitter/android/media/stickers/StickerMediaView;->a(Z)V

    goto :goto_1

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
