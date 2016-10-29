.class public abstract Lxz;
.super Lwy;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<H:",
        "Lym;",
        ">",
        "Lwy",
        "<",
        "Lcom/twitter/model/dms/l;",
        ">;"
    }
.end annotation


# instance fields
.field private final A:Lcom/twitter/library/view/QuoteView;

.field private final B:Landroid/view/View;

.field private final C:Landroid/widget/Button;

.field private final D:Landroid/widget/Button;

.field private final E:Landroid/view/View;

.field private final F:Z

.field private final G:Z

.field private final H:Z

.field private final I:Lcom/twitter/library/network/aa;

.field private final J:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private final K:Ljava/text/SimpleDateFormat;

.field private final L:Ljava/text/SimpleDateFormat;

.field private final M:Ljava/text/SimpleDateFormat;

.field private final N:Ljava/lang/String;

.field private final O:Lcom/twitter/android/card/i;

.field final k:Landroid/widget/TextView;

.field final l:Landroid/view/View;

.field final m:Lcom/twitter/android/dm/aa;

.field final n:Lcom/twitter/library/view/m;

.field final o:Lcom/twitter/android/by;

.field final p:Lcom/twitter/android/nr;

.field final q:Z

.field final r:Landroid/view/View;

.field final s:Landroid/view/View;

.field final t:Landroid/view/ViewGroup;

.field private final u:Landroid/view/View;

.field private final v:Landroid/view/ViewGroup;

.field private final w:Landroid/view/ViewGroup;

.field private final x:Lcom/twitter/library/av/DMVideoThumbnailView;

.field private final y:Lcom/twitter/android/av/video/VideoContainerHost;

.field private final z:Lcom/twitter/media/ui/image/MediaImageView;


# direct methods
.method protected constructor <init>(Lyl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyl",
            "<TH;*>;)V"
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lwy;-><init>(Lwz;)V

    .line 133
    invoke-static {p1}, Lyl;->a(Lyl;)Z

    move-result v0

    iput-boolean v0, p0, Lxz;->q:Z

    .line 134
    invoke-static {p1}, Lyl;->b(Lyl;)Z

    move-result v0

    iput-boolean v0, p0, Lxz;->F:Z

    .line 135
    invoke-static {p1}, Lyl;->c(Lyl;)Lcom/twitter/android/dm/aa;

    move-result-object v0

    iput-object v0, p0, Lxz;->m:Lcom/twitter/android/dm/aa;

    .line 136
    invoke-static {p1}, Lyl;->d(Lyl;)Lcom/twitter/android/by;

    move-result-object v0

    iput-object v0, p0, Lxz;->o:Lcom/twitter/android/by;

    .line 137
    invoke-static {p1}, Lyl;->e(Lyl;)Lcom/twitter/library/view/m;

    move-result-object v0

    iput-object v0, p0, Lxz;->n:Lcom/twitter/library/view/m;

    .line 138
    invoke-static {p1}, Lyl;->f(Lyl;)Lcom/twitter/library/network/aa;

    move-result-object v0

    iput-object v0, p0, Lxz;->I:Lcom/twitter/library/network/aa;

    .line 139
    invoke-static {p1}, Lyl;->g(Lyl;)Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v0

    iput-object v0, p0, Lxz;->J:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 140
    invoke-static {p1}, Lyl;->h(Lyl;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    iput-object v0, p0, Lxz;->K:Ljava/text/SimpleDateFormat;

    .line 141
    invoke-static {p1}, Lyl;->i(Lyl;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    iput-object v0, p0, Lxz;->L:Ljava/text/SimpleDateFormat;

    .line 142
    invoke-static {p1}, Lyl;->j(Lyl;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    iput-object v0, p0, Lxz;->M:Ljava/text/SimpleDateFormat;

    .line 143
    invoke-static {p1}, Lyl;->k(Lyl;)Z

    move-result v0

    iput-boolean v0, p0, Lxz;->H:Z

    .line 144
    invoke-static {p1}, Lyl;->l(Lyl;)Z

    move-result v0

    iput-boolean v0, p0, Lxz;->G:Z

    .line 146
    iget-object v0, p1, Lyl;->a:Lxa;

    check-cast v0, Lym;

    .line 147
    invoke-static {v0}, Lym;->a(Lym;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lxz;->u:Landroid/view/View;

    .line 148
    iget-object v1, v0, Lym;->a:Landroid/view/ViewGroup;

    iput-object v1, p0, Lxz;->t:Landroid/view/ViewGroup;

    .line 149
    invoke-static {v0}, Lym;->b(Lym;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lxz;->v:Landroid/view/ViewGroup;

    .line 151
    invoke-static {v0}, Lym;->c(Lym;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lxz;->k:Landroid/widget/TextView;

    .line 152
    invoke-static {v0}, Lym;->d(Lym;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lxz;->l:Landroid/view/View;

    .line 153
    invoke-static {v0}, Lym;->e(Lym;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lxz;->s:Landroid/view/View;

    .line 155
    invoke-static {v0}, Lym;->f(Lym;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lxz;->B:Landroid/view/View;

    .line 156
    invoke-static {v0}, Lym;->g(Lym;)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lxz;->C:Landroid/widget/Button;

    .line 157
    invoke-static {v0}, Lym;->h(Lym;)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lxz;->D:Landroid/widget/Button;

    .line 160
    invoke-static {v0}, Lym;->i(Lym;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lxz;->r:Landroid/view/View;

    .line 161
    invoke-static {v0}, Lym;->j(Lym;)Lcom/twitter/media/ui/image/MediaImageView;

    move-result-object v1

    iput-object v1, p0, Lxz;->z:Lcom/twitter/media/ui/image/MediaImageView;

    .line 162
    invoke-static {v0}, Lym;->k(Lym;)Lcom/twitter/library/av/DMVideoThumbnailView;

    move-result-object v1

    iput-object v1, p0, Lxz;->x:Lcom/twitter/library/av/DMVideoThumbnailView;

    .line 163
    invoke-static {v0}, Lym;->l(Lym;)Lcom/twitter/android/av/video/VideoContainerHost;

    move-result-object v1

    iput-object v1, p0, Lxz;->y:Lcom/twitter/android/av/video/VideoContainerHost;

    .line 164
    invoke-static {v0}, Lym;->m(Lym;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lxz;->w:Landroid/view/ViewGroup;

    .line 166
    invoke-static {v0}, Lym;->n(Lym;)Lcom/twitter/library/view/QuoteView;

    move-result-object v1

    iput-object v1, p0, Lxz;->A:Lcom/twitter/library/view/QuoteView;

    .line 167
    invoke-static {v0}, Lym;->o(Lym;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lxz;->E:Landroid/view/View;

    .line 169
    invoke-virtual {p0}, Lxz;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxz;->N:Ljava/lang/String;

    .line 171
    invoke-static {p1}, Lyl;->m(Lyl;)Lcom/twitter/android/nr;

    move-result-object v0

    iput-object v0, p0, Lxz;->p:Lcom/twitter/android/nr;

    .line 173
    invoke-direct {p0}, Lxz;->u()Lcom/twitter/android/card/i;

    move-result-object v0

    iput-object v0, p0, Lxz;->O:Lcom/twitter/android/card/i;

    .line 174
    return-void
.end method

.method static synthetic a(Lxz;)Lcom/twitter/library/scribe/TwitterScribeAssociation;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lxz;->J:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    return-object v0
.end method

.method private a(Lcom/twitter/model/dms/b;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 689
    invoke-virtual {p1}, Lcom/twitter/model/dms/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lxz;->h:Landroid/content/res/Resources;

    const v1, 0x7f0f01de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v1, v0

    .line 697
    :goto_0
    iget-object v0, p0, Lxz;->B:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 698
    iget-object v2, p0, Lxz;->h:Landroid/content/res/Resources;

    const v3, 0x7f0f01dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 699
    invoke-virtual {v0, v4, v2, v4, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 700
    iget-object v1, p0, Lxz;->B:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 701
    return-void

    .line 691
    :cond_0
    iget-object v0, p0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0, p1}, Lcom/twitter/model/dms/l;->a(Lcom/twitter/model/dms/g;)J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 692
    iget-object v0, p0, Lxz;->h:Landroid/content/res/Resources;

    const v1, 0x7f0f01db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 694
    :cond_1
    iget-object v0, p0, Lxz;->h:Landroid/content/res/Resources;

    const v1, 0x7f0f01dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/twitter/model/dms/l;)V
    .locals 4

    .prologue
    const v3, 0x7f0f01d5

    .line 371
    iget-boolean v0, p0, Lxz;->H:Z

    if-eqz v0, :cond_0

    .line 372
    iget-wide v0, p0, Lxz;->i:J

    invoke-virtual {p2, v0, v1}, Lcom/twitter/model/dms/l;->b(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lxz;->E:Landroid/view/View;

    const v1, 0x7f020138

    const v2, 0x7f12008a

    .line 374
    invoke-direct {p0, v1, v2}, Lxz;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 373
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 379
    :goto_0
    iget-object v0, p0, Lxz;->h:Landroid/content/res/Resources;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 380
    iget-object v1, p0, Lxz;->h:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 381
    iget-object v2, p0, Lxz;->E:Landroid/view/View;

    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 383
    :cond_0
    iget-object v0, p0, Lxz;->E:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lxz;->E:Landroid/view/View;

    new-instance v1, Lye;

    invoke-direct {v1, p0, p1}, Lye;-><init>(Lxz;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    iget-object v0, p0, Lxz;->s:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 391
    return-void

    .line 376
    :cond_1
    iget-object v0, p0, Lxz;->E:Landroid/view/View;

    const v1, 0x7f020136

    const v2, 0x7f120088

    .line 377
    invoke-direct {p0, v1, v2}, Lxz;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 376
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private a(Lcom/twitter/model/dms/ap;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 458
    iget-object v2, p0, Lxz;->w:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 462
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/twitter/model/dms/ap;->l()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lxz;->w:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private a(Lcom/twitter/model/dms/bk;)Z
    .locals 2

    .prologue
    .line 629
    invoke-virtual {p1}, Lcom/twitter/model/dms/bk;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lxz;->F:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lxz;->m:Lcom/twitter/android/dm/aa;

    .line 630
    invoke-virtual {p1}, Lcom/twitter/model/dms/bk;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twitter/android/dm/aa;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 629
    :goto_0
    return v0

    .line 630
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(II)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 333
    iget-object v0, p0, Lxz;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 334
    iget-object v1, p0, Lxz;->g:Landroid/content/Context;

    invoke-static {v1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, v1}, Lbkd;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 335
    return-object v0
.end method

.method private k()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 403
    iget-object v0, p0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    .line 404
    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->p()Lcom/twitter/model/dms/i;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/bk;

    .line 406
    invoke-direct {p0, v0}, Lxz;->a(Lcom/twitter/model/dms/bk;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    invoke-virtual {v0}, Lcom/twitter/model/dms/bk;->j()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-direct {p0, v1, v0}, Lxz;->a(Ljava/lang/String;Lcom/twitter/model/dms/l;)V

    .line 422
    :goto_0
    iget-object v0, p0, Lxz;->r:Landroid/view/View;

    invoke-virtual {p0, v0}, Lxz;->a(Landroid/view/View;)V

    .line 423
    iget-object v0, p0, Lxz;->r:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 424
    return-void

    .line 409
    :cond_0
    new-instance v0, Lcom/twitter/android/av/video/k;

    new-instance v1, Lcom/twitter/library/av/playback/DMAVDataSource;

    new-instance v3, Lcom/twitter/library/av/playback/bv;

    invoke-direct {v3}, Lcom/twitter/library/av/playback/bv;-><init>()V

    iget-object v2, p0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v2, Lcom/twitter/model/dms/l;

    .line 410
    invoke-virtual {v3, v2}, Lcom/twitter/library/av/playback/bv;->a(Lcom/twitter/model/dms/l;)Lcom/twitter/library/av/playback/bv;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/twitter/library/av/playback/DMAVDataSource;-><init>(Lcom/twitter/library/av/playback/bv;)V

    iget-object v2, p0, Lxz;->J:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    sget-object v3, Lbxa;->f:Lbxa;

    sget-object v4, Lcom/twitter/library/av/VideoPlayerView$Mode;->a:Lcom/twitter/library/av/VideoPlayerView$Mode;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/av/video/k;-><init>(Lcom/twitter/library/av/playback/AVDataSource;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lbxa;Lcom/twitter/library/av/VideoPlayerView$Mode;Landroid/view/View$OnClickListener;)V

    .line 412
    iget-object v1, p0, Lxz;->y:Lcom/twitter/android/av/video/VideoContainerHost;

    invoke-virtual {v1, v0}, Lcom/twitter/android/av/video/VideoContainerHost;->setVideoContainerConfig(Lcom/twitter/android/av/video/k;)V

    .line 413
    iget-object v0, p0, Lxz;->y:Lcom/twitter/android/av/video/VideoContainerHost;

    new-instance v1, Lyf;

    invoke-direct {v1, p0}, Lyf;-><init>(Lxz;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/video/VideoContainerHost;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 419
    iget-object v0, p0, Lxz;->y:Lcom/twitter/android/av/video/VideoContainerHost;

    invoke-virtual {v0, v6}, Lcom/twitter/android/av/video/VideoContainerHost;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lxz;->s:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private l()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 427
    iget-object v0, p0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    .line 428
    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->p()Lcom/twitter/model/dms/i;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/bk;

    .line 430
    invoke-direct {p0, v0}, Lxz;->a(Lcom/twitter/model/dms/bk;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    invoke-virtual {v0}, Lcom/twitter/model/dms/bk;->j()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-direct {p0, v1, v0}, Lxz;->a(Ljava/lang/String;Lcom/twitter/model/dms/l;)V

    .line 453
    :goto_0
    iget-object v0, p0, Lxz;->r:Landroid/view/View;

    invoke-virtual {p0, v0}, Lxz;->a(Landroid/view/View;)V

    .line 454
    iget-object v0, p0, Lxz;->r:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 455
    return-void

    .line 433
    :cond_0
    iget-object v1, p0, Lxz;->x:Lcom/twitter/library/av/DMVideoThumbnailView;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/bk;

    invoke-virtual {v0}, Lcom/twitter/model/dms/bk;->j()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/av/DMVideoThumbnailView;->a(Ljava/lang/String;Z)V

    .line 434
    iget-object v0, p0, Lxz;->x:Lcom/twitter/library/av/DMVideoThumbnailView;

    invoke-virtual {v0}, Lcom/twitter/library/av/DMVideoThumbnailView;->a()V

    .line 435
    iget-object v0, p0, Lxz;->x:Lcom/twitter/library/av/DMVideoThumbnailView;

    new-instance v1, Lyg;

    invoke-direct {v1, p0}, Lyg;-><init>(Lxz;)V

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/DMVideoThumbnailView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    iget-object v0, p0, Lxz;->x:Lcom/twitter/library/av/DMVideoThumbnailView;

    new-instance v1, Lyh;

    invoke-direct {v1, p0}, Lyh;-><init>(Lxz;)V

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/DMVideoThumbnailView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 450
    iget-object v0, p0, Lxz;->x:Lcom/twitter/library/av/DMVideoThumbnailView;

    invoke-virtual {v0, v3}, Lcom/twitter/library/av/DMVideoThumbnailView;->setVisibility(I)V

    .line 451
    iget-object v0, p0, Lxz;->s:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private m()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 466
    iget-boolean v0, p0, Lxz;->G:Z

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->p()Lcom/twitter/model/dms/i;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/ap;

    .line 468
    invoke-direct {p0, v0}, Lxz;->a(Lcom/twitter/model/dms/ap;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 469
    iget-object v1, p0, Lxz;->m:Lcom/twitter/android/dm/aa;

    iget-object v2, p0, Lxz;->b:Lbnt;

    invoke-interface {v1, v2}, Lcom/twitter/android/dm/aa;->b(Lbnt;)Landroid/view/View;

    move-result-object v1

    .line 470
    if-eqz v1, :cond_0

    .line 471
    invoke-virtual {v0}, Lcom/twitter/model/dms/ap;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 472
    iget-object v2, p0, Lxz;->w:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 473
    iget-object v2, p0, Lxz;->w:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 474
    iget-object v1, p0, Lxz;->w:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 475
    iget-object v1, p0, Lxz;->r:Landroid/view/View;

    invoke-virtual {p0, v1}, Lxz;->a(Landroid/view/View;)V

    .line 476
    iget-object v1, p0, Lxz;->r:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 477
    iget-object v1, p0, Lxz;->s:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 478
    iget-object v1, p0, Lxz;->O:Lcom/twitter/android/card/i;

    if-eqz v1, :cond_0

    .line 479
    iget-object v1, p0, Lxz;->O:Lcom/twitter/android/card/i;

    const-string/jumbo v2, "show"

    const-string/jumbo v3, "platform_card"

    .line 480
    invoke-virtual {v0}, Lcom/twitter/model/dms/ap;->k()Ljava/lang/String;

    move-result-object v0

    .line 479
    invoke-interface {v1, v2, v3, v0}, Lcom/twitter/android/card/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    iget-object v0, p0, Lxz;->w:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 485
    iget-object v0, p0, Lxz;->r:Landroid/view/View;

    invoke-virtual {p0, v0}, Lxz;->a(Landroid/view/View;)V

    .line 486
    iget-object v0, p0, Lxz;->r:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 487
    iget-object v0, p0, Lxz;->s:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private n()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 493
    iget-object v0, p0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->p()Lcom/twitter/model/dms/i;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/bk;

    .line 495
    invoke-direct {p0, v0}, Lxz;->a(Lcom/twitter/model/dms/bk;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    invoke-virtual {v0}, Lcom/twitter/model/dms/bk;->j()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-direct {p0, v1, v0}, Lxz;->a(Ljava/lang/String;Lcom/twitter/model/dms/l;)V

    .line 529
    :goto_0
    iget-object v0, p0, Lxz;->r:Landroid/view/View;

    invoke-virtual {p0, v0}, Lxz;->a(Landroid/view/View;)V

    .line 530
    iget-object v0, p0, Lxz;->r:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 531
    return-void

    .line 498
    :cond_0
    invoke-virtual {v0}, Lcom/twitter/model/dms/bk;->k()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/twitter/model/dms/bk;->l()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f400000    # 0.75f

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v1, v2, v3}, Lcom/twitter/util/math/b;->a(FFF)F

    move-result v1

    .line 500
    iget-object v2, p0, Lxz;->z:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v2, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setAspectRatio(F)V

    .line 501
    iget-object v1, p0, Lxz;->z:Lcom/twitter/media/ui/image/MediaImageView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget-object v3, p0, Lxz;->g:Landroid/content/Context;

    const v4, 0x7f120004

    .line 502
    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 501
    invoke-virtual {v1, v2}, Lcom/twitter/media/ui/image/MediaImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 503
    iget-object v2, p0, Lxz;->z:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-static {v0}, Lcom/twitter/library/media/util/p;->a(Lcom/twitter/model/dms/bk;)Lcom/twitter/media/request/b;

    move-result-object v1

    iget-object v3, p0, Lxz;->I:Lcom/twitter/library/network/aa;

    invoke-virtual {v1, v3}, Lcom/twitter/media/request/b;->a(Ljava/lang/Object;)Lcom/twitter/media/request/h;

    move-result-object v1

    check-cast v1, Lcom/twitter/media/request/b;

    invoke-virtual {v2, v1, v5}, Lcom/twitter/media/ui/image/MediaImageView;->a(Lcom/twitter/media/request/b;Z)Z

    .line 504
    iget-object v1, p0, Lxz;->z:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v1, v5}, Lcom/twitter/media/ui/image/MediaImageView;->setVisibility(I)V

    .line 506
    iget-object v1, p0, Lxz;->z:Lcom/twitter/media/ui/image/MediaImageView;

    new-instance v2, Lyi;

    invoke-direct {v2, p0, v0}, Lyi;-><init>(Lxz;Lcom/twitter/model/dms/bk;)V

    invoke-virtual {v1, v2}, Lcom/twitter/media/ui/image/MediaImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    iget-object v0, p0, Lxz;->z:Lcom/twitter/media/ui/image/MediaImageView;

    new-instance v1, Lyj;

    invoke-direct {v1, p0}, Lyj;-><init>(Lxz;)V

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 526
    iget-object v0, p0, Lxz;->s:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private o()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 535
    iget-wide v2, p0, Lxz;->i:J

    .line 537
    iget-object v0, p0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->p()Lcom/twitter/model/dms/i;

    move-result-object v7

    check-cast v7, Lcom/twitter/model/dms/cf;

    .line 538
    invoke-static {v7}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/cf;

    iget-object v0, v0, Lcom/twitter/model/dms/cf;->e:Lcom/twitter/model/core/ay;

    iget-wide v4, v0, Lcom/twitter/model/core/ay;->e:J

    .line 539
    iget-object v0, v7, Lcom/twitter/model/dms/cf;->e:Lcom/twitter/model/core/ay;

    iget-object v0, v0, Lcom/twitter/model/core/ay;->m:Lcss;

    if-nez v0, :cond_1

    const/4 v6, 0x0

    .line 542
    :goto_0
    iget-object v1, p0, Lxz;->m:Lcom/twitter/android/dm/aa;

    iget-object v0, p0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-interface {v1, v0}, Lcom/twitter/android/dm/aa;->a(Lcom/twitter/model/dms/l;)V

    .line 544
    iget-object v0, p0, Lxz;->A:Lcom/twitter/library/view/QuoteView;

    iget-boolean v1, p0, Lxz;->F:Z

    invoke-virtual {v0, v1}, Lcom/twitter/library/view/QuoteView;->setDisplaySensitiveMedia(Z)V

    .line 545
    iget-object v0, p0, Lxz;->A:Lcom/twitter/library/view/QuoteView;

    iget-object v1, v7, Lcom/twitter/model/dms/cf;->e:Lcom/twitter/model/core/ay;

    invoke-virtual {v0, v1}, Lcom/twitter/library/view/QuoteView;->setQuoteData(Lcom/twitter/model/core/ay;)V

    .line 546
    iget-object v0, p0, Lxz;->A:Lcom/twitter/library/view/QuoteView;

    invoke-static {}, Lcom/twitter/util/ak;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/view/QuoteView;->setRenderRtl(Z)V

    .line 547
    iget-object v0, p0, Lxz;->A:Lcom/twitter/library/view/QuoteView;

    invoke-virtual {v0, v9}, Lcom/twitter/library/view/QuoteView;->setVisibility(I)V

    .line 549
    iget-boolean v0, p0, Lxz;->H:Z

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lxz;->A:Lcom/twitter/library/view/QuoteView;

    iget-object v1, p0, Lxz;->h:Landroid/content/res/Resources;

    const v8, 0x7f0f007c

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/view/QuoteView;->setBorderCornerRadius(I)V

    .line 553
    :cond_0
    iget-object v8, p0, Lxz;->A:Lcom/twitter/library/view/QuoteView;

    new-instance v0, Lyk;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lyk;-><init>(Lxz;JJLjava/lang/String;Lcom/twitter/model/dms/cf;)V

    invoke-virtual {v8, v0}, Lcom/twitter/library/view/QuoteView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    iget-object v0, p0, Lxz;->A:Lcom/twitter/library/view/QuoteView;

    new-instance v1, Lyb;

    invoke-direct {v1, p0}, Lyb;-><init>(Lxz;)V

    invoke-virtual {v0, v1}, Lcom/twitter/library/view/QuoteView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 579
    iget-object v0, p0, Lxz;->r:Landroid/view/View;

    invoke-virtual {p0, v0}, Lxz;->a(Landroid/view/View;)V

    .line 580
    iget-object v0, p0, Lxz;->r:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 581
    iget-object v0, p0, Lxz;->s:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 582
    return-void

    .line 539
    :cond_1
    iget-object v0, v7, Lcom/twitter/model/dms/cf;->e:Lcom/twitter/model/core/ay;

    iget-object v0, v0, Lcom/twitter/model/core/ay;->m:Lcss;

    iget-object v6, v0, Lcss;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method private p()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 586
    iget-object v1, p0, Lxz;->v:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 587
    iget-object v1, p0, Lxz;->m:Lcom/twitter/android/dm/aa;

    iget-object v3, p0, Lxz;->b:Lbnt;

    invoke-interface {v1, v3}, Lcom/twitter/android/dm/aa;->a(Lbnt;)Landroid/view/View;

    move-result-object v1

    .line 588
    if-eqz v1, :cond_0

    .line 589
    iget-object v3, p0, Lxz;->v:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 590
    iget-object v3, p0, Lxz;->v:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 594
    iget-object v1, p0, Lxz;->d:Lbnt;

    if-nez v1, :cond_1

    move v4, v2

    .line 595
    :goto_0
    if-eqz v4, :cond_2

    const v1, 0x7f0200ac

    move v3, v1

    .line 597
    :goto_1
    if-eqz v4, :cond_3

    move v1, v0

    .line 600
    :goto_2
    iget-object v0, p0, Lxz;->v:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 601
    iget-object v0, p0, Lxz;->v:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 602
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 604
    iget-object v1, p0, Lxz;->v:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v0, v2

    .line 608
    :cond_0
    return v0

    :cond_1
    move v4, v0

    .line 594
    goto :goto_0

    .line 595
    :cond_2
    const v1, 0x7f0200ab

    move v3, v1

    goto :goto_1

    .line 597
    :cond_3
    iget-object v0, p0, Lxz;->h:Landroid/content/res/Resources;

    const v1, 0x7f0f01d9

    .line 598
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v1, v0

    goto :goto_2
.end method

.method private q()Ljava/lang/CharSequence;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 635
    iget-object v0, p0, Lxz;->b:Lbnt;

    iget-object v4, v0, Lbnt;->d:Ljava/lang/String;

    .line 636
    iget-object v0, p0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    iget-wide v6, p0, Lxz;->i:J

    invoke-virtual {v0, v6, v7}, Lcom/twitter/model/dms/l;->b(J)Z

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    .line 638
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 639
    iget-object v0, p0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 640
    iget-object v0, p0, Lxz;->h:Landroid/content/res/Resources;

    const v6, 0x7f0a02b2

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, ". "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    if-eqz v1, :cond_2

    .line 642
    iget-object v0, p0, Lxz;->z:Lcom/twitter/media/ui/image/MediaImageView;

    iget-object v6, p0, Lxz;->h:Landroid/content/res/Resources;

    const v7, 0x7f0a02dd

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v4, v8, v3

    iget-object v9, p0, Lxz;->N:Ljava/lang/String;

    aput-object v9, v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/twitter/media/ui/image/MediaImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 674
    :cond_0
    :goto_1
    iget-object v0, p0, Lxz;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 675
    if-eqz v1, :cond_9

    .line 676
    invoke-static {v4}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 677
    iget-object v4, p0, Lxz;->h:Landroid/content/res/Resources;

    const v6, 0x7f0a02e1

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v3

    aput-object v0, v7, v2

    iget-object v0, p0, Lxz;->N:Ljava/lang/String;

    aput-object v0, v7, v10

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    :goto_2
    return-object v5

    :cond_1
    move v1, v3

    .line 636
    goto :goto_0

    .line 645
    :cond_2
    iget-object v0, p0, Lxz;->z:Lcom/twitter/media/ui/image/MediaImageView;

    iget-object v6, p0, Lxz;->h:Landroid/content/res/Resources;

    const v7, 0x7f0a02f0

    new-array v8, v2, [Ljava/lang/Object;

    iget-object v9, p0, Lxz;->N:Ljava/lang/String;

    aput-object v9, v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/twitter/media/ui/image/MediaImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 648
    :cond_3
    iget-object v0, p0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->w()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 649
    iget-object v0, p0, Lxz;->h:Landroid/content/res/Resources;

    const v6, 0x7f0a0318

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, ". "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    if-eqz v1, :cond_4

    .line 651
    iget-object v0, p0, Lxz;->x:Lcom/twitter/library/av/DMVideoThumbnailView;

    iget-object v6, p0, Lxz;->h:Landroid/content/res/Resources;

    const v7, 0x7f0a02de

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v4, v8, v3

    iget-object v9, p0, Lxz;->N:Ljava/lang/String;

    aput-object v9, v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/twitter/library/av/DMVideoThumbnailView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 654
    :cond_4
    iget-object v0, p0, Lxz;->x:Lcom/twitter/library/av/DMVideoThumbnailView;

    iget-object v6, p0, Lxz;->h:Landroid/content/res/Resources;

    const v7, 0x7f0a02f1

    new-array v8, v2, [Ljava/lang/Object;

    iget-object v9, p0, Lxz;->N:Ljava/lang/String;

    aput-object v9, v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/twitter/library/av/DMVideoThumbnailView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 657
    :cond_5
    iget-object v0, p0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->x()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 658
    iget-object v0, p0, Lxz;->h:Landroid/content/res/Resources;

    const v6, 0x7f0a02ad

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, ". "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    if-eqz v1, :cond_6

    .line 660
    iget-object v0, p0, Lxz;->y:Lcom/twitter/android/av/video/VideoContainerHost;

    iget-object v6, p0, Lxz;->h:Landroid/content/res/Resources;

    const v7, 0x7f0a02dc

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v4, v8, v3

    iget-object v9, p0, Lxz;->N:Ljava/lang/String;

    aput-object v9, v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/twitter/android/av/video/VideoContainerHost;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 663
    :cond_6
    iget-object v0, p0, Lxz;->y:Lcom/twitter/android/av/video/VideoContainerHost;

    iget-object v6, p0, Lxz;->h:Landroid/content/res/Resources;

    const v7, 0x7f0a02ef

    new-array v8, v2, [Ljava/lang/Object;

    iget-object v9, p0, Lxz;->N:Ljava/lang/String;

    aput-object v9, v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/twitter/android/av/video/VideoContainerHost;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 666
    :cond_7
    iget-object v0, p0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    if-eqz v1, :cond_8

    .line 668
    iget-object v0, p0, Lxz;->h:Landroid/content/res/Resources;

    const v6, 0x7f0a02e0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, ". "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 670
    :cond_8
    iget-object v0, p0, Lxz;->h:Landroid/content/res/Resources;

    const v6, 0x7f0a02f2

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, ". "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 680
    :cond_9
    iget-object v1, p0, Lxz;->h:Landroid/content/res/Resources;

    const v4, 0x7f0a02f3

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v0, v6, v3

    iget-object v0, p0, Lxz;->N:Ljava/lang/String;

    aput-object v0, v6, v2

    invoke-virtual {v1, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2
.end method

.method private r()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 704
    iget-object v0, p0, Lxz;->h:Landroid/content/res/Resources;

    const v1, 0x7f0f01c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 705
    iget-object v1, p0, Lxz;->h:Landroid/content/res/Resources;

    const v2, 0x7f0f02d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 706
    iget-object v2, p0, Lxz;->h:Landroid/content/res/Resources;

    const v3, 0x7f0f02d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 707
    iget-object v3, p0, Lxz;->k:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v1, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 708
    invoke-direct {p0}, Lxz;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    invoke-direct {p0}, Lxz;->s()V

    .line 710
    iget-object v1, p0, Lxz;->m:Lcom/twitter/android/dm/aa;

    iget-object v0, p0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-interface {v1, v0}, Lcom/twitter/android/dm/aa;->b(Lcom/twitter/model/dms/l;)V

    .line 711
    iget-object v0, p0, Lxz;->l:Landroid/view/View;

    iget-object v1, p0, Lxz;->g:Landroid/content/Context;

    const v2, 0x7f12004a

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 712
    iget-object v0, p0, Lxz;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lxz;->h:Landroid/content/res/Resources;

    const v2, 0x7f0f01ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 713
    iget-object v0, p0, Lxz;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lxz;->g:Landroid/content/Context;

    const v2, 0x7f120089

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 714
    iget-object v1, p0, Lxz;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lxz;->h:Landroid/content/res/Resources;

    iget-object v0, p0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    .line 715
    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->t()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    const v0, 0x7f0f01cc

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 714
    invoke-virtual {v1, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 718
    :cond_0
    return-void

    .line 715
    :cond_1
    const v0, 0x7f0f01cb

    goto :goto_0
.end method

.method private s()V
    .locals 2

    .prologue
    .line 721
    iget-object v0, p0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->q()Ljava/lang/String;

    move-result-object v0

    .line 722
    iget-object v1, p0, Lxz;->m:Lcom/twitter/android/dm/aa;

    invoke-interface {v1, v0}, Lcom/twitter/android/dm/aa;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lxz;->m:Lcom/twitter/android/dm/aa;

    invoke-interface {v0}, Lcom/twitter/android/dm/aa;->d()V

    .line 724
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->t()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 725
    iget-object v0, p0, Lxz;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lyc;

    invoke-direct {v1, p0}, Lyc;-><init>(Lxz;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 737
    :cond_0
    return-void
.end method

.method private t()Z
    .locals 2

    .prologue
    .line 740
    iget-object v0, p0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->t()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private u()Lcom/twitter/android/card/i;
    .locals 2

    .prologue
    .line 745
    iget-object v0, p0, Lxz;->a:Lcom/twitter/model/dms/b;

    instance-of v0, v0, Lcom/twitter/model/dms/bo;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lxz;->G:Z

    if-eqz v0, :cond_0

    .line 746
    new-instance v1, Lcom/twitter/android/card/k;

    iget-object v0, p0, Lxz;->g:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/twitter/android/card/k;-><init>(Landroid/content/Context;)V

    .line 747
    iget-object v0, p0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/bo;

    invoke-static {v0}, Lcom/twitter/library/card/CardContextFactory;->a(Lcom/twitter/model/dms/bo;)Lcom/twitter/library/card/CardContext;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/twitter/android/card/i;->a(Lcom/twitter/library/card/CardContext;)V

    .line 748
    iget-object v0, p0, Lxz;->J:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-interface {v1, v0}, Lcom/twitter/android/card/i;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    move-object v0, v1

    .line 751
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 7
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 179
    iget-object v0, p0, Lxz;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lxz;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lxz;->s:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 183
    invoke-virtual {p0}, Lxz;->b()V

    .line 185
    invoke-virtual {p0}, Lxz;->j()V

    .line 186
    iget-object v0, p0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 187
    invoke-virtual {p0, v3}, Lxz;->a(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lxz;->k:Landroid/widget/TextView;

    sget v4, Lcom/twitter/library/util/al;->a:F

    invoke-virtual {v0, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 191
    iget-object v0, p0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    iget-wide v4, p0, Lxz;->i:J

    invoke-virtual {v0, v4, v5}, Lcom/twitter/model/dms/l;->b(J)Z

    move-result v4

    .line 192
    iget-object v5, p0, Lxz;->g:Landroid/content/Context;

    if-eqz v4, :cond_1

    const v0, 0x7f12008b

    :goto_0
    invoke-static {v5, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    .line 195
    invoke-static {v3}, Lcom/twitter/library/view/o;->a(Ljava/lang/CharSequence;)Lcom/twitter/library/view/o;

    move-result-object v3

    iget-object v0, p0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    .line 196
    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->o()Lcom/twitter/model/core/bm;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/twitter/library/view/o;->a(Lcom/twitter/model/core/bm;)Lcom/twitter/library/view/o;

    move-result-object v0

    iget-object v3, p0, Lxz;->n:Lcom/twitter/library/view/m;

    .line 197
    invoke-virtual {v0, v3}, Lcom/twitter/library/view/o;->a(Lcom/twitter/library/view/m;)Lcom/twitter/library/view/o;

    move-result-object v0

    .line 198
    invoke-virtual {v0, v5}, Lcom/twitter/library/view/o;->a(I)Lcom/twitter/library/view/o;

    move-result-object v0

    .line 199
    invoke-virtual {v0, v1}, Lcom/twitter/library/view/o;->a(Z)Lcom/twitter/library/view/o;

    move-result-object v0

    .line 200
    invoke-virtual {v0, v4}, Lcom/twitter/library/view/o;->b(Z)Lcom/twitter/library/view/o;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lcom/twitter/library/view/o;->a()Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 203
    invoke-virtual {p0}, Lxz;->d()V

    .line 205
    invoke-direct {p0}, Lxz;->r()V

    .line 206
    iget-object v3, p0, Lxz;->k:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v3, p0, Lxz;->k:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 208
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lxz;->a(Z)V

    .line 209
    iget-object v0, p0, Lxz;->k:Landroid/widget/TextView;

    const/4 v3, 0x6

    invoke-static {v0, v3}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 211
    iget-object v0, p0, Lxz;->B:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lxz;->l:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 214
    invoke-direct {p0}, Lxz;->p()Z

    move-result v0

    .line 216
    if-nez v0, :cond_5

    .line 217
    iget-object v0, p0, Lxz;->d:Lbnt;

    if-nez v0, :cond_2

    move v0, v1

    .line 218
    :goto_1
    invoke-virtual {p0, v0}, Lxz;->c(Z)V

    .line 219
    if-nez v0, :cond_5

    .line 220
    iget-object v0, p0, Lxz;->d:Lbnt;

    iget-object v3, v0, Lbnt;->a:Lcom/twitter/model/dms/b;

    .line 221
    invoke-virtual {v3}, Lcom/twitter/model/dms/b;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 222
    invoke-static {v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/l;

    .line 223
    iget-object v1, p0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v1, Lcom/twitter/model/dms/l;

    invoke-virtual {p0, v1, v0}, Lxz;->a(Lcom/twitter/model/dms/l;Lcom/twitter/model/dms/l;)Z

    move-result v0

    .line 226
    :goto_2
    invoke-direct {p0, v3}, Lxz;->a(Lcom/twitter/model/dms/b;)V

    .line 230
    :goto_3
    if-eqz v0, :cond_3

    .line 231
    invoke-virtual {p0}, Lxz;->f()V

    .line 236
    :goto_4
    iget-object v0, p0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lxz;->B:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lxz;->C:Landroid/widget/Button;

    new-instance v1, Lya;

    invoke-direct {v1, p0}, Lya;-><init>(Lxz;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v0, p0, Lxz;->D:Landroid/widget/Button;

    new-instance v1, Lyd;

    invoke-direct {v1, p0}, Lyd;-><init>(Lxz;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    :cond_0
    iget-object v0, p0, Lxz;->u:Landroid/view/View;

    invoke-direct {p0}, Lxz;->q()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 253
    return-void

    .line 192
    :cond_1
    const v0, 0x7f1200c2

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 217
    goto :goto_1

    .line 233
    :cond_3
    invoke-virtual {p0}, Lxz;->g()V

    goto :goto_4

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3
.end method

.method a(II)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 322
    iget-boolean v0, p0, Lxz;->H:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lxz;->l:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lxz;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 324
    iget-object v0, p0, Lxz;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lxz;->h:Landroid/content/res/Resources;

    const v2, 0x7f0f006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 329
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lxz;->l:Landroid/view/View;

    iget-object v1, p0, Lxz;->g:Landroid/content/Context;

    invoke-static {v1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 327
    iget-object v0, p0, Lxz;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lxz;->h:Landroid/content/res/Resources;

    const v2, 0x7f0f006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0
.end method

.method a(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 394
    iget-boolean v0, p0, Lxz;->H:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxz;->h:Landroid/content/res/Resources;

    const v1, 0x7f0f007b

    .line 395
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 396
    :goto_0
    invoke-virtual {p0}, Lxz;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 397
    :goto_1
    invoke-virtual {p0}, Lxz;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 398
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 399
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 398
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 400
    return-void

    .line 395
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v1, v0

    .line 396
    goto :goto_1

    .line 397
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    goto :goto_2
.end method

.method a(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 350
    iget-object v0, p0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 351
    invoke-direct {p0}, Lxz;->n()V

    .line 364
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lxz;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lxz;->s:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 368
    :cond_1
    return-void

    .line 352
    :cond_2
    iget-object v0, p0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 353
    invoke-direct {p0}, Lxz;->l()V

    goto :goto_0

    .line 354
    :cond_3
    iget-object v0, p0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->x()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 355
    invoke-direct {p0}, Lxz;->k()V

    goto :goto_0

    .line 356
    :cond_4
    iget-object v0, p0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->v()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 357
    invoke-direct {p0}, Lxz;->o()V

    goto :goto_0

    .line 358
    :cond_5
    iget-object v0, p0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-direct {p0}, Lxz;->m()V

    goto :goto_0
.end method

.method abstract a(Z)V
.end method

.method a(Lcom/twitter/model/dms/l;Lcom/twitter/model/dms/l;)Z
    .locals 4

    .prologue
    .line 258
    iget-object v0, p0, Lxz;->j:Lcom/twitter/android/dl;

    iget-wide v2, p2, Lcom/twitter/model/dms/l;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/dl;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/twitter/model/dms/l;->a(Lcom/twitter/model/dms/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Z)V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 267
    invoke-virtual {p0}, Lxz;->h()Lcom/twitter/android/dm/widget/MessageBylineView;

    move-result-object v1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/android/dm/widget/MessageBylineView;->a(Z)V

    .line 268
    return-void

    .line 267
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c(Z)V
    .locals 5

    .prologue
    .line 340
    iget-object v0, p0, Lxz;->t:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 341
    iget-object v1, p0, Lxz;->h:Landroid/content/res/Resources;

    const v2, 0x7f0f01d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 342
    iget-object v2, p0, Lxz;->h:Landroid/content/res/Resources;

    const v3, 0x7f0f02d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 343
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 345
    iget-object v1, p0, Lxz;->t:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    return-void

    :cond_0
    move v1, v2

    .line 343
    goto :goto_0
.end method

.method abstract d()V
.end method

.method e()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/twitter/util/h;->b(Z)Z

    .line 273
    invoke-virtual {p0}, Lxz;->h()Lcom/twitter/android/dm/widget/MessageBylineView;

    move-result-object v0

    iget-object v1, p0, Lxz;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/widget/MessageBylineView;->setTimestampText(Ljava/lang/CharSequence;)V

    .line 274
    return-void

    .line 272
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method f()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 278
    iget-boolean v0, p0, Lxz;->H:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lxz;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    invoke-virtual {p0}, Lxz;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    const v0, 0x7f020138

    const v1, 0x7f12008a

    invoke-virtual {p0, v0, v1}, Lxz;->a(II)V

    .line 285
    :cond_0
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lxz;->b(Z)V

    .line 286
    return-void

    .line 282
    :cond_1
    const v0, 0x7f020136

    const v1, 0x7f120088

    invoke-virtual {p0, v0, v1}, Lxz;->a(II)V

    goto :goto_0
.end method

.method g()V
    .locals 5
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 290
    iget-boolean v0, p0, Lxz;->H:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxz;->h:Landroid/content/res/Resources;

    const v2, 0x7f0f01c9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 292
    :goto_0
    invoke-virtual {p0}, Lxz;->h()Lcom/twitter/android/dm/widget/MessageBylineView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/twitter/android/dm/widget/MessageBylineView;->a(I)V

    .line 293
    invoke-virtual {p0}, Lxz;->h()Lcom/twitter/android/dm/widget/MessageBylineView;

    move-result-object v0

    iget-object v2, p0, Lxz;->h:Landroid/content/res/Resources;

    const v3, 0x7f0f01dd

    .line 294
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lxz;->h:Landroid/content/res/Resources;

    const v4, 0x7f0f01dc

    .line 295
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 293
    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/dm/widget/MessageBylineView;->a(II)V

    .line 298
    invoke-virtual {p0, v1}, Lxz;->b(Z)V

    .line 299
    return-void

    :cond_0
    move v0, v1

    .line 290
    goto :goto_0
.end method

.method abstract h()Lcom/twitter/android/dm/widget/MessageBylineView;
.end method

.method i()Ljava/lang/String;
    .locals 7

    .prologue
    .line 306
    iget-object v0, p0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    iget-wide v0, v0, Lcom/twitter/model/dms/l;->f:J

    .line 307
    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    iget-object v2, p0, Lxz;->K:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 318
    :goto_0
    return-object v0

    .line 309
    :cond_0
    const-wide/32 v2, 0x5265c00

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 310
    iget-object v2, p0, Lxz;->h:Landroid/content/res/Resources;

    const v3, 0x7f0a09be

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lxz;->K:Ljava/text/SimpleDateFormat;

    .line 311
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 310
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 312
    :cond_1
    invoke-static {v0, v1}, Lcom/twitter/util/al;->b(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 313
    iget-object v2, p0, Lxz;->L:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 315
    :cond_2
    iget-object v2, p0, Lxz;->M:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method j()V
    .locals 5
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 613
    iget-object v0, p0, Lxz;->r:Landroid/view/View;

    iget-object v1, p0, Lxz;->r:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lxz;->r:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v4, v1, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 614
    iget-object v0, p0, Lxz;->r:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 615
    iget-object v0, p0, Lxz;->A:Lcom/twitter/library/view/QuoteView;

    invoke-virtual {v0, v3}, Lcom/twitter/library/view/QuoteView;->setVisibility(I)V

    .line 616
    iget-object v0, p0, Lxz;->z:Lcom/twitter/media/ui/image/MediaImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 617
    iget-object v0, p0, Lxz;->z:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0, v3}, Lcom/twitter/media/ui/image/MediaImageView;->setVisibility(I)V

    .line 618
    iget-object v0, p0, Lxz;->E:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 619
    iget-object v0, p0, Lxz;->x:Lcom/twitter/library/av/DMVideoThumbnailView;

    invoke-virtual {v0, v3}, Lcom/twitter/library/av/DMVideoThumbnailView;->setVisibility(I)V

    .line 620
    iget-object v0, p0, Lxz;->y:Lcom/twitter/android/av/video/VideoContainerHost;

    invoke-virtual {v0, v3}, Lcom/twitter/android/av/video/VideoContainerHost;->setVisibility(I)V

    .line 621
    iget-object v0, p0, Lxz;->w:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 622
    iget-object v0, p0, Lxz;->v:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lxz;->v:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 624
    iget-object v0, p0, Lxz;->v:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 626
    :cond_0
    return-void
.end method
