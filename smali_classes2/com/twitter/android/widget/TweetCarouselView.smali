.class public Lcom/twitter/android/widget/TweetCarouselView;
.super Landroid/widget/LinearLayout;
.source "Twttr"

# interfaces
.implements Lcjb;
.implements Lcom/twitter/library/revenue/b;
.implements Lcom/twitter/library/widget/av;
.implements Lcom/twitter/library/widget/n;


# static fields
.field private static final a:Landroid/text/TextPaint;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/view/ViewGroup;

.field private d:Lcom/twitter/library/media/widget/UserImageView;

.field private e:Lcom/twitter/ui/widget/TweetHeaderView;

.field private f:Lcom/twitter/library/widget/TextContentView;

.field private g:Lcom/twitter/library/widget/InlineActionBar;

.field private h:Lcom/twitter/ui/widget/BadgeView;

.field private i:Lcom/twitter/model/core/Tweet;

.field private j:Lcom/twitter/library/widget/renderablecontent/e;

.field private k:Landroid/view/ViewGroup;

.field private l:Lcom/twitter/android/vw;

.field private m:Lcom/twitter/android/sn;

.field private n:Lcom/twitter/library/util/FriendshipCache;

.field private o:Lcom/twitter/library/revenue/a;

.field private final p:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/twitter/ui/widget/BadgeView;",
            ">;"
        }
    .end annotation
.end field

.field private q:F

.field private r:F

.field private s:I

.field private t:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lcom/twitter/android/widget/TweetCarouselView;->a:Landroid/text/TextPaint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/widget/TweetCarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->p:Landroid/util/SparseArray;

    .line 96
    invoke-direct {p0}, Lcom/twitter/android/widget/TweetCarouselView;->a()V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->p:Landroid/util/SparseArray;

    .line 101
    invoke-direct {p0}, Lcom/twitter/android/widget/TweetCarouselView;->a()V

    .line 102
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/widget/TweetCarouselView;)Lcom/twitter/android/vw;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->l:Lcom/twitter/android/vw;

    return-object v0
.end method

.method private a(Lcom/twitter/model/core/Tweet;)Ljava/lang/CharSequence;
    .locals 7

    .prologue
    .line 250
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 251
    new-instance v0, Lcom/twitter/android/widget/fi;

    iget v2, p0, Lcom/twitter/android/widget/TweetCarouselView;->t:I

    iget v3, p0, Lcom/twitter/android/widget/TweetCarouselView;->s:I

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/widget/fi;-><init>(Lcom/twitter/android/widget/TweetCarouselView;IIZLcom/twitter/model/core/Tweet;)V

    .line 260
    const v1, 0x7f0a036c

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 261
    const v2, 0x7f0a025a

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 262
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 263
    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 264
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x21

    invoke-virtual {v3, v0, v4, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 267
    return-object v3
.end method

.method private a(Ljava/lang/String;Lcom/twitter/model/core/bm;)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 271
    iget-object v1, p0, Lcom/twitter/android/widget/TweetCarouselView;->i:Lcom/twitter/model/core/Tweet;

    .line 274
    invoke-virtual {p2}, Lcom/twitter/model/core/bm;->a()Z

    move-result v0

    .line 275
    if-eqz v0, :cond_2

    .line 276
    new-instance v0, Lcom/twitter/android/widget/fj;

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/widget/fj;-><init>(Lcom/twitter/android/widget/TweetCarouselView;Lcom/twitter/model/core/Tweet;)V

    .line 285
    invoke-static {p1}, Lcom/twitter/library/view/o;->a(Ljava/lang/CharSequence;)Lcom/twitter/library/view/o;

    move-result-object v2

    .line 286
    invoke-virtual {v2, p2}, Lcom/twitter/library/view/o;->a(Lcom/twitter/model/core/bm;)Lcom/twitter/library/view/o;

    move-result-object v2

    .line 287
    invoke-virtual {v2, v0}, Lcom/twitter/library/view/o;->a(Lcom/twitter/library/view/m;)Lcom/twitter/library/view/o;

    move-result-object v0

    iget v2, p0, Lcom/twitter/android/widget/TweetCarouselView;->t:I

    .line 288
    invoke-virtual {v0, v2}, Lcom/twitter/library/view/o;->b(I)Lcom/twitter/library/view/o;

    move-result-object v0

    iget v2, p0, Lcom/twitter/android/widget/TweetCarouselView;->s:I

    .line 289
    invoke-virtual {v0, v2}, Lcom/twitter/library/view/o;->a(I)Lcom/twitter/library/view/o;

    move-result-object v0

    .line 290
    invoke-virtual {v0, v3}, Lcom/twitter/library/view/o;->a(Z)Lcom/twitter/library/view/o;

    move-result-object v0

    .line 291
    invoke-virtual {v0, v3}, Lcom/twitter/library/view/o;->b(Z)Lcom/twitter/library/view/o;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Lcom/twitter/library/view/o;->a()Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 297
    :goto_0
    invoke-static {}, Lcom/twitter/library/view/d;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/twitter/model/core/Tweet;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/twitter/android/widget/TweetCarouselView;->b:Landroid/content/Context;

    iget-object v2, p2, Lcom/twitter/model/core/bm;->f:Lcom/twitter/model/core/j;

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lcom/twitter/library/view/d;->a(Landroid/content/Context;Ljava/lang/Iterable;Landroid/text/SpannableStringBuilder;Z)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 302
    :cond_0
    if-eqz v0, :cond_1

    .line 303
    sget-object v1, Lcom/twitter/android/widget/TweetCarouselView;->a:Landroid/text/TextPaint;

    .line 304
    iget v2, p0, Lcom/twitter/android/widget/TweetCarouselView;->q:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 305
    iget-object v2, p0, Lcom/twitter/android/widget/TweetCarouselView;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/twitter/ui/widget/ax;->a(Landroid/content/Context;)Lcom/twitter/ui/widget/ax;

    move-result-object v2

    iget-object v2, v2, Lcom/twitter/ui/widget/ax;->a:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 308
    :cond_1
    return-object v0

    .line 294
    :cond_2
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetCarouselView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->b:Landroid/content/Context;

    .line 107
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetCarouselView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 108
    const v1, 0x7f1200c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetCarouselView;->s:I

    .line 109
    const v1, 0x7f1200c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->t:I

    .line 111
    sget v0, Lcom/twitter/library/util/al;->a:F

    iput v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->q:F

    .line 112
    iget v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->q:F

    invoke-static {v0}, Lcom/twitter/library/util/al;->a(F)F

    move-result v0

    iput v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->r:F

    .line 113
    return-void
.end method

.method static synthetic b(Lcom/twitter/android/widget/TweetCarouselView;)Lcom/twitter/model/core/Tweet;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->i:Lcom/twitter/model/core/Tweet;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v2, -0x2

    .line 353
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->j:Lcom/twitter/library/widget/renderablecontent/e;

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->j:Lcom/twitter/library/widget/renderablecontent/e;

    invoke-interface {v0}, Lcom/twitter/library/widget/renderablecontent/e;->bh_()V

    .line 355
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->j:Lcom/twitter/library/widget/renderablecontent/e;

    invoke-interface {v0}, Lcom/twitter/library/widget/renderablecontent/e;->d()Landroid/view/View;

    move-result-object v1

    .line 356
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->i:Lcom/twitter/model/core/Tweet;

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/TweetCarouselView;->b(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetCarouselView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f04005e

    iget-object v3, p0, Lcom/twitter/android/widget/TweetCarouselView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 359
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->c:Landroid/view/ViewGroup;

    const v2, 0x7f1301d5

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->k:Landroid/view/ViewGroup;

    .line 360
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 371
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->j:Lcom/twitter/library/widget/renderablecontent/e;

    invoke-interface {v0}, Lcom/twitter/library/widget/renderablecontent/e;->c()V

    .line 373
    :cond_1
    return-void

    .line 362
    :cond_2
    if-eqz v1, :cond_0

    .line 363
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 366
    const/4 v2, 0x3

    const v3, 0x7f130019

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 367
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private b(Lcom/twitter/model/core/Tweet;)Z
    .locals 1

    .prologue
    .line 395
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/twitter/android/widget/TweetCarouselView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->b:Landroid/content/Context;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 376
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->j:Lcom/twitter/library/widget/renderablecontent/e;

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->j:Lcom/twitter/library/widget/renderablecontent/e;

    .line 378
    iput-object v3, p0, Lcom/twitter/android/widget/TweetCarouselView;->j:Lcom/twitter/library/widget/renderablecontent/e;

    .line 380
    iget-object v1, p0, Lcom/twitter/android/widget/TweetCarouselView;->k:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 381
    iget-object v1, p0, Lcom/twitter/android/widget/TweetCarouselView;->c:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/twitter/android/widget/TweetCarouselView;->k:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 382
    iget-object v1, p0, Lcom/twitter/android/widget/TweetCarouselView;->k:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 383
    iput-object v3, p0, Lcom/twitter/android/widget/TweetCarouselView;->k:Landroid/view/ViewGroup;

    .line 390
    :cond_0
    :goto_0
    invoke-interface {v0}, Lcom/twitter/library/widget/renderablecontent/e;->bi_()V

    .line 392
    :cond_1
    return-void

    .line 385
    :cond_2
    invoke-interface {v0}, Lcom/twitter/library/widget/renderablecontent/e;->d()Landroid/view/View;

    move-result-object v1

    .line 386
    if-eqz v1, :cond_0

    .line 387
    iget-object v2, p0, Lcom/twitter/android/widget/TweetCarouselView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/twitter/android/widget/TweetCarouselView;)Lcom/twitter/android/sn;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->m:Lcom/twitter/android/sn;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->h:Lcom/twitter/ui/widget/BadgeView;

    iget v1, p0, Lcom/twitter/android/widget/TweetCarouselView;->r:F

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/BadgeView;->setContentSize(F)V

    .line 406
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->h:Lcom/twitter/ui/widget/BadgeView;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/ui/widget/BadgeView;->a(ILjava/lang/String;)V

    .line 407
    return-void
.end method

.method public a(Lcom/twitter/model/core/Tweet;Lcjm;)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 159
    if-nez p1, :cond_0

    .line 239
    :goto_0
    return-void

    .line 162
    :cond_0
    iput-object p1, p0, Lcom/twitter/android/widget/TweetCarouselView;->i:Lcom/twitter/model/core/Tweet;

    .line 164
    const v0, 0x7f120004

    .line 166
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 164
    invoke-virtual {p2, v7, v0}, Lcjm;->a(ILjava/lang/Object;)V

    .line 167
    const/4 v0, 0x4

    new-instance v1, Lcom/twitter/android/widget/fg;

    invoke-direct {v1, p0}, Lcom/twitter/android/widget/fg;-><init>(Lcom/twitter/android/widget/TweetCarouselView;)V

    invoke-virtual {p2, v0, v1}, Lcjm;->a(ILjava/lang/Object;)V

    .line 198
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->d:Lcom/twitter/library/media/widget/UserImageView;

    iget-object v1, p1, Lcom/twitter/model/core/Tweet;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/widget/UserImageView;->a(Ljava/lang/String;)Z

    .line 199
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->d:Lcom/twitter/library/media/widget/UserImageView;

    new-instance v1, Lcom/twitter/android/widget/fh;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/widget/fh;-><init>(Lcom/twitter/android/widget/TweetCarouselView;Lcom/twitter/model/core/Tweet;)V

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/widget/UserImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->e:Lcom/twitter/ui/widget/TweetHeaderView;

    iget v1, p0, Lcom/twitter/android/widget/TweetCarouselView;->q:F

    iget v2, p0, Lcom/twitter/android/widget/TweetCarouselView;->r:F

    iget v3, p0, Lcom/twitter/android/widget/TweetCarouselView;->r:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/ui/widget/TweetHeaderView;->a(FFF)V

    .line 211
    invoke-static {}, Lcbh;->a()Lcbh;

    move-result-object v0

    invoke-virtual {v0}, Lcbh;->c()Z

    move-result v5

    .line 212
    invoke-static {}, Lcbh;->a()Lcbh;

    move-result-object v0

    invoke-virtual {v0}, Lcbh;->d()Z

    move-result v6

    .line 213
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->e:Lcom/twitter/ui/widget/TweetHeaderView;

    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/twitter/library/view/ab;->a(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-boolean v8, p1, Lcom/twitter/model/core/Tweet;->H:Z

    if-eqz v8, :cond_1

    if-eqz v5, :cond_1

    move v5, v7

    :goto_1
    iget-boolean v8, p1, Lcom/twitter/model/core/Tweet;->B:Z

    if-eqz v8, :cond_2

    if-eqz v6, :cond_2

    move v6, v7

    :goto_2
    invoke-virtual/range {v0 .. v6}, Lcom/twitter/ui/widget/TweetHeaderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 217
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->f:Lcom/twitter/library/widget/TextContentView;

    invoke-direct {p0, p1}, Lcom/twitter/android/widget/TweetCarouselView;->a(Lcom/twitter/model/core/Tweet;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/TextContentView;->setTruncateText(Ljava/lang/CharSequence;)V

    .line 219
    invoke-static {p1}, Lcom/twitter/library/provider/aq;->b(Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/provider/aq;

    move-result-object v0

    .line 220
    invoke-virtual {v0, v7}, Lcom/twitter/library/provider/aq;->b(Z)Lcom/twitter/library/provider/aq;

    move-result-object v0

    .line 221
    invoke-direct {p0, p1}, Lcom/twitter/android/widget/TweetCarouselView;->b(Lcom/twitter/model/core/Tweet;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/provider/aq;->a(Z)Lcom/twitter/library/provider/aq;

    move-result-object v0

    .line 222
    invoke-static {p1}, Lcih;->a(Lcom/twitter/model/core/Tweet;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/provider/aq;->e(Z)Lcom/twitter/library/provider/aq;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Lcom/twitter/library/provider/aq;->a()Lcom/twitter/model/core/i;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/twitter/android/widget/TweetCarouselView;->f:Lcom/twitter/library/widget/TextContentView;

    iget-object v2, v0, Lcom/twitter/model/core/i;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/twitter/model/core/i;->b:Lcom/twitter/model/core/bm;

    invoke-direct {p0, v2, v0}, Lcom/twitter/android/widget/TweetCarouselView;->a(Ljava/lang/String;Lcom/twitter/model/core/bm;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->n()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/widget/TextContentView;->b(Ljava/lang/CharSequence;Z)V

    .line 227
    invoke-direct {p0}, Lcom/twitter/android/widget/TweetCarouselView;->c()V

    .line 228
    invoke-virtual {p2}, Lcjm;->a()Lcom/twitter/library/widget/renderablecontent/e;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->j:Lcom/twitter/library/widget/renderablecontent/e;

    .line 229
    invoke-direct {p0}, Lcom/twitter/android/widget/TweetCarouselView;->b()V

    .line 231
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->o:Lcom/twitter/library/revenue/a;

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetCarouselView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/twitter/library/revenue/a;->a(Lcom/twitter/model/core/Tweet;Landroid/content/res/Resources;)V

    .line 234
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->g:Lcom/twitter/library/widget/InlineActionBar;

    iget-object v1, p0, Lcom/twitter/android/widget/TweetCarouselView;->n:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/InlineActionBar;->setFriendshipCache(Lcom/twitter/library/util/FriendshipCache;)V

    .line 235
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->g:Lcom/twitter/library/widget/InlineActionBar;

    invoke-virtual {v0, p0}, Lcom/twitter/library/widget/InlineActionBar;->setOnInlineActionClickListener(Lcom/twitter/library/widget/n;)V

    .line 236
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->g:Lcom/twitter/library/widget/InlineActionBar;

    invoke-virtual {v0, p1}, Lcom/twitter/library/widget/InlineActionBar;->setTweet(Lcom/twitter/model/core/Tweet;)V

    .line 238
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetCarouselView;->invalidate()V

    goto/16 :goto_0

    :cond_1
    move v5, v4

    .line 213
    goto :goto_1

    :cond_2
    move v6, v4

    goto :goto_2
.end method

.method public a(Lcom/twitter/model/core/TweetActionType;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 313
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->m:Lcom/twitter/android/sn;

    if-nez v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->m:Lcom/twitter/android/sn;

    iget-object v2, p0, Lcom/twitter/android/widget/TweetCarouselView;->i:Lcom/twitter/model/core/Tweet;

    iget-object v3, p0, Lcom/twitter/android/widget/TweetCarouselView;->n:Lcom/twitter/library/util/FriendshipCache;

    const-string/jumbo v6, "unspecified"

    move-object v1, p1

    move-object v5, p0

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/android/sn;->a(Lcom/twitter/model/core/TweetActionType;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/util/FriendshipCache;Lcom/twitter/library/scribe/TwitterScribeItem;Lcom/twitter/library/widget/av;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 333
    if-eqz p1, :cond_0

    .line 334
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->i:Lcom/twitter/model/core/Tweet;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/twitter/model/core/Tweet;->a:Z

    .line 335
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->i:Lcom/twitter/model/core/Tweet;

    iget v1, v0, Lcom/twitter/model/core/Tweet;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/twitter/model/core/Tweet;->k:I

    .line 341
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->g:Lcom/twitter/library/widget/InlineActionBar;

    invoke-virtual {v0}, Lcom/twitter/library/widget/InlineActionBar;->b()V

    .line 342
    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->i:Lcom/twitter/model/core/Tweet;

    iput-boolean v2, v0, Lcom/twitter/model/core/Tweet;->a:Z

    .line 338
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->i:Lcom/twitter/model/core/Tweet;

    iget-object v1, p0, Lcom/twitter/android/widget/TweetCarouselView;->i:Lcom/twitter/model/core/Tweet;

    iget v1, v1, Lcom/twitter/model/core/Tweet;->k:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/twitter/model/core/Tweet;->k:I

    goto :goto_0
.end method

.method public b(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 346
    iget-object v3, p0, Lcom/twitter/android/widget/TweetCarouselView;->i:Lcom/twitter/model/core/Tweet;

    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/twitter/model/core/Tweet;->c:Z

    .line 347
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->i:Lcom/twitter/model/core/Tweet;

    iget-object v3, p0, Lcom/twitter/android/widget/TweetCarouselView;->i:Lcom/twitter/model/core/Tweet;

    iget v3, v3, Lcom/twitter/model/core/Tweet;->h:I

    if-eqz p1, :cond_0

    const/4 v1, -0x1

    :cond_0
    add-int/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/twitter/model/core/Tweet;->h:I

    .line 349
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->g:Lcom/twitter/library/widget/InlineActionBar;

    invoke-virtual {v0}, Lcom/twitter/library/widget/InlineActionBar;->b()V

    .line 350
    return-void

    :cond_1
    move v0, v2

    .line 346
    goto :goto_0
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->g:Lcom/twitter/library/widget/InlineActionBar;

    invoke-virtual {v0}, Lcom/twitter/library/widget/InlineActionBar;->b()V

    .line 325
    return-void
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 329
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 411
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 412
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->g:Lcom/twitter/library/widget/InlineActionBar;

    invoke-virtual {v0, p1, p0}, Lcom/twitter/library/widget/InlineActionBar;->a(Landroid/graphics/Canvas;Landroid/view/ViewGroup;)V

    .line 413
    return-void
.end method

.method public e(Z)V
    .locals 2

    .prologue
    .line 400
    iget-object v1, p0, Lcom/twitter/android/widget/TweetCarouselView;->h:Lcom/twitter/ui/widget/BadgeView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/ui/widget/BadgeView;->setVisibility(I)V

    .line 401
    return-void

    .line 400
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public final getTweet()Lcom/twitter/model/core/Tweet;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->i:Lcom/twitter/model/core/Tweet;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 142
    invoke-direct {p0}, Lcom/twitter/android/widget/TweetCarouselView;->c()V

    .line 143
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 117
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 119
    const v0, 0x7f13047f

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetCarouselView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->c:Landroid/view/ViewGroup;

    .line 121
    const v0, 0x7f1302fb

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetCarouselView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/widget/UserImageView;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->d:Lcom/twitter/library/media/widget/UserImageView;

    .line 123
    const v0, 0x7f13003a

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetCarouselView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TweetHeaderView;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->e:Lcom/twitter/ui/widget/TweetHeaderView;

    .line 124
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->e:Lcom/twitter/ui/widget/TweetHeaderView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TweetHeaderView;->b(Z)V

    .line 125
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->e:Lcom/twitter/ui/widget/TweetHeaderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TweetHeaderView;->setShowTimestamp(Z)V

    .line 127
    const v0, 0x7f130019

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetCarouselView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/TextContentView;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->f:Lcom/twitter/library/widget/TextContentView;

    .line 128
    iget-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->f:Lcom/twitter/library/widget/TextContentView;

    iget v1, p0, Lcom/twitter/android/widget/TweetCarouselView;->q:F

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/TextContentView;->setContentSize(F)V

    .line 130
    const v0, 0x7f1301d4

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetCarouselView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/InlineActionBar;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->g:Lcom/twitter/library/widget/InlineActionBar;

    .line 132
    const v0, 0x7f130420

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetCarouselView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/BadgeView;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->h:Lcom/twitter/ui/widget/BadgeView;

    .line 134
    new-instance v0, Lcom/twitter/library/revenue/a;

    const v1, 0x7f020291

    const v2, 0x7f020292

    const v3, 0x7f02028f

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/twitter/library/revenue/a;-><init>(Lcom/twitter/library/revenue/b;III)V

    iput-object v0, p0, Lcom/twitter/android/widget/TweetCarouselView;->o:Lcom/twitter/library/revenue/a;

    .line 137
    return-void
.end method

.method public setFriendshipCache(Lcom/twitter/library/util/FriendshipCache;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/twitter/android/widget/TweetCarouselView;->n:Lcom/twitter/library/util/FriendshipCache;

    .line 147
    return-void
.end method

.method public setTweetActionsHandler(Lcom/twitter/android/sn;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/twitter/android/widget/TweetCarouselView;->m:Lcom/twitter/android/sn;

    .line 155
    return-void
.end method

.method public setTweetViewClickHandler(Lcom/twitter/android/vw;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/twitter/android/widget/TweetCarouselView;->l:Lcom/twitter/android/vw;

    .line 151
    return-void
.end method
