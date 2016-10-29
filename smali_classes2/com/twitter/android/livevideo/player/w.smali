.class Lcom/twitter/android/livevideo/player/w;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/livevideo/player/u;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/view/View;

.field private final c:Landroid/widget/ImageButton;

.field private final d:Landroid/widget/ImageButton;

.field private final e:Lcom/google/android/exoplayer/text/SubtitleLayout;

.field private final f:Landroid/content/res/Resources;

.field private final g:Lcom/twitter/android/livevideo/player/v;

.field private final h:Ldlx;

.field private final i:Landroid/view/View$OnClickListener;

.field private final j:Lrx/subjects/ReplaySubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject",
            "<",
            "Lcom/twitter/library/av/playback/AVPlayerAttachment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lrx/subjects/ReplaySubject;Lcom/twitter/android/livevideo/player/v;Lcom/twitter/android/livevideo/player/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/view/LayoutInflater;",
            "Lrx/subjects/ReplaySubject",
            "<",
            "Lcom/twitter/library/av/playback/AVPlayerAttachment;",
            ">;",
            "Lcom/twitter/android/livevideo/player/v;",
            "Lcom/twitter/android/livevideo/player/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ldlx;

    invoke-direct {v0}, Ldlx;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/livevideo/player/w;->h:Ldlx;

    .line 49
    new-instance v0, Lcom/twitter/android/livevideo/player/x;

    invoke-direct {v0, p0}, Lcom/twitter/android/livevideo/player/x;-><init>(Lcom/twitter/android/livevideo/player/w;)V

    iput-object v0, p0, Lcom/twitter/android/livevideo/player/w;->i:Landroid/view/View$OnClickListener;

    .line 79
    iput-object p1, p0, Lcom/twitter/android/livevideo/player/w;->f:Landroid/content/res/Resources;

    .line 80
    iput-object p4, p0, Lcom/twitter/android/livevideo/player/w;->g:Lcom/twitter/android/livevideo/player/v;

    .line 81
    iput-object p3, p0, Lcom/twitter/android/livevideo/player/w;->j:Lrx/subjects/ReplaySubject;

    .line 83
    const v0, 0x7f040177

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/player/w;->b:Landroid/view/View;

    .line 84
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/w;->b:Landroid/view/View;

    const v1, 0x7f130197

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/player/w;->a:Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/w;->b:Landroid/view/View;

    const v1, 0x7f130429

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/twitter/android/livevideo/player/w;->c:Landroid/widget/ImageButton;

    .line 87
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/w;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 88
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/w;->c:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/twitter/android/livevideo/player/w;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/w;->b:Landroid/view/View;

    const v1, 0x7f13042a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/twitter/android/livevideo/player/w;->d:Landroid/widget/ImageButton;

    .line 91
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/w;->d:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/twitter/android/livevideo/player/w;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/w;->b:Landroid/view/View;

    const v1, 0x7f13042b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/text/SubtitleLayout;

    iput-object v0, p0, Lcom/twitter/android/livevideo/player/w;->e:Lcom/google/android/exoplayer/text/SubtitleLayout;

    .line 94
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/w;->e:Lcom/google/android/exoplayer/text/SubtitleLayout;

    invoke-direct {p0, v0, p5}, Lcom/twitter/android/livevideo/player/w;->a(Lcom/google/android/exoplayer/text/SubtitleLayout;Lcom/twitter/android/livevideo/player/a;)V

    .line 95
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/livevideo/player/w;)Lcom/twitter/android/livevideo/player/v;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/w;->g:Lcom/twitter/android/livevideo/player/v;

    return-object v0
.end method

.method private a(Lcom/google/android/exoplayer/text/SubtitleLayout;Lcom/twitter/android/livevideo/player/a;)V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/w;->h:Ldlx;

    invoke-interface {p2}, Lcom/twitter/android/livevideo/player/a;->b()Lrx/o;

    move-result-object v1

    invoke-virtual {v1}, Lrx/o;->h()Lrx/o;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/livevideo/player/y;

    invoke-direct {v2, p0, p1}, Lcom/twitter/android/livevideo/player/y;-><init>(Lcom/twitter/android/livevideo/player/w;Lcom/google/android/exoplayer/text/SubtitleLayout;)V

    invoke-virtual {v1, v2}, Lrx/o;->c(Ldjf;)Lrx/ap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldlx;->a(Lrx/ap;)V

    .line 107
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/w;->h:Ldlx;

    invoke-interface {p2}, Lcom/twitter/android/livevideo/player/a;->a()Lrx/o;

    move-result-object v1

    invoke-virtual {v1}, Lrx/o;->h()Lrx/o;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/livevideo/player/z;

    invoke-direct {v2, p0, p1}, Lcom/twitter/android/livevideo/player/z;-><init>(Lcom/twitter/android/livevideo/player/w;Lcom/google/android/exoplayer/text/SubtitleLayout;)V

    invoke-virtual {v1, v2}, Lrx/o;->c(Ldjf;)Lrx/ap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldlx;->a(Lrx/ap;)V

    .line 115
    return-void
.end method

.method static synthetic b(Lcom/twitter/android/livevideo/player/w;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/w;->c:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/livevideo/player/w;)Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/w;->f:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/android/livevideo/player/w;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/w;->d:Landroid/widget/ImageButton;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/w;->b:Landroid/view/View;

    return-object v0
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
    .line 180
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/w;->e:Lcom/google/android/exoplayer/text/SubtitleLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/text/SubtitleLayout;->setCues(Ljava/util/List;)V

    .line 181
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/w;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/w;->a:Landroid/view/View;

    invoke-static {v0}, Lcom/twitter/util/d;->b(Landroid/view/View;)V

    .line 148
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/w;->j:Lrx/subjects/ReplaySubject;

    new-instance v1, Lcom/twitter/android/livevideo/player/aa;

    invoke-direct {v1, p0}, Lcom/twitter/android/livevideo/player/aa;-><init>(Lcom/twitter/android/livevideo/player/w;)V

    invoke-virtual {v0, v1}, Lrx/subjects/ReplaySubject;->b(Ldjf;)V

    .line 176
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/w;->h:Ldlx;

    invoke-virtual {v0}, Ldlx;->R_()V

    .line 186
    return-void
.end method
