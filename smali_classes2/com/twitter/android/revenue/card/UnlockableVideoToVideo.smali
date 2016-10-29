.class public Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/revenue/card/bk;
.implements Lcom/twitter/android/revenue/card/m;


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Lcom/twitter/android/revenue/card/k;

.field private c:Lcom/twitter/android/revenue/card/k;

.field private final d:Landroid/content/Context;

.field private final e:Lclm;

.field private f:Lcom/twitter/model/core/Tweet;

.field private g:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private h:J

.field private i:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lclm;Lcom/twitter/android/av/video/j;)V
    .locals 3

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->i:Z

    .line 62
    iput-object p1, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->d:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->e:Lclm;

    .line 65
    invoke-virtual {p0, p1}, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->a(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->a:Landroid/view/ViewGroup;

    .line 67
    new-instance v0, Lcom/twitter/android/revenue/card/k;

    invoke-direct {v0, p1, p3}, Lcom/twitter/android/revenue/card/k;-><init>(Landroid/content/Context;Lcom/twitter/android/av/video/j;)V

    iput-object v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->b:Lcom/twitter/android/revenue/card/k;

    .line 68
    iget-object v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->b:Lcom/twitter/android/revenue/card/k;

    invoke-virtual {v0, p0}, Lcom/twitter/android/revenue/card/k;->a(Lcom/twitter/android/revenue/card/m;)V

    .line 70
    new-instance v0, Lcom/twitter/android/revenue/card/k;

    invoke-direct {v0, p1, p3}, Lcom/twitter/android/revenue/card/k;-><init>(Landroid/content/Context;Lcom/twitter/android/av/video/j;)V

    iput-object v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->c:Lcom/twitter/android/revenue/card/k;

    .line 71
    iget-object v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->c:Lcom/twitter/android/revenue/card/k;

    invoke-virtual {v0, p0}, Lcom/twitter/android/revenue/card/k;->a(Lcom/twitter/android/revenue/card/m;)V

    .line 73
    iget-object v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->b:Lcom/twitter/android/revenue/card/k;

    invoke-virtual {v1}, Lcom/twitter/android/revenue/card/k;->f()Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/twitter/android/revenue/y;->a()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    iget-object v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->c:Lcom/twitter/android/revenue/card/k;

    invoke-virtual {v1}, Lcom/twitter/android/revenue/card/k;->f()Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/twitter/android/revenue/y;->a()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    return-void
.end method

.method private a(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "locked-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/twitter/model/core/Tweet;->p:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->a:Landroid/view/ViewGroup;

    return-object v0
.end method

.method a(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method a(Lcom/twitter/model/core/Tweet;Lclm;Z)Lcom/twitter/library/av/playback/AVDataSource;
    .locals 4

    .prologue
    .line 110
    if-eqz p3, :cond_0

    new-instance v0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo$LockedAVDataSource;

    const-string/jumbo v1, "cover_player_stream_url"

    .line 112
    invoke-static {v1, p2}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "cover_player_image"

    .line 114
    invoke-direct {p0, p1}, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->a(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo$LockedAVDataSource;-><init>(Lcom/twitter/model/core/Tweet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_0
    return-object v0

    .line 114
    :cond_0
    new-instance v0, Lcom/twitter/library/av/playback/TweetAVDataSource;

    invoke-direct {v0, p1}, Lcom/twitter/library/av/playback/TweetAVDataSource;-><init>(Lcom/twitter/model/core/Tweet;)V

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Lcom/twitter/model/core/Tweet;JLcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 3

    .prologue
    .line 96
    iput-object p2, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->f:Lcom/twitter/model/core/Tweet;

    .line 97
    iput-wide p3, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->h:J

    .line 98
    iput-object p5, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->g:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 100
    iget-boolean v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->i:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->b:Lcom/twitter/android/revenue/card/k;

    iget-object v1, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->e:Lclm;

    const/4 v2, 0x1

    invoke-virtual {p0, p2, v1, v2}, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->a(Lcom/twitter/model/core/Tweet;Lclm;Z)Lcom/twitter/library/av/playback/AVDataSource;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p5}, Lcom/twitter/android/revenue/card/k;->a(Landroid/app/Activity;Lcom/twitter/library/av/playback/AVDataSource;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 102
    iget-object v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->c:Lcom/twitter/android/revenue/card/k;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/card/k;->b()V

    .line 107
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->c:Lcom/twitter/android/revenue/card/k;

    iget-object v1, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->e:Lclm;

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v1, v2}, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->a(Lcom/twitter/model/core/Tweet;Lclm;Z)Lcom/twitter/library/av/playback/AVDataSource;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p5}, Lcom/twitter/android/revenue/card/k;->a(Landroid/app/Activity;Lcom/twitter/library/av/playback/AVDataSource;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 105
    iget-object v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->b:Lcom/twitter/android/revenue/card/k;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/card/k;->b()V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    .line 193
    iget-object v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->e:Lclm;

    iget-wide v2, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->h:J

    iget-object v1, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->f:Lcom/twitter/model/core/Tweet;

    iget-boolean v4, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->i:Z

    .line 194
    invoke-static {v0, v2, v3, v1, v4}, Lcom/twitter/android/av/revenue/VideoConversationCardData;->a(Lclm;JLcom/twitter/model/core/Tweet;Z)Lcom/twitter/android/av/revenue/VideoConversationCardData;

    move-result-object v1

    .line 195
    iget-boolean v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->i:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "cover_player_stream_url"

    .line 197
    :goto_0
    iget-object v2, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->e:Lclm;

    invoke-static {v0, v2}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    .line 199
    iget-object v2, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->f:Lcom/twitter/model/core/Tweet;

    iget-object v3, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->e:Lclm;

    iget-boolean v4, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->i:Z

    invoke-virtual {p0, v2, v3, v4}, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->a(Lcom/twitter/model/core/Tweet;Lclm;Z)Lcom/twitter/library/av/playback/AVDataSource;

    move-result-object v2

    .line 200
    new-instance v3, Lcom/twitter/android/av/revenue/g;

    invoke-direct {v3, v1, v2}, Lcom/twitter/android/av/revenue/g;-><init>(Lcom/twitter/android/av/revenue/VideoConversationCardData;Lcom/twitter/library/av/playback/AVDataSource;)V

    iget-object v1, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->f:Lcom/twitter/model/core/Tweet;

    .line 201
    invoke-virtual {v3, v1}, Lcom/twitter/android/av/revenue/g;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/av/g;

    move-result-object v1

    .line 202
    invoke-virtual {v1, v0}, Lcom/twitter/android/av/g;->a(Ljava/lang/String;)Lcom/twitter/android/av/g;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->g:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 203
    invoke-virtual {v0, v1}, Lcom/twitter/android/av/g;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/android/av/g;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->d:Landroid/content/Context;

    .line 205
    invoke-static {v1}, Lbki;->a(Landroid/content/Context;)Lbki;

    move-result-object v1

    invoke-virtual {v1}, Lbki;->k()Z

    move-result v1

    .line 204
    invoke-virtual {v0, v1}, Lcom/twitter/android/av/g;->a(Z)Lcom/twitter/android/av/g;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->d:Landroid/content/Context;

    .line 206
    invoke-virtual {v0, v1}, Lcom/twitter/android/av/g;->b(Landroid/content/Context;)V

    .line 207
    return-void

    .line 195
    :cond_0
    const-string/jumbo v0, "player_stream_url"

    goto :goto_0
.end method

.method public a(Z)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 83
    iput-boolean p1, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->i:Z

    .line 84
    iget-object v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->b:Lcom/twitter/android/revenue/card/k;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/card/k;->f()Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->c:Lcom/twitter/android/revenue/card/k;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/card/k;->f()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 86
    return-void

    :cond_0
    move v0, v2

    .line 84
    goto :goto_0

    :cond_1
    move v2, v1

    .line 85
    goto :goto_1
.end method

.method public at_()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->j()Lcom/twitter/library/widget/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/widget/a;->at_()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    return-object v0
.end method

.method public ay_()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->j()Lcom/twitter/library/widget/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/widget/a;->ay_()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->i:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->b:Lcom/twitter/android/revenue/card/k;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/card/k;->a()V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->c:Lcom/twitter/android/revenue/card/k;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/card/k;->a()V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->i:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->b:Lcom/twitter/android/revenue/card/k;

    invoke-virtual {v0, p1}, Lcom/twitter/android/revenue/card/k;->a(Z)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->c:Lcom/twitter/android/revenue/card/k;

    invoke-virtual {v0, p1}, Lcom/twitter/android/revenue/card/k;->a(Z)V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->j()Lcom/twitter/library/widget/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/widget/a;->c()Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->i:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->b:Lcom/twitter/android/revenue/card/k;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/card/k;->e()V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->c:Lcom/twitter/android/revenue/card/k;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/card/k;->e()V

    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->b:Lcom/twitter/android/revenue/card/k;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/card/k;->b()V

    .line 155
    iget-object v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->c:Lcom/twitter/android/revenue/card/k;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/card/k;->b()V

    .line 156
    return-void
.end method

.method public h()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->j()Lcom/twitter/library/widget/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/widget/a;->h()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    return-object v0
.end method

.method public i()Landroid/view/View;
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->j()Lcom/twitter/library/widget/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/widget/a;->i()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method j()Lcom/twitter/library/widget/a;
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->b:Lcom/twitter/android/revenue/card/k;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;->c:Lcom/twitter/android/revenue/card/k;

    goto :goto_0
.end method
