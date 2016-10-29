.class public Lcom/twitter/android/revenue/card/bj;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/revenue/card/bk;
.implements Lcom/twitter/android/revenue/card/m;


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Lcom/twitter/android/revenue/card/CardMediaView;

.field private c:Lcom/twitter/android/revenue/card/k;

.field private d:Landroid/content/Context;

.field private e:Lclm;

.field private f:Lcom/twitter/model/core/Tweet;

.field private g:J

.field private h:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private i:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lclm;Lcom/twitter/android/av/video/j;ZF)V
    .locals 3

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/revenue/card/bj;->i:Z

    .line 57
    iput-object p1, p0, Lcom/twitter/android/revenue/card/bj;->d:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/twitter/android/revenue/card/bj;->e:Lclm;

    .line 59
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/revenue/card/bj;->a:Landroid/view/ViewGroup;

    .line 61
    new-instance v0, Lcom/twitter/android/revenue/card/CardMediaView;

    invoke-direct {v0, p1}, Lcom/twitter/android/revenue/card/CardMediaView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/revenue/card/bj;->b:Lcom/twitter/android/revenue/card/CardMediaView;

    .line 62
    const-string/jumbo v0, "cover_promo_image"

    invoke-static {v0, p2}, Lcln;->a(Ljava/lang/String;Lclm;)Lcln;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/twitter/android/revenue/card/bj;->b:Lcom/twitter/android/revenue/card/CardMediaView;

    invoke-direct {p0, v1, v0, p4, p5}, Lcom/twitter/android/revenue/card/bj;->a(Lcom/twitter/android/revenue/card/CardMediaView;Lcln;ZF)V

    .line 65
    new-instance v0, Lcom/twitter/android/revenue/card/k;

    invoke-direct {v0, p1, p3}, Lcom/twitter/android/revenue/card/k;-><init>(Landroid/content/Context;Lcom/twitter/android/av/video/j;)V

    iput-object v0, p0, Lcom/twitter/android/revenue/card/bj;->c:Lcom/twitter/android/revenue/card/k;

    .line 66
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bj;->c:Lcom/twitter/android/revenue/card/k;

    invoke-virtual {v0, p0}, Lcom/twitter/android/revenue/card/k;->a(Lcom/twitter/android/revenue/card/m;)V

    .line 68
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bj;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/twitter/android/revenue/card/bj;->b:Lcom/twitter/android/revenue/card/CardMediaView;

    invoke-static {}, Lcom/twitter/android/revenue/y;->a()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bj;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/twitter/android/revenue/card/bj;->c:Lcom/twitter/android/revenue/card/k;

    invoke-virtual {v1}, Lcom/twitter/android/revenue/card/k;->f()Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/twitter/android/revenue/y;->a()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    return-void
.end method

.method private a(Lcom/twitter/android/revenue/card/CardMediaView;Lcln;ZF)V
    .locals 0

    .prologue
    .line 74
    if-eqz p2, :cond_0

    .line 75
    invoke-static {p1, p2, p3, p4}, Lcom/twitter/android/revenue/y;->a(Lcom/twitter/android/revenue/card/CardMediaView;Lcln;ZF)V

    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bj;->a:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public a(Landroid/app/Activity;Lcom/twitter/model/core/Tweet;JLcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 3

    .prologue
    .line 93
    iput-object p2, p0, Lcom/twitter/android/revenue/card/bj;->f:Lcom/twitter/model/core/Tweet;

    .line 94
    iput-wide p3, p0, Lcom/twitter/android/revenue/card/bj;->g:J

    .line 95
    iput-object p5, p0, Lcom/twitter/android/revenue/card/bj;->h:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 96
    iget-boolean v0, p0, Lcom/twitter/android/revenue/card/bj;->i:Z

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bj;->c:Lcom/twitter/android/revenue/card/k;

    new-instance v1, Lcom/twitter/library/av/playback/TweetAVDataSource;

    invoke-direct {v1, p2}, Lcom/twitter/library/av/playback/TweetAVDataSource;-><init>(Lcom/twitter/model/core/Tweet;)V

    invoke-virtual {v0, p1, v1, p5}, Lcom/twitter/android/revenue/card/k;->a(Landroid/app/Activity;Lcom/twitter/library/av/playback/AVDataSource;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 98
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bj;->c:Lcom/twitter/android/revenue/card/k;

    invoke-virtual {v0, p0}, Lcom/twitter/android/revenue/card/k;->a(Lcom/twitter/android/revenue/card/m;)V

    .line 100
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    .line 165
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bj;->e:Lclm;

    iget-wide v2, p0, Lcom/twitter/android/revenue/card/bj;->g:J

    iget-object v1, p0, Lcom/twitter/android/revenue/card/bj;->f:Lcom/twitter/model/core/Tweet;

    iget-boolean v4, p0, Lcom/twitter/android/revenue/card/bj;->i:Z

    .line 166
    invoke-static {v0, v2, v3, v1, v4}, Lcom/twitter/android/av/revenue/VideoConversationCardData;->a(Lclm;JLcom/twitter/model/core/Tweet;Z)Lcom/twitter/android/av/revenue/VideoConversationCardData;

    move-result-object v0

    .line 167
    const-string/jumbo v1, "player_stream_url"

    iget-object v2, p0, Lcom/twitter/android/revenue/card/bj;->e:Lclm;

    invoke-static {v1, v2}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v1

    .line 169
    new-instance v2, Lcom/twitter/android/av/revenue/g;

    invoke-direct {v2, v0}, Lcom/twitter/android/av/revenue/g;-><init>(Lcom/twitter/android/av/revenue/VideoConversationCardData;)V

    iget-object v0, p0, Lcom/twitter/android/revenue/card/bj;->f:Lcom/twitter/model/core/Tweet;

    .line 170
    invoke-virtual {v2, v0}, Lcom/twitter/android/av/revenue/g;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/av/g;

    move-result-object v0

    .line 171
    invoke-virtual {v0, v1}, Lcom/twitter/android/av/g;->a(Ljava/lang/String;)Lcom/twitter/android/av/g;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/revenue/card/bj;->h:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 172
    invoke-virtual {v0, v1}, Lcom/twitter/android/av/g;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/android/av/g;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/revenue/card/bj;->d:Landroid/content/Context;

    .line 174
    invoke-static {v1}, Lbki;->a(Landroid/content/Context;)Lbki;

    move-result-object v1

    invoke-virtual {v1}, Lbki;->k()Z

    move-result v1

    .line 173
    invoke-virtual {v0, v1}, Lcom/twitter/android/av/g;->a(Z)Lcom/twitter/android/av/g;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/revenue/card/bj;->d:Landroid/content/Context;

    .line 175
    invoke-virtual {v0, v1}, Lcom/twitter/android/av/g;->b(Landroid/content/Context;)V

    .line 176
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/twitter/android/revenue/card/bj;->i:Z

    .line 82
    iget-object v1, p0, Lcom/twitter/android/revenue/card/bj;->b:Lcom/twitter/android/revenue/card/CardMediaView;

    iget-boolean v0, p0, Lcom/twitter/android/revenue/card/bj;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/android/revenue/card/CardMediaView;->setVisibility(I)V

    .line 83
    return-void

    .line 82
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public at_()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/twitter/android/revenue/card/bj;->i:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/twitter/library/av/playback/ba;->a:Lcom/twitter/library/av/playback/ba;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bj;->c:Lcom/twitter/android/revenue/card/k;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/card/k;->at_()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    goto :goto_0
.end method

.method public ay_()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/twitter/android/revenue/card/bj;->i:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/twitter/library/av/playback/ba;->a:Lcom/twitter/library/av/playback/ba;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bj;->c:Lcom/twitter/android/revenue/card/k;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/card/k;->ay_()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/twitter/android/revenue/card/bj;->i:Z

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bj;->c:Lcom/twitter/android/revenue/card/k;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/card/k;->a()V

    .line 116
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/twitter/android/revenue/card/bj;->i:Z

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bj;->c:Lcom/twitter/android/revenue/card/k;

    invoke-virtual {v0, p1}, Lcom/twitter/android/revenue/card/k;->a(Z)V

    .line 123
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/twitter/android/revenue/card/bj;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bj;->c:Lcom/twitter/android/revenue/card/k;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/card/k;->c()Z

    move-result v0

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/twitter/android/revenue/card/bj;->i:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bj;->b:Lcom/twitter/android/revenue/card/CardMediaView;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/card/CardMediaView;->getMediaImageView()Lcom/twitter/media/ui/image/MediaImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bj;->c:Lcom/twitter/android/revenue/card/k;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/card/k;->e()V

    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/twitter/android/revenue/card/bj;->i:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bj;->b:Lcom/twitter/android/revenue/card/CardMediaView;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/card/CardMediaView;->getMediaImageView()Lcom/twitter/media/ui/image/MediaImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/MediaImageView;->j()Z

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bj;->c:Lcom/twitter/android/revenue/card/k;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/card/k;->b()V

    goto :goto_0
.end method

.method public h()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/twitter/android/revenue/card/bj;->i:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/twitter/library/av/playback/ba;->a:Lcom/twitter/library/av/playback/ba;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bj;->c:Lcom/twitter/android/revenue/card/k;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/card/k;->h()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    goto :goto_0
.end method

.method public i()Landroid/view/View;
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/twitter/android/revenue/card/bj;->i:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/twitter/library/widget/a;->j:Lcom/twitter/library/widget/a;

    invoke-interface {v0}, Lcom/twitter/library/widget/a;->i()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bj;->c:Lcom/twitter/android/revenue/card/k;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/card/k;->i()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method
