.class public abstract Lcom/twitter/android/av/RevenueCardCanvasView;
.super Lcom/twitter/android/av/AVBaseCardCanvasView;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/library/av/VideoPlayerView;",
        ">",
        "Lcom/twitter/android/av/AVBaseCardCanvasView",
        "<",
        "Landroid/widget/Button;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Lcom/twitter/library/av/VideoPlayerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final h:Lcom/twitter/media/ui/image/MediaImageView;

.field private final i:Landroid/view/ViewGroup;

.field private j:Landroid/view/ViewGroup;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/twitter/android/av/RevenueCardCanvasView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/av/RevenueCardCanvasView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/av/AVBaseCardCanvasView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const v0, 0x7f130328

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/RevenueCardCanvasView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    iput-object v0, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->h:Lcom/twitter/media/ui/image/MediaImageView;

    .line 43
    const v0, 0x7f13041e

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/RevenueCardCanvasView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->i:Landroid/view/ViewGroup;

    .line 45
    iget-object v0, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->d:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 47
    invoke-virtual {p0}, Lcom/twitter/android/av/RevenueCardCanvasView;->a()V

    .line 48
    return-void
.end method

.method private q()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/twitter/android/av/RevenueCardCanvasView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/c;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->j:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 160
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->i:Landroid/view/ViewGroup;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/content/res/Configuration;)Lbxa;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lbxa;->b:Lbxa;

    return-object v0
.end method

.method protected abstract a(Lcom/twitter/library/av/playback/AVPlayerAttachment;Lcom/twitter/library/av/VideoPlayerView$Mode;)Lcom/twitter/library/av/VideoPlayerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/av/playback/AVPlayerAttachment;",
            "Lcom/twitter/library/av/VideoPlayerView$Mode;",
            ")TT;"
        }
    .end annotation
.end method

.method protected a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 52
    const v0, 0x7f130219

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/RevenueCardCanvasView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->j:Landroid/view/ViewGroup;

    .line 53
    invoke-virtual {p0}, Lcom/twitter/android/av/RevenueCardCanvasView;->getBottomContainerLayoutId()I

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->j:Landroid/view/ViewGroup;

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 54
    return-void
.end method

.method protected abstract a(Lcom/twitter/library/av/VideoPlayerView;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public a(Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;)V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/twitter/android/av/AVBaseCardCanvasView;->a(Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;)V

    .line 118
    iget-object v0, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->f:Lcom/twitter/library/av/VideoPlayerView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/VideoPlayerView;->setBackgroundColor(I)V

    .line 119
    return-void
.end method

.method public a(Lcom/twitter/library/av/playback/AVPlayerAttachment;Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Lcom/twitter/android/av/AVBaseCardCanvasView;->a(Lcom/twitter/library/av/playback/AVPlayerAttachment;Landroid/content/res/Configuration;)V

    .line 74
    iget-object v0, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->f:Lcom/twitter/library/av/VideoPlayerView;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->f:Lcom/twitter/library/av/VideoPlayerView;

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/RevenueCardCanvasView;->removeView(Landroid/view/View;)V

    .line 79
    :cond_0
    const/4 v0, 0x2

    iget v1, p2, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    .line 80
    sget-object v0, Lcom/twitter/library/av/VideoPlayerView$Mode;->d:Lcom/twitter/library/av/VideoPlayerView$Mode;

    .line 81
    invoke-virtual {p0, p1, v0}, Lcom/twitter/android/av/RevenueCardCanvasView;->a(Lcom/twitter/library/av/playback/AVPlayerAttachment;Lcom/twitter/library/av/VideoPlayerView$Mode;)Lcom/twitter/library/av/VideoPlayerView;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->f:Lcom/twitter/library/av/VideoPlayerView;

    .line 82
    iget-object v0, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->f:Lcom/twitter/library/av/VideoPlayerView;

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/RevenueCardCanvasView;->a(Lcom/twitter/library/av/VideoPlayerView;)V

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->f:Lcom/twitter/library/av/VideoPlayerView;

    invoke-virtual {v0, p0}, Lcom/twitter/library/av/VideoPlayerView;->setAVPlayerListener(Lcom/twitter/library/av/s;)V

    .line 90
    iget-object v0, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->f:Lcom/twitter/library/av/VideoPlayerView;

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/RevenueCardCanvasView;->addView(Landroid/view/View;)V

    .line 91
    return-void

    .line 84
    :cond_1
    sget-object v0, Lcom/twitter/library/av/VideoPlayerView$Mode;->c:Lcom/twitter/library/av/VideoPlayerView$Mode;

    .line 85
    invoke-virtual {p0, p1, v0}, Lcom/twitter/android/av/RevenueCardCanvasView;->a(Lcom/twitter/library/av/playback/AVPlayerAttachment;Lcom/twitter/library/av/VideoPlayerView$Mode;)Lcom/twitter/library/av/VideoPlayerView;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->f:Lcom/twitter/library/av/VideoPlayerView;

    .line 86
    iget-object v0, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->f:Lcom/twitter/library/av/VideoPlayerView;

    invoke-virtual {v0, p0}, Lcom/twitter/library/av/VideoPlayerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected abstract getBottomContainerLayoutId()I
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 67
    const v0, 0x7f0403f9

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->f:Lcom/twitter/library/av/VideoPlayerView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/twitter/android/av/RevenueCardCanvasView;->m()V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-super {p0, p1}, Lcom/twitter/android/av/AVBaseCardCanvasView;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/twitter/android/av/AVBaseCardCanvasView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 135
    iget-boolean v0, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->k:Z

    if-eqz v0, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/twitter/android/av/RevenueCardCanvasView;->q()V

    .line 139
    :cond_0
    const/4 v0, 0x2

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_3

    .line 140
    const/16 v0, 0x8

    .line 144
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->h:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->h:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v1, v0}, Lcom/twitter/media/ui/image/MediaImageView;->setVisibility(I)V

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->j:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 148
    iget-object v1, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->j:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 150
    :cond_2
    return-void

    .line 142
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 223
    iget-object v0, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->h:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/MediaImageView;->getMeasuredWidth()I

    move-result v0

    .line 224
    iget-object v1, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->h:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v1}, Lcom/twitter/media/ui/image/MediaImageView;->getMeasuredHeight()I

    move-result v1

    .line 225
    iget-object v2, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->h:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v2, v5, v5, v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->layout(IIII)V

    .line 226
    iget-object v2, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->f:Lcom/twitter/library/av/VideoPlayerView;

    if-eqz v2, :cond_0

    .line 227
    iget-object v2, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->f:Lcom/twitter/library/av/VideoPlayerView;

    iget-object v3, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->f:Lcom/twitter/library/av/VideoPlayerView;

    .line 228
    invoke-virtual {v3}, Lcom/twitter/library/av/VideoPlayerView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->f:Lcom/twitter/library/av/VideoPlayerView;

    invoke-virtual {v4}, Lcom/twitter/library/av/VideoPlayerView;->getMeasuredHeight()I

    move-result v4

    .line 227
    invoke-virtual {v2, v5, v5, v3, v4}, Lcom/twitter/library/av/VideoPlayerView;->layout(IIII)V

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/av/RevenueCardCanvasView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/util/c;->f(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    iget-object v0, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 238
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v2, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->j:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->j:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->j:Landroid/view/ViewGroup;

    .line 235
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    .line 234
    invoke-virtual {v2, v5, v1, v3, v4}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 236
    iget-object v2, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->i:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5, v5, v0, v1}, Landroid/view/ViewGroup;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    const v7, 0x3fe38e39

    .line 170
    invoke-virtual {p0}, Lcom/twitter/android/av/RevenueCardCanvasView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/c;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/av/RevenueCardCanvasView;->setMeasuredDimension(II)V

    .line 172
    iget-object v0, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->measure(II)V

    .line 173
    iget-object v0, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->f:Lcom/twitter/library/av/VideoPlayerView;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->f:Lcom/twitter/library/av/VideoPlayerView;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/library/av/VideoPlayerView;->measure(II)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->h:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/media/ui/image/MediaImageView;->measure(II)V

    .line 219
    :goto_0
    return-void

    .line 178
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 180
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 179
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 182
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 181
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 183
    iget-object v1, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->j:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->measure(II)V

    .line 184
    iget-object v1, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->j:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    .line 186
    sub-int/2addr v0, v4

    .line 187
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 189
    int-to-float v5, v1

    int-to-float v6, v0

    div-float/2addr v5, v6

    .line 193
    cmpl-float v6, v7, v5

    if-nez v6, :cond_3

    .line 207
    :goto_1
    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 208
    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 210
    add-int/2addr v0, v4

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/av/RevenueCardCanvasView;->setMeasuredDimension(II)V

    .line 212
    iget-object v0, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->f:Lcom/twitter/library/av/VideoPlayerView;

    if-eqz v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->f:Lcom/twitter/library/av/VideoPlayerView;

    invoke-virtual {v0, v5, v6}, Lcom/twitter/library/av/VideoPlayerView;->measure(II)V

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->h:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0, v5, v6}, Lcom/twitter/media/ui/image/MediaImageView;->measure(II)V

    .line 216
    iget-object v0, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5, v3}, Landroid/view/ViewGroup;->measure(II)V

    .line 217
    iget-object v0, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->measure(II)V

    goto :goto_0

    .line 197
    :cond_3
    cmpl-float v5, v7, v5

    if-lez v5, :cond_4

    .line 200
    int-to-float v0, v1

    div-float/2addr v0, v7

    float-to-int v0, v0

    goto :goto_1

    .line 204
    :cond_4
    int-to-float v1, v0

    mul-float/2addr v1, v7

    float-to-int v1, v1

    goto :goto_1
.end method

.method public p()V
    .locals 3

    .prologue
    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->k:Z

    .line 123
    iget-object v0, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->h:Lcom/twitter/media/ui/image/MediaImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->i:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->d:Landroid/widget/ImageView;

    const v1, 0x7f0206c4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    iget-object v0, p0, Lcom/twitter/android/av/RevenueCardCanvasView;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/twitter/android/av/RevenueCardCanvasView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 128
    invoke-virtual {p0}, Lcom/twitter/android/av/RevenueCardCanvasView;->b()V

    .line 129
    invoke-direct {p0}, Lcom/twitter/android/av/RevenueCardCanvasView;->q()V

    .line 130
    return-void
.end method
