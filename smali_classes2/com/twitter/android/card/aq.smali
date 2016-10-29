.class Lcom/twitter/android/card/aq;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/twitter/android/card/au;

.field private final c:Lcom/twitter/library/api/periscope/PeriscopeCapiModel;

.field private final d:Lcom/twitter/android/av/video/j;

.field private e:Landroid/view/ViewGroup;

.field private f:Landroid/view/ViewGroup;

.field private g:Landroid/view/View;

.field private h:Lcom/twitter/android/av/video/h;

.field private i:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private j:Lcom/twitter/android/av/PeriscopeBadge;

.field private k:Landroid/widget/ImageView;

.field private l:Lcom/twitter/library/av/playback/PeriscopeDataSource;

.field private m:Ljava/lang/String;

.field private n:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/twitter/android/card/au;Lcom/twitter/library/api/periscope/PeriscopeCapiModel;Lcom/twitter/android/av/video/j;)V
    .locals 1

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/twitter/android/card/aq;->m:Ljava/lang/String;

    .line 254
    iput-object p1, p0, Lcom/twitter/android/card/aq;->a:Landroid/app/Activity;

    .line 255
    iput-object p2, p0, Lcom/twitter/android/card/aq;->b:Lcom/twitter/android/card/au;

    .line 256
    iput-object p3, p0, Lcom/twitter/android/card/aq;->c:Lcom/twitter/library/api/periscope/PeriscopeCapiModel;

    .line 257
    iput-object p4, p0, Lcom/twitter/android/card/aq;->d:Lcom/twitter/android/av/video/j;

    .line 258
    return-void
.end method

.method private l()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/twitter/android/card/aq;->h:Lcom/twitter/android/av/video/h;

    if-nez v0, :cond_0

    .line 345
    invoke-direct {p0}, Lcom/twitter/android/card/aq;->m()V

    .line 350
    :goto_0
    return-void

    .line 348
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/card/aq;->n()V

    goto :goto_0
.end method

.method private m()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 353
    iget-object v0, p0, Lcom/twitter/android/card/aq;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/card/aq;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/card/aq;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/twitter/android/card/aq;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/twitter/android/card/aq;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcom/twitter/android/card/aq;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 358
    :cond_0
    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 361
    iget-object v0, p0, Lcom/twitter/android/card/aq;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/card/aq;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/card/aq;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/twitter/android/card/aq;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcom/twitter/android/card/aq;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 364
    iget-object v0, p0, Lcom/twitter/android/card/aq;->f:Landroid/view/ViewGroup;

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Lcom/twitter/util/d;->b(Landroid/view/View;I)Landroid/view/ViewPropertyAnimator;

    .line 366
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/twitter/android/card/aq;->l()V

    .line 262
    const-string/jumbo v0, "PeriscopeCard"

    const-string/jumbo v1, "onCardData error"

    invoke-static {v0, v1}, Lcjw;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 7

    .prologue
    .line 271
    const v0, 0x7f130384

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/twitter/android/card/aq;->e:Landroid/view/ViewGroup;

    .line 272
    const v0, 0x7f130547

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/twitter/android/card/aq;->f:Landroid/view/ViewGroup;

    .line 273
    const v0, 0x7f13053b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/aq;->g:Landroid/view/View;

    .line 274
    const v0, 0x7f130548

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    const v1, 0x7f130549

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 278
    iget-object v1, p0, Lcom/twitter/android/card/aq;->a:Landroid/app/Activity;

    const v2, 0x7f0a072d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/twitter/android/card/aq;->a:Landroid/app/Activity;

    const v6, 0x7f0a0acd

    .line 279
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 278
    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/library/av/playback/PeriscopeDataSource;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/twitter/android/card/aq;->l:Lcom/twitter/library/av/playback/PeriscopeDataSource;

    .line 285
    return-void
.end method

.method public a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/twitter/android/card/aq;->i:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 289
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/twitter/android/card/aq;->h:Lcom/twitter/android/av/video/h;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/twitter/android/card/aq;->h:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0, p1}, Lcom/twitter/android/av/video/h;->a(Z)V

    .line 392
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/twitter/android/card/aq;->l()V

    .line 267
    const-string/jumbo v0, "PeriscopeCard"

    const-string/jumbo v1, "onAttach error"

    invoke-static {v0, v1}, Lcjw;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public c()V
    .locals 10

    .prologue
    .line 292
    iget-object v0, p0, Lcom/twitter/android/card/aq;->l:Lcom/twitter/library/av/playback/PeriscopeDataSource;

    if-eqz v0, :cond_3

    .line 300
    iget-object v0, p0, Lcom/twitter/android/card/aq;->m:Ljava/lang/String;

    const-string/jumbo v1, "RUNNING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/twitter/android/card/aq;->c:Lcom/twitter/library/api/periscope/PeriscopeCapiModel;

    .line 301
    invoke-virtual {v0}, Lcom/twitter/library/api/periscope/PeriscopeCapiModel;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 303
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/card/aq;->h:Lcom/twitter/android/av/video/h;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/card/aq;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/card/aq;->i:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/card/aq;->l:Lcom/twitter/library/av/playback/PeriscopeDataSource;

    .line 304
    invoke-virtual {v0}, Lcom/twitter/library/av/playback/PeriscopeDataSource;->b()Lcom/twitter/model/card/property/ImageSpec;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/model/card/property/ImageSpec;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/twitter/android/card/aq;->h:Lcom/twitter/android/av/video/h;

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/twitter/android/card/aq;->h:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/h;->a()V

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/card/aq;->d:Lcom/twitter/android/av/video/j;

    iget-object v1, p0, Lcom/twitter/android/card/aq;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/twitter/android/card/aq;->e:Landroid/view/ViewGroup;

    new-instance v3, Lcom/twitter/android/av/bd;

    iget-object v4, p0, Lcom/twitter/android/card/aq;->b:Lcom/twitter/android/card/au;

    .line 311
    invoke-virtual {v4}, Lcom/twitter/android/card/au;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/twitter/android/card/aq;->b:Lcom/twitter/android/card/au;

    .line 312
    invoke-virtual {v5}, Lcom/twitter/android/card/au;->e()J

    move-result-wide v6

    iget-object v5, p0, Lcom/twitter/android/card/aq;->c:Lcom/twitter/library/api/periscope/PeriscopeCapiModel;

    invoke-direct {v3, v4, v6, v7, v5}, Lcom/twitter/android/av/bd;-><init>(Ljava/lang/String;JLcom/twitter/library/api/periscope/PeriscopeCapiModel;)V

    new-instance v4, Lcom/twitter/android/av/bq;

    invoke-direct {v4}, Lcom/twitter/android/av/bq;-><init>()V

    .line 313
    invoke-static {}, Lcom/twitter/library/av/playback/ao;->a()Lcom/twitter/library/av/playback/ao;

    move-result-object v5

    new-instance v6, Lcom/twitter/android/av/af;

    invoke-direct {v6}, Lcom/twitter/android/av/af;-><init>()V

    iget-object v7, p0, Lcom/twitter/android/card/aq;->i:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v8, p0, Lcom/twitter/android/card/aq;->l:Lcom/twitter/library/av/playback/PeriscopeDataSource;

    const/4 v9, 0x0

    .line 309
    invoke-virtual/range {v0 .. v9}, Lcom/twitter/android/av/video/j;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/twitter/android/av/bj;Lcom/twitter/android/av/bq;Lcom/twitter/library/av/playback/ao;Lcom/twitter/android/av/af;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/av/playback/AVDataSource;Landroid/view/View$OnClickListener;)Lcom/twitter/android/av/video/h;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/aq;->h:Lcom/twitter/android/av/video/h;

    .line 315
    iget-object v0, p0, Lcom/twitter/android/card/aq;->h:Lcom/twitter/android/av/video/h;

    sget-object v1, Lbxa;->c:Lbxa;

    sget-object v2, Lcom/twitter/library/av/VideoPlayerView$Mode;->j:Lcom/twitter/library/av/VideoPlayerView$Mode;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/av/video/h;->a(Lbxa;Lcom/twitter/library/av/VideoPlayerView$Mode;)V

    .line 316
    iget-object v0, p0, Lcom/twitter/android/card/aq;->e:Landroid/view/ViewGroup;

    const v1, 0x7f1305cc

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/av/PeriscopeBadge;

    iput-object v0, p0, Lcom/twitter/android/card/aq;->j:Lcom/twitter/android/av/PeriscopeBadge;

    .line 317
    iget-object v0, p0, Lcom/twitter/android/card/aq;->e:Landroid/view/ViewGroup;

    const v1, 0x7f1305d3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/card/aq;->k:Landroid/widget/ImageView;

    .line 321
    iget-boolean v0, p0, Lcom/twitter/android/card/aq;->n:Z

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/twitter/android/card/aq;->h:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/h;->b()V

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/card/aq;->c:Lcom/twitter/library/api/periscope/PeriscopeCapiModel;

    invoke-virtual {v0}, Lcom/twitter/library/api/periscope/PeriscopeCapiModel;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/aq;->m:Ljava/lang/String;

    .line 328
    :cond_3
    return-void

    .line 301
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/twitter/android/card/aq;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/card/aq;->j:Lcom/twitter/android/av/PeriscopeBadge;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/twitter/android/card/aq;->c:Lcom/twitter/library/api/periscope/PeriscopeCapiModel;

    invoke-virtual {v0}, Lcom/twitter/library/api/periscope/PeriscopeCapiModel;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/twitter/android/card/aq;->k:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/twitter/android/card/aq;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02071c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 334
    iget-object v0, p0, Lcom/twitter/android/card/aq;->j:Lcom/twitter/android/av/PeriscopeBadge;

    iget-object v1, p0, Lcom/twitter/android/card/aq;->c:Lcom/twitter/library/api/periscope/PeriscopeCapiModel;

    invoke-virtual {v1}, Lcom/twitter/library/api/periscope/PeriscopeCapiModel;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/PeriscopeBadge;->a(I)V

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/card/aq;->c:Lcom/twitter/library/api/periscope/PeriscopeCapiModel;

    invoke-virtual {v0}, Lcom/twitter/library/api/periscope/PeriscopeCapiModel;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/twitter/android/card/aq;->k:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/twitter/android/card/aq;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02071b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 337
    iget-object v0, p0, Lcom/twitter/android/card/aq;->j:Lcom/twitter/android/av/PeriscopeBadge;

    iget-object v1, p0, Lcom/twitter/android/card/aq;->c:Lcom/twitter/library/api/periscope/PeriscopeCapiModel;

    invoke-virtual {v1}, Lcom/twitter/library/api/periscope/PeriscopeCapiModel;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/PeriscopeBadge;->b(I)V

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/twitter/android/card/aq;->h:Lcom/twitter/android/av/video/h;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/twitter/android/card/aq;->h:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/h;->a()V

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/card/aq;->h:Lcom/twitter/android/av/video/h;

    .line 373
    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/card/aq;->n:Z

    .line 377
    iget-object v0, p0, Lcom/twitter/android/card/aq;->h:Lcom/twitter/android/av/video/h;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/twitter/android/card/aq;->h:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/h;->b()V

    .line 380
    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/twitter/android/card/aq;->h:Lcom/twitter/android/av/video/h;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/twitter/android/card/aq;->h:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/h;->e()V

    .line 386
    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/twitter/android/card/aq;->h:Lcom/twitter/android/av/video/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/card/aq;->h:Lcom/twitter/android/av/video/h;

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

.method public i()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/twitter/android/card/aq;->h:Lcom/twitter/android/av/video/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/card/aq;->h:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/h;->ay_()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/twitter/library/av/playback/ba;->a:Lcom/twitter/library/av/playback/ba;

    goto :goto_0
.end method

.method public j()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/twitter/android/card/aq;->h:Lcom/twitter/android/av/video/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/card/aq;->h:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/h;->at_()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/twitter/library/av/playback/ba;->a:Lcom/twitter/library/av/playback/ba;

    goto :goto_0
.end method

.method public k()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/twitter/android/card/aq;->h:Lcom/twitter/android/av/video/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/card/aq;->h:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/h;->h()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/twitter/library/av/playback/ba;->a:Lcom/twitter/library/av/playback/ba;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 396
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 408
    :goto_0
    return-void

    .line 398
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/card/aq;->a:Landroid/app/Activity;

    const-class v2, Lcom/twitter/android/SearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "query"

    iget-object v2, p0, Lcom/twitter/android/card/aq;->a:Landroid/app/Activity;

    const v3, 0x7f0a0acd

    .line 399
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "search_type"

    const/16 v2, 0xd

    .line 400
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 401
    iget-object v1, p0, Lcom/twitter/android/card/aq;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 396
    :pswitch_data_0
    .packed-switch 0x7f130548
        :pswitch_0
    .end packed-switch
.end method
