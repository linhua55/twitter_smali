.class public Lahy;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Laia;

.field private final b:Lcom/twitter/android/av/video/j;

.field private final c:Landroid/app/Activity;

.field private final d:Lain;

.field private e:Laeo;

.field private f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private g:Lcom/twitter/android/moments/viewmodels/u;

.field private h:Lrx/ap;

.field private i:Lcom/twitter/android/av/video/h;

.field private j:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Laia;Lain;Lcom/twitter/android/av/video/j;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lahy;->a:Laia;

    .line 70
    iput-object p2, p0, Lahy;->d:Lain;

    .line 71
    iput-object p3, p0, Lahy;->b:Lcom/twitter/android/av/video/j;

    .line 72
    iput-object p4, p0, Lahy;->c:Landroid/app/Activity;

    .line 73
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/twitter/library/client/Session;)Lahy;
    .locals 4

    .prologue
    .line 48
    new-instance v0, Lain;

    invoke-direct {v0, p1}, Lain;-><init>(Lcom/twitter/library/client/Session;)V

    .line 49
    new-instance v1, Lahy;

    new-instance v2, Laia;

    invoke-direct {v2, p0}, Laia;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/twitter/android/av/video/j;

    invoke-direct {v3}, Lcom/twitter/android/av/video/j;-><init>()V

    invoke-direct {v1, v2, v0, v3, p0}, Lahy;-><init>(Laia;Lain;Lcom/twitter/android/av/video/j;Landroid/app/Activity;)V

    return-object v1
.end method

.method static synthetic a(Lahy;Lcom/twitter/model/core/Tweet;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lahy;->a(Lcom/twitter/model/core/Tweet;)V

    return-void
.end method

.method private a(Lcom/twitter/model/core/Tweet;)V
    .locals 6

    .prologue
    .line 179
    new-instance v4, Lcom/twitter/library/av/playback/TweetAVDataSource;

    invoke-direct {v4, p1}, Lcom/twitter/library/av/playback/TweetAVDataSource;-><init>(Lcom/twitter/model/core/Tweet;)V

    .line 180
    iget-object v0, p0, Lahy;->i:Lcom/twitter/android/av/video/h;

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lahy;->g:Lcom/twitter/android/moments/viewmodels/u;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/viewmodels/u;

    .line 182
    iget-object v1, p0, Lahy;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 183
    invoke-static {v1}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 184
    iget-object v1, p0, Lahy;->a:Laia;

    invoke-virtual {v1, v0}, Laia;->b(Lcom/twitter/android/moments/viewmodels/u;)V

    .line 185
    iget-object v0, p0, Lahy;->b:Lcom/twitter/android/av/video/j;

    iget-object v1, p0, Lahy;->c:Landroid/app/Activity;

    iget-object v2, p0, Lahy;->a:Laia;

    invoke-virtual {v2}, Laia;->b()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v5, p0, Lahy;->j:Landroid/view/View$OnClickListener;

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/av/video/j;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/av/playback/AVDataSource;Landroid/view/View$OnClickListener;)Lcom/twitter/android/av/video/h;

    move-result-object v0

    iput-object v0, p0, Lahy;->i:Lcom/twitter/android/av/video/h;

    .line 187
    iget-object v0, p0, Lahy;->i:Lcom/twitter/android/av/video/h;

    sget-object v1, Lbxa;->c:Lbxa;

    sget-object v2, Lcom/twitter/library/av/VideoPlayerView$Mode;->g:Lcom/twitter/library/av/VideoPlayerView$Mode;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/av/video/h;->a(Lbxa;Lcom/twitter/library/av/VideoPlayerView$Mode;)V

    .line 188
    iget-object v0, p0, Lahy;->a:Laia;

    iget-object v1, p0, Lahy;->i:Lcom/twitter/android/av/video/h;

    invoke-virtual {v1}, Lcom/twitter/android/av/video/h;->k()Lcom/twitter/library/av/playback/AVPlayerAttachment;

    move-result-object v1

    invoke-virtual {v0, v1}, Laia;->a(Lcom/twitter/library/av/playback/AVPlayerAttachment;)V

    .line 189
    iget-object v0, p0, Lahy;->i:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/h;->b()V

    .line 191
    :cond_0
    return-void
.end method

.method public static b(Landroid/app/Activity;Lcom/twitter/library/client/Session;)Lahy;
    .locals 4

    .prologue
    .line 61
    new-instance v0, Lain;

    invoke-direct {v0, p1}, Lain;-><init>(Lcom/twitter/library/client/Session;)V

    .line 62
    new-instance v1, Lahy;

    new-instance v2, Laia;

    invoke-direct {v2, p0}, Laia;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/twitter/android/av/video/i;

    invoke-direct {v3}, Lcom/twitter/android/av/video/i;-><init>()V

    invoke-direct {v1, v2, v0, v3, p0}, Lahy;-><init>(Laia;Lain;Lcom/twitter/android/av/video/j;Landroid/app/Activity;)V

    return-object v1
.end method

.method private d()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lahy;->g:Lcom/twitter/android/moments/viewmodels/u;

    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lahy;->g:Lcom/twitter/android/moments/viewmodels/u;

    invoke-interface {v0}, Lcom/twitter/android/moments/viewmodels/u;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lahy;->d:Lain;

    iget-object v1, p0, Lahy;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lain;->a(Landroid/content/Context;)Laeo;

    move-result-object v0

    iput-object v0, p0, Lahy;->e:Laeo;

    .line 101
    invoke-direct {p0}, Lahy;->e()V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lahy;->a:Laia;

    iget-object v1, p0, Lahy;->g:Lcom/twitter/android/moments/viewmodels/u;

    invoke-virtual {v0, v1}, Laia;->a(Lcom/twitter/android/moments/viewmodels/u;)V

    goto :goto_0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 157
    iget-object v0, p0, Lahy;->h:Lrx/ap;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lahy;->h:Lrx/ap;

    invoke-interface {v0}, Lrx/ap;->R_()V

    .line 160
    :cond_0
    iget-object v0, p0, Lahy;->e:Laeo;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laeo;

    .line 161
    iget-object v1, p0, Lahy;->g:Lcom/twitter/android/moments/viewmodels/u;

    invoke-static {v1}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/moments/viewmodels/u;

    .line 162
    invoke-interface {v1}, Lcom/twitter/android/moments/viewmodels/u;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Laeo;->a(J)Lrx/o;

    move-result-object v0

    new-instance v1, Lahz;

    invoke-direct {v1, p0}, Lahz;-><init>(Lahy;)V

    .line 163
    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/ao;)Lrx/ap;

    move-result-object v0

    iput-object v0, p0, Lahy;->h:Lrx/ap;

    .line 171
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    iput-object v1, p0, Lahy;->g:Lcom/twitter/android/moments/viewmodels/u;

    .line 112
    iget-object v0, p0, Lahy;->i:Lcom/twitter/android/av/video/h;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lahy;->i:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/h;->a()V

    .line 114
    iput-object v1, p0, Lahy;->i:Lcom/twitter/android/av/video/h;

    .line 116
    :cond_0
    iget-object v0, p0, Lahy;->h:Lrx/ap;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lahy;->h:Lrx/ap;

    invoke-interface {v0}, Lrx/ap;->R_()V

    .line 119
    :cond_1
    iget-object v0, p0, Lahy;->e:Laeo;

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lahy;->e:Laeo;

    invoke-static {v0}, Ldbt;->a(Ljava/io/Closeable;)V

    .line 121
    iput-object v1, p0, Lahy;->e:Laeo;

    .line 123
    :cond_2
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 131
    iput-object p1, p0, Lahy;->j:Landroid/view/View$OnClickListener;

    .line 132
    iget-object v0, p0, Lahy;->a:Laia;

    invoke-virtual {v0}, Laia;->a()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lahy;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    return-void
.end method

.method public a(Lcom/twitter/android/moments/viewmodels/u;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 0

    .prologue
    .line 85
    iput-object p2, p0, Lahy;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 86
    iput-object p1, p0, Lahy;->g:Lcom/twitter/android/moments/viewmodels/u;

    .line 87
    invoke-direct {p0}, Lahy;->d()V

    .line 88
    return-void
.end method

.method public b()Lcom/twitter/library/widget/a;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lahy;->i:Lcom/twitter/android/av/video/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lahy;->i:Lcom/twitter/android/av/video/h;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/twitter/library/widget/a;->j:Lcom/twitter/library/widget/a;

    goto :goto_0
.end method

.method public c()Landroid/view/View;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lahy;->a:Laia;

    invoke-virtual {v0}, Laia;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
