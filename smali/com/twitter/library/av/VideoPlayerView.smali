.class public Lcom/twitter/library/av/VideoPlayerView;
.super Landroid/view/ViewGroup;
.source "Twttr"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Lcom/twitter/library/av/s;
.implements Lcom/twitter/media/ui/image/r;


# instance fields
.field protected final a:Lcom/twitter/library/av/control/h;

.field protected final b:Lcom/twitter/library/av/VideoPlayerView$Mode;

.field protected final c:Landroid/graphics/Point;

.field d:Z

.field e:Lcom/twitter/library/av/control/h;

.field f:Lcom/twitter/library/av/ay;

.field private final h:Lcom/twitter/library/av/az;

.field private final i:Landroid/os/Handler;

.field private final j:Lcom/twitter/library/av/VideoViewContainer;

.field private final k:Lcom/twitter/library/av/aq;

.field private l:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/twitter/library/av/s;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lcom/twitter/library/av/playback/AVPlayerAttachment;

.field private final n:Lcom/twitter/library/av/playback/AVPlayer;

.field private final o:Landroid/graphics/Rect;

.field private final p:Lcom/twitter/library/av/ScaleType;

.field private q:Ljava/lang/Runnable;

.field private final r:Lcom/twitter/library/av/bf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/av/playback/AVPlayerAttachment;Lcom/twitter/library/av/VideoPlayerView$Mode;)V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/twitter/library/av/az;

    invoke-direct {v0}, Lcom/twitter/library/av/az;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/twitter/library/av/VideoPlayerView;-><init>(Landroid/content/Context;Lcom/twitter/library/av/playback/AVPlayerAttachment;Lcom/twitter/library/av/az;Lcom/twitter/library/av/VideoPlayerView$Mode;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/av/playback/AVPlayerAttachment;Lcom/twitter/library/av/VideoViewContainer;Lcom/twitter/library/av/az;Lcom/twitter/library/av/VideoPlayerView$Mode;)V
    .locals 9

    .prologue
    .line 115
    .line 116
    invoke-static {}, Lcom/twitter/library/av/playback/ao;->a()Lcom/twitter/library/av/playback/ao;

    move-result-object v6

    new-instance v7, Lcom/twitter/library/av/bf;

    invoke-direct {v7}, Lcom/twitter/library/av/bf;-><init>()V

    new-instance v8, Lcom/twitter/library/av/aq;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/twitter/library/av/aq;-><init>(Landroid/content/res/Resources;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 115
    invoke-direct/range {v0 .. v8}, Lcom/twitter/library/av/VideoPlayerView;-><init>(Landroid/content/Context;Lcom/twitter/library/av/playback/AVPlayerAttachment;Lcom/twitter/library/av/VideoViewContainer;Lcom/twitter/library/av/az;Lcom/twitter/library/av/VideoPlayerView$Mode;Lcom/twitter/library/av/playback/ao;Lcom/twitter/library/av/bf;Lcom/twitter/library/av/aq;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/av/playback/AVPlayerAttachment;Lcom/twitter/library/av/VideoViewContainer;Lcom/twitter/library/av/az;Lcom/twitter/library/av/VideoPlayerView$Mode;Lcom/twitter/library/av/playback/ao;Lcom/twitter/library/av/bf;Lcom/twitter/library/av/aq;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 145
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->c:Landroid/graphics/Point;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->i:Landroid/os/Handler;

    .line 71
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->l:Ljava/lang/ref/WeakReference;

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->o:Landroid/graphics/Rect;

    .line 146
    sget v0, Lbjw;->video_player_view:I

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/VideoPlayerView;->setId(I)V

    .line 147
    invoke-virtual {p0, v2}, Lcom/twitter/library/av/VideoPlayerView;->setWillNotDraw(Z)V

    .line 148
    iput-object p7, p0, Lcom/twitter/library/av/VideoPlayerView;->r:Lcom/twitter/library/av/bf;

    .line 149
    iput-object p2, p0, Lcom/twitter/library/av/VideoPlayerView;->m:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    .line 150
    invoke-virtual {p2}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->a()Lcom/twitter/library/av/playback/AVPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->n:Lcom/twitter/library/av/playback/AVPlayer;

    .line 151
    iput-object p5, p0, Lcom/twitter/library/av/VideoPlayerView;->b:Lcom/twitter/library/av/VideoPlayerView$Mode;

    .line 152
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->b:Lcom/twitter/library/av/VideoPlayerView$Mode;

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/VideoPlayerView;->a(Lcom/twitter/library/av/VideoPlayerView$Mode;)Lcom/twitter/library/av/ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->p:Lcom/twitter/library/av/ScaleType;

    .line 153
    iput-object p3, p0, Lcom/twitter/library/av/VideoPlayerView;->j:Lcom/twitter/library/av/VideoViewContainer;

    .line 154
    iput-object p8, p0, Lcom/twitter/library/av/VideoPlayerView;->k:Lcom/twitter/library/av/aq;

    .line 156
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->n:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->K()Lcom/twitter/library/av/r;

    move-result-object v0

    .line 157
    invoke-virtual {p0}, Lcom/twitter/library/av/VideoPlayerView;->getEmbeddedChromeMode()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/twitter/library/av/r;->a(Landroid/content/Context;I)Lcom/twitter/library/av/control/h;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->a:Lcom/twitter/library/av/control/h;

    .line 158
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->a:Lcom/twitter/library/av/control/h;

    iget-object v1, p0, Lcom/twitter/library/av/VideoPlayerView;->m:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-interface {v0, v1}, Lcom/twitter/library/av/control/h;->a(Lcom/twitter/library/av/playback/AVPlayerAttachment;)V

    .line 160
    iput-object p4, p0, Lcom/twitter/library/av/VideoPlayerView;->h:Lcom/twitter/library/av/az;

    .line 161
    invoke-virtual {p0}, Lcom/twitter/library/av/VideoPlayerView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/twitter/library/av/VideoPlayerView;->s()Lcom/twitter/library/av/ay;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->f:Lcom/twitter/library/av/ay;

    .line 165
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->b:Lcom/twitter/library/av/VideoPlayerView$Mode;

    sget-object v1, Lcom/twitter/library/av/VideoPlayerView$Mode;->a:Lcom/twitter/library/av/VideoPlayerView$Mode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->b:Lcom/twitter/library/av/VideoPlayerView$Mode;

    sget-object v1, Lcom/twitter/library/av/VideoPlayerView$Mode;->g:Lcom/twitter/library/av/VideoPlayerView$Mode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->b:Lcom/twitter/library/av/VideoPlayerView$Mode;

    sget-object v1, Lcom/twitter/library/av/VideoPlayerView$Mode;->j:Lcom/twitter/library/av/VideoPlayerView$Mode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->b:Lcom/twitter/library/av/VideoPlayerView$Mode;

    sget-object v1, Lcom/twitter/library/av/VideoPlayerView$Mode;->m:Lcom/twitter/library/av/VideoPlayerView$Mode;

    if-eq v0, v1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->f:Lcom/twitter/library/av/ay;

    invoke-interface {v0}, Lcom/twitter/library/av/ay;->a()V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->b:Lcom/twitter/library/av/VideoPlayerView$Mode;

    invoke-direct {p0, v0}, Lcom/twitter/library/av/VideoPlayerView;->b(Lcom/twitter/library/av/VideoPlayerView$Mode;)Z

    move-result v0

    .line 175
    if-nez v0, :cond_1

    .line 176
    iget-object v1, p0, Lcom/twitter/library/av/VideoPlayerView;->j:Lcom/twitter/library/av/VideoViewContainer;

    invoke-virtual {p0, v1}, Lcom/twitter/library/av/VideoPlayerView;->addView(Landroid/view/View;)V

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/twitter/library/av/VideoPlayerView;->f:Lcom/twitter/library/av/ay;

    if-eqz v1, :cond_2

    .line 179
    iget-object v1, p0, Lcom/twitter/library/av/VideoPlayerView;->f:Lcom/twitter/library/av/ay;

    invoke-interface {v1}, Lcom/twitter/library/av/ay;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/twitter/library/av/VideoPlayerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    :cond_2
    iget-object v1, p0, Lcom/twitter/library/av/VideoPlayerView;->a:Lcom/twitter/library/av/control/h;

    invoke-interface {v1}, Lcom/twitter/library/av/control/h;->getView()Landroid/view/View;

    move-result-object v1

    .line 183
    if-eqz v1, :cond_3

    .line 184
    invoke-virtual {p0, v1}, Lcom/twitter/library/av/VideoPlayerView;->addView(Landroid/view/View;)V

    .line 187
    :cond_3
    invoke-virtual {p0}, Lcom/twitter/library/av/VideoPlayerView;->c()V

    .line 189
    if-eqz v0, :cond_4

    .line 190
    new-instance v0, Lcom/twitter/library/av/as;

    invoke-direct {v0, p0}, Lcom/twitter/library/av/as;-><init>(Lcom/twitter/library/av/VideoPlayerView;)V

    .line 196
    invoke-virtual {p0, v0}, Lcom/twitter/library/av/VideoPlayerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    :cond_4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->l:Ljava/lang/ref/WeakReference;

    .line 200
    invoke-virtual {p0}, Lcom/twitter/library/av/VideoPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/VideoPlayerView;->a(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/VideoPlayerView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/av/playback/AVPlayerAttachment;Lcom/twitter/library/av/az;Lcom/twitter/library/av/VideoPlayerView$Mode;)V
    .locals 6

    .prologue
    .line 98
    new-instance v0, Lcom/twitter/library/av/bc;

    invoke-direct {v0}, Lcom/twitter/library/av/bc;-><init>()V

    .line 100
    invoke-virtual {v0, p1, p2}, Lcom/twitter/library/av/bc;->a(Landroid/content/Context;Lcom/twitter/library/av/playback/AVPlayerAttachment;)Lcom/twitter/library/av/VideoViewContainer;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 98
    invoke-direct/range {v0 .. v5}, Lcom/twitter/library/av/VideoPlayerView;-><init>(Landroid/content/Context;Lcom/twitter/library/av/playback/AVPlayerAttachment;Lcom/twitter/library/av/VideoViewContainer;Lcom/twitter/library/av/az;Lcom/twitter/library/av/VideoPlayerView$Mode;)V

    .line 103
    return-void
.end method

.method private b(Lcom/twitter/library/av/VideoPlayerView$Mode;)Z
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lcom/twitter/library/av/VideoPlayerView$Mode;->b:Lcom/twitter/library/av/VideoPlayerView$Mode;

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/twitter/library/av/VideoPlayerView$Mode;->d:Lcom/twitter/library/av/VideoPlayerView$Mode;

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/twitter/library/av/VideoPlayerView$Mode;->f:Lcom/twitter/library/av/VideoPlayerView$Mode;

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/twitter/library/av/VideoPlayerView$Mode;->h:Lcom/twitter/library/av/VideoPlayerView$Mode;

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/twitter/library/av/VideoPlayerView$Mode;->i:Lcom/twitter/library/av/VideoPlayerView$Mode;

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/twitter/library/av/VideoPlayerView$Mode;->k:Lcom/twitter/library/av/VideoPlayerView$Mode;

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private s()Lcom/twitter/library/av/ay;
    .locals 4

    .prologue
    .line 412
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->h:Lcom/twitter/library/av/az;

    invoke-virtual {p0}, Lcom/twitter/library/av/VideoPlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/az;->a(Landroid/content/Context;)Lcom/twitter/library/av/ay;

    move-result-object v0

    .line 413
    iget-object v1, p0, Lcom/twitter/library/av/VideoPlayerView;->p:Lcom/twitter/library/av/ScaleType;

    invoke-interface {v0, v1}, Lcom/twitter/library/av/ay;->setScaleType(Lcom/twitter/library/av/ScaleType;)V

    .line 414
    iget-object v1, p0, Lcom/twitter/library/av/VideoPlayerView;->n:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v1}, Lcom/twitter/library/av/playback/AVPlayer;->e()Lcom/twitter/library/av/playback/ba;

    move-result-object v1

    .line 415
    invoke-virtual {v1}, Lcom/twitter/library/av/playback/ba;->c()Lcom/twitter/library/av/playback/AVDataSource;

    move-result-object v1

    .line 416
    invoke-interface {v1}, Lcom/twitter/library/av/playback/AVDataSource;->b()Lcom/twitter/model/card/property/ImageSpec;

    move-result-object v1

    .line 417
    if-eqz v1, :cond_0

    .line 418
    invoke-interface {v0, v1}, Lcom/twitter/library/av/ay;->setImageSpec(Lcom/twitter/model/card/property/ImageSpec;)V

    .line 421
    :cond_0
    iget-object v2, p0, Lcom/twitter/library/av/VideoPlayerView;->b:Lcom/twitter/library/av/VideoPlayerView$Mode;

    sget-object v3, Lcom/twitter/library/av/VideoPlayerView$Mode;->a:Lcom/twitter/library/av/VideoPlayerView$Mode;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/twitter/library/av/VideoPlayerView;->b:Lcom/twitter/library/av/VideoPlayerView$Mode;

    sget-object v3, Lcom/twitter/library/av/VideoPlayerView$Mode;->j:Lcom/twitter/library/av/VideoPlayerView$Mode;

    if-eq v2, v3, :cond_1

    if-nez v1, :cond_2

    .line 423
    :cond_1
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 424
    invoke-virtual {p0}, Lcom/twitter/library/av/VideoPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbjt;->placeholder_bg:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 423
    invoke-interface {v0, v1}, Lcom/twitter/library/av/ay;->setPlaceholderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 427
    :cond_2
    iget-object v1, p0, Lcom/twitter/library/av/VideoPlayerView;->b:Lcom/twitter/library/av/VideoPlayerView$Mode;

    sget-object v2, Lcom/twitter/library/av/VideoPlayerView$Mode;->i:Lcom/twitter/library/av/VideoPlayerView$Mode;

    if-ne v1, v2, :cond_3

    .line 428
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 429
    invoke-virtual {p0}, Lcom/twitter/library/av/VideoPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbjt;->gray_opacity_30:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 428
    invoke-interface {v0, v1}, Lcom/twitter/library/av/ay;->setPlaceholderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 431
    :cond_3
    return-object v0
.end method

.method private t()V
    .locals 2

    .prologue
    .line 894
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->f:Lcom/twitter/library/av/ay;

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->f:Lcom/twitter/library/av/ay;

    invoke-interface {v0}, Lcom/twitter/library/av/ay;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/d;->a(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->j:Lcom/twitter/library/av/VideoViewContainer;

    if-eqz v0, :cond_1

    .line 898
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->j:Lcom/twitter/library/av/VideoViewContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/VideoViewContainer;->setVisibility(I)V

    .line 900
    :cond_1
    return-void
.end method


# virtual methods
.method protected a(IIII)Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 374
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->p:Lcom/twitter/library/av/ScaleType;

    sget-object v1, Lcom/twitter/library/av/ScaleType;->b:Lcom/twitter/library/av/ScaleType;

    if-ne v0, v1, :cond_0

    .line 375
    new-instance v0, Landroid/graphics/Rect;

    sub-int v1, p3, p1

    sub-int v2, p4, p2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 377
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->j:Lcom/twitter/library/av/VideoViewContainer;

    sub-int v1, p3, p1

    sub-int v2, p4, p2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/twitter/library/av/VideoViewContainer;->a(IIII)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lcom/twitter/library/av/VideoPlayerView$Mode;)Lcom/twitter/library/av/ScaleType;
    .locals 2

    .prologue
    .line 222
    sget-object v0, Lcom/twitter/library/av/au;->a:[I

    invoke-virtual {p1}, Lcom/twitter/library/av/VideoPlayerView$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 232
    sget-object v0, Lcom/twitter/library/av/ScaleType;->a:Lcom/twitter/library/av/ScaleType;

    :goto_0
    return-object v0

    .line 228
    :pswitch_0
    sget-object v0, Lcom/twitter/library/av/ScaleType;->b:Lcom/twitter/library/av/ScaleType;

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->n:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->e()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/ba;->c()Lcom/twitter/library/av/playback/AVDataSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVDataSource;->d()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 967
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 953
    :pswitch_0
    sget v0, Lbkb;->media_type_video:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 956
    :pswitch_1
    sget v0, Lbkb;->media_type_gif:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 959
    :pswitch_2
    sget v0, Lbkb;->media_type_vine:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 950
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public a(D)V
    .locals 3

    .prologue
    .line 644
    sget-object v0, Lbxa;->c:Lbxa;

    iget-object v1, p0, Lcom/twitter/library/av/VideoPlayerView;->n:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v1}, Lcom/twitter/library/av/playback/AVPlayer;->N()Lbxa;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 645
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->j:Lcom/twitter/library/av/VideoViewContainer;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/library/av/VideoViewContainer;->a(D)V

    .line 647
    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->c:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 510
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->j:Lcom/twitter/library/av/VideoViewContainer;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/library/av/VideoViewContainer;->a(II)V

    .line 511
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->a:Lcom/twitter/library/av/control/h;

    invoke-interface {v0}, Lcom/twitter/library/av/control/h;->l()V

    .line 512
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->e:Lcom/twitter/library/av/control/h;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->e:Lcom/twitter/library/av/control/h;

    invoke-interface {v0}, Lcom/twitter/library/av/control/h;->l()V

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/av/s;

    .line 516
    if-eqz v0, :cond_1

    .line 517
    invoke-interface {v0, p1, p2}, Lcom/twitter/library/av/s;->a(II)V

    .line 519
    :cond_1
    return-void
.end method

.method public a(IIZZ)V
    .locals 2

    .prologue
    .line 524
    if-lez p2, :cond_0

    if-lez p1, :cond_0

    .line 525
    invoke-virtual {p0, p1, p2}, Lcom/twitter/library/av/VideoPlayerView;->a(II)V

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->n:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->F()Lcom/twitter/model/av/AVMedia;

    move-result-object v0

    .line 528
    iget-object v1, p0, Lcom/twitter/library/av/VideoPlayerView;->a:Lcom/twitter/library/av/control/h;

    invoke-interface {v1, v0}, Lcom/twitter/library/av/control/h;->a(Lcom/twitter/model/av/AVMedia;)V

    .line 529
    iget-object v1, p0, Lcom/twitter/library/av/VideoPlayerView;->e:Lcom/twitter/library/av/control/h;

    if-eqz v1, :cond_1

    .line 530
    iget-object v1, p0, Lcom/twitter/library/av/VideoPlayerView;->e:Lcom/twitter/library/av/control/h;

    invoke-interface {v1, v0}, Lcom/twitter/library/av/control/h;->a(Lcom/twitter/model/av/AVMedia;)V

    .line 532
    :cond_1
    if-eqz p4, :cond_2

    .line 533
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->a:Lcom/twitter/library/av/control/h;

    invoke-interface {v0}, Lcom/twitter/library/av/control/h;->h()V

    .line 534
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->e:Lcom/twitter/library/av/control/h;

    if-eqz v0, :cond_2

    .line 535
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->e:Lcom/twitter/library/av/control/h;

    invoke-interface {v0}, Lcom/twitter/library/av/control/h;->h()V

    .line 538
    :cond_2
    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->n:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->G()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 539
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->m:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->a(Z)V

    .line 542
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_4

    .line 548
    invoke-direct {p0}, Lcom/twitter/library/av/VideoPlayerView;->t()V

    .line 551
    :cond_4
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/av/s;

    .line 552
    if-eqz v0, :cond_5

    .line 553
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/twitter/library/av/s;->a(IIZZ)V

    .line 555
    :cond_5
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 675
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->k:Lcom/twitter/library/av/aq;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/library/av/aq;->a(ILjava/lang/String;)Lcom/twitter/library/av/ar;

    move-result-object v1

    .line 676
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->a:Lcom/twitter/library/av/control/h;

    invoke-virtual {p0}, Lcom/twitter/library/av/VideoPlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/twitter/library/av/control/h;->a(Landroid/content/Context;Lcom/twitter/library/av/ar;)V

    .line 677
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->e:Lcom/twitter/library/av/control/h;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->e:Lcom/twitter/library/av/control/h;

    invoke-virtual {p0}, Lcom/twitter/library/av/VideoPlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/twitter/library/av/control/h;->a(Landroid/content/Context;Lcom/twitter/library/av/ar;)V

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/av/s;

    .line 682
    if-eqz v0, :cond_1

    .line 683
    iget-object v1, v1, Lcom/twitter/library/av/ar;->b:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/twitter/library/av/s;->a(ILjava/lang/String;)V

    .line 685
    :cond_1
    return-void
.end method

.method public a(Lcom/twitter/library/av/ab;)V
    .locals 2

    .prologue
    .line 627
    sget-object v0, Lbxa;->c:Lbxa;

    iget-object v1, p0, Lcom/twitter/library/av/VideoPlayerView;->n:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v1}, Lcom/twitter/library/av/playback/AVPlayer;->N()Lbxa;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 628
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->j:Lcom/twitter/library/av/VideoViewContainer;

    invoke-virtual {v0, p1}, Lcom/twitter/library/av/VideoViewContainer;->a(Lcom/twitter/library/av/ab;)V

    .line 630
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;)V
    .locals 2

    .prologue
    .line 703
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/twitter/library/av/VideoPlayerView;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 704
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->a:Lcom/twitter/library/av/control/h;

    invoke-interface {v0, p1}, Lcom/twitter/library/av/control/h;->a(Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;)V

    .line 705
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->e:Lcom/twitter/library/av/control/h;

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->e:Lcom/twitter/library/av/control/h;

    invoke-interface {v0, p1}, Lcom/twitter/library/av/control/h;->a(Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;)V

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->j:Lcom/twitter/library/av/VideoViewContainer;

    invoke-virtual {v0}, Lcom/twitter/library/av/VideoViewContainer;->requestLayout()V

    .line 710
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->j:Lcom/twitter/library/av/VideoViewContainer;

    invoke-virtual {v0}, Lcom/twitter/library/av/VideoViewContainer;->invalidate()V

    .line 711
    sget-object v0, Lbxa;->c:Lbxa;

    iget-object v1, p0, Lcom/twitter/library/av/VideoPlayerView;->n:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v1}, Lcom/twitter/library/av/playback/AVPlayer;->N()Lbxa;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 712
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->j:Lcom/twitter/library/av/VideoViewContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/VideoViewContainer;->setKeepScreenOn(Z)V

    .line 715
    :cond_1
    sget-object v0, Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;->d:Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;

    if-eq p1, v0, :cond_2

    .line 716
    invoke-direct {p0}, Lcom/twitter/library/av/VideoPlayerView;->t()V

    .line 719
    :cond_2
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/av/s;

    .line 720
    if-eqz v0, :cond_3

    .line 721
    invoke-interface {v0, p1}, Lcom/twitter/library/av/s;->a(Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;)V

    .line 723
    :cond_3
    return-void
.end method

.method public a(Lcom/twitter/library/av/playback/bl;)V
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->a:Lcom/twitter/library/av/control/h;

    invoke-interface {v0, p1}, Lcom/twitter/library/av/control/h;->a(Lcom/twitter/library/av/playback/bl;)V

    .line 599
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->e:Lcom/twitter/library/av/control/h;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->e:Lcom/twitter/library/av/control/h;

    invoke-interface {v0, p1}, Lcom/twitter/library/av/control/h;->a(Lcom/twitter/library/av/playback/bl;)V

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/av/s;

    .line 604
    if-eqz v0, :cond_1

    .line 605
    invoke-interface {v0, p1}, Lcom/twitter/library/av/s;->a(Lcom/twitter/library/av/playback/bl;)V

    .line 607
    :cond_1
    return-void
.end method

.method public a(Lcom/twitter/model/av/c;)V
    .locals 3

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/twitter/library/av/VideoPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/twitter/library/av/av;->a(Landroid/content/res/Resources;Lcom/twitter/model/av/c;)Lcom/twitter/library/av/ar;

    move-result-object v0

    .line 690
    iget-object v1, p0, Lcom/twitter/library/av/VideoPlayerView;->a:Lcom/twitter/library/av/control/h;

    invoke-virtual {p0}, Lcom/twitter/library/av/VideoPlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/twitter/library/av/control/h;->a(Landroid/content/Context;Lcom/twitter/library/av/ar;)V

    .line 691
    iget-object v1, p0, Lcom/twitter/library/av/VideoPlayerView;->e:Lcom/twitter/library/av/control/h;

    if-eqz v1, :cond_0

    .line 692
    iget-object v1, p0, Lcom/twitter/library/av/VideoPlayerView;->e:Lcom/twitter/library/av/control/h;

    invoke-virtual {p0}, Lcom/twitter/library/av/VideoPlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/twitter/library/av/control/h;->a(Landroid/content/Context;Lcom/twitter/library/av/ar;)V

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/av/s;

    .line 696
    if-eqz v0, :cond_1

    .line 697
    invoke-interface {v0, p1}, Lcom/twitter/library/av/s;->a(Lcom/twitter/model/av/c;)V

    .line 699
    :cond_1
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/text/Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 634
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->a:Lcom/twitter/library/av/control/h;

    invoke-interface {v0, p1}, Lcom/twitter/library/av/control/h;->a(Ljava/util/List;)V

    .line 636
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->e:Lcom/twitter/library/av/control/h;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->e:Lcom/twitter/library/av/control/h;

    invoke-interface {v0, p1}, Lcom/twitter/library/av/control/h;->a(Ljava/util/List;)V

    .line 639
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->a:Lcom/twitter/library/av/control/h;

    invoke-interface {v0, p1}, Lcom/twitter/library/av/control/h;->b_(Z)V

    .line 573
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->e:Lcom/twitter/library/av/control/h;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->e:Lcom/twitter/library/av/control/h;

    invoke-interface {v0, p1}, Lcom/twitter/library/av/control/h;->b_(Z)V

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/av/s;

    .line 578
    if-eqz v0, :cond_1

    .line 579
    invoke-interface {v0, p1}, Lcom/twitter/library/av/s;->a(Z)V

    .line 581
    :cond_1
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/twitter/library/av/VideoPlayerView;->d:Z

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->a:Lcom/twitter/library/av/control/h;

    invoke-interface {v0}, Lcom/twitter/library/av/control/h;->f()Z

    move-result v0

    .line 340
    iget-object v1, p0, Lcom/twitter/library/av/VideoPlayerView;->e:Lcom/twitter/library/av/control/h;

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/twitter/library/av/VideoPlayerView;->e:Lcom/twitter/library/av/control/h;

    invoke-interface {v1}, Lcom/twitter/library/av/control/h;->f()Z

    .line 346
    :cond_0
    :goto_0
    return v0

    .line 344
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(II)V
    .locals 4

    .prologue
    .line 819
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/twitter/library/av/VideoPlayerView;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 820
    const/16 v0, 0x2bd

    if-ne p1, v0, :cond_2

    .line 821
    new-instance v0, Lcom/twitter/library/av/at;

    invoke-direct {v0, p0}, Lcom/twitter/library/av/at;-><init>(Lcom/twitter/library/av/VideoPlayerView;)V

    iput-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->q:Ljava/lang/Runnable;

    .line 830
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/twitter/library/av/VideoPlayerView;->q:Ljava/lang/Runnable;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 843
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/av/s;

    .line 844
    if-eqz v0, :cond_1

    .line 845
    invoke-interface {v0, p1, p2}, Lcom/twitter/library/av/s;->b(II)V

    .line 847
    :cond_1
    return-void

    .line 831
    :cond_2
    const/16 v0, 0x2be

    if-ne p1, v0, :cond_3

    .line 832
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->a:Lcom/twitter/library/av/control/h;

    invoke-interface {v0}, Lcom/twitter/library/av/control/h;->d()V

    .line 833
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->e:Lcom/twitter/library/av/control/h;

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->e:Lcom/twitter/library/av/control/h;

    invoke-interface {v0}, Lcom/twitter/library/av/control/h;->d()V

    goto :goto_0

    .line 836
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->a:Lcom/twitter/library/av/control/h;

    invoke-interface {v0}, Lcom/twitter/library/av/control/h;->b()V

    .line 838
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->e:Lcom/twitter/library/av/control/h;

    if-eqz v0, :cond_4

    .line 839
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->e:Lcom/twitter/library/av/control/h;

    invoke-interface {v0}, Lcom/twitter/library/av/control/h;->b()V

    .line 841
    :cond_4
    invoke-direct {p0}, Lcom/twitter/library/av/VideoPlayerView;->t()V

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 877
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->b:Lcom/twitter/library/av/VideoPlayerView$Mode;

    sget-object v1, Lcom/twitter/library/av/VideoPlayerView$Mode;->g:Lcom/twitter/library/av/VideoPlayerView$Mode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->m:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {v0, p0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->a(Lcom/twitter/library/av/s;)Lcom/twitter/library/av/playback/AVPlayerAttachment;

    .line 239
    return-void
.end method

.method protected d()Z
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->b:Lcom/twitter/library/av/VideoPlayerView$Mode;

    sget-object v1, Lcom/twitter/library/av/VideoPlayerView$Mode;->a:Lcom/twitter/library/av/VideoPlayerView$Mode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->b:Lcom/twitter/library/av/VideoPlayerView$Mode;

    sget-object v1, Lcom/twitter/library/av/VideoPlayerView$Mode;->e:Lcom/twitter/library/av/VideoPlayerView$Mode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->b:Lcom/twitter/library/av/VideoPlayerView$Mode;

    sget-object v1, Lcom/twitter/library/av/VideoPlayerView$Mode;->g:Lcom/twitter/library/av/VideoPlayerView$Mode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->b:Lcom/twitter/library/av/VideoPlayerView$Mode;

    sget-object v1, Lcom/twitter/library/av/VideoPlayerView$Mode;->f:Lcom/twitter/library/av/VideoPlayerView$Mode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->b:Lcom/twitter/library/av/VideoPlayerView$Mode;

    sget-object v1, Lcom/twitter/library/av/VideoPlayerView$Mode;->i:Lcom/twitter/library/av/VideoPlayerView$Mode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->b:Lcom/twitter/library/av/VideoPlayerView$Mode;

    sget-object v1, Lcom/twitter/library/av/VideoPlayerView$Mode;->j:Lcom/twitter/library/av/VideoPlayerView$Mode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->b:Lcom/twitter/library/av/VideoPlayerView$Mode;

    sget-object v1, Lcom/twitter/library/av/VideoPlayerView$Mode;->m:Lcom/twitter/library/av/VideoPlayerView$Mode;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 396
    const/4 v0, 0x4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/twitter/library/av/VideoPlayerView;->i()V

    .line 407
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->a:Lcom/twitter/library/av/control/h;

    invoke-interface {v0}, Lcom/twitter/library/av/control/h;->e()V

    .line 560
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->e:Lcom/twitter/library/av/control/h;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->e:Lcom/twitter/library/av/control/h;

    invoke-interface {v0}, Lcom/twitter/library/av/control/h;->e()V

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/av/s;

    .line 565
    if-eqz v0, :cond_1

    .line 566
    invoke-interface {v0}, Lcom/twitter/library/av/s;->e()V

    .line 568
    :cond_1
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 651
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->n:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->F()Lcom/twitter/model/av/AVMedia;

    move-result-object v0

    .line 652
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/twitter/model/av/AVMedia;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    const/4 v0, 0x1

    .line 653
    :goto_0
    iget-object v2, p0, Lcom/twitter/library/av/VideoPlayerView;->a:Lcom/twitter/library/av/control/h;

    invoke-interface {v2, v0}, Lcom/twitter/library/av/control/h;->a_(Z)V

    .line 654
    iget-object v2, p0, Lcom/twitter/library/av/VideoPlayerView;->e:Lcom/twitter/library/av/control/h;

    if-eqz v2, :cond_1

    .line 655
    iget-object v2, p0, Lcom/twitter/library/av/VideoPlayerView;->e:Lcom/twitter/library/av/control/h;

    invoke-interface {v2, v0}, Lcom/twitter/library/av/control/h;->a_(Z)V

    .line 657
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->j:Lcom/twitter/library/av/VideoViewContainer;

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/VideoViewContainer;->setKeepScreenOn(Z)V

    .line 659
    invoke-virtual {p0}, Lcom/twitter/library/av/VideoPlayerView;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 660
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->f:Lcom/twitter/library/av/ay;

    if-nez v0, :cond_2

    .line 661
    invoke-virtual {p0}, Lcom/twitter/library/av/VideoPlayerView;->m()V

    .line 663
    :cond_2
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->f:Lcom/twitter/library/av/ay;

    invoke-interface {v0}, Lcom/twitter/library/av/ay;->getView()Landroid/view/View;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 664
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->f:Lcom/twitter/library/av/ay;

    invoke-interface {v0}, Lcom/twitter/library/av/ay;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 667
    :cond_3
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/av/s;

    .line 668
    if-eqz v0, :cond_4

    .line 669
    invoke-interface {v0}, Lcom/twitter/library/av/s;->f()V

    .line 671
    :cond_4
    return-void

    :cond_5
    move v0, v1

    .line 652
    goto :goto_0
.end method

.method protected g()Z
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->b:Lcom/twitter/library/av/VideoPlayerView$Mode;

    sget-object v1, Lcom/twitter/library/av/VideoPlayerView$Mode;->a:Lcom/twitter/library/av/VideoPlayerView$Mode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->b:Lcom/twitter/library/av/VideoPlayerView$Mode;

    sget-object v1, Lcom/twitter/library/av/VideoPlayerView$Mode;->e:Lcom/twitter/library/av/VideoPlayerView$Mode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->b:Lcom/twitter/library/av/VideoPlayerView$Mode;

    sget-object v1, Lcom/twitter/library/av/VideoPlayerView$Mode;->i:Lcom/twitter/library/av/VideoPlayerView$Mode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->b:Lcom/twitter/library/av/VideoPlayerView$Mode;

    sget-object v1, Lcom/twitter/library/av/VideoPlayerView$Mode;->j:Lcom/twitter/library/av/VideoPlayerView$Mode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->b:Lcom/twitter/library/av/VideoPlayerView$Mode;

    sget-object v1, Lcom/twitter/library/av/VideoPlayerView$Mode;->l:Lcom/twitter/library/av/VideoPlayerView$Mode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->b:Lcom/twitter/library/av/VideoPlayerView$Mode;

    sget-object v1, Lcom/twitter/library/av/VideoPlayerView$Mode;->m:Lcom/twitter/library/av/VideoPlayerView$Mode;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChromeView()Lcom/twitter/library/av/control/h;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->a:Lcom/twitter/library/av/control/h;

    return-object v0
.end method

.method public getCurrentMediaSource()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 256
    iget-object v1, p0, Lcom/twitter/library/av/VideoPlayerView;->n:Lcom/twitter/library/av/playback/AVPlayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/twitter/library/av/VideoPlayerView;->n:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v1}, Lcom/twitter/library/av/playback/AVPlayer;->F()Lcom/twitter/model/av/AVMedia;

    move-result-object v1

    .line 257
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/twitter/model/av/AVMedia;->a()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    move-object v1, v0

    .line 256
    goto :goto_0
.end method

.method protected getEmbeddedChromeMode()I
    .locals 5

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 262
    iget-object v2, p0, Lcom/twitter/library/av/VideoPlayerView;->m:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {v2}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->h()Lcom/twitter/library/av/playback/ba;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/av/playback/ba;->c()Lcom/twitter/library/av/playback/AVDataSource;

    move-result-object v2

    invoke-interface {v2}, Lcom/twitter/library/av/playback/AVDataSource;->d()I

    move-result v2

    .line 263
    sget-object v3, Lcom/twitter/library/av/au;->a:[I

    iget-object v4, p0, Lcom/twitter/library/av/VideoPlayerView;->b:Lcom/twitter/library/av/VideoPlayerView$Mode;

    invoke-virtual {v4}, Lcom/twitter/library/av/VideoPlayerView$Mode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 291
    :cond_0
    :goto_0
    return v0

    .line 265
    :pswitch_1
    invoke-static {}, Lcom/twitter/android/av/bs;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    .line 266
    const/16 v0, 0x9

    goto :goto_0

    .line 271
    :pswitch_2
    const/4 v0, 0x7

    goto :goto_0

    .line 274
    :pswitch_3
    const/4 v1, 0x2

    if-eq v1, v2, :cond_1

    if-ne v0, v2, :cond_2

    .line 275
    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 278
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 281
    goto :goto_0

    .line 285
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 288
    :pswitch_6
    const/16 v0, 0x8

    goto :goto_0

    .line 263
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getThumbnailDrawable()Lrx/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/o",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 910
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->f:Lcom/twitter/library/av/ay;

    if-nez v0, :cond_0

    .line 911
    const-string/jumbo v0, "Getting the thumbnail before mVideoThumbnailPresenter is set is not yet implemented"

    invoke-static {v0}, Lcom/twitter/util/h;->a(Ljava/lang/String;)V

    .line 913
    invoke-static {}, Lrx/o;->c()Lrx/o;

    move-result-object v0

    .line 915
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->f:Lcom/twitter/library/av/ay;

    invoke-interface {v0}, Lcom/twitter/library/av/ay;->getThumbnailBitmap()Lrx/o;

    move-result-object v0

    goto :goto_0
.end method

.method public getVideoSize()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->c:Landroid/graphics/Point;

    return-object v0
.end method

.method public getVisibilityPercentage()F
    .locals 2

    .prologue
    .line 886
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->r:Lcom/twitter/library/av/bf;

    iget-object v1, p0, Lcom/twitter/library/av/VideoPlayerView;->o:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v1}, Lcom/twitter/library/av/bf;->a(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v0

    return v0
.end method

.method public h()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 754
    iget-boolean v0, p0, Lcom/twitter/library/av/VideoPlayerView;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->j:Lcom/twitter/library/av/VideoViewContainer;

    invoke-virtual {v0}, Lcom/twitter/library/av/VideoViewContainer;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 762
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->a:Lcom/twitter/library/av/control/h;

    invoke-interface {v0}, Lcom/twitter/library/av/control/h;->j()V

    .line 763
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->e:Lcom/twitter/library/av/control/h;

    if-eqz v0, :cond_2

    .line 764
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->e:Lcom/twitter/library/av/control/h;

    invoke-interface {v0}, Lcom/twitter/library/av/control/h;->j()V

    .line 767
    :cond_2
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->j:Lcom/twitter/library/av/VideoViewContainer;

    invoke-virtual {v0}, Lcom/twitter/library/av/VideoViewContainer;->c()V

    .line 769
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->j:Lcom/twitter/library/av/VideoViewContainer;

    invoke-virtual {v0}, Lcom/twitter/library/av/VideoViewContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_3

    .line 770
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->j:Lcom/twitter/library/av/VideoViewContainer;

    invoke-virtual {p0, v0, v3}, Lcom/twitter/library/av/VideoPlayerView;->addView(Landroid/view/View;I)V

    .line 773
    :cond_3
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-lez v0, :cond_4

    .line 774
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->j:Lcom/twitter/library/av/VideoViewContainer;

    iget-object v1, p0, Lcom/twitter/library/av/VideoPlayerView;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/twitter/library/av/VideoPlayerView;->c:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/av/VideoViewContainer;->a(II)V

    .line 778
    :cond_4
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->f:Lcom/twitter/library/av/ay;

    if-eqz v0, :cond_6

    .line 779
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->n:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->w()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->n:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->A()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 780
    :cond_5
    invoke-direct {p0}, Lcom/twitter/library/av/VideoPlayerView;->t()V

    .line 786
    :cond_6
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/library/av/VideoPlayerView;->d:Z

    .line 787
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->j:Lcom/twitter/library/av/VideoViewContainer;

    iget-object v1, p0, Lcom/twitter/library/av/VideoPlayerView;->n:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v1}, Lcom/twitter/library/av/playback/AVPlayer;->w()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/VideoViewContainer;->setKeepScreenOn(Z)V

    .line 789
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/av/s;

    .line 790
    if-eqz v0, :cond_7

    .line 791
    invoke-interface {v0}, Lcom/twitter/library/av/s;->h()V

    .line 794
    :cond_7
    invoke-virtual {p0}, Lcom/twitter/library/av/VideoPlayerView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->m:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {p0}, Lcom/twitter/library/av/VideoPlayerView;->getVisibilityPercentage()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->a(F)V

    goto :goto_0

    .line 782
    :cond_8
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->f:Lcom/twitter/library/av/ay;

    invoke-interface {v0}, Lcom/twitter/library/av/ay;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public i()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 801
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->a:Lcom/twitter/library/av/control/h;

    invoke-interface {v0}, Lcom/twitter/library/av/control/h;->i()V

    .line 802
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->e:Lcom/twitter/library/av/control/h;

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->e:Lcom/twitter/library/av/control/h;

    invoke-interface {v0}, Lcom/twitter/library/av/control/h;->i()V

    .line 805
    :cond_0
    iput-boolean v1, p0, Lcom/twitter/library/av/VideoPlayerView;->d:Z

    .line 808
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->j:Lcom/twitter/library/av/VideoViewContainer;

    invoke-virtual {v0}, Lcom/twitter/library/av/VideoViewContainer;->a()Z

    .line 809
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->j:Lcom/twitter/library/av/VideoViewContainer;

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/VideoViewContainer;->setKeepScreenOn(Z)V

    .line 811
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/av/s;

    .line 812
    if-eqz v0, :cond_1

    .line 813
    invoke-interface {v0}, Lcom/twitter/library/av/s;->i()V

    .line 815
    :cond_1
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    .line 727
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->j:Lcom/twitter/library/av/VideoViewContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/VideoViewContainer;->setKeepScreenOn(Z)V

    .line 728
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->a:Lcom/twitter/library/av/control/h;

    invoke-interface {v0}, Lcom/twitter/library/av/control/h;->a()V

    .line 729
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->e:Lcom/twitter/library/av/control/h;

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->e:Lcom/twitter/library/av/control/h;

    invoke-interface {v0}, Lcom/twitter/library/av/control/h;->a()V

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/av/s;

    .line 734
    if-eqz v0, :cond_1

    .line 735
    invoke-interface {v0}, Lcom/twitter/library/av/s;->j()V

    .line 737
    :cond_1
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    .line 741
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->f:Lcom/twitter/library/av/ay;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->f:Lcom/twitter/library/av/ay;

    invoke-interface {v0}, Lcom/twitter/library/av/ay;->getView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 743
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->f:Lcom/twitter/library/av/ay;

    invoke-interface {v0}, Lcom/twitter/library/av/ay;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->a:Lcom/twitter/library/av/control/h;

    invoke-interface {v0}, Lcom/twitter/library/av/control/h;->g()V

    .line 747
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->e:Lcom/twitter/library/av/control/h;

    if-eqz v0, :cond_1

    .line 748
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->e:Lcom/twitter/library/av/control/h;

    invoke-interface {v0}, Lcom/twitter/library/av/control/h;->g()V

    .line 750
    :cond_1
    return-void
.end method

.method public l()V
    .locals 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->f:Lcom/twitter/library/av/ay;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->f:Lcom/twitter/library/av/ay;

    invoke-interface {v0}, Lcom/twitter/library/av/ay;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->j:Lcom/twitter/library/av/VideoViewContainer;

    if-eqz v0, :cond_1

    .line 615
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->j:Lcom/twitter/library/av/VideoViewContainer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/VideoViewContainer;->setVisibility(I)V

    .line 618
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/av/s;

    .line 619
    if-eqz v0, :cond_2

    .line 620
    invoke-interface {v0}, Lcom/twitter/library/av/s;->l()V

    .line 622
    :cond_2
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->f:Lcom/twitter/library/av/ay;

    if-nez v0, :cond_0

    .line 443
    invoke-direct {p0}, Lcom/twitter/library/av/VideoPlayerView;->s()Lcom/twitter/library/av/ay;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->f:Lcom/twitter/library/av/ay;

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->f:Lcom/twitter/library/av/ay;

    invoke-interface {v0}, Lcom/twitter/library/av/ay;->a()V

    .line 446
    return-void
.end method

.method public n()Lcom/twitter/library/av/playback/ba;
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->n:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->z()Z

    move-result v0

    .line 458
    iget-object v1, p0, Lcom/twitter/library/av/VideoPlayerView;->m:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {v1, v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->a(Z)V

    .line 459
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->m:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->h()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    return-object v0
.end method

.method public o()Lcom/twitter/library/av/playback/ba;
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->m:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->m()V

    .line 472
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->f:Lcom/twitter/library/av/ay;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->f:Lcom/twitter/library/av/ay;

    invoke-interface {v0}, Lcom/twitter/library/av/ay;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->m:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->h()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 383
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 384
    invoke-virtual {p0}, Lcom/twitter/library/av/VideoPlayerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 385
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 389
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 390
    invoke-virtual {p0}, Lcom/twitter/library/av/VideoPlayerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 391
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->n:Lcom/twitter/library/av/playback/AVPlayer;

    iget-object v1, p0, Lcom/twitter/library/av/VideoPlayerView;->n:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v1}, Lcom/twitter/library/av/playback/AVPlayer;->w()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/AVPlayer;->c(Z)V

    .line 392
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 351
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/twitter/library/av/VideoPlayerView;->a(IIII)Landroid/graphics/Rect;

    move-result-object v0

    .line 352
    iget-object v1, p0, Lcom/twitter/library/av/VideoPlayerView;->j:Lcom/twitter/library/av/VideoViewContainer;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/twitter/library/av/VideoViewContainer;->layout(IIII)V

    .line 355
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->a:Lcom/twitter/library/av/control/h;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-interface {v0, v5, v5, v1, v2}, Lcom/twitter/library/av/control/h;->layout(IIII)V

    .line 357
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->f:Lcom/twitter/library/av/ay;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->f:Lcom/twitter/library/av/ay;

    invoke-interface {v0}, Lcom/twitter/library/av/ay;->getView()Landroid/view/View;

    move-result-object v0

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 360
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 322
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 323
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 322
    invoke-virtual {p0, v0, v1}, Lcom/twitter/library/av/VideoPlayerView;->setMeasuredDimension(II)V

    .line 324
    invoke-virtual {p0, p1, p2}, Lcom/twitter/library/av/VideoPlayerView;->measureChildren(II)V

    .line 325
    return-void
.end method

.method public onScrollChanged()V
    .locals 2

    .prologue
    .line 851
    invoke-virtual {p0}, Lcom/twitter/library/av/VideoPlayerView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->m:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {p0}, Lcom/twitter/library/av/VideoPlayerView;->getVisibilityPercentage()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->a(F)V

    .line 854
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .prologue
    .line 858
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 859
    invoke-virtual {p0}, Lcom/twitter/library/av/VideoPlayerView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->m:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {p0}, Lcom/twitter/library/av/VideoPlayerView;->getVisibilityPercentage()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->a(F)V

    .line 864
    :cond_0
    return-void
.end method

.method public p()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->m:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->m()V

    .line 486
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->m:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->h()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    return-object v0
.end method

.method public q()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->m:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->n()V

    .line 499
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->m:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->h()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    return-object v0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->f:Lcom/twitter/library/av/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->f:Lcom/twitter/library/av/ay;

    invoke-interface {v0}, Lcom/twitter/library/av/ay;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/twitter/library/av/VideoThumbnailView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->f:Lcom/twitter/library/av/ay;

    .line 923
    invoke-interface {v0}, Lcom/twitter/library/av/ay;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/av/VideoThumbnailView;

    invoke-virtual {v0}, Lcom/twitter/library/av/VideoThumbnailView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 922
    :goto_0
    return v0

    .line 923
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAVPlayerListener(Lcom/twitter/library/av/s;)V
    .locals 1

    .prologue
    .line 317
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->l:Ljava/lang/ref/WeakReference;

    .line 318
    return-void
.end method

.method public setExternalChromeView(Lcom/twitter/library/av/control/h;)V
    .locals 1

    .prologue
    .line 304
    iput-object p1, p0, Lcom/twitter/library/av/VideoPlayerView;->e:Lcom/twitter/library/av/control/h;

    .line 305
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->e:Lcom/twitter/library/av/control/h;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/twitter/library/av/VideoPlayerView;->m:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->g()V

    .line 308
    :cond_0
    return-void
.end method
