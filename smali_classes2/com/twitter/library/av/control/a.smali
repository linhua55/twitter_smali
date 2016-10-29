.class public Lcom/twitter/library/av/control/a;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final a:Lcom/twitter/library/av/control/b;

.field b:J

.field c:Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/widget/TextView;

.field private final g:Landroid/widget/SeekBar;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private j:Z

.field private k:Z

.field private l:Lcom/twitter/library/av/playback/AVPlayer;

.field private final m:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/twitter/library/av/control/b;Z)V
    .locals 7

    .prologue
    .line 50
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/twitter/library/av/control/a;-><init>(Landroid/view/View;Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/library/av/control/b;Landroid/content/Context;Landroid/os/Handler;Z)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/library/av/control/b;)V
    .locals 7

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/twitter/library/av/control/a;-><init>(Landroid/view/View;Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/library/av/control/b;Landroid/content/Context;Landroid/os/Handler;Z)V

    .line 59
    return-void
.end method

.method constructor <init>(Landroid/view/View;Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/library/av/control/b;Landroid/content/Context;Landroid/os/Handler;Z)V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/twitter/library/av/control/a;->b:J

    .line 80
    iput-object p5, p0, Lcom/twitter/library/av/control/a;->m:Landroid/os/Handler;

    .line 81
    iput-object p3, p0, Lcom/twitter/library/av/control/a;->a:Lcom/twitter/library/av/control/b;

    .line 82
    sget v0, Lbjw;->mediacontroller_progress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/twitter/library/av/control/a;->g:Landroid/widget/SeekBar;

    .line 83
    iget-object v0, p0, Lcom/twitter/library/av/control/a;->g:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 84
    iget-object v0, p0, Lcom/twitter/library/av/control/a;->g:Landroid/widget/SeekBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 85
    sget v0, Lbjw;->time_current:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/library/av/control/a;->e:Landroid/widget/TextView;

    .line 86
    sget v0, Lbjw;->time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/library/av/control/a;->d:Landroid/widget/TextView;

    .line 87
    sget v0, Lbjw;->countdown:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/library/av/control/a;->f:Landroid/widget/TextView;

    .line 88
    sget v0, Lbkb;->av_preroll_countdown_text:I

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/av/control/a;->h:Ljava/lang/String;

    .line 89
    sget v0, Lbkb;->av_time_duration_text:I

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/av/control/a;->i:Ljava/lang/String;

    .line 90
    iput-boolean p6, p0, Lcom/twitter/library/av/control/a;->c:Z

    .line 92
    invoke-virtual {p0, p2}, Lcom/twitter/library/av/control/a;->a(Lcom/twitter/library/av/playback/AVPlayer;)V

    .line 93
    return-void
.end method


# virtual methods
.method protected a(J)Ljava/lang/String;
    .locals 5

    .prologue
    .line 257
    long-to-int v0, p1

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/twitter/util/al;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 258
    iget-boolean v1, p0, Lcom/twitter/library/av/control/a;->c:Z

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/twitter/library/av/control/a;->i:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 261
    :cond_0
    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/twitter/library/av/control/a;->g:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 214
    return-void
.end method

.method public a(Lcom/twitter/library/av/playback/AVPlayer;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/twitter/library/av/control/a;->l:Lcom/twitter/library/av/playback/AVPlayer;

    if-ne p1, v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    iput-object p1, p0, Lcom/twitter/library/av/control/a;->l:Lcom/twitter/library/av/playback/AVPlayer;

    .line 103
    sget-object v0, Lcom/twitter/library/av/playback/bl;->a:Lcom/twitter/library/av/playback/bl;

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/control/a;->b(Lcom/twitter/library/av/playback/bl;)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/library/av/playback/bl;)V
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/twitter/library/av/control/a;->j:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/library/av/control/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/av/control/a;->l:Lcom/twitter/library/av/playback/AVPlayer;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p0, p1}, Lcom/twitter/library/av/control/a;->b(Lcom/twitter/library/av/playback/bl;)V

    .line 180
    iget-object v0, p0, Lcom/twitter/library/av/control/a;->a:Lcom/twitter/library/av/control/b;

    invoke-interface {v0}, Lcom/twitter/library/av/control/b;->c()V

    .line 182
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/twitter/library/av/control/a;->m:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    return-void
.end method

.method public b(Lcom/twitter/library/av/playback/bl;)V
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 189
    iget-boolean v2, p0, Lcom/twitter/library/av/control/a;->j:Z

    if-eqz v2, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v2, p0, Lcom/twitter/library/av/control/a;->g:Landroid/widget/SeekBar;

    if-eqz v2, :cond_3

    .line 194
    iget-wide v2, p1, Lcom/twitter/library/av/playback/bl;->c:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_2

    const-wide/16 v0, 0x3e8

    iget-wide v2, p1, Lcom/twitter/library/av/playback/bl;->b:J

    mul-long/2addr v0, v2

    iget-wide v2, p1, Lcom/twitter/library/av/playback/bl;->c:J

    div-long/2addr v0, v2

    .line 195
    :cond_2
    iget-object v2, p0, Lcom/twitter/library/av/control/a;->g:Landroid/widget/SeekBar;

    long-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 198
    :cond_3
    iget-object v0, p0, Lcom/twitter/library/av/control/a;->d:Landroid/widget/TextView;

    iget-wide v2, p1, Lcom/twitter/library/av/playback/bl;->c:J

    invoke-static {v2, v3}, Lcom/twitter/util/al;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/twitter/library/av/control/a;->e:Landroid/widget/TextView;

    iget-wide v2, p1, Lcom/twitter/library/av/playback/bl;->b:J

    invoke-virtual {p0, v2, v3}, Lcom/twitter/library/av/control/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/twitter/library/av/control/a;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 202
    iget-wide v0, p1, Lcom/twitter/library/av/playback/bl;->c:J

    iget-wide v2, p1, Lcom/twitter/library/av/playback/bl;->b:J

    sub-long/2addr v0, v2

    .line 203
    invoke-static {v0, v1}, Lcom/twitter/util/al;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/twitter/library/av/control/a;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/twitter/library/av/control/a;->h:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/twitter/library/av/control/a;->g:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 228
    iget-object v0, p0, Lcom/twitter/library/av/control/a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/twitter/library/av/control/a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/twitter/library/av/control/a;->g:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/twitter/library/av/control/a;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/twitter/library/av/control/a;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 241
    iget-object v0, p0, Lcom/twitter/library/av/control/a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/twitter/library/av/control/a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/twitter/library/av/control/a;->g:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/twitter/library/av/control/a;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/twitter/library/av/control/a;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6

    .prologue
    .line 129
    iget-object v0, p0, Lcom/twitter/library/av/control/a;->l:Lcom/twitter/library/av/playback/AVPlayer;

    if-eqz v0, :cond_0

    if-nez p3, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/av/control/a;->l:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->B()Lcom/twitter/library/av/playback/bl;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/twitter/library/av/control/a;->l:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v1}, Lcom/twitter/library/av/playback/AVPlayer;->F()Lcom/twitter/model/av/AVMedia;

    move-result-object v1

    .line 135
    if-eqz v1, :cond_0

    .line 138
    iget-wide v2, v0, Lcom/twitter/library/av/playback/bl;->c:J

    int-to-long v4, p2

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 139
    iget-wide v0, v0, Lcom/twitter/library/av/playback/bl;->b:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/twitter/library/av/control/a;->k:Z

    .line 141
    iput-wide v2, p0, Lcom/twitter/library/av/control/a;->b:J

    .line 142
    iget-object v0, p0, Lcom/twitter/library/av/control/a;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/twitter/library/av/control/a;->e:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v3}, Lcom/twitter/library/av/control/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 139
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/twitter/library/av/control/a;->l:Lcom/twitter/library/av/playback/AVPlayer;

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/library/av/control/a;->j:Z

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/library/av/control/a;->k:Z

    .line 123
    iget-object v0, p0, Lcom/twitter/library/av/control/a;->l:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->L()V

    .line 124
    iget-object v0, p0, Lcom/twitter/library/av/control/a;->a:Lcom/twitter/library/av/control/b;

    invoke-interface {v0}, Lcom/twitter/library/av/control/b;->d()V

    goto :goto_0
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 149
    iget-object v0, p0, Lcom/twitter/library/av/control/a;->l:Lcom/twitter/library/av/playback/AVPlayer;

    if-nez v0, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-wide v0, p0, Lcom/twitter/library/av/control/a;->b:J

    .line 154
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/twitter/library/av/control/a;->j:Z

    .line 155
    iget-wide v2, p0, Lcom/twitter/library/av/control/a;->b:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    .line 156
    iget-object v2, p0, Lcom/twitter/library/av/control/a;->l:Lcom/twitter/library/av/playback/AVPlayer;

    iget-wide v4, p0, Lcom/twitter/library/av/control/a;->b:J

    long-to-int v3, v4

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/twitter/library/av/playback/AVPlayer;->a(J)V

    .line 157
    iput-wide v6, p0, Lcom/twitter/library/av/control/a;->b:J

    .line 160
    :cond_2
    iget-object v2, p0, Lcom/twitter/library/av/control/a;->l:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v2}, Lcom/twitter/library/av/playback/AVPlayer;->B()Lcom/twitter/library/av/playback/bl;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/twitter/library/av/control/a;->b(Lcom/twitter/library/av/playback/bl;)V

    .line 162
    iget-object v2, p0, Lcom/twitter/library/av/control/a;->l:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v2}, Lcom/twitter/library/av/playback/AVPlayer;->M()V

    .line 163
    iget-object v2, p0, Lcom/twitter/library/av/control/a;->a:Lcom/twitter/library/av/control/b;

    iget-boolean v3, p0, Lcom/twitter/library/av/control/a;->k:Z

    invoke-interface {v2, v3, v0, v1}, Lcom/twitter/library/av/control/b;->a(ZJ)V

    .line 164
    iget-boolean v0, p0, Lcom/twitter/library/av/control/a;->k:Z

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/twitter/library/av/control/a;->l:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->C()V

    goto :goto_0
.end method
