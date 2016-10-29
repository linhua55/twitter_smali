.class public Lcom/twitter/android/av/card/a;
.super Lcom/twitter/android/card/ab;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/twitter/library/card/af;
.implements Lcom/twitter/library/card/bo;


# instance fields
.field private final A:Lcom/twitter/library/av/playback/bb;

.field private C:Lcom/twitter/library/av/playback/ba;

.field final a:Landroid/view/View;

.field final b:Lcom/twitter/media/ui/image/MediaImageView;

.field final c:Lcom/twitter/ui/widget/TypefacesTextView;

.field final d:Lcom/twitter/ui/widget/TypefacesTextView;

.field final e:Lcom/twitter/ui/widget/TypefacesTextView;

.field final f:Lcom/twitter/ui/widget/TypefacesTextView;

.field g:Ljava/lang/Long;

.field h:Lcom/twitter/model/core/TwitterUser;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Lcln;

.field m:Lcom/twitter/model/av/Partner;

.field n:J

.field o:Ljava/lang/String;

.field private final p:Lcom/twitter/library/av/playback/ao;

.field private final z:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V
    .locals 6

    .prologue
    .line 81
    new-instance v3, Lcom/twitter/android/card/k;

    invoke-direct {v3, p1}, Lcom/twitter/android/card/k;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/twitter/android/card/e;

    invoke-direct {v4, p1}, Lcom/twitter/android/card/e;-><init>(Landroid/app/Activity;)V

    .line 82
    invoke-static {}, Lcom/twitter/library/av/playback/ao;->a()Lcom/twitter/library/av/playback/ao;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 81
    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/av/card/a;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;Lcom/twitter/library/av/playback/ao;)V

    .line 83
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;Lcom/twitter/library/av/playback/ao;)V
    .locals 8

    .prologue
    .line 88
    .line 89
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04020b

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/twitter/library/av/playback/bb;

    invoke-direct {v7}, Lcom/twitter/library/av/playback/bb;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 88
    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/av/card/a;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;Lcom/twitter/library/av/playback/ao;Landroid/view/View;Lcom/twitter/library/av/playback/bb;)V

    .line 92
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;Lcom/twitter/library/av/playback/ao;Landroid/view/View;Lcom/twitter/library/av/playback/bb;)V
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/android/card/ab;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;)V

    .line 71
    sget-object v0, Lcom/twitter/model/av/Partner;->a:Lcom/twitter/model/av/Partner;

    iput-object v0, p0, Lcom/twitter/android/av/card/a;->m:Lcom/twitter/model/av/Partner;

    .line 100
    iput-object p6, p0, Lcom/twitter/android/av/card/a;->a:Landroid/view/View;

    .line 101
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/card/a;->z:Landroid/content/res/Resources;

    .line 102
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->a:Landroid/view/View;

    const v1, 0x7f1303a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    iput-object v0, p0, Lcom/twitter/android/av/card/a;->b:Lcom/twitter/media/ui/image/MediaImageView;

    .line 103
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->b:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0, p0}, Lcom/twitter/media/ui/image/MediaImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->a:Landroid/view/View;

    const v1, 0x7f13010c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TypefacesTextView;

    iput-object v0, p0, Lcom/twitter/android/av/card/a;->c:Lcom/twitter/ui/widget/TypefacesTextView;

    .line 106
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->a:Landroid/view/View;

    const v1, 0x7f130509

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TypefacesTextView;

    iput-object v0, p0, Lcom/twitter/android/av/card/a;->d:Lcom/twitter/ui/widget/TypefacesTextView;

    .line 107
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->a:Landroid/view/View;

    const v1, 0x7f13050a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TypefacesTextView;

    iput-object v0, p0, Lcom/twitter/android/av/card/a;->e:Lcom/twitter/ui/widget/TypefacesTextView;

    .line 108
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->a:Landroid/view/View;

    const v1, 0x7f13050b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TypefacesTextView;

    iput-object v0, p0, Lcom/twitter/android/av/card/a;->f:Lcom/twitter/ui/widget/TypefacesTextView;

    .line 109
    iput-object p5, p0, Lcom/twitter/android/av/card/a;->p:Lcom/twitter/library/av/playback/ao;

    .line 110
    iput-object p7, p0, Lcom/twitter/android/av/card/a;->A:Lcom/twitter/library/av/playback/bb;

    .line 111
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 129
    invoke-super {p0}, Lcom/twitter/android/card/ab;->a()V

    .line 130
    invoke-virtual {p0}, Lcom/twitter/android/av/card/a;->g()Lcom/twitter/library/card/ae;

    move-result-object v0

    .line 131
    iget-wide v2, p0, Lcom/twitter/android/av/card/a;->n:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/ae;->b(JLjava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->g:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/twitter/android/av/card/a;->f()Lcom/twitter/library/card/bn;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/twitter/android/av/card/a;->g:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/bn;->b(JLjava/lang/Object;)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->b:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->b:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/MediaImageView;->j()Z

    .line 141
    :cond_1
    return-void
.end method

.method public a(JLclm;)V
    .locals 2

    .prologue
    .line 152
    const-string/jumbo v0, "player_image"

    invoke-static {v0, p3}, Lcln;->a(Ljava/lang/String;Lclm;)Lcln;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/card/a;->l:Lcln;

    .line 153
    new-instance v0, Lcom/twitter/model/av/Partner;

    const-string/jumbo v1, "partner"

    invoke-static {v1, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/model/av/Partner;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/twitter/android/av/card/a;->m:Lcom/twitter/model/av/Partner;

    .line 154
    const-string/jumbo v0, "artist_name"

    invoke-static {v0, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/card/a;->k:Ljava/lang/String;

    .line 155
    const-string/jumbo v0, "title"

    invoke-static {v0, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/card/a;->i:Ljava/lang/String;

    .line 156
    const-string/jumbo v0, "card_url"

    invoke-static {v0, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/card/a;->o:Ljava/lang/String;

    .line 157
    const-string/jumbo v0, "source"

    invoke-static {v0, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/card/a;->j:Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->b:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/av/card/a;->l:Lcln;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->b:Lcom/twitter/media/ui/image/MediaImageView;

    iget-object v1, p0, Lcom/twitter/android/av/card/a;->l:Lcln;

    iget-object v1, v1, Lcln;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 162
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->b:Lcom/twitter/media/ui/image/MediaImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/av/card/a;->an_()V

    .line 166
    return-void
.end method

.method public a(JLcom/twitter/model/core/TwitterUser;)V
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->g:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/av/card/a;->g:Ljava/lang/Long;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iput-object p3, p0, Lcom/twitter/android/av/card/a;->h:Lcom/twitter/model/core/TwitterUser;

    .line 230
    invoke-virtual {p0}, Lcom/twitter/android/av/card/a;->d()V

    .line 232
    :cond_0
    return-void
.end method

.method a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 255
    const-string/jumbo v0, "audio_configurations_audio_player_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->v:Lcom/twitter/android/card/CardActionHelper;

    iget-object v1, p0, Lcom/twitter/android/av/card/a;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/android/card/CardActionHelper;->b(Ljava/lang/String;)V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    instance-of v0, p1, Lcom/twitter/app/common/base/TwitterFragmentActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 261
    check-cast v0, Lcom/twitter/app/common/base/TwitterFragmentActivity;

    .line 262
    invoke-virtual {v0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->Q()Lcom/twitter/android/av/audio/g;

    move-result-object v3

    .line 263
    if-eqz v3, :cond_0

    .line 266
    invoke-static {p1, p2}, Lcom/twitter/util/ui/r;->a(Landroid/app/Activity;Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v4

    .line 267
    if-eqz v4, :cond_2

    new-instance v0, Landroid/graphics/PointF;

    iget v2, v4, Landroid/graphics/RectF;->left:F

    iget v5, v4, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v2, v5}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v2, v0

    .line 268
    :goto_1
    if-eqz v4, :cond_3

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-direct {v0, v1, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 271
    :goto_2
    invoke-virtual {p0}, Lcom/twitter/android/av/card/a;->h()Lcom/twitter/library/av/playback/ba;

    move-result-object v1

    iget-object v4, p0, Lcom/twitter/android/av/card/a;->t:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 270
    invoke-virtual {v3, v1, v2, v0, v4}, Lcom/twitter/android/av/audio/g;->a(Lcom/twitter/library/av/playback/ba;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 267
    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 268
    goto :goto_2
.end method

.method public a(Lcom/twitter/library/card/av;)V
    .locals 4

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/twitter/android/card/ab;->a(Lcom/twitter/library/card/av;)V

    .line 116
    iget-wide v0, p1, Lcom/twitter/library/card/av;->b:J

    iput-wide v0, p0, Lcom/twitter/android/av/card/a;->n:J

    .line 117
    invoke-virtual {p0}, Lcom/twitter/android/av/card/a;->g()Lcom/twitter/library/card/ae;

    move-result-object v0

    .line 118
    iget-wide v2, p0, Lcom/twitter/android/av/card/a;->n:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/ae;->a(JLjava/lang/Object;)V

    .line 119
    const-string/jumbo v0, "artist_user"

    iget-object v1, p1, Lcom/twitter/library/card/av;->c:Lclm;

    invoke-static {v0, v1}, Lcom/twitter/library/card/at;->a(Ljava/lang/String;Lclm;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/card/a;->g:Ljava/lang/Long;

    .line 121
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->g:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/twitter/android/av/card/a;->f()Lcom/twitter/library/card/bn;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/twitter/android/av/card/a;->g:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/bn;->a(JLjava/lang/Object;)V

    .line 125
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    check-cast p1, Lcom/twitter/library/card/av;

    invoke-virtual {p0, p1}, Lcom/twitter/android/av/card/a;->a(Lcom/twitter/library/card/av;)V

    return-void
.end method

.method an_()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 172
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->c:Lcom/twitter/ui/widget/TypefacesTextView;

    sget v1, Lcom/twitter/library/util/al;->a:F

    invoke-virtual {v0, v2, v1}, Lcom/twitter/ui/widget/TypefacesTextView;->setTextSize(IF)V

    .line 174
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->c:Lcom/twitter/ui/widget/TypefacesTextView;

    iget-object v1, p0, Lcom/twitter/android/av/card/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TypefacesTextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->c:Lcom/twitter/ui/widget/TypefacesTextView;

    invoke-virtual {v0, v2}, Lcom/twitter/ui/widget/TypefacesTextView;->setVisibility(I)V

    .line 180
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->k:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->d:Lcom/twitter/ui/widget/TypefacesTextView;

    sget v1, Lcom/twitter/library/util/al;->a:F

    invoke-virtual {v0, v2, v1}, Lcom/twitter/ui/widget/TypefacesTextView;->setTextSize(IF)V

    .line 182
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->d:Lcom/twitter/ui/widget/TypefacesTextView;

    iget-object v1, p0, Lcom/twitter/android/av/card/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TypefacesTextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->d:Lcom/twitter/ui/widget/TypefacesTextView;

    invoke-virtual {v0, v2}, Lcom/twitter/ui/widget/TypefacesTextView;->setVisibility(I)V

    .line 188
    :goto_1
    invoke-virtual {p0}, Lcom/twitter/android/av/card/a;->d()V

    .line 190
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->m:Lcom/twitter/model/av/Partner;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/twitter/model/av/Partner;->a:Lcom/twitter/model/av/Partner;

    iget-object v1, p0, Lcom/twitter/android/av/card/a;->m:Lcom/twitter/model/av/Partner;

    invoke-virtual {v0, v1}, Lcom/twitter/model/av/Partner;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->f:Lcom/twitter/ui/widget/TypefacesTextView;

    sget v1, Lcom/twitter/library/util/al;->a:F

    invoke-virtual {v0, v2, v1}, Lcom/twitter/ui/widget/TypefacesTextView;->setTextSize(IF)V

    .line 192
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->f:Lcom/twitter/ui/widget/TypefacesTextView;

    iget-object v1, p0, Lcom/twitter/android/av/card/a;->m:Lcom/twitter/model/av/Partner;

    invoke-virtual {v1}, Lcom/twitter/model/av/Partner;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TypefacesTextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->f:Lcom/twitter/ui/widget/TypefacesTextView;

    invoke-virtual {v0, v2}, Lcom/twitter/ui/widget/TypefacesTextView;->setVisibility(I)V

    .line 197
    :goto_2
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->c:Lcom/twitter/ui/widget/TypefacesTextView;

    invoke-virtual {v0, v3}, Lcom/twitter/ui/widget/TypefacesTextView;->setVisibility(I)V

    goto :goto_0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->d:Lcom/twitter/ui/widget/TypefacesTextView;

    invoke-virtual {v0, v3}, Lcom/twitter/ui/widget/TypefacesTextView;->setVisibility(I)V

    goto :goto_1

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->f:Lcom/twitter/ui/widget/TypefacesTextView;

    invoke-virtual {v0, v3}, Lcom/twitter/ui/widget/TypefacesTextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public b()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->b:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->b:Lcom/twitter/media/ui/image/MediaImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 148
    :cond_0
    return-void
.end method

.method d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 203
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->h:Lcom/twitter/model/core/TwitterUser;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->e:Lcom/twitter/ui/widget/TypefacesTextView;

    sget v1, Lcom/twitter/library/util/al;->a:F

    invoke-virtual {v0, v3, v1}, Lcom/twitter/ui/widget/TypefacesTextView;->setTextSize(IF)V

    .line 205
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->e:Lcom/twitter/ui/widget/TypefacesTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/av/card/a;->h:Lcom/twitter/model/core/TwitterUser;

    iget-object v2, v2, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TypefacesTextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->e:Lcom/twitter/ui/widget/TypefacesTextView;

    invoke-virtual {v0, v3}, Lcom/twitter/ui/widget/TypefacesTextView;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->x:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v1, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-ne v0, v1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->e:Lcom/twitter/ui/widget/TypefacesTextView;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TypefacesTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->z:Landroid/content/res/Resources;

    const v1, 0x7f020091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/twitter/android/av/card/a;->e:Lcom/twitter/ui/widget/TypefacesTextView;

    invoke-virtual {v1, v0}, Lcom/twitter/ui/widget/TypefacesTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->e:Lcom/twitter/ui/widget/TypefacesTextView;

    iget-object v1, p0, Lcom/twitter/android/av/card/a;->z:Landroid/content/res/Resources;

    const v2, 0x7f120167

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TypefacesTextView;->setTextColor(I)V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->e:Lcom/twitter/ui/widget/TypefacesTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TypefacesTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public e()Landroid/view/View;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->a:Landroid/view/View;

    return-object v0
.end method

.method f()Lcom/twitter/library/card/bn;
    .locals 1

    .prologue
    .line 282
    invoke-static {}, Lcom/twitter/library/card/bn;->a()Lcom/twitter/library/card/bn;

    move-result-object v0

    return-object v0
.end method

.method g()Lcom/twitter/library/card/ae;
    .locals 1

    .prologue
    .line 287
    invoke-static {}, Lcom/twitter/library/card/ae;->a()Lcom/twitter/library/card/ae;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/twitter/library/av/playback/ba;
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->C:Lcom/twitter/library/av/playback/ba;

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->w:Lcom/twitter/library/card/CardContext;

    invoke-static {v0}, Lcom/twitter/library/card/CardContext;->a(Lcom/twitter/library/card/CardContext;)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    .line 295
    iget-object v1, p0, Lcom/twitter/android/av/card/a;->A:Lcom/twitter/library/av/playback/bb;

    invoke-virtual {v1, v0}, Lcom/twitter/library/av/playback/bb;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/card/a;->C:Lcom/twitter/library/av/playback/ba;

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->C:Lcom/twitter/library/av/playback/ba;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 247
    invoke-virtual {p0}, Lcom/twitter/android/av/card/a;->l()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/av/card/a;->b:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/av/card/a;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 238
    :sswitch_0
    invoke-virtual {p0}, Lcom/twitter/android/av/card/a;->l()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/av/card/a;->b:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/av/card/a;->a(Landroid/app/Activity;Landroid/view/View;)V

    goto :goto_0

    .line 241
    :sswitch_1
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->g:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/twitter/android/av/card/a;->g:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/av/card/a;->a(J)V

    goto :goto_0

    .line 236
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1303a9 -> :sswitch_0
        0x7f13050a -> :sswitch_1
    .end sparse-switch
.end method
