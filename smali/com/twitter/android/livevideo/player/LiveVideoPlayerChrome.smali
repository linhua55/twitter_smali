.class public Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;
.super Landroid/widget/FrameLayout;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/livevideo/player/v;
.implements Lcom/twitter/library/av/control/h;


# instance fields
.field private final a:Lrx/subjects/ReplaySubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject",
            "<",
            "Lcom/twitter/library/av/playback/AVPlayerAttachment;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/twitter/android/livevideo/player/u;

.field private final c:Lcom/twitter/android/livevideo/player/LiveVideoPlayerErrorView;

.field private final d:Lcom/twitter/android/livevideo/player/LiveVideoPlayerRetryView;

.field private e:Lcom/twitter/android/livevideo/player/t;

.field private f:Lcom/twitter/android/livevideo/player/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-static {}, Lrx/subjects/ReplaySubject;->q()Lrx/subjects/ReplaySubject;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->a:Lrx/subjects/ReplaySubject;

    .line 44
    iput-object v2, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->e:Lcom/twitter/android/livevideo/player/t;

    .line 47
    iput-object v2, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->f:Lcom/twitter/android/livevideo/player/s;

    .line 61
    invoke-virtual {p0, p1}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->a(Landroid/content/Context;)Lcom/twitter/android/livevideo/player/u;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->b:Lcom/twitter/android/livevideo/player/u;

    .line 62
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->b:Lcom/twitter/android/livevideo/player/u;

    invoke-interface {v0}, Lcom/twitter/android/livevideo/player/u;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->addView(Landroid/view/View;)V

    .line 64
    new-instance v0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerErrorView;

    invoke-direct {v0, p1}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerErrorView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->c:Lcom/twitter/android/livevideo/player/LiveVideoPlayerErrorView;

    .line 65
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->c:Lcom/twitter/android/livevideo/player/LiveVideoPlayerErrorView;

    invoke-virtual {v0, v1}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerErrorView;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->c:Lcom/twitter/android/livevideo/player/LiveVideoPlayerErrorView;

    invoke-virtual {p0, v0}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->addView(Landroid/view/View;)V

    .line 68
    new-instance v0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerRetryView;

    invoke-direct {v0, p1}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerRetryView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->d:Lcom/twitter/android/livevideo/player/LiveVideoPlayerRetryView;

    .line 69
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->d:Lcom/twitter/android/livevideo/player/LiveVideoPlayerRetryView;

    invoke-virtual {v0, v1}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerRetryView;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->d:Lcom/twitter/android/livevideo/player/LiveVideoPlayerRetryView;

    new-instance v1, Lcom/twitter/android/livevideo/player/p;

    invoke-direct {v1, p0}, Lcom/twitter/android/livevideo/player/p;-><init>(Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerRetryView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->d:Lcom/twitter/android/livevideo/player/LiveVideoPlayerRetryView;

    invoke-virtual {p0, v0}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->addView(Landroid/view/View;)V

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;)Lcom/twitter/android/livevideo/player/LiveVideoPlayerRetryView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->d:Lcom/twitter/android/livevideo/player/LiveVideoPlayerRetryView;

    return-object v0
.end method

.method private static a(Lcom/twitter/library/av/ar;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 270
    const-string/jumbo v1, "live_video_playback_retry_button_enabled"

    invoke-static {v1, v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/twitter/library/av/ar;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 270
    :cond_0
    return v0
.end method

.method static synthetic b(Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;)Lrx/subjects/ReplaySubject;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->a:Lrx/subjects/ReplaySubject;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Lcom/twitter/android/livevideo/player/u;
    .locals 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 100
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 101
    new-instance v0, Lcom/twitter/android/livevideo/player/w;

    invoke-virtual {p0}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->a:Lrx/subjects/ReplaySubject;

    new-instance v4, Lcom/twitter/android/livevideo/player/d;

    invoke-direct {v4, p1}, Lcom/twitter/android/livevideo/player/d;-><init>(Landroid/content/Context;)V

    .line 102
    invoke-virtual {v4}, Lcom/twitter/android/livevideo/player/d;->a()Lcom/twitter/android/livevideo/player/a;

    move-result-object v5

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/livevideo/player/w;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lrx/subjects/ReplaySubject;Lcom/twitter/android/livevideo/player/v;Lcom/twitter/android/livevideo/player/a;)V

    .line 101
    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/twitter/library/av/ar;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 202
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->f:Lcom/twitter/android/livevideo/player/s;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->f:Lcom/twitter/android/livevideo/player/s;

    invoke-interface {v0, p2}, Lcom/twitter/android/livevideo/player/s;->a(Lcom/twitter/library/av/ar;)V

    .line 205
    :cond_0
    invoke-static {p2}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->a(Lcom/twitter/library/av/ar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->d:Lcom/twitter/android/livevideo/player/LiveVideoPlayerRetryView;

    invoke-virtual {v0, v1}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerRetryView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->c:Lcom/twitter/android/livevideo/player/LiveVideoPlayerErrorView;

    invoke-virtual {v0, v2}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerErrorView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->d:Lcom/twitter/android/livevideo/player/LiveVideoPlayerRetryView;

    iget-object v1, p2, Lcom/twitter/library/av/ar;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerRetryView;->setError(Ljava/lang/String;)V

    .line 214
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->c:Lcom/twitter/android/livevideo/player/LiveVideoPlayerErrorView;

    invoke-virtual {v0, v1}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerErrorView;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->d:Lcom/twitter/android/livevideo/player/LiveVideoPlayerRetryView;

    invoke-virtual {v0, v2}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerRetryView;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->c:Lcom/twitter/android/livevideo/player/LiveVideoPlayerErrorView;

    iget-object v1, p2, Lcom/twitter/library/av/ar;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerErrorView;->setError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->b:Lcom/twitter/android/livevideo/player/u;

    invoke-interface {v0}, Lcom/twitter/android/livevideo/player/u;->d()V

    .line 131
    return-void
.end method

.method public a(Lcom/twitter/library/av/playback/AVPlayerAttachment;)V
    .locals 1

    .prologue
    .line 113
    if-eqz p1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->a:Lrx/subjects/ReplaySubject;

    invoke-virtual {v0, p1}, Lrx/subjects/ReplaySubject;->b_(Ljava/lang/Object;)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->b:Lcom/twitter/android/livevideo/player/u;

    invoke-interface {v0}, Lcom/twitter/android/livevideo/player/u;->d()V

    .line 117
    return-void
.end method

.method public a(Lcom/twitter/library/av/playback/bl;)V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method public a(Lcom/twitter/model/av/AVMedia;)V
    .locals 0

    .prologue
    .line 126
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
    .line 222
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->b:Lcom/twitter/android/livevideo/player/u;

    invoke-interface {v0, p1}, Lcom/twitter/android/livevideo/player/u;->a(Ljava/util/List;)V

    .line 223
    return-void
.end method

.method public a_(Z)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->b:Lcom/twitter/android/livevideo/player/u;

    invoke-interface {v0}, Lcom/twitter/android/livevideo/player/u;->b()V

    .line 157
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public b_(Z)V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->m()V

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public g()V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 108
    return-object p0
.end method

.method public h()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->b:Lcom/twitter/android/livevideo/player/u;

    invoke-interface {v0}, Lcom/twitter/android/livevideo/player/u;->e()V

    .line 180
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->b:Lcom/twitter/android/livevideo/player/u;

    invoke-interface {v0}, Lcom/twitter/android/livevideo/player/u;->d()V

    .line 185
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->a:Lrx/subjects/ReplaySubject;

    invoke-virtual {v0}, Lrx/subjects/ReplaySubject;->r()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->a:Lrx/subjects/ReplaySubject;

    invoke-virtual {v0}, Lrx/subjects/ReplaySubject;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->a()Lcom/twitter/library/av/playback/AVPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()V
    .locals 0

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->requestLayout()V

    .line 190
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->b:Lcom/twitter/android/livevideo/player/u;

    invoke-interface {v0}, Lcom/twitter/android/livevideo/player/u;->c()V

    .line 167
    return-void
.end method

.method public n()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->e:Lcom/twitter/android/livevideo/player/t;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->e:Lcom/twitter/android/livevideo/player/t;

    invoke-interface {v0}, Lcom/twitter/android/livevideo/player/t;->a()V

    .line 230
    :cond_0
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->a:Lrx/subjects/ReplaySubject;

    new-instance v1, Lcom/twitter/android/livevideo/player/r;

    invoke-direct {v1, p0}, Lcom/twitter/android/livevideo/player/r;-><init>(Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;)V

    invoke-virtual {v0, v1}, Lrx/subjects/ReplaySubject;->b(Ldjf;)V

    .line 240
    return-void
.end method

.method public setEvent(Lcom/twitter/model/livevideo/d;)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->c:Lcom/twitter/android/livevideo/player/LiveVideoPlayerErrorView;

    iget-object v1, p1, Lcom/twitter/model/livevideo/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerErrorView;->setTitle(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->c:Lcom/twitter/android/livevideo/player/LiveVideoPlayerErrorView;

    iget-object v1, p1, Lcom/twitter/model/livevideo/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerErrorView;->setSubtitle(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public setOnErrorListener(Lcom/twitter/android/livevideo/player/s;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->f:Lcom/twitter/android/livevideo/player/s;

    .line 251
    return-void
.end method

.method public setOnFullscreenClickListener(Lcom/twitter/android/livevideo/player/t;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->e:Lcom/twitter/android/livevideo/player/t;

    .line 244
    return-void
.end method
