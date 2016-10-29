.class public Laay;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Laba;

.field private c:Lcdq;

.field private final d:Lcom/twitter/android/av/video/j;

.field private final e:Lcdr;

.field private f:Lcom/twitter/android/av/video/h;

.field private g:Landroid/view/View$OnClickListener;

.field private h:Lcom/twitter/android/livevideo/player/l;

.field private i:Lcom/twitter/library/scribe/TwitterScribeAssociation;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Laba;Lcdr;)V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/twitter/android/av/video/j;

    invoke-direct {v0}, Lcom/twitter/android/av/video/j;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Laay;-><init>(Landroid/app/Activity;Laba;Lcom/twitter/android/av/video/j;Lcdr;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Laba;Lcom/twitter/android/av/video/j;Lcdr;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Laaz;

    invoke-direct {v0, p0}, Laaz;-><init>(Laay;)V

    iput-object v0, p0, Laay;->g:Landroid/view/View$OnClickListener;

    .line 68
    iput-object p1, p0, Laay;->a:Landroid/app/Activity;

    .line 69
    iput-object p3, p0, Laay;->d:Lcom/twitter/android/av/video/j;

    .line 70
    iput-object p2, p0, Laay;->b:Laba;

    .line 71
    iput-object p4, p0, Laay;->e:Lcdr;

    .line 72
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Laay;->c:Lcdq;

    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Laay;->c:Lcdq;

    invoke-virtual {v0}, Lcdq;->e()Lcln;

    move-result-object v0

    .line 91
    iget-object v1, p0, Laay;->c:Lcdq;

    invoke-virtual {v1}, Lcdq;->d()Ljava/lang/String;

    move-result-object v1

    .line 92
    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Laay;->b:Laba;

    iget-object v2, p0, Laay;->c:Lcdq;

    invoke-virtual {v0, v2}, Laba;->a(Lcdq;)V

    .line 96
    :cond_1
    iget-object v0, p0, Laay;->e:Lcdr;

    iget-object v2, p0, Laay;->c:Lcdq;

    invoke-virtual {v2}, Lcdq;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcdr;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Laay;->c:Lcdq;

    .line 97
    invoke-virtual {v0}, Lcdq;->f()Lcom/twitter/model/livevideo/BroadcastState;

    move-result-object v0

    sget-object v2, Lcom/twitter/model/livevideo/BroadcastState;->b:Lcom/twitter/model/livevideo/BroadcastState;

    if-ne v0, v2, :cond_2

    .line 98
    invoke-static {v1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 99
    invoke-direct {p0}, Laay;->f()V

    goto :goto_0

    .line 101
    :cond_2
    invoke-direct {p0}, Laay;->e()V

    goto :goto_0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Laay;->f:Lcom/twitter/android/av/video/h;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Laay;->f:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/h;->a()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Laay;->f:Lcom/twitter/android/av/video/h;

    .line 118
    :cond_0
    return-void
.end method

.method private f()V
    .locals 6

    .prologue
    .line 148
    iget-object v0, p0, Laay;->c:Lcdq;

    if-nez v0, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Laay;->c:Lcdq;

    invoke-virtual {v0}, Lcdq;->m()Lcom/twitter/model/livevideo/d;

    move-result-object v1

    .line 152
    if-eqz v1, :cond_0

    iget-object v0, p0, Laay;->i:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Laay;->c:Lcdq;

    invoke-virtual {v0}, Lcdq;->l()Ljava/lang/String;

    move-result-object v0

    .line 156
    const-string/jumbo v2, "live_video_reuse_card_player"

    invoke-static {v2}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Card"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Laay;->c:Lcdq;

    invoke-virtual {v2}, Lcdq;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    :cond_2
    new-instance v4, Lcom/twitter/library/av/playback/livevideo/LiveVideoDataSource;

    invoke-direct {v4, v0, v1}, Lcom/twitter/library/av/playback/livevideo/LiveVideoDataSource;-><init>(Ljava/lang/String;Lcom/twitter/model/livevideo/d;)V

    .line 167
    iget-object v0, p0, Laay;->f:Lcom/twitter/android/av/video/h;

    if-nez v0, :cond_3

    .line 168
    iget-object v0, p0, Laay;->b:Laba;

    invoke-virtual {v0}, Laba;->d()V

    .line 169
    iget-object v0, p0, Laay;->d:Lcom/twitter/android/av/video/j;

    iget-object v1, p0, Laay;->a:Landroid/app/Activity;

    iget-object v2, p0, Laay;->b:Laba;

    .line 170
    invoke-virtual {v2}, Laba;->c()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Laay;->i:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v5, p0, Laay;->g:Landroid/view/View$OnClickListener;

    .line 169
    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/av/video/j;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/av/playback/AVDataSource;Landroid/view/View$OnClickListener;)Lcom/twitter/android/av/video/h;

    move-result-object v0

    iput-object v0, p0, Laay;->f:Lcom/twitter/android/av/video/h;

    .line 172
    iget-object v0, p0, Laay;->f:Lcom/twitter/android/av/video/h;

    sget-object v1, Lbxa;->c:Lbxa;

    sget-object v2, Lcom/twitter/library/av/VideoPlayerView$Mode;->m:Lcom/twitter/library/av/VideoPlayerView$Mode;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/av/video/h;->a(Lbxa;Lcom/twitter/library/av/VideoPlayerView$Mode;)V

    .line 173
    iget-object v0, p0, Laay;->b:Laba;

    invoke-virtual {v0}, Laba;->e()Lcom/twitter/android/livevideo/player/LiveVideoCardPlayerChrome;

    move-result-object v0

    .line 174
    iget-object v1, p0, Laay;->h:Lcom/twitter/android/livevideo/player/l;

    invoke-virtual {v0, v1}, Lcom/twitter/android/livevideo/player/LiveVideoCardPlayerChrome;->setOnErrorListener(Lcom/twitter/android/livevideo/player/l;)V

    .line 175
    iget-object v1, p0, Laay;->f:Lcom/twitter/android/av/video/h;

    invoke-virtual {v1, v0}, Lcom/twitter/android/av/video/h;->a(Lcom/twitter/library/av/control/h;)V

    .line 176
    iget-object v0, p0, Laay;->b:Laba;

    iget-object v1, p0, Laay;->f:Lcom/twitter/android/av/video/h;

    invoke-virtual {v1}, Lcom/twitter/android/av/video/h;->k()Lcom/twitter/library/av/playback/AVPlayerAttachment;

    move-result-object v1

    invoke-virtual {v0, v1}, Laba;->a(Lcom/twitter/library/av/playback/AVPlayerAttachment;)V

    .line 177
    iget-object v0, p0, Laay;->f:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/h;->b()V

    .line 179
    :cond_3
    iget-object v0, p0, Laay;->b:Laba;

    invoke-virtual {v0}, Laba;->b()V

    goto/16 :goto_0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Laay;->b:Laba;

    invoke-virtual {v0}, Laba;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 126
    iput-object p1, p0, Laay;->g:Landroid/view/View$OnClickListener;

    .line 127
    iget-object v0, p0, Laay;->b:Laba;

    invoke-virtual {v0}, Laba;->a()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Laay;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    return-void
.end method

.method public a(Lcom/twitter/android/livevideo/player/l;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Laay;->h:Lcom/twitter/android/livevideo/player/l;

    .line 137
    return-void
.end method

.method public a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcdq;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Laay;->i:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 82
    iput-object p2, p0, Laay;->c:Lcdq;

    .line 83
    invoke-direct {p0}, Laay;->d()V

    .line 84
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Laay;->c:Lcdq;

    .line 110
    invoke-direct {p0}, Laay;->e()V

    .line 111
    return-void
.end method

.method public c()Lcom/twitter/library/widget/a;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Laay;->f:Lcom/twitter/android/av/video/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laay;->f:Lcom/twitter/android/av/video/h;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/twitter/library/widget/a;->j:Lcom/twitter/library/widget/a;

    goto :goto_0
.end method
