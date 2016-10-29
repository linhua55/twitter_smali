.class public Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;
.super Lcom/twitter/android/dm/widget/SentMessageBylineView;
.source "Twttr"


# static fields
.field private static final e:Landroid/view/animation/Interpolator;


# instance fields
.field private final f:Landroid/view/View;

.field private final g:Landroid/view/View;

.field private final h:Landroid/view/View;

.field private final i:Landroid/widget/ImageView;

.field private final j:Landroid/widget/TextView;

.field private final k:Landroid/view/View;

.field private final l:Landroid/widget/TextView;

.field private final m:Lcom/twitter/android/dm/widget/ProgressIndicator;

.field private final n:Lcom/twitter/android/dm/widget/r;

.field private final o:Ljava/lang/String;

.field private final p:Z

.field private q:Lcom/twitter/model/dms/ao;

.field private r:Lcom/twitter/model/dms/l;

.field private s:Z

.field private t:Z

.field private u:I

.field private final v:Lcom/twitter/android/dm/widget/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->e:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/twitter/android/dm/widget/r;)V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0, p1, p3}, Lcom/twitter/android/dm/widget/SentMessageBylineView;-><init>(Landroid/content/Context;Lcom/twitter/android/dm/widget/j;)V

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->u:I

    .line 85
    const v0, 0x7f1302f1

    invoke-virtual {p0, v0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->f:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->f:Landroid/view/View;

    const v1, 0x7f1302f5

    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->g:Landroid/view/View;

    .line 89
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->g:Landroid/view/View;

    const v1, 0x7f1302f6

    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->h:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->h:Landroid/view/View;

    const v1, 0x7f1302f7

    .line 92
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->i:Landroid/widget/ImageView;

    .line 93
    const v0, 0x7f1302f8

    invoke-virtual {p0, v0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->j:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->j:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 96
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->f:Landroid/view/View;

    const v1, 0x7f1302f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->k:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->k:Landroid/view/View;

    const v1, 0x7f1302f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->l:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->k:Landroid/view/View;

    const v1, 0x7f1302f4

    .line 99
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dm/widget/ProgressIndicator;

    iput-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->m:Lcom/twitter/android/dm/widget/ProgressIndicator;

    .line 101
    iput-boolean p2, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->p:Z

    .line 102
    iput-object p3, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->n:Lcom/twitter/android/dm/widget/r;

    .line 103
    invoke-virtual {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a047b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->o:Ljava/lang/String;

    .line 105
    invoke-static {}, Lcom/twitter/android/dm/widget/a;->a()Lcom/twitter/android/dm/widget/a;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->v:Lcom/twitter/android/dm/widget/a;

    .line 106
    return-void
.end method

.method private a(Landroid/view/View;IFIILandroid/animation/AnimatorListenerAdapter;)Landroid/animation/AnimatorSet;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 407
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p3

    .line 409
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 410
    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 411
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 412
    sget-object v2, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->e:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 413
    new-array v2, v7, [Landroid/animation/Animator;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v7, [F

    aput v0, v4, v5

    aput p3, v4, v6

    .line 414
    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v2, v5

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v7, [F

    int-to-float v4, p4

    aput v4, v3, v5

    int-to-float v4, p5

    aput v4, v3, v6

    .line 415
    invoke-static {p1, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v2, v6

    .line 413
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 417
    if-eqz p6, :cond_0

    .line 418
    invoke-virtual {v1, p6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 421
    :cond_0
    return-object v1
.end method

.method static synthetic a(Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->k()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->c(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;Z)Z
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->s:Z

    return p1
.end method

.method static synthetic b(Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;)Lcom/twitter/android/dm/widget/a;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->v:Lcom/twitter/android/dm/widget/a;

    return-object v0
.end method

.method private b(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 319
    invoke-virtual {p0, p1}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->a(Ljava/util/Set;)Landroid/text/Spanned;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->j:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    :cond_0
    return-void
.end method

.method private b(Z)V
    .locals 8

    .prologue
    const v7, 0x7f130025

    const v6, 0x7f130022

    .line 285
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->r:Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->h:Landroid/view/View;

    .line 286
    invoke-virtual {v1, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 287
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->v:Lcom/twitter/android/dm/widget/a;

    iget-object v2, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->r:Lcom/twitter/model/dms/l;

    invoke-virtual {v2}, Lcom/twitter/model/dms/l;->l()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/twitter/android/dm/widget/a;->c(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->i:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 294
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->h:Landroid/view/View;

    .line 295
    invoke-virtual {v2, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 296
    iget-object v2, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->h:Landroid/view/View;

    iget-object v3, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->r:Lcom/twitter/model/dms/l;

    invoke-virtual {v3}, Lcom/twitter/model/dms/l;->l()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 297
    iget-object v2, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->h:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 299
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-nez v1, :cond_1

    .line 300
    invoke-direct {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->m()V

    goto :goto_0

    .line 302
    :cond_1
    if-eqz p1, :cond_2

    .line 303
    invoke-direct {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->k()V

    goto :goto_0

    .line 305
    :cond_2
    invoke-direct {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->j()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->k:Landroid/view/View;

    return-object v0
.end method

.method private c(Z)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 603
    if-eqz p1, :cond_0

    .line 604
    invoke-virtual {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0280

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 606
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0281

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "..."

    aput-object v2, v0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private c(J)V
    .locals 1

    .prologue
    .line 389
    invoke-direct {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    :goto_0
    return-void

    .line 393
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->s:Z

    .line 395
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->b(J)V

    goto :goto_0

    .line 400
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->a(J)V

    goto :goto_0
.end method

.method private c(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 363
    iget v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->u:I

    .line 364
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->n:Lcom/twitter/android/dm/widget/r;

    iget v1, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->u:I

    invoke-interface {v0, v1}, Lcom/twitter/android/dm/widget/r;->a(I)V

    .line 365
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->j:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->a(Ljava/util/Set;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    return-void
.end method

.method static synthetic d(Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->q()V

    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->r:Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->r:Lcom/twitter/model/dms/l;

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/bd;

    invoke-virtual {v0}, Lcom/twitter/model/dms/bd;->F()I

    move-result v0

    .line 215
    if-lez v0, :cond_0

    .line 216
    iget-object v1, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->m:Lcom/twitter/android/dm/widget/ProgressIndicator;

    invoke-virtual {v1, v0}, Lcom/twitter/android/dm/widget/ProgressIndicator;->a(I)V

    .line 217
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->m:Lcom/twitter/android/dm/widget/ProgressIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/widget/ProgressIndicator;->setVisibility(I)V

    .line 226
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->m:Lcom/twitter/android/dm/widget/ProgressIndicator;

    invoke-virtual {v0}, Lcom/twitter/android/dm/widget/ProgressIndicator;->a()V

    .line 220
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->m:Lcom/twitter/android/dm/widget/ProgressIndicator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/widget/ProgressIndicator;->setVisibility(I)V

    goto :goto_0

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->m:Lcom/twitter/android/dm/widget/ProgressIndicator;

    invoke-virtual {v0}, Lcom/twitter/android/dm/widget/ProgressIndicator;->a()V

    .line 224
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->m:Lcom/twitter/android/dm/widget/ProgressIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/widget/ProgressIndicator;->setVisibility(I)V

    goto :goto_0
.end method

.method private i()V
    .locals 4

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->b:Z

    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->e()V

    .line 231
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->n:Lcom/twitter/android/dm/widget/r;

    iget-object v1, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->r:Lcom/twitter/model/dms/l;

    invoke-virtual {v1}, Lcom/twitter/model/dms/l;->l()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, p0}, Lcom/twitter/android/dm/widget/r;->a(JLcom/twitter/android/dm/widget/SentMessageBylineView;)V

    .line 236
    :goto_0
    iget-boolean v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->b:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->t:Z

    if-eqz v0, :cond_2

    .line 237
    invoke-direct {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->v()V

    .line 242
    :goto_1
    iget-boolean v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->c:Z

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->e()V

    .line 244
    iget-boolean v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->b:Z

    if-eqz v0, :cond_3

    .line 245
    invoke-direct {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->y()V

    .line 250
    :cond_0
    :goto_2
    return-void

    .line 233
    :cond_1
    invoke-direct {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->t()V

    goto :goto_0

    .line 239
    :cond_2
    invoke-direct {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->w()V

    goto :goto_1

    .line 247
    :cond_3
    invoke-virtual {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->g()V

    goto :goto_2
.end method

.method private j()V
    .locals 3

    .prologue
    .line 311
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->i:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020373

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 312
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->i:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020372

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 316
    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 379
    .line 380
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->g:Landroid/view/View;

    new-instance v1, Lcom/twitter/android/dm/widget/l;

    invoke-direct {v1, p0, p0}, Lcom/twitter/android/dm/widget/l;-><init>(Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;Lcom/twitter/android/dm/widget/SentMessageBylineView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    return-void
.end method

.method private m()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x64

    const/4 v6, 0x2

    .line 425
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->r:Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->a()J

    move-result-wide v0

    .line 427
    iget-object v2, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->i:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 429
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 431
    iget-object v3, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->i:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 433
    const-wide/16 v4, 0x32

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 434
    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 435
    new-instance v4, Lcom/twitter/android/dm/widget/m;

    invoke-direct {v4, p0}, Lcom/twitter/android/dm/widget/m;-><init>(Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 442
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 443
    new-array v5, v6, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v3, v5, v2

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 444
    new-instance v2, Lcom/twitter/android/dm/widget/n;

    invoke-direct {v2, p0, v0, v1}, Lcom/twitter/android/dm/widget/n;-><init>(Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;J)V

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 451
    iget-object v2, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->v:Lcom/twitter/android/dm/widget/a;

    invoke-virtual {v2, v0, v1}, Lcom/twitter/android/dm/widget/a;->a(J)V

    .line 452
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 453
    return-void

    .line 427
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 431
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private n()Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    .prologue
    .line 457
    new-instance v0, Lcom/twitter/android/dm/widget/o;

    invoke-direct {v0, p0}, Lcom/twitter/android/dm/widget/o;-><init>(Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;)V

    return-object v0
.end method

.method private o()Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    .prologue
    .line 469
    new-instance v0, Lcom/twitter/android/dm/widget/p;

    invoke-direct {v0, p0}, Lcom/twitter/android/dm/widget/p;-><init>(Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;)V

    return-object v0
.end method

.method private p()Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    .prologue
    .line 481
    new-instance v0, Lcom/twitter/android/dm/widget/q;

    invoke-direct {v0, p0}, Lcom/twitter/android/dm/widget/q;-><init>(Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;)V

    return-object v0
.end method

.method private q()V
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->v:Lcom/twitter/android/dm/widget/a;

    iget-object v1, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->r:Lcom/twitter/model/dms/l;

    invoke-virtual {v1}, Lcom/twitter/model/dms/l;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/widget/a;->b(Ljava/lang/String;)V

    .line 493
    iget-object v1, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->n:Lcom/twitter/android/dm/widget/r;

    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->r:Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/twitter/android/dm/widget/r;->b(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->b()V

    .line 495
    return-void
.end method

.method private r()Z
    .locals 1

    .prologue
    .line 498
    iget-boolean v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->s:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private s()Z
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->v:Lcom/twitter/android/dm/widget/a;

    iget-object v1, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->r:Lcom/twitter/model/dms/l;

    invoke-virtual {v1}, Lcom/twitter/model/dms/l;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/widget/a;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private t()V
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 521
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 522
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->a:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 523
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 525
    invoke-direct {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->w()V

    .line 526
    return-void
.end method

.method private u()V
    .locals 14

    .prologue
    const/16 v2, 0x12c

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 529
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 531
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->k:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 532
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->k:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setAlpha(F)V

    .line 533
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->k:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->r:Lcom/twitter/model/dms/l;

    invoke-virtual {v1}, Lcom/twitter/model/dms/l;->y()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->c(Z)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    invoke-direct {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->t()V

    .line 538
    invoke-direct {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->j()V

    .line 539
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->g:Landroid/view/View;

    int-to-float v1, v9

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 541
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 542
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->g:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 544
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 545
    const/4 v0, 0x2

    new-array v13, v0, [Landroid/animation/Animator;

    iget-object v1, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->k:Landroid/view/View;

    neg-int v5, v9

    .line 547
    invoke-direct {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->p()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v6

    move-object v0, p0

    .line 546
    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->a(Landroid/view/View;IFIILandroid/animation/AnimatorListenerAdapter;)Landroid/animation/AnimatorSet;

    move-result-object v0

    aput-object v0, v13, v4

    const/4 v0, 0x1

    iget-object v6, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->g:Landroid/view/View;

    const/4 v11, 0x0

    move-object v5, p0

    move v7, v2

    move v10, v4

    .line 548
    invoke-direct/range {v5 .. v11}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->a(Landroid/view/View;IFIILandroid/animation/AnimatorListenerAdapter;)Landroid/animation/AnimatorSet;

    move-result-object v1

    aput-object v1, v13, v0

    .line 545
    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 552
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->v:Lcom/twitter/android/dm/widget/a;

    iget-object v1, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->r:Lcom/twitter/model/dms/l;

    invoke-virtual {v1}, Lcom/twitter/model/dms/l;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/widget/a;->a(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    .line 554
    return-void
.end method

.method private v()V
    .locals 2

    .prologue
    .line 617
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->j:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 618
    return-void
.end method

.method private w()V
    .locals 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->j:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 622
    return-void
.end method

.method private x()V
    .locals 4

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    invoke-virtual {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->g()V

    .line 627
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->n:Lcom/twitter/android/dm/widget/r;

    invoke-virtual {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->getMessageId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/twitter/android/dm/widget/r;->a(J)V

    .line 632
    :goto_0
    return-void

    .line 629
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->y()V

    .line 630
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->n:Lcom/twitter/android/dm/widget/r;

    invoke-virtual {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->getMessageId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, p0}, Lcom/twitter/android/dm/widget/r;->a(JLcom/twitter/android/dm/widget/SentMessageBylineView;)V

    goto :goto_0
.end method

.method private y()V
    .locals 1

    .prologue
    .line 635
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->setVisibility(I)V

    .line 636
    return-void
.end method


# virtual methods
.method a(Ljava/util/Set;)Landroid/text/Spanned;
    .locals 8
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/text/Spanned;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 329
    iget v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->u:I

    mul-int/lit8 v0, v0, 0xa

    .line 331
    invoke-static {p1, v0}, Lczz;->a(Ljava/lang/Iterable;I)Ljava/lang/Iterable;

    move-result-object v1

    .line 332
    iget-object v2, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->o:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    sub-int v0, v2, v0

    .line 335
    if-lez v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0005

    new-array v4, v7, [Ljava/lang/Object;

    .line 338
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 336
    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 340
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    .line 341
    invoke-virtual {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f120167

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 343
    iget-object v3, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->j:Landroid/widget/TextView;

    new-instance v4, Lcom/twitter/android/dm/widget/k;

    invoke-direct {v4, p0, p1}, Lcom/twitter/android/dm/widget/k;-><init>(Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;Ljava/util/Set;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 351
    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const-string/jumbo v3, " "

    .line 352
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    new-array v3, v7, [Landroid/text/style/ForegroundColorSpan;

    aput-object v2, v3, v6

    const-string/jumbo v2, "{{}}"

    .line 353
    invoke-static {v3, v0, v2}, Lcom/twitter/library/util/an;->a([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 358
    :goto_0
    return-object v0

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->j:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(J)V
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 581
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v7, v0

    .line 583
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->a:Landroid/widget/TextView;

    int-to-float v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 584
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 585
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 587
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 588
    const/4 v0, 0x2

    new-array v9, v0, [Landroid/animation/Animator;

    iget-object v1, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->d:Landroid/widget/TextView;

    neg-int v5, v7

    .line 590
    invoke-direct {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->o()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v6

    move-object v0, p0

    move v4, v2

    .line 589
    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->a(Landroid/view/View;IFIILandroid/animation/AnimatorListenerAdapter;)Landroid/animation/AnimatorSet;

    move-result-object v0

    aput-object v0, v9, v2

    const/4 v10, 0x1

    iget-object v1, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->a:Landroid/widget/TextView;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, p0

    move v4, v7

    move v5, v2

    .line 591
    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->a(Landroid/view/View;IFIILandroid/animation/AnimatorListenerAdapter;)Landroid/animation/AnimatorSet;

    move-result-object v0

    aput-object v0, v9, v10

    .line 588
    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 595
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->n:Lcom/twitter/android/dm/widget/r;

    invoke-interface {v0, p1, p2}, Lcom/twitter/android/dm/widget/r;->a(J)V

    .line 596
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    .line 598
    invoke-direct {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->w()V

    .line 599
    return-void
.end method

.method public a(Lcom/twitter/android/dm/widget/SentMessageBylineView;)V
    .locals 2

    .prologue
    .line 271
    invoke-super {p0, p1}, Lcom/twitter/android/dm/widget/SentMessageBylineView;->a(Lcom/twitter/android/dm/widget/SentMessageBylineView;)V

    .line 272
    iget-boolean v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->c:Z

    if-eqz v0, :cond_0

    .line 273
    invoke-direct {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->x()V

    .line 277
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->r:Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->l()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->c(J)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/dms/ao;Lcom/twitter/model/dms/l;ZIZ)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 111
    invoke-super {p0, p3, p5}, Lcom/twitter/android/dm/widget/SentMessageBylineView;->a(ZZ)V

    .line 112
    iput-object p1, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->q:Lcom/twitter/model/dms/ao;

    .line 113
    iput-object p2, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->r:Lcom/twitter/model/dms/l;

    .line 114
    if-le p4, v0, :cond_1

    :goto_0
    iput p4, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->u:I

    .line 116
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-direct {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->w()V

    .line 121
    invoke-direct {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    if-eqz p3, :cond_2

    .line 123
    invoke-virtual {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->e()V

    .line 129
    :goto_1
    if-eqz p5, :cond_3

    .line 130
    invoke-virtual {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->g()V

    .line 135
    :cond_0
    :goto_2
    return-void

    :cond_1
    move p4, v0

    .line 114
    goto :goto_0

    .line 125
    :cond_2
    invoke-direct {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->t()V

    goto :goto_1

    .line 132
    :cond_3
    invoke-direct {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->y()V

    goto :goto_2
.end method

.method public b()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 139
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->r:Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->j()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/twitter/util/h;->b(Z)Z

    .line 143
    :cond_0
    invoke-super {p0}, Lcom/twitter/android/dm/widget/SentMessageBylineView;->b()V

    .line 145
    invoke-direct {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 140
    goto :goto_0

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->k:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    .line 155
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->r:Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->l()J

    move-result-wide v6

    .line 159
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->q:Lcom/twitter/model/dms/ao;

    if-eqz v0, :cond_4

    .line 160
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->q:Lcom/twitter/model/dms/ao;

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/twitter/model/dms/ao;->a(JJ)Ljava/util/Set;

    move-result-object v3

    .line 161
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->q:Lcom/twitter/model/dms/ao;

    invoke-virtual {v0, v6, v7}, Lcom/twitter/model/dms/ao;->a(J)I

    move-result v0

    .line 162
    if-lez v0, :cond_3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-ne v4, v0, :cond_3

    move v0, v1

    .line 168
    :goto_2
    invoke-direct {p0, v0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->b(Z)V

    .line 170
    iput-boolean v2, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->t:Z

    .line 171
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 173
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->d:Landroid/widget/TextView;

    const v1, 0x7f0a0301

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 174
    invoke-direct {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->w()V

    .line 191
    :goto_3
    invoke-direct {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->l()V

    .line 192
    invoke-direct {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->i()V

    goto :goto_1

    :cond_3
    move v0, v2

    .line 162
    goto :goto_2

    .line 164
    :cond_4
    invoke-static {}, Lcom/twitter/util/collection/au;->g()Ljava/util/Set;

    move-result-object v0

    move-object v3, v0

    move v0, v2

    .line 165
    goto :goto_2

    .line 175
    :cond_5
    if-eqz v0, :cond_7

    .line 176
    iget-boolean v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->p:Z

    if-eqz v0, :cond_6

    .line 178
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->d:Landroid/widget/TextView;

    const v1, 0x7f0a0300

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 181
    :cond_6
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->d:Landroid/widget/TextView;

    const v1, 0x7f0a02ff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 185
    :cond_7
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0006

    .line 186
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    .line 185
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    invoke-direct {p0, v3}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->b(Ljava/util/Set;)V

    .line 188
    iput-boolean v1, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->t:Z

    goto :goto_3
.end method

.method public b(J)V
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 557
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 559
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->d:Landroid/widget/TextView;

    int-to-float v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 560
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 561
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 563
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 564
    const/4 v0, 0x2

    new-array v9, v0, [Landroid/animation/Animator;

    iget-object v1, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->a:Landroid/widget/TextView;

    neg-int v5, v7

    .line 566
    invoke-direct {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->n()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v6

    move-object v0, p0

    move v4, v2

    .line 565
    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->a(Landroid/view/View;IFIILandroid/animation/AnimatorListenerAdapter;)Landroid/animation/AnimatorSet;

    move-result-object v0

    aput-object v0, v9, v2

    const/4 v10, 0x1

    iget-object v1, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->d:Landroid/widget/TextView;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, p0

    move v4, v7

    move v5, v2

    .line 567
    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->a(Landroid/view/View;IFIILandroid/animation/AnimatorListenerAdapter;)Landroid/animation/AnimatorSet;

    move-result-object v0

    aput-object v0, v9, v10

    .line 564
    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 571
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->n:Lcom/twitter/android/dm/widget/r;

    invoke-interface {v0, p1, p2, p0}, Lcom/twitter/android/dm/widget/r;->a(JLcom/twitter/android/dm/widget/SentMessageBylineView;)V

    .line 572
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    .line 574
    iget-boolean v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->t:Z

    if-eqz v0, :cond_0

    .line 575
    invoke-direct {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->v()V

    .line 577
    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 197
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->r:Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->j()Z

    move-result v0

    invoke-static {v0}, Lcom/twitter/util/h;->b(Z)Z

    .line 198
    invoke-super {p0}, Lcom/twitter/android/dm/widget/SentMessageBylineView;->c()V

    .line 200
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->k:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 203
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->k:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 204
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->r:Lcom/twitter/model/dms/l;

    invoke-virtual {v1}, Lcom/twitter/model/dms/l;->y()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->c(Z)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    invoke-direct {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->h()V

    .line 210
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->r:Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/twitter/util/h;->b(Z)Z

    .line 262
    invoke-direct {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    :goto_1
    return-void

    .line 261
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 266
    :cond_1
    invoke-direct {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->u()V

    goto :goto_1
.end method

.method public e()V
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->a:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 510
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->d:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 511
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 513
    iget-boolean v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->t:Z

    if-eqz v0, :cond_0

    .line 514
    invoke-direct {p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->v()V

    .line 516
    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    move-result v0

    return v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 640
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->setVisibility(I)V

    .line 641
    return-void
.end method

.method getLayoutResId()I
    .locals 1

    .prologue
    .line 281
    const v0, 0x7f0400c8

    return v0
.end method

.method public getMessageId()J
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->r:Lcom/twitter/model/dms/l;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public setDraftStatusText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    return-void
.end method
