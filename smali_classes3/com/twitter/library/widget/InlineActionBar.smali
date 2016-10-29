.class public Lcom/twitter/library/widget/InlineActionBar;
.super Landroid/view/ViewGroup;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TweetActionType;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TweetActionType;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TweetActionType;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TweetActionType;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Z

.field private static final f:Landroid/graphics/Paint;


# instance fields
.field private g:Landroid/graphics/Bitmap;

.field private final h:Z

.field private final i:I

.field private final j:F

.field private final k:Z

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/twitter/model/core/TweetActionType;",
            "Lcik;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcik;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TweetActionType;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/twitter/model/core/Tweet;

.field private p:Z

.field private q:Z

.field private r:F

.field private s:Lcom/twitter/library/util/FriendshipCache;

.field private t:Lcij;

.field private u:Lcwe;

.field private v:Lcom/twitter/library/widget/n;

.field private w:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 57
    sget-object v0, Lcom/twitter/model/core/TweetActionType;->d:Lcom/twitter/model/core/TweetActionType;

    new-array v1, v6, [Lcom/twitter/model/core/TweetActionType;

    sget-object v2, Lcom/twitter/model/core/TweetActionType;->c:Lcom/twitter/model/core/TweetActionType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/twitter/model/core/TweetActionType;->b:Lcom/twitter/model/core/TweetActionType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/twitter/model/core/TweetActionType;->o:Lcom/twitter/model/core/TweetActionType;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/twitter/library/widget/InlineActionBar;->a:Ljava/util/List;

    .line 59
    sget-object v0, Lcom/twitter/model/core/TweetActionType;->d:Lcom/twitter/model/core/TweetActionType;

    new-array v1, v6, [Lcom/twitter/model/core/TweetActionType;

    sget-object v2, Lcom/twitter/model/core/TweetActionType;->c:Lcom/twitter/model/core/TweetActionType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/twitter/model/core/TweetActionType;->b:Lcom/twitter/model/core/TweetActionType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/twitter/model/core/TweetActionType;->n:Lcom/twitter/model/core/TweetActionType;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/twitter/library/widget/InlineActionBar;->b:Ljava/util/List;

    .line 61
    sget-object v0, Lcom/twitter/model/core/TweetActionType;->b:Lcom/twitter/model/core/TweetActionType;

    new-array v1, v5, [Lcom/twitter/model/core/TweetActionType;

    sget-object v2, Lcom/twitter/model/core/TweetActionType;->c:Lcom/twitter/model/core/TweetActionType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/twitter/model/core/TweetActionType;->d:Lcom/twitter/model/core/TweetActionType;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/twitter/library/widget/InlineActionBar;->c:Ljava/util/List;

    .line 63
    sget-object v0, Lcom/twitter/model/core/TweetActionType;->b:Lcom/twitter/model/core/TweetActionType;

    new-array v1, v5, [Lcom/twitter/model/core/TweetActionType;

    sget-object v2, Lcom/twitter/model/core/TweetActionType;->d:Lcom/twitter/model/core/TweetActionType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/twitter/model/core/TweetActionType;->c:Lcom/twitter/model/core/TweetActionType;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/twitter/library/widget/InlineActionBar;->d:Ljava/util/List;

    .line 66
    invoke-static {}, Lcvo;->a()Z

    move-result v0

    sput-boolean v0, Lcom/twitter/library/widget/InlineActionBar;->e:Z

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/twitter/library/widget/InlineActionBar;->f:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/library/widget/InlineActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 104
    sget v0, Lbjs;->inlineActionBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/library/widget/InlineActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    invoke-static {}, Lcom/twitter/util/ak;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/library/widget/InlineActionBar;->k:Z

    .line 83
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/twitter/model/core/TweetActionType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->l:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->m:Ljava/util/List;

    .line 89
    iput-boolean v3, p0, Lcom/twitter/library/widget/InlineActionBar;->p:Z

    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/twitter/library/widget/InlineActionBar;->w:J

    .line 109
    invoke-virtual {p0}, Lcom/twitter/library/widget/InlineActionBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 111
    sget-object v1, Lbkc;->InlineActionBar:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 112
    sget v2, Lbkc;->InlineActionBar_displayBorder:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/twitter/library/widget/InlineActionBar;->h:Z

    .line 113
    sget v2, Lbjt;->light_gray:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/twitter/library/widget/InlineActionBar;->i:I

    .line 114
    sget v0, Lbkc;->InlineActionBar_inlineActionBorderWidth:I

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/twitter/library/widget/InlineActionBar;->j:F

    .line 115
    sget v0, Lcom/twitter/library/util/al;->a:F

    invoke-static {v0}, Lcom/twitter/library/util/al;->a(F)F

    move-result v0

    iput v0, p0, Lcom/twitter/library/widget/InlineActionBar;->r:F

    .line 116
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    return-void
.end method

.method private a(I)I
    .locals 2

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/twitter/library/widget/InlineActionBar;->p:Z

    if-eqz v0, :cond_0

    .line 321
    :goto_0
    return p1

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/library/widget/InlineActionBar;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/library/widget/InlineActionBar;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 317
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x4

    .line 319
    add-int/2addr v0, v1

    .line 320
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 321
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/library/widget/InlineActionBar;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/twitter/library/widget/InlineActionBar;->g:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcik;)Lcom/twitter/library/widget/InlineActionView;
    .locals 1

    .prologue
    .line 55
    invoke-static {p0}, Lcom/twitter/library/widget/InlineActionBar;->c(Lcik;)Lcom/twitter/library/widget/InlineActionView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/library/widget/InlineActionBar;)Lcom/twitter/library/widget/n;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->v:Lcom/twitter/library/widget/n;

    return-object v0
.end method

.method private static a(IILcom/twitter/library/widget/InlineActionView;)V
    .locals 2

    .prologue
    .line 280
    invoke-virtual {p2}, Lcom/twitter/library/widget/InlineActionView;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p0

    invoke-virtual {p2}, Lcom/twitter/library/widget/InlineActionView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p2, p0, p1, v0, v1}, Lcom/twitter/library/widget/InlineActionView;->layout(IIII)V

    .line 281
    return-void
.end method

.method private a(ILcom/twitter/library/widget/InlineActionView;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 256
    invoke-virtual {p2}, Lcom/twitter/library/widget/InlineActionView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 277
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-boolean v0, p0, Lcom/twitter/library/widget/InlineActionBar;->q:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcbh;->a()Lcbh;

    move-result-object v0

    invoke-virtual {v0}, Lcbh;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x3

    .line 262
    :goto_1
    if-lt p1, v0, :cond_4

    .line 264
    iget-boolean v0, p0, Lcom/twitter/library/widget/InlineActionBar;->k:Z

    if-eqz v0, :cond_3

    .line 265
    invoke-virtual {p0}, Lcom/twitter/library/widget/InlineActionBar;->getPaddingLeft()I

    move-result v0

    invoke-static {v0, v2, p2}, Lcom/twitter/library/widget/InlineActionBar;->a(IILcom/twitter/library/widget/InlineActionView;)V

    goto :goto_0

    .line 260
    :cond_2
    const/4 v0, 0x4

    goto :goto_1

    .line 267
    :cond_3
    invoke-virtual {p0}, Lcom/twitter/library/widget/InlineActionBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/library/widget/InlineActionBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Lcom/twitter/library/widget/InlineActionView;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0, v2, p2}, Lcom/twitter/library/widget/InlineActionBar;->a(IILcom/twitter/library/widget/InlineActionView;)V

    goto :goto_0

    .line 270
    :cond_4
    iget-boolean v0, p0, Lcom/twitter/library/widget/InlineActionBar;->k:Z

    if-eqz v0, :cond_5

    .line 271
    invoke-virtual {p0}, Lcom/twitter/library/widget/InlineActionBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/library/widget/InlineActionBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    mul-int v1, p3, p1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Lcom/twitter/library/widget/InlineActionView;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0, v2, p2}, Lcom/twitter/library/widget/InlineActionBar;->a(IILcom/twitter/library/widget/InlineActionView;)V

    goto :goto_0

    .line 274
    :cond_5
    invoke-virtual {p0}, Lcom/twitter/library/widget/InlineActionBar;->getPaddingLeft()I

    move-result v0

    mul-int v1, p3, p1

    add-int/2addr v0, v1

    invoke-static {v0, v2, p2}, Lcom/twitter/library/widget/InlineActionBar;->a(IILcom/twitter/library/widget/InlineActionView;)V

    goto :goto_0
.end method

.method private a(Lcik;Z)V
    .locals 3

    .prologue
    .line 186
    sget-boolean v0, Lcom/twitter/library/widget/InlineActionBar;->e:Z

    if-eqz v0, :cond_1

    .line 187
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->v:Lcom/twitter/library/widget/n;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->v:Lcom/twitter/library/widget/n;

    invoke-virtual {p1}, Lcik;->a()Lcom/twitter/model/core/TweetActionType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twitter/library/widget/n;->a(Lcom/twitter/model/core/TweetActionType;)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-static {p1}, Lcom/twitter/library/widget/InlineActionBar;->c(Lcik;)Lcom/twitter/library/widget/InlineActionView;

    move-result-object v0

    .line 194
    invoke-virtual {p1}, Lcik;->a()Lcom/twitter/model/core/TweetActionType;

    move-result-object v1

    .line 195
    sget-object v2, Lcom/twitter/model/core/TweetActionType;->b:Lcom/twitter/model/core/TweetActionType;

    if-ne v1, v2, :cond_3

    invoke-static {}, Lcom/twitter/library/widget/InlineActionBar;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 196
    iget-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->u:Lcwe;

    if-nez v0, :cond_2

    .line 197
    new-instance v0, Lcwe;

    invoke-direct {v0, p0}, Lcwe;-><init>(Landroid/view/View;)V

    .line 198
    invoke-static {}, Lcay;->a()Lcay;

    move-result-object v1

    invoke-virtual {v1}, Lcay;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcwe;->a(Ljava/util/List;)Lcwe;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->u:Lcwe;

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->u:Lcwe;

    new-instance v1, Lcom/twitter/library/widget/m;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/twitter/library/widget/m;-><init>(Lcom/twitter/library/widget/InlineActionBar;Lcik;ZLcom/twitter/library/widget/k;)V

    invoke-virtual {v0, v1}, Lcwe;->a(Lcwm;)Lcwe;

    move-result-object v0

    invoke-virtual {v0}, Lcwe;->a()V

    goto :goto_0

    .line 202
    :cond_3
    invoke-static {}, Lcom/twitter/library/widget/InlineActionBar;->c()Landroid/view/animation/Animation;

    move-result-object v1

    .line 203
    new-instance v2, Lcom/twitter/library/widget/k;

    invoke-direct {v2, p0, p2, p1}, Lcom/twitter/library/widget/k;-><init>(Lcom/twitter/library/widget/InlineActionBar;ZLcik;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 211
    invoke-virtual {v0}, Lcom/twitter/library/widget/InlineActionView;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 213
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/twitter/library/widget/InlineActionBar;)Lcom/twitter/model/core/Tweet;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->o:Lcom/twitter/model/core/Tweet;

    return-object v0
.end method

.method private static b(I)Lcom/twitter/model/core/TweetActionType;
    .locals 3
    .param p0    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 535
    sget v0, Lbjw;->inline_reply:I

    if-ne p0, v0, :cond_0

    .line 536
    sget-object v0, Lcom/twitter/model/core/TweetActionType;->d:Lcom/twitter/model/core/TweetActionType;

    .line 544
    :goto_0
    return-object v0

    .line 537
    :cond_0
    sget v0, Lbjw;->inline_retweet:I

    if-ne p0, v0, :cond_1

    .line 538
    sget-object v0, Lcom/twitter/model/core/TweetActionType;->c:Lcom/twitter/model/core/TweetActionType;

    goto :goto_0

    .line 539
    :cond_1
    sget v0, Lbjw;->inline_like:I

    if-ne p0, v0, :cond_2

    .line 540
    sget-object v0, Lcom/twitter/model/core/TweetActionType;->b:Lcom/twitter/model/core/TweetActionType;

    goto :goto_0

    .line 541
    :cond_2
    sget v0, Lbjw;->inline_analytics:I

    if-ne p0, v0, :cond_3

    .line 542
    sget-object v0, Lcom/twitter/model/core/TweetActionType;->o:Lcom/twitter/model/core/TweetActionType;

    goto :goto_0

    .line 543
    :cond_3
    sget v0, Lbjw;->inline_dm:I

    if-ne p0, v0, :cond_4

    .line 544
    sget-object v0, Lcom/twitter/model/core/TweetActionType;->n:Lcom/twitter/model/core/TweetActionType;

    goto :goto_0

    .line 546
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Lcik;)V
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->l:Ljava/util/Map;

    invoke-virtual {p1}, Lcik;->a()Lcom/twitter/model/core/TweetActionType;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    return-void
.end method

.method public static c()Landroid/view/animation/Animation;
    .locals 16

    .prologue
    const v2, 0x3fb33333    # 1.4f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    .line 419
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 422
    const-wide/16 v8, 0x55

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 423
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 425
    new-instance v7, Landroid/view/animation/ScaleAnimation;

    move v8, v2

    move v9, v1

    move v10, v2

    move v11, v1

    move v12, v5

    move v13, v6

    move v14, v5

    move v15, v6

    invoke-direct/range {v7 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 428
    const-wide/16 v2, 0xa5

    invoke-virtual {v7, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 430
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 431
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 432
    invoke-virtual {v1, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 434
    return-object v1
.end method

.method private static c(Lcik;)Lcom/twitter/library/widget/InlineActionView;
    .locals 1

    .prologue
    .line 574
    invoke-virtual {p0}, Lcik;->e()Lcil;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/InlineActionView;

    return-object v0
.end method

.method private d()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 227
    invoke-virtual {p0}, Lcom/twitter/library/widget/InlineActionBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/library/widget/InlineActionBar;->getPaddingRight()I

    move-result v1

    sub-int v2, v0, v1

    .line 228
    invoke-virtual {p0}, Lcom/twitter/library/widget/InlineActionBar;->getPaddingLeft()I

    move-result v1

    .line 229
    iget-boolean v5, p0, Lcom/twitter/library/widget/InlineActionBar;->k:Z

    .line 230
    iget-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    move v3, v4

    .line 231
    :goto_0
    if-ge v3, v6, :cond_1

    .line 232
    iget-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->m:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcik;

    invoke-static {v0}, Lcom/twitter/library/widget/InlineActionBar;->c(Lcik;)Lcom/twitter/library/widget/InlineActionView;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lcom/twitter/library/widget/InlineActionView;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_2

    .line 234
    if-eqz v5, :cond_0

    .line 235
    invoke-virtual {v0}, Lcom/twitter/library/widget/InlineActionView;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v2, v7

    invoke-static {v7, v4, v0}, Lcom/twitter/library/widget/InlineActionBar;->a(IILcom/twitter/library/widget/InlineActionView;)V

    .line 236
    invoke-virtual {v0}, Lcom/twitter/library/widget/InlineActionView;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v2, v0

    move v9, v1

    move v1, v0

    move v0, v9

    .line 231
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 238
    :cond_0
    invoke-static {v1, v4, v0}, Lcom/twitter/library/widget/InlineActionBar;->a(IILcom/twitter/library/widget/InlineActionView;)V

    .line 239
    invoke-virtual {v0}, Lcom/twitter/library/widget/InlineActionView;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v2

    goto :goto_1

    .line 243
    :cond_1
    return-void

    :cond_2
    move v0, v1

    move v1, v2

    goto :goto_1
.end method

.method private d(Lcom/twitter/model/core/TweetActionType;)V
    .locals 2

    .prologue
    .line 172
    sget-boolean v0, Lcom/twitter/library/util/al;->b:Z

    if-eqz v0, :cond_0

    .line 173
    sget-object v0, Lcom/twitter/model/core/TweetActionType;->d:Lcom/twitter/model/core/TweetActionType;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    .line 175
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/library/widget/InlineActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/util/ad;->a(Landroid/content/Context;)Lcom/twitter/android/util/ad;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/android/util/ad;->a(I)I

    .line 177
    :cond_0
    return-void

    .line 173
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/twitter/library/widget/InlineActionBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/library/widget/InlineActionBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/twitter/library/widget/InlineActionBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v2, v0, 0x4

    .line 248
    iget-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 249
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 250
    iget-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcik;

    invoke-static {v0}, Lcom/twitter/library/widget/InlineActionBar;->c(Lcik;)Lcom/twitter/library/widget/InlineActionView;

    move-result-object v0

    .line 251
    invoke-direct {p0, v1, v0, v2}, Lcom/twitter/library/widget/InlineActionBar;->a(ILcom/twitter/library/widget/InlineActionView;I)V

    .line 249
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 253
    :cond_0
    return-void
.end method

.method private f()Z
    .locals 6

    .prologue
    .line 563
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 564
    iget-wide v2, p0, Lcom/twitter/library/widget/InlineActionBar;->w:J

    sub-long v2, v0, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 565
    iput-wide v0, p0, Lcom/twitter/library/widget/InlineActionBar;->w:J

    .line 566
    const/4 v0, 0x1

    .line 568
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static g()Z
    .locals 1

    .prologue
    .line 578
    invoke-static {}, Lcay;->a()Lcay;

    move-result-object v0

    invoke-virtual {v0}, Lcay;->b()Z

    move-result v0

    return v0
.end method

.method private getDesiredHeight()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 551
    .line 552
    invoke-virtual {p0}, Lcom/twitter/library/widget/InlineActionBar;->getChildCount()I

    move-result v2

    move v1, v0

    .line 553
    :goto_0
    if-ge v1, v2, :cond_1

    .line 554
    invoke-virtual {p0, v1}, Lcom/twitter/library/widget/InlineActionBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 555
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 556
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 553
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 559
    :cond_1
    return v0
.end method

.method private getInlineActionConfig()Lcij;
    .locals 3

    .prologue
    .line 484
    iget-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->t:Lcij;

    if-nez v0, :cond_0

    .line 485
    new-instance v0, Lcij;

    iget-object v1, p0, Lcom/twitter/library/widget/InlineActionBar;->s:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {p0}, Lcom/twitter/library/widget/InlineActionBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcij;-><init>(Lcom/twitter/library/util/FriendshipCache;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->t:Lcij;

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->t:Lcij;

    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v1

    iput-object v1, v0, Lcij;->c:Lcom/twitter/model/core/TwitterUser;

    .line 488
    iget-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->t:Lcij;

    return-object v0
.end method

.method private setupChildView(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 492
    instance-of v0, p1, Lcom/twitter/library/widget/InlineActionView;

    if-nez v0, :cond_0

    .line 527
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 496
    check-cast v0, Lcom/twitter/library/widget/InlineActionView;

    .line 497
    invoke-virtual {v0, p0}, Lcom/twitter/library/widget/InlineActionView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    iget v1, p0, Lcom/twitter/library/widget/InlineActionBar;->r:F

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/InlineActionView;->setBylineSize(F)V

    .line 500
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/InlineActionView;->setSoundEffectsEnabled(Z)V

    .line 501
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/twitter/library/widget/InlineActionBar;->b(I)Lcom/twitter/model/core/TweetActionType;

    move-result-object v1

    .line 502
    sget-object v2, Lcom/twitter/library/widget/l;->a:[I

    invoke-virtual {v1}, Lcom/twitter/model/core/TweetActionType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 504
    :pswitch_0
    new-instance v1, Lcio;

    invoke-direct {v1, v0}, Lcio;-><init>(Lcil;)V

    invoke-direct {p0, v1}, Lcom/twitter/library/widget/InlineActionBar;->b(Lcik;)V

    goto :goto_0

    .line 508
    :pswitch_1
    new-instance v1, Lcip;

    invoke-direct {v1, v0}, Lcip;-><init>(Lcil;)V

    invoke-direct {p0, v1}, Lcom/twitter/library/widget/InlineActionBar;->b(Lcik;)V

    goto :goto_0

    .line 512
    :pswitch_2
    new-instance v1, Lcii;

    invoke-direct {v1, v0}, Lcii;-><init>(Lcil;)V

    invoke-direct {p0, v1}, Lcom/twitter/library/widget/InlineActionBar;->b(Lcik;)V

    goto :goto_0

    .line 516
    :pswitch_3
    new-instance v1, Lcig;

    invoke-direct {v1, v0}, Lcig;-><init>(Lcil;)V

    invoke-direct {p0, v1}, Lcom/twitter/library/widget/InlineActionBar;->b(Lcik;)V

    goto :goto_0

    .line 520
    :pswitch_4
    new-instance v1, Lciq;

    invoke-direct {v1, v0}, Lciq;-><init>(Lcil;)V

    invoke-direct {p0, v1}, Lcom/twitter/library/widget/InlineActionBar;->b(Lcik;)V

    goto :goto_0

    .line 502
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 358
    invoke-static {}, Lcbh;->a()Lcbh;

    move-result-object v0

    invoke-virtual {v0}, Lcbh;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    sget-object v0, Lcom/twitter/library/widget/InlineActionBar;->c:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/InlineActionBar;->setInlineActionTypes(Ljava/util/List;)V

    .line 367
    :goto_0
    return-void

    .line 360
    :cond_0
    invoke-static {}, Lcbh;->a()Lcbh;

    move-result-object v0

    invoke-virtual {v0}, Lcbh;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    sget-object v0, Lcom/twitter/library/widget/InlineActionBar;->d:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/InlineActionBar;->setInlineActionTypes(Ljava/util/List;)V

    goto :goto_0

    .line 362
    :cond_1
    iget-boolean v0, p0, Lcom/twitter/library/widget/InlineActionBar;->q:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcbh;->a()Lcbh;

    move-result-object v0

    invoke-virtual {v0}, Lcbh;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 363
    :cond_2
    sget-object v0, Lcom/twitter/library/widget/InlineActionBar;->a:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/InlineActionBar;->setInlineActionTypes(Ljava/util/List;)V

    goto :goto_0

    .line 365
    :cond_3
    sget-object v0, Lcom/twitter/library/widget/InlineActionBar;->b:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/InlineActionBar;->setInlineActionTypes(Ljava/util/List;)V

    goto :goto_0
.end method

.method public a(Landroid/graphics/Canvas;Landroid/view/ViewGroup;)V
    .locals 5

    .prologue
    .line 582
    iget-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/library/widget/InlineActionBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->l:Ljava/util/Map;

    sget-object v1, Lcom/twitter/model/core/TweetActionType;->b:Lcom/twitter/model/core/TweetActionType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcik;

    .line 584
    invoke-static {v0}, Lcom/twitter/library/widget/InlineActionBar;->c(Lcik;)Lcom/twitter/library/widget/InlineActionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/widget/InlineActionView;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    .line 585
    invoke-static {v0, p2}, Lcom/twitter/util/ui/r;->a(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    .line 586
    invoke-static {v0, p2}, Lcom/twitter/util/ui/r;->b(Landroid/view/View;Landroid/view/View;)I

    move-result v2

    .line 587
    iget-object v3, p0, Lcom/twitter/library/widget/InlineActionBar;->u:Lcwe;

    invoke-virtual {v3}, Lcwe;->b()Lcom/twitter/util/math/Size;

    move-result-object v3

    .line 588
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    .line 589
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    .line 590
    invoke-virtual {v3}, Lcom/twitter/util/math/Size;->a()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 591
    invoke-virtual {v3}, Lcom/twitter/util/math/Size;->b()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 592
    iget-object v2, p0, Lcom/twitter/library/widget/InlineActionBar;->g:Landroid/graphics/Bitmap;

    int-to-float v1, v1

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 594
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/model/core/TweetActionType;)Z
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcik;

    .line 450
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcik;->c()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/twitter/model/core/TweetActionType;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcik;

    .line 461
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcik;->d()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 5

    .prologue
    .line 401
    iget-object v2, p0, Lcom/twitter/library/widget/InlineActionBar;->o:Lcom/twitter/model/core/Tweet;

    .line 402
    if-nez v2, :cond_1

    .line 411
    :cond_0
    return-void

    .line 406
    :cond_1
    invoke-direct {p0}, Lcom/twitter/library/widget/InlineActionBar;->getInlineActionConfig()Lcij;

    move-result-object v3

    .line 407
    iget-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 408
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 409
    iget-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcik;

    invoke-virtual {v0, v2, v3}, Lcik;->c(Lcom/twitter/model/core/Tweet;Lcij;)Z

    .line 408
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public c(Lcom/twitter/model/core/TweetActionType;)Landroid/view/View;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcik;

    .line 479
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcik;->e()Lcil;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/InlineActionView;

    invoke-virtual {v0}, Lcom/twitter/library/widget/InlineActionView;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 327
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 328
    iget-boolean v0, p0, Lcom/twitter/library/widget/InlineActionBar;->h:Z

    if-eqz v0, :cond_0

    .line 329
    sget-object v5, Lcom/twitter/library/widget/InlineActionBar;->f:Landroid/graphics/Paint;

    .line 330
    iget v0, p0, Lcom/twitter/library/widget/InlineActionBar;->i:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 331
    iget v0, p0, Lcom/twitter/library/widget/InlineActionBar;->j:F

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 332
    invoke-virtual {p0}, Lcom/twitter/library/widget/InlineActionBar;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget v4, p0, Lcom/twitter/library/widget/InlineActionBar;->j:F

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 334
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->v:Lcom/twitter/library/widget/n;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/twitter/library/widget/InlineActionBar;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/twitter/library/widget/InlineActionBar;->b(I)Lcom/twitter/model/core/TweetActionType;

    move-result-object v1

    .line 135
    invoke-direct {p0, v1}, Lcom/twitter/library/widget/InlineActionBar;->d(Lcom/twitter/model/core/TweetActionType;)V

    .line 136
    iget-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->l:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcik;

    .line 137
    sget-object v2, Lcom/twitter/library/widget/l;->a:[I

    invoke-virtual {v1}, Lcom/twitter/model/core/TweetActionType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 139
    :pswitch_0
    iget-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->v:Lcom/twitter/library/widget/n;

    invoke-interface {v0, v1}, Lcom/twitter/library/widget/n;->a(Lcom/twitter/model/core/TweetActionType;)V

    goto :goto_0

    .line 143
    :pswitch_1
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/twitter/library/widget/InlineActionBar;->a(Lcik;Z)V

    .line 144
    iget-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->v:Lcom/twitter/library/widget/n;

    invoke-interface {v0, v1}, Lcom/twitter/library/widget/n;->a(Lcom/twitter/model/core/TweetActionType;)V

    goto :goto_0

    .line 148
    :pswitch_2
    iget-object v2, p0, Lcom/twitter/library/widget/InlineActionBar;->o:Lcom/twitter/model/core/Tweet;

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/twitter/library/widget/InlineActionBar;->o:Lcom/twitter/model/core/Tweet;

    iget-boolean v2, v2, Lcom/twitter/model/core/Tweet;->a:Z

    if-eqz v2, :cond_2

    .line 150
    iget-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->v:Lcom/twitter/library/widget/n;

    invoke-interface {v0, v1}, Lcom/twitter/library/widget/n;->a(Lcom/twitter/model/core/TweetActionType;)V

    goto :goto_0

    .line 152
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/twitter/library/widget/InlineActionBar;->a(Lcik;Z)V

    goto :goto_0

    .line 158
    :pswitch_3
    iget-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->v:Lcom/twitter/library/widget/n;

    invoke-interface {v0, v1}, Lcom/twitter/library/widget/n;->a(Lcom/twitter/model/core/TweetActionType;)V

    goto :goto_0

    .line 162
    :pswitch_4
    iget-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->v:Lcom/twitter/library/widget/n;

    invoke-interface {v0, v1}, Lcom/twitter/library/widget/n;->a(Lcom/twitter/model/core/TweetActionType;)V

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 285
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 286
    iget-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->u:Lcwe;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->u:Lcwe;

    invoke-virtual {v0}, Lcwe;->f()V

    .line 289
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 121
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 122
    invoke-virtual {p0}, Lcom/twitter/library/widget/InlineActionBar;->getChildCount()I

    move-result v1

    .line 123
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 124
    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/InlineActionBar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/twitter/library/widget/InlineActionBar;->setupChildView(Landroid/view/View;)V

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/library/widget/InlineActionBar;->a()V

    .line 127
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/twitter/library/widget/InlineActionBar;->p:Z

    if-eqz v0, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/twitter/library/widget/InlineActionBar;->d()V

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-direct {p0}, Lcom/twitter/library/widget/InlineActionBar;->e()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcom/twitter/library/widget/InlineActionBar;->a(I)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/twitter/library/widget/InlineActionBar;->measureChildren(II)V

    .line 294
    invoke-direct {p0}, Lcom/twitter/library/widget/InlineActionBar;->getDesiredHeight()I

    move-result v0

    invoke-static {v0, p2}, Lcom/twitter/library/widget/InlineActionBar;->resolveSize(II)I

    move-result v2

    .line 296
    iget-boolean v0, p0, Lcom/twitter/library/widget/InlineActionBar;->p:Z

    if-eqz v0, :cond_2

    .line 297
    invoke-virtual {p0}, Lcom/twitter/library/widget/InlineActionBar;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/library/widget/InlineActionBar;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    .line 298
    invoke-virtual {p0}, Lcom/twitter/library/widget/InlineActionBar;->getChildCount()I

    move-result v3

    .line 299
    const/4 v0, 0x0

    move v7, v0

    move v0, v1

    move v1, v7

    :goto_0
    if-ge v1, v3, :cond_1

    .line 300
    invoke-virtual {p0, v1}, Lcom/twitter/library/widget/InlineActionBar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 301
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 302
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v0, v4

    .line 299
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 305
    :cond_1
    invoke-static {v0, p1}, Lcom/twitter/library/widget/InlineActionBar;->resolveSize(II)I

    move-result p1

    .line 309
    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/twitter/library/widget/InlineActionBar;->setMeasuredDimension(II)V

    .line 310
    return-void
.end method

.method public setBylineSize(F)V
    .locals 2

    .prologue
    .line 438
    iget v0, p0, Lcom/twitter/library/widget/InlineActionBar;->r:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 439
    iput p1, p0, Lcom/twitter/library/widget/InlineActionBar;->r:F

    .line 440
    iget-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcik;

    .line 441
    invoke-static {v0}, Lcom/twitter/library/widget/InlineActionBar;->c(Lcik;)Lcom/twitter/library/widget/InlineActionView;

    move-result-object v0

    .line 442
    invoke-virtual {v0, p1}, Lcom/twitter/library/widget/InlineActionView;->setBylineSize(F)V

    goto :goto_0

    .line 444
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/library/widget/InlineActionBar;->requestLayout()V

    .line 446
    :cond_1
    return-void
.end method

.method public setForceHideDMInlineAction(Z)V
    .locals 0

    .prologue
    .line 342
    iput-boolean p1, p0, Lcom/twitter/library/widget/InlineActionBar;->q:Z

    .line 343
    invoke-virtual {p0}, Lcom/twitter/library/widget/InlineActionBar;->a()V

    .line 344
    return-void
.end method

.method public setFriendshipCache(Lcom/twitter/library/util/FriendshipCache;)V
    .locals 1

    .prologue
    .line 337
    iput-object p1, p0, Lcom/twitter/library/widget/InlineActionBar;->s:Lcom/twitter/library/util/FriendshipCache;

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->t:Lcij;

    .line 339
    return-void
.end method

.method public setInlineActionTypes(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TweetActionType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 370
    iget-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->n:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 371
    iput-object p1, p0, Lcom/twitter/library/widget/InlineActionBar;->n:Ljava/util/List;

    .line 372
    iget-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 373
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TweetActionType;

    .line 374
    iget-object v2, p0, Lcom/twitter/library/widget/InlineActionBar;->l:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcik;

    .line 375
    if-eqz v0, :cond_0

    .line 376
    iget-object v2, p0, Lcom/twitter/library/widget/InlineActionBar;->m:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    invoke-virtual {v0}, Lcik;->b()V

    goto :goto_0

    .line 381
    :cond_1
    invoke-static {}, Lcom/twitter/util/collection/au;->e()Lcom/twitter/util/collection/au;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/library/widget/InlineActionBar;->l:Ljava/util/Map;

    .line 382
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/au;->b(Ljava/lang/Iterable;)Lcom/twitter/util/collection/au;

    move-result-object v0

    .line 383
    invoke-virtual {v0, p1}, Lcom/twitter/util/collection/au;->c(Ljava/lang/Iterable;)Lcom/twitter/util/collection/au;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Lcom/twitter/util/collection/au;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 385
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TweetActionType;

    .line 386
    iget-object v2, p0, Lcom/twitter/library/widget/InlineActionBar;->l:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcik;

    invoke-static {v0}, Lcom/twitter/library/widget/InlineActionBar;->c(Lcik;)Lcom/twitter/library/widget/InlineActionView;

    move-result-object v0

    .line 387
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 390
    :cond_2
    return-void
.end method

.method public setOnInlineActionClickListener(Lcom/twitter/library/widget/n;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/twitter/library/widget/InlineActionBar;->v:Lcom/twitter/library/widget/n;

    .line 415
    return-void
.end method

.method public setShowBadge(Z)V
    .locals 2

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/twitter/library/widget/InlineActionBar;->p:Z

    if-eq v0, p1, :cond_1

    .line 348
    iput-boolean p1, p0, Lcom/twitter/library/widget/InlineActionBar;->p:Z

    .line 349
    iget-object v0, p0, Lcom/twitter/library/widget/InlineActionBar;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcik;

    .line 350
    invoke-static {v0}, Lcom/twitter/library/widget/InlineActionBar;->c(Lcik;)Lcom/twitter/library/widget/InlineActionView;

    move-result-object v0

    .line 351
    invoke-virtual {v0, p1}, Lcom/twitter/library/widget/InlineActionView;->setShowBadge(Z)V

    goto :goto_0

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/library/widget/InlineActionBar;->requestLayout()V

    .line 355
    :cond_1
    return-void
.end method

.method public setTweet(Lcom/twitter/model/core/Tweet;)V
    .locals 0

    .prologue
    .line 393
    if-nez p1, :cond_0

    .line 398
    :goto_0
    return-void

    .line 396
    :cond_0
    iput-object p1, p0, Lcom/twitter/library/widget/InlineActionBar;->o:Lcom/twitter/model/core/Tweet;

    .line 397
    invoke-virtual {p0}, Lcom/twitter/library/widget/InlineActionBar;->b()V

    goto :goto_0
.end method
