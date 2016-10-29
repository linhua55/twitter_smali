.class public Lcom/twitter/android/av/card/g;
.super Lcom/twitter/android/card/ab;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/twitter/library/card/af;
.implements Lcom/twitter/library/card/bo;
.implements Lcom/twitter/library/widget/a;


# instance fields
.field final a:Landroid/view/View;

.field final b:Lcom/twitter/media/ui/image/AspectRatioFrameLayout;

.field final c:Lcom/twitter/android/card/CallToAction;

.field d:Ljava/lang/Long;

.field e:J

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field final h:Lcom/twitter/ui/widget/ax;

.field i:Lcom/twitter/android/av/video/h;

.field private final k:Lcom/twitter/android/av/video/j;

.field private final l:Lcom/twitter/android/av/bq;

.field private final m:Lcom/twitter/library/av/playback/ao;

.field private final n:Lcom/twitter/android/av/bj;

.field private final o:Lcom/twitter/android/av/video/f;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V
    .locals 10

    .prologue
    .line 75
    new-instance v3, Lcom/twitter/android/card/k;

    invoke-direct {v3, p1}, Lcom/twitter/android/card/k;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/twitter/android/card/e;

    invoke-direct {v4, p1}, Lcom/twitter/android/card/e;-><init>(Landroid/app/Activity;)V

    new-instance v5, Lcom/twitter/android/av/video/g;

    invoke-direct {v5, p1}, Lcom/twitter/android/av/video/g;-><init>(Landroid/content/Context;)V

    .line 77
    invoke-static {}, Lcom/twitter/library/av/playback/ao;->a()Lcom/twitter/library/av/playback/ao;

    move-result-object v6

    new-instance v7, Lcom/twitter/android/av/bq;

    invoke-direct {v7}, Lcom/twitter/android/av/bq;-><init>()V

    new-instance v8, Lcom/twitter/android/av/bj;

    invoke-direct {v8}, Lcom/twitter/android/av/bj;-><init>()V

    new-instance v9, Lcom/twitter/android/av/video/j;

    invoke-direct {v9}, Lcom/twitter/android/av/video/j;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 75
    invoke-direct/range {v0 .. v9}, Lcom/twitter/android/av/card/g;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;Lcom/twitter/android/av/video/g;Lcom/twitter/library/av/playback/ao;Lcom/twitter/android/av/bq;Lcom/twitter/android/av/bj;Lcom/twitter/android/av/video/j;)V

    .line 79
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;Lcom/twitter/android/av/video/g;Lcom/twitter/library/av/playback/ao;Lcom/twitter/android/av/bq;Lcom/twitter/android/av/bj;Lcom/twitter/android/av/video/j;)V
    .locals 4

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/android/card/ab;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;)V

    .line 91
    invoke-virtual {p5, p1}, Lcom/twitter/android/av/video/g;->a(Landroid/app/Activity;)Lcom/twitter/android/av/video/f;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/card/g;->o:Lcom/twitter/android/av/video/f;

    .line 92
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->o:Lcom/twitter/android/av/video/f;

    invoke-virtual {v0, p0}, Lcom/twitter/android/av/video/f;->a(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->o:Lcom/twitter/android/av/video/f;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/f;->c()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/card/g;->a:Landroid/view/View;

    .line 94
    invoke-static {p1}, Lcom/twitter/ui/widget/ax;->a(Landroid/content/Context;)Lcom/twitter/ui/widget/ax;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/card/g;->h:Lcom/twitter/ui/widget/ax;

    .line 95
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->a:Landroid/view/View;

    const v1, 0x7f130384

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/AspectRatioFrameLayout;

    iput-object v0, p0, Lcom/twitter/android/av/card/g;->b:Lcom/twitter/media/ui/image/AspectRatioFrameLayout;

    .line 96
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->b:Lcom/twitter/media/ui/image/AspectRatioFrameLayout;

    const v1, 0x3fe38e39

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 97
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04023d

    iget-object v0, p0, Lcom/twitter/android/av/card/g;->a:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/card/CallToAction;

    iput-object v0, p0, Lcom/twitter/android/av/card/g;->c:Lcom/twitter/android/card/CallToAction;

    .line 99
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->a:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/twitter/android/av/card/g;->c:Lcom/twitter/android/card/CallToAction;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 100
    iput-object p9, p0, Lcom/twitter/android/av/card/g;->k:Lcom/twitter/android/av/video/j;

    .line 101
    iput-object p6, p0, Lcom/twitter/android/av/card/g;->m:Lcom/twitter/library/av/playback/ao;

    .line 102
    iput-object p7, p0, Lcom/twitter/android/av/card/g;->l:Lcom/twitter/android/av/bq;

    .line 103
    iput-object p8, p0, Lcom/twitter/android/av/card/g;->n:Lcom/twitter/android/av/bj;

    .line 104
    return-void
.end method

.method private p()Lcom/twitter/library/scribe/TwitterScribeAssociation;
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->u:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "video_timeline"

    iget-object v1, p0, Lcom/twitter/android/av/card/g;->u:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 248
    invoke-virtual {v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a()Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 249
    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/av/card/g;->u:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    :goto_1
    return-object v0

    .line 247
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->t:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 130
    invoke-super {p0}, Lcom/twitter/android/card/ab;->a()V

    .line 132
    invoke-virtual {p0}, Lcom/twitter/android/av/card/g;->j()Lcom/twitter/library/card/ae;

    move-result-object v0

    .line 133
    iget-wide v2, p0, Lcom/twitter/android/av/card/g;->e:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/ae;->b(JLjava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->d:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/twitter/android/av/card/g;->k()Lcom/twitter/library/card/bn;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/twitter/android/av/card/g;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/bn;->b(JLjava/lang/Object;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->o:Lcom/twitter/android/av/video/f;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/f;->b()V

    .line 142
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->i:Lcom/twitter/android/av/video/h;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->i:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/h;->a()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/av/card/g;->i:Lcom/twitter/android/av/video/h;

    .line 146
    :cond_1
    return-void
.end method

.method public a(JLclm;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 223
    const-string/jumbo v0, "app_id"

    invoke-static {v0, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/card/g;->f:Ljava/lang/String;

    .line 224
    const-string/jumbo v0, "app_name"

    invoke-static {v0, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/card/g;->g:Ljava/lang/String;

    .line 225
    const-string/jumbo v0, "title"

    invoke-static {v0, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    .line 226
    const-string/jumbo v2, "description"

    invoke-static {v2, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v2

    .line 227
    iget-object v3, p0, Lcom/twitter/android/av/card/g;->o:Lcom/twitter/android/av/video/f;

    invoke-virtual {v3, v0}, Lcom/twitter/android/av/video/f;->b(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->o:Lcom/twitter/android/av/video/f;

    invoke-virtual {v0, v2}, Lcom/twitter/android/av/video/f;->a(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->c:Lcom/twitter/android/card/CallToAction;

    if-eqz v0, :cond_1

    .line 231
    const/16 v0, 0x8

    .line 232
    iget-object v2, p0, Lcom/twitter/android/av/card/g;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/twitter/android/av/card/g;->g:Ljava/lang/String;

    invoke-static {v2}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->c:Lcom/twitter/android/card/CallToAction;

    invoke-virtual {p0}, Lcom/twitter/android/av/card/g;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/android/card/CallToAction;->setScribeElement(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->c:Lcom/twitter/android/card/CallToAction;

    iget-object v2, p0, Lcom/twitter/android/av/card/g;->s:Lcom/twitter/android/card/d;

    invoke-virtual {v0, v2}, Lcom/twitter/android/card/CallToAction;->setCardActionHandler(Lcom/twitter/android/card/d;)V

    .line 235
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->c:Lcom/twitter/android/card/CallToAction;

    iget-object v2, p0, Lcom/twitter/android/av/card/g;->r:Lcom/twitter/android/card/i;

    invoke-virtual {v0, v2}, Lcom/twitter/android/card/CallToAction;->setCardLogger(Lcom/twitter/android/card/i;)V

    .line 236
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->c:Lcom/twitter/android/card/CallToAction;

    iget-object v2, p0, Lcom/twitter/android/av/card/g;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/av/card/g;->g:Ljava/lang/String;

    move-object v4, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/card/CallToAction;->a(Lcom/twitter/library/card/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const/4 v0, 0x0

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/av/card/g;->c:Lcom/twitter/android/card/CallToAction;

    invoke-virtual {v1, v0}, Lcom/twitter/android/card/CallToAction;->setVisibility(I)V

    .line 242
    :cond_1
    return-void
.end method

.method public a(JLcom/twitter/library/card/CardContext;)V
    .locals 1

    .prologue
    .line 214
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/card/ab;->a(JLcom/twitter/library/card/CardContext;)V

    .line 216
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->c:Lcom/twitter/android/card/CallToAction;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->c:Lcom/twitter/android/card/CallToAction;

    invoke-virtual {v0, p3}, Lcom/twitter/android/card/CallToAction;->setCardContext(Lcom/twitter/library/card/CardContext;)V

    .line 219
    :cond_0
    return-void
.end method

.method public a(JLcom/twitter/model/core/TwitterUser;)V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->o:Lcom/twitter/android/av/video/f;

    invoke-virtual {v0, p3}, Lcom/twitter/android/av/video/f;->a(Lcom/twitter/model/core/TwitterUser;)V

    .line 210
    return-void
.end method

.method public a(Lcom/twitter/library/card/av;)V
    .locals 10

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/twitter/android/card/ab;->a(Lcom/twitter/library/card/av;)V

    .line 109
    iget-wide v0, p1, Lcom/twitter/library/card/av;->b:J

    iput-wide v0, p0, Lcom/twitter/android/av/card/g;->e:J

    .line 110
    invoke-virtual {p0}, Lcom/twitter/android/av/card/g;->j()Lcom/twitter/library/card/ae;

    move-result-object v0

    .line 111
    iget-wide v2, p0, Lcom/twitter/android/av/card/g;->e:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/ae;->a(JLjava/lang/Object;)V

    .line 112
    const-string/jumbo v0, "site"

    iget-object v1, p1, Lcom/twitter/library/card/av;->c:Lclm;

    invoke-static {v0, v1}, Lcom/twitter/library/card/at;->a(Ljava/lang/String;Lclm;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/card/g;->d:Ljava/lang/Long;

    .line 113
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->d:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/twitter/android/av/card/g;->k()Lcom/twitter/library/card/bn;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/twitter/android/av/card/g;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/bn;->a(JLjava/lang/Object;)V

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/av/card/g;->l()Landroid/app/Activity;

    move-result-object v1

    .line 119
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->i:Lcom/twitter/android/av/video/h;

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/twitter/android/av/card/g;->w:Lcom/twitter/library/card/CardContext;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->w:Lcom/twitter/library/card/CardContext;

    invoke-static {v0}, Lcom/twitter/library/card/CardContext;->a(Lcom/twitter/library/card/CardContext;)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/twitter/model/core/Tweet;

    .line 121
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->k:Lcom/twitter/android/av/video/j;

    iget-object v2, p0, Lcom/twitter/android/av/card/g;->b:Lcom/twitter/media/ui/image/AspectRatioFrameLayout;

    iget-object v3, p0, Lcom/twitter/android/av/card/g;->n:Lcom/twitter/android/av/bj;

    iget-object v4, p0, Lcom/twitter/android/av/card/g;->l:Lcom/twitter/android/av/bq;

    iget-object v5, p0, Lcom/twitter/android/av/card/g;->m:Lcom/twitter/library/av/playback/ao;

    new-instance v6, Lcom/twitter/android/av/af;

    invoke-direct {v6}, Lcom/twitter/android/av/af;-><init>()V

    .line 123
    invoke-direct {p0}, Lcom/twitter/android/av/card/g;->p()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v7

    new-instance v8, Lcom/twitter/library/av/playback/TweetAVDataSource;

    invoke-direct {v8, v9}, Lcom/twitter/library/av/playback/TweetAVDataSource;-><init>(Lcom/twitter/model/core/Tweet;)V

    const/4 v9, 0x0

    .line 121
    invoke-virtual/range {v0 .. v9}, Lcom/twitter/android/av/video/j;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/twitter/android/av/bj;Lcom/twitter/android/av/bq;Lcom/twitter/library/av/playback/ao;Lcom/twitter/android/av/af;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/av/playback/AVDataSource;Landroid/view/View$OnClickListener;)Lcom/twitter/android/av/video/h;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/card/g;->i:Lcom/twitter/android/av/video/h;

    .line 124
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->i:Lcom/twitter/android/av/video/h;

    sget-object v1, Lbxa;->c:Lbxa;

    sget-object v2, Lcom/twitter/library/av/VideoPlayerView$Mode;->a:Lcom/twitter/library/av/VideoPlayerView$Mode;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/av/video/h;->a(Lbxa;Lcom/twitter/library/av/VideoPlayerView$Mode;)V

    .line 126
    :cond_1
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 47
    check-cast p1, Lcom/twitter/library/card/av;

    invoke-virtual {p0, p1}, Lcom/twitter/android/av/card/g;->a(Lcom/twitter/library/card/av;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 184
    invoke-super {p0, p1}, Lcom/twitter/android/card/ab;->a(Z)V

    .line 185
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->i:Lcom/twitter/android/av/video/h;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->i:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0, p1}, Lcom/twitter/android/av/video/h;->a(Z)V

    .line 188
    :cond_0
    return-void
.end method

.method public ao_()V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0}, Lcom/twitter/android/card/ab;->ao_()V

    .line 171
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->i:Lcom/twitter/android/av/video/h;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->i:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/h;->e()V

    .line 174
    :cond_0
    return-void
.end method

.method public at_()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->i:Lcom/twitter/android/av/video/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/av/card/g;->i:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/h;->at_()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/twitter/library/av/playback/ba;->a:Lcom/twitter/library/av/playback/ba;

    goto :goto_0
.end method

.method public ay_()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->i:Lcom/twitter/android/av/video/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/av/card/g;->i:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/h;->ay_()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/twitter/library/av/playback/ba;->a:Lcom/twitter/library/av/playback/ba;

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->o:Lcom/twitter/android/av/video/f;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/f;->a()V

    .line 152
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->i:Lcom/twitter/android/av/video/h;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->i:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/h;->b()V

    .line 155
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->i:Lcom/twitter/android/av/video/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/av/card/g;->i:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Landroid/view/View;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->a:Landroid/view/View;

    return-object v0
.end method

.method public h()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->i:Lcom/twitter/android/av/video/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/av/card/g;->i:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/h;->h()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/twitter/library/av/playback/ba;->a:Lcom/twitter/library/av/playback/ba;

    goto :goto_0
.end method

.method public i()Landroid/view/View;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->i:Lcom/twitter/android/av/video/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/av/card/g;->i:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/h;->i()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected j()Lcom/twitter/library/card/ae;
    .locals 1

    .prologue
    .line 274
    invoke-static {}, Lcom/twitter/library/card/ae;->a()Lcom/twitter/library/card/ae;

    move-result-object v0

    return-object v0
.end method

.method protected k()Lcom/twitter/library/card/bn;
    .locals 1

    .prologue
    .line 278
    invoke-static {}, Lcom/twitter/library/card/bn;->a()Lcom/twitter/library/card/bn;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 256
    :sswitch_0
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->i:Lcom/twitter/android/av/video/h;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->i:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0, p1}, Lcom/twitter/android/av/video/h;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 262
    :sswitch_1
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->d:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/twitter/android/av/card/g;->d:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/av/card/g;->a(J)V

    goto :goto_0

    .line 254
    :sswitch_data_0
    .sparse-switch
        0x7f130380 -> :sswitch_1
        0x7f130384 -> :sswitch_0
    .end sparse-switch
.end method
