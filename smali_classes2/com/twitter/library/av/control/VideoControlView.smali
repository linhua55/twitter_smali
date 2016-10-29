.class public Lcom/twitter/library/av/control/VideoControlView;
.super Landroid/widget/RelativeLayout;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/twitter/library/av/control/b;


# instance fields
.field a:Lcom/twitter/library/av/playback/AVPlayer;

.field private final b:Landroid/view/View;

.field private final c:Landroid/view/View;

.field private final d:Landroid/view/View;

.field private final e:Landroid/widget/ImageButton;

.field private final f:Landroid/widget/ImageButton;

.field private final g:Landroid/view/View;

.field private h:Landroid/widget/TextView;

.field private i:Z

.field private j:Z

.field private final k:Lcom/twitter/library/av/control/a;

.field private l:Lcom/twitter/library/av/control/f;

.field private final m:Z

.field private final n:Lcom/twitter/library/av/control/c;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/twitter/library/av/playback/AVPlayer;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 41
    iput-boolean v0, p0, Lcom/twitter/library/av/control/VideoControlView;->j:Z

    .line 64
    invoke-virtual {p0, v0}, Lcom/twitter/library/av/control/VideoControlView;->setWillNotDraw(Z)V

    .line 65
    invoke-virtual {p0, v1}, Lcom/twitter/library/av/control/VideoControlView;->setFocusable(Z)V

    .line 66
    invoke-virtual {p0, v1}, Lcom/twitter/library/av/control/VideoControlView;->setFocusableInTouchMode(Z)V

    .line 67
    invoke-static {}, Lcom/twitter/library/av/control/d;->b()Lcom/twitter/library/av/control/c;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->n:Lcom/twitter/library/av/control/c;

    .line 68
    invoke-static {}, Lcom/twitter/android/av/bs;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/library/av/control/VideoControlView;->m:Z

    .line 70
    const-string/jumbo v0, "layout_inflater"

    .line 71
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 73
    iget-boolean v1, p0, Lcom/twitter/library/av/control/VideoControlView;->m:Z

    if-eqz v1, :cond_0

    .line 74
    sget v1, Lbjx;->av_media_view_count_controller:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/library/av/control/VideoControlView;->c:Landroid/view/View;

    .line 75
    iget-object v1, p0, Lcom/twitter/library/av/control/VideoControlView;->c:Landroid/view/View;

    sget v2, Lbjw;->view_count:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/twitter/library/av/control/VideoControlView;->h:Landroid/widget/TextView;

    .line 79
    :goto_0
    iget-object v1, p0, Lcom/twitter/library/av/control/VideoControlView;->c:Landroid/view/View;

    sget v2, Lbjw;->av_media_controller_controls:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/library/av/control/VideoControlView;->b:Landroid/view/View;

    .line 80
    new-instance v1, Lcom/twitter/library/av/control/a;

    iget-object v2, p0, Lcom/twitter/library/av/control/VideoControlView;->c:Landroid/view/View;

    iget-boolean v3, p0, Lcom/twitter/library/av/control/VideoControlView;->m:Z

    invoke-direct {v1, v2, p0, v3}, Lcom/twitter/library/av/control/a;-><init>(Landroid/view/View;Lcom/twitter/library/av/control/b;Z)V

    iput-object v1, p0, Lcom/twitter/library/av/control/VideoControlView;->k:Lcom/twitter/library/av/control/a;

    .line 82
    iget-object v1, p0, Lcom/twitter/library/av/control/VideoControlView;->c:Landroid/view/View;

    sget v2, Lbjw;->pause:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/twitter/library/av/control/VideoControlView;->e:Landroid/widget/ImageButton;

    .line 83
    iget-object v1, p0, Lcom/twitter/library/av/control/VideoControlView;->e:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 84
    iget-object v1, p0, Lcom/twitter/library/av/control/VideoControlView;->e:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v1, p0, Lcom/twitter/library/av/control/VideoControlView;->c:Landroid/view/View;

    sget v2, Lbjw;->fullscreen:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/twitter/library/av/control/VideoControlView;->f:Landroid/widget/ImageButton;

    .line 87
    iget-object v1, p0, Lcom/twitter/library/av/control/VideoControlView;->f:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v1, p0, Lcom/twitter/library/av/control/VideoControlView;->c:Landroid/view/View;

    sget v2, Lbjw;->skip:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/library/av/control/VideoControlView;->g:Landroid/view/View;

    .line 90
    iget-object v1, p0, Lcom/twitter/library/av/control/VideoControlView;->g:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    sget v1, Lbjx;->av_error_msg:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->d:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/control/VideoControlView;->addView(Landroid/view/View;)V

    .line 95
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/control/VideoControlView;->addView(Landroid/view/View;)V

    .line 96
    invoke-virtual {p0, p2}, Lcom/twitter/library/av/control/VideoControlView;->a(Lcom/twitter/library/av/playback/AVPlayer;)V

    .line 97
    return-void

    .line 77
    :cond_0
    sget v1, Lbjx;->av_media_controller:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/library/av/control/VideoControlView;->c:Landroid/view/View;

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/av/control/VideoControlView;-><init>(Landroid/content/Context;Lcom/twitter/library/av/playback/AVPlayer;Z)V

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/twitter/library/av/control/VideoControlView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->d:Landroid/view/View;

    return-object v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 246
    new-instance v0, Lcom/twitter/library/av/control/e;

    invoke-direct {v0, p0, p2, p1}, Lcom/twitter/library/av/control/e;-><init>(Lcom/twitter/library/av/control/VideoControlView;Ljava/lang/String;Landroid/content/Context;)V

    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/twitter/library/av/control/VideoControlView;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    invoke-virtual {p0}, Lcom/twitter/library/av/control/VideoControlView;->g()V

    .line 120
    :cond_0
    return-void
.end method

.method private k()V
    .locals 5

    .prologue
    .line 126
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/twitter/library/av/control/VideoControlView;->m:Z

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->a:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->e()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/ba;->c()Lcom/twitter/library/av/playback/AVDataSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVDataSource;->o()J

    move-result-wide v0

    .line 128
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/twitter/library/av/control/VideoControlView;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/twitter/library/av/control/VideoControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/twitter/library/av/control/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4, v0, v1}, Lcom/twitter/android/av/bs;->a(Landroid/content/res/Resources;Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->h:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    :cond_1
    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 136
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->a:Lcom/twitter/library/av/playback/AVPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->a:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->z()Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/library/av/control/VideoControlView;->j:Z

    .line 137
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->a:Lcom/twitter/library/av/playback/AVPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->a:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iput-boolean v1, p0, Lcom/twitter/library/av/control/VideoControlView;->j:Z

    .line 139
    invoke-virtual {p0}, Lcom/twitter/library/av/control/VideoControlView;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/twitter/library/av/control/VideoControlView;->m()V

    .line 141
    invoke-direct {p0}, Lcom/twitter/library/av/control/VideoControlView;->p()V

    .line 147
    :cond_0
    iget-boolean v0, p0, Lcom/twitter/library/av/control/VideoControlView;->j:Z

    if-eqz v0, :cond_1

    .line 148
    iget-boolean v0, p0, Lcom/twitter/library/av/control/VideoControlView;->i:Z

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/control/VideoControlView;->a(Z)V

    .line 150
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 136
    goto :goto_0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->a:Lcom/twitter/library/av/playback/AVPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->a:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->F()Lcom/twitter/model/av/AVMedia;

    move-result-object v0

    .line 215
    :goto_0
    if-eqz v0, :cond_0

    .line 216
    invoke-interface {v0}, Lcom/twitter/model/av/AVMedia;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/library/av/control/VideoControlView;->i:Z

    .line 217
    invoke-virtual {p0}, Lcom/twitter/library/av/control/VideoControlView;->g()V

    .line 219
    :cond_0
    return-void

    .line 214
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/twitter/library/av/control/VideoControlView;->i:Z

    if-eqz v0, :cond_1

    .line 308
    invoke-direct {p0}, Lcom/twitter/library/av/control/VideoControlView;->q()V

    .line 309
    iget-boolean v0, p0, Lcom/twitter/library/av/control/VideoControlView;->m:Z

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->k:Lcom/twitter/library/av/control/a;

    invoke-virtual {v0}, Lcom/twitter/library/av/control/a;->c()V

    goto :goto_0
.end method

.method private o()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->a:Lcom/twitter/library/av/playback/AVPlayer;

    if-nez v0, :cond_0

    .line 356
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->k:Lcom/twitter/library/av/control/a;

    invoke-virtual {v0}, Lcom/twitter/library/av/control/a;->a()V

    .line 353
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->a:Lcom/twitter/library/av/playback/AVPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/AVPlayer;->b(Z)V

    .line 354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/library/av/control/VideoControlView;->j:Z

    .line 355
    invoke-virtual {p0}, Lcom/twitter/library/av/control/VideoControlView;->g()V

    goto :goto_0
.end method

.method private p()V
    .locals 3

    .prologue
    .line 362
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->a:Lcom/twitter/library/av/playback/AVPlayer;

    if-nez v0, :cond_0

    .line 376
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-boolean v0, p0, Lcom/twitter/library/av/control/VideoControlView;->j:Z

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->e:Landroid/widget/ImageButton;

    sget v1, Lbjv;->ic_video_replay_btn:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 368
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->e:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/twitter/library/av/control/VideoControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbkb;->replay:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->a:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 370
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->e:Landroid/widget/ImageButton;

    sget v1, Lbjv;->ic_video_pause_btn:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 371
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->e:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/twitter/library/av/control/VideoControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbkb;->pause:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->e:Landroid/widget/ImageButton;

    sget v1, Lbjv;->ic_video_play_btn:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 374
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->e:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/twitter/library/av/control/VideoControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbkb;->play:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private q()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->e:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->k:Lcom/twitter/library/av/control/a;

    invoke-virtual {v0}, Lcom/twitter/library/av/control/a;->d()V

    .line 418
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/twitter/library/av/control/VideoControlView;->requestLayout()V

    .line 154
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 228
    invoke-direct {p0, p1, p2}, Lcom/twitter/library/av/control/VideoControlView;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    .line 231
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 232
    iget-object v1, p0, Lcom/twitter/library/av/control/VideoControlView;->k:Lcom/twitter/library/av/control/a;

    invoke-virtual {v1, v0}, Lcom/twitter/library/av/control/a;->a(Ljava/lang/Runnable;)V

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public a(Lcom/twitter/library/av/playback/AVPlayer;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->a:Lcom/twitter/library/av/playback/AVPlayer;

    if-ne p1, v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 107
    :cond_0
    iput-object p1, p0, Lcom/twitter/library/av/control/VideoControlView;->a:Lcom/twitter/library/av/playback/AVPlayer;

    .line 108
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->k:Lcom/twitter/library/av/control/a;

    invoke-virtual {v0, p1}, Lcom/twitter/library/av/control/a;->a(Lcom/twitter/library/av/playback/AVPlayer;)V

    .line 110
    invoke-direct {p0}, Lcom/twitter/library/av/control/VideoControlView;->j()V

    .line 111
    invoke-direct {p0}, Lcom/twitter/library/av/control/VideoControlView;->l()V

    .line 112
    invoke-direct {p0}, Lcom/twitter/library/av/control/VideoControlView;->k()V

    goto :goto_0
.end method

.method public a(Lcom/twitter/library/av/playback/bl;)V
    .locals 2

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/twitter/library/av/control/VideoControlView;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->n:Lcom/twitter/library/av/control/c;

    invoke-virtual {v0, p1}, Lcom/twitter/library/av/control/c;->a(Lcom/twitter/library/av/playback/bl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 403
    iget-boolean v0, p0, Lcom/twitter/library/av/control/VideoControlView;->m:Z

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->h:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->k:Lcom/twitter/library/av/control/a;

    invoke-virtual {v0, p1}, Lcom/twitter/library/av/control/a;->a(Lcom/twitter/library/av/playback/bl;)V

    .line 408
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 179
    iput-boolean p1, p0, Lcom/twitter/library/av/control/VideoControlView;->i:Z

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/library/av/control/VideoControlView;->j:Z

    .line 181
    invoke-direct {p0}, Lcom/twitter/library/av/control/VideoControlView;->p()V

    .line 182
    return-void
.end method

.method public a(ZJ)V
    .locals 2

    .prologue
    .line 267
    if-eqz p1, :cond_0

    .line 268
    iget-boolean v0, p0, Lcom/twitter/library/av/control/VideoControlView;->j:Z

    if-eqz v0, :cond_0

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/library/av/control/VideoControlView;->j:Z

    .line 270
    invoke-virtual {p0}, Lcom/twitter/library/av/control/VideoControlView;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-direct {p0}, Lcom/twitter/library/av/control/VideoControlView;->m()V

    .line 275
    :cond_0
    invoke-direct {p0}, Lcom/twitter/library/av/control/VideoControlView;->p()V

    .line 277
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->l:Lcom/twitter/library/av/control/f;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->l:Lcom/twitter/library/av/control/f;

    invoke-interface {v0, p1, p2, p3}, Lcom/twitter/library/av/control/f;->a(ZJ)V

    .line 280
    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/library/av/control/VideoControlView;->j:Z

    .line 207
    invoke-virtual {p0}, Lcom/twitter/library/av/control/VideoControlView;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/twitter/library/av/control/VideoControlView;->p()V

    .line 209
    invoke-direct {p0}, Lcom/twitter/library/av/control/VideoControlView;->m()V

    .line 211
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/twitter/library/av/control/VideoControlView;->i:Z

    .line 192
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->a:Lcom/twitter/library/av/playback/AVPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->a:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->k:Lcom/twitter/library/av/control/a;

    iget-object v1, p0, Lcom/twitter/library/av/control/VideoControlView;->a:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v1}, Lcom/twitter/library/av/playback/AVPlayer;->B()Lcom/twitter/library/av/playback/bl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/control/a;->b(Lcom/twitter/library/av/playback/bl;)V

    .line 195
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->a:Lcom/twitter/library/av/playback/AVPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->a:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->F()Lcom/twitter/model/av/AVMedia;

    move-result-object v0

    .line 321
    :goto_0
    if-eqz v0, :cond_0

    .line 322
    invoke-interface {v0}, Lcom/twitter/model/av/AVMedia;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/library/av/control/VideoControlView;->i:Z

    .line 323
    invoke-direct {p0}, Lcom/twitter/library/av/control/VideoControlView;->n()V

    .line 325
    :cond_0
    return-void

    .line 319
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Z)V
    .locals 3

    .prologue
    .line 467
    if-eqz p1, :cond_0

    .line 468
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->f:Landroid/widget/ImageButton;

    sget v1, Lbjv;->ic_video_collapse_btn:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 469
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->f:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/twitter/library/av/control/VideoControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbkb;->av_player_button_collapse:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 474
    :goto_0
    return-void

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->f:Landroid/widget/ImageButton;

    sget v1, Lbjv;->ic_video_expand_btn:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 472
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->f:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/twitter/library/av/control/VideoControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbkb;->av_player_button_fullscreen:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->l:Lcom/twitter/library/av/control/f;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->l:Lcom/twitter/library/av/control/f;

    invoke-interface {v0}, Lcom/twitter/library/av/control/f;->z()V

    .line 294
    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->b:Landroid/view/View;

    invoke-static {v0}, Lcom/twitter/util/d;->a(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    .line 287
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 301
    invoke-direct {p0}, Lcom/twitter/library/av/control/VideoControlView;->n()V

    .line 302
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->b:Landroid/view/View;

    invoke-static {v0}, Lcom/twitter/util/d;->c(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    .line 303
    invoke-direct {p0}, Lcom/twitter/library/av/control/VideoControlView;->p()V

    .line 304
    return-void
.end method

.method public getControlBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->b:Landroid/view/View;

    return-object v0
.end method

.method h()V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->a:Lcom/twitter/library/av/playback/AVPlayer;

    if-nez v0, :cond_0

    .line 344
    :goto_0
    return-void

    .line 335
    :cond_0
    iget-boolean v0, p0, Lcom/twitter/library/av/control/VideoControlView;->j:Z

    if-eqz v0, :cond_1

    .line 336
    invoke-direct {p0}, Lcom/twitter/library/av/control/VideoControlView;->o()V

    .line 343
    :goto_1
    invoke-direct {p0}, Lcom/twitter/library/av/control/VideoControlView;->p()V

    goto :goto_0

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->a:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 338
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->a:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->t()V

    goto :goto_1

    .line 340
    :cond_2
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->a:Lcom/twitter/library/av/playback/AVPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/AVPlayer;->b(Z)V

    goto :goto_1
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 158
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 159
    invoke-direct {p0}, Lcom/twitter/library/av/control/VideoControlView;->l()V

    .line 160
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/twitter/library/av/control/VideoControlView;->j:Z

    .line 433
    iget-object v1, p0, Lcom/twitter/library/av/control/VideoControlView;->e:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 434
    invoke-virtual {p0}, Lcom/twitter/library/av/control/VideoControlView;->h()V

    .line 435
    iget-object v1, p0, Lcom/twitter/library/av/control/VideoControlView;->l:Lcom/twitter/library/av/control/f;

    if-eqz v1, :cond_0

    .line 436
    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->l:Lcom/twitter/library/av/control/f;

    invoke-interface {v0}, Lcom/twitter/library/av/control/f;->w()V

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->l:Lcom/twitter/library/av/control/f;

    invoke-interface {v0}, Lcom/twitter/library/av/control/f;->y()V

    goto :goto_0

    .line 442
    :cond_2
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->g:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 443
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->a:Lcom/twitter/library/av/playback/AVPlayer;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->a:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->D()V

    goto :goto_0

    .line 446
    :cond_3
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->f:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->l:Lcom/twitter/library/av/control/f;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->l:Lcom/twitter/library/av/control/f;

    invoke-interface {v0}, Lcom/twitter/library/av/control/f;->x()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 164
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 167
    invoke-virtual {p0}, Lcom/twitter/library/av/control/VideoControlView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/library/av/control/VideoControlView;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 169
    invoke-virtual {p0}, Lcom/twitter/library/av/control/VideoControlView;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/twitter/library/av/control/VideoControlView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 170
    iget-object v2, p0, Lcom/twitter/library/av/control/VideoControlView;->c:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 171
    iget-object v2, p0, Lcom/twitter/library/av/control/VideoControlView;->d:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 172
    return-void
.end method

.method public setIsFullScreenToggleAllowed(Z)V
    .locals 2

    .prologue
    .line 198
    iget-object v1, p0, Lcom/twitter/library/av/control/VideoControlView;->f:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 199
    return-void

    .line 198
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setListener(Lcom/twitter/library/av/control/f;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/twitter/library/av/control/VideoControlView;->l:Lcom/twitter/library/av/control/f;

    .line 460
    return-void
.end method

.method protected setVideoControlsBackgroundTransparency(I)V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/twitter/library/av/control/VideoControlView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 391
    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 394
    :cond_0
    return-void
.end method
