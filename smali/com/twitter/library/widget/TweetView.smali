.class public Lcom/twitter/library/widget/TweetView;
.super Lcom/twitter/ui/widget/CellLayout;
.source "Twttr"

# interfaces
.implements Lcjb;
.implements Lcom/twitter/internal/android/widget/p;
.implements Lcom/twitter/library/revenue/b;
.implements Lcom/twitter/library/widget/av;
.implements Lcom/twitter/library/widget/c;
.implements Lcom/twitter/media/ui/image/g;


# static fields
.field public static final b:Lcom/twitter/util/math/Size;

.field public static final c:Lcom/twitter/ui/view/s;

.field static d:Landroid/animation/Animator$AnimatorListener;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final A:Lcom/twitter/ui/widget/BadgeView;

.field private final B:Lcom/twitter/library/view/TweetPivotView;

.field private final C:Lcom/twitter/ui/widget/TextLayoutView;

.field private final D:Lcom/twitter/ui/widget/TextLayoutView;

.field private final E:Landroid/view/View$OnClickListener;

.field private final F:Landroid/view/View;

.field private final G:Lcom/twitter/library/widget/UserForwardView;

.field private final H:Lcom/twitter/library/widget/InlineActionBar;

.field private final I:Landroid/graphics/Rect;

.field private final J:Landroid/content/res/Resources;

.field private final K:Lcom/twitter/library/view/m;

.field private final L:Lcom/twitter/library/widget/aq;

.field private final M:Lcom/twitter/library/widget/TextContentView;

.field private final N:Landroid/graphics/drawable/Drawable;

.field private final O:I

.field private P:Lcom/twitter/model/core/Tweet;

.field private Q:Lcom/twitter/library/view/aa;

.field private R:Lcom/twitter/library/util/FriendshipCache;

.field private S:Lcom/twitter/library/widget/an;

.field private T:F

.field private U:Ljava/lang/CharSequence;

.field private V:F

.field private W:J

.field private aA:Lcom/twitter/util/math/Size;

.field private final aB:Lcom/twitter/library/revenue/a;

.field private final aC:Z

.field private aD:Z

.field private aE:Z

.field private aF:Lcom/twitter/library/view/ActionPromptView;

.field private aG:Z

.field private aH:Lcom/twitter/ui/view/s;

.field private final aI:Lcjo;

.field private aa:Z

.field private ab:Z

.field private ac:Z

.field private ad:Ljava/lang/String;

.field private ae:Z

.field private af:Z

.field private ag:Z

.field private ah:Z

.field private ai:Z

.field private aj:Z

.field private ak:I

.field private al:Lcom/twitter/library/widget/PossiblySensitiveWarningView;

.field private am:I

.field private an:Z

.field private ao:Lcom/twitter/library/scribe/TwitterScribeItem;

.field private ap:Z

.field private final aq:Z

.field private ar:Lcom/twitter/library/widget/renderablecontent/e;

.field private as:Z

.field private at:Z

.field private au:Z

.field private final av:I

.field private aw:Z

.field private ax:Z

.field private ay:Ljava/lang/String;

.field private az:I

.field final e:Landroid/graphics/Rect;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final f:Landroid/view/View$OnClickListener;

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:I

.field private final q:Landroid/graphics/drawable/Drawable;

.field private final r:Landroid/graphics/drawable/Drawable;

.field private final s:Z

.field private final t:Lcom/twitter/library/view/QuoteView;

.field private final u:Lcom/twitter/library/view/SocialProofView;

.field private final v:Lcis;

.field private final w:Lcom/twitter/library/media/widget/UserImageView;

.field private final x:Lcom/twitter/ui/widget/TweetHeaderView;

.field private final y:Lcim;

.field private final z:Lcom/twitter/ui/widget/TextLayoutView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x64

    .line 112
    invoke-static {v0, v0}, Lcom/twitter/util/math/Size;->a(II)Lcom/twitter/util/math/Size;

    move-result-object v0

    sput-object v0, Lcom/twitter/library/widget/TweetView;->b:Lcom/twitter/util/math/Size;

    .line 114
    new-instance v0, Lcom/twitter/ui/view/u;

    invoke-direct {v0}, Lcom/twitter/ui/view/u;-><init>()V

    .line 115
    invoke-virtual {v0}, Lcom/twitter/ui/view/u;->a()Lcom/twitter/ui/view/s;

    move-result-object v0

    sput-object v0, Lcom/twitter/library/widget/TweetView;->c:Lcom/twitter/ui/view/s;

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/library/widget/TweetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 296
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 299
    sget v0, Lbjs;->tweetViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/library/widget/TweetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 300
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 303
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/ui/widget/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 148
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/widget/TweetView;->e:Landroid/graphics/Rect;

    .line 180
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    .line 211
    iput-boolean v1, p0, Lcom/twitter/library/widget/TweetView;->ag:Z

    .line 251
    sget-object v0, Lcom/twitter/library/widget/TweetView;->c:Lcom/twitter/ui/view/s;

    iput-object v0, p0, Lcom/twitter/library/widget/TweetView;->aH:Lcom/twitter/ui/view/s;

    .line 253
    new-instance v0, Lcom/twitter/library/widget/aw;

    invoke-direct {v0, p0}, Lcom/twitter/library/widget/aw;-><init>(Lcom/twitter/library/widget/TweetView;)V

    iput-object v0, p0, Lcom/twitter/library/widget/TweetView;->aI:Lcjo;

    .line 304
    invoke-virtual {p0, v2}, Lcom/twitter/library/widget/TweetView;->setWillNotDraw(Z)V

    .line 305
    invoke-virtual {p0, v2}, Lcom/twitter/library/widget/TweetView;->setClipToPadding(Z)V

    .line 306
    invoke-virtual {p0, v2}, Lcom/twitter/library/widget/TweetView;->setClipChildren(Z)V

    .line 307
    const-string/jumbo v0, "legacy_deciders_amplify_player_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/library/widget/TweetView;->aq:Z

    .line 309
    invoke-virtual {p0}, Lcom/twitter/library/widget/TweetView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/widget/TweetView;->J:Landroid/content/res/Resources;

    .line 311
    sget-object v0, Lbkc;->TweetView:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 312
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v4, Lbkc;->TweetView_tweetViewLayoutId:I

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v0, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 313
    sget v0, Lbjw;->tweet_social_proof:I

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/TweetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/view/SocialProofView;

    iput-object v0, p0, Lcom/twitter/library/widget/TweetView;->u:Lcom/twitter/library/view/SocialProofView;

    .line 314
    new-instance v0, Lcis;

    iget-object v4, p0, Lcom/twitter/library/widget/TweetView;->u:Lcom/twitter/library/view/SocialProofView;

    iget-object v5, p0, Lcom/twitter/library/widget/TweetView;->J:Landroid/content/res/Resources;

    invoke-direct {v0, v4, v5}, Lcis;-><init>(Lcit;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/twitter/library/widget/TweetView;->v:Lcis;

    .line 315
    sget v0, Lbjw;->tweet_header:I

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/TweetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TweetHeaderView;

    iput-object v0, p0, Lcom/twitter/library/widget/TweetView;->x:Lcom/twitter/ui/widget/TweetHeaderView;

    .line 316
    sget v0, Lbjw;->tweet_reply_context:I

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/TweetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TextLayoutView;

    iput-object v0, p0, Lcom/twitter/library/widget/TweetView;->z:Lcom/twitter/ui/widget/TextLayoutView;

    .line 317
    new-instance v0, Lcim;

    iget-object v4, p0, Lcom/twitter/library/widget/TweetView;->z:Lcom/twitter/ui/widget/TextLayoutView;

    iget-object v5, p0, Lcom/twitter/library/widget/TweetView;->J:Landroid/content/res/Resources;

    invoke-direct {v0, v4, v5}, Lcim;-><init>(Lcom/twitter/ui/widget/TextLayoutView;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/twitter/library/widget/TweetView;->y:Lcim;

    .line 319
    sget v0, Lbjw;->tweet_quote:I

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/TweetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/view/QuoteView;

    iput-object v0, p0, Lcom/twitter/library/widget/TweetView;->t:Lcom/twitter/library/view/QuoteView;

    .line 320
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->t:Lcom/twitter/library/view/QuoteView;

    new-instance v4, Lcom/twitter/library/widget/ba;

    invoke-direct {v4, p0}, Lcom/twitter/library/widget/ba;-><init>(Lcom/twitter/library/widget/TweetView;)V

    invoke-virtual {v0, v4}, Lcom/twitter/library/view/QuoteView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->t:Lcom/twitter/library/view/QuoteView;

    new-instance v4, Lcom/twitter/library/widget/bb;

    invoke-direct {v4, p0}, Lcom/twitter/library/widget/bb;-><init>(Lcom/twitter/library/widget/TweetView;)V

    invoke-virtual {v0, v4}, Lcom/twitter/library/view/QuoteView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 332
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->t:Lcom/twitter/library/view/QuoteView;

    iget-boolean v4, p0, Lcom/twitter/library/widget/TweetView;->g_:Z

    invoke-virtual {v0, v4}, Lcom/twitter/library/view/QuoteView;->setRenderRtl(Z)V

    .line 334
    sget v0, Lbjw;->tweet_promoted_badge:I

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/TweetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/BadgeView;

    iput-object v0, p0, Lcom/twitter/library/widget/TweetView;->A:Lcom/twitter/ui/widget/BadgeView;

    .line 335
    sget v0, Lbjw;->tweet_pivot:I

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/TweetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/view/TweetPivotView;

    iput-object v0, p0, Lcom/twitter/library/widget/TweetView;->B:Lcom/twitter/library/view/TweetPivotView;

    .line 336
    sget v0, Lbkc;->TweetView_iconSpacing:I

    const/4 v4, 0x4

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/library/widget/TweetView;->g:I

    .line 338
    sget v0, Lbjw;->tweet_content_text:I

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/TweetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/TextContentView;

    iput-object v0, p0, Lcom/twitter/library/widget/TweetView;->M:Lcom/twitter/library/widget/TextContentView;

    .line 340
    sget v0, Lbkc;->TweetView_bylineSize:I

    invoke-static {}, Lcom/twitter/library/util/al;->b()F

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/twitter/library/widget/TweetView;->T:F

    .line 341
    sget v0, Lbjw;->tweet_attribution:I

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/TweetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TextLayoutView;

    iput-object v0, p0, Lcom/twitter/library/widget/TweetView;->C:Lcom/twitter/ui/widget/TextLayoutView;

    .line 342
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->C:Lcom/twitter/ui/widget/TextLayoutView;

    new-instance v4, Lcom/twitter/library/widget/bc;

    invoke-direct {v4, p0}, Lcom/twitter/library/widget/bc;-><init>(Lcom/twitter/library/widget/TweetView;)V

    invoke-virtual {v0, v4}, Lcom/twitter/ui/widget/TextLayoutView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    sget v0, Lbjw;->tweet_media_tags:I

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/TweetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TextLayoutView;

    iput-object v0, p0, Lcom/twitter/library/widget/TweetView;->D:Lcom/twitter/ui/widget/TextLayoutView;

    .line 350
    new-instance v0, Lcom/twitter/library/widget/bd;

    invoke-direct {v0, p0}, Lcom/twitter/library/widget/bd;-><init>(Lcom/twitter/library/widget/TweetView;)V

    iput-object v0, p0, Lcom/twitter/library/widget/TweetView;->E:Landroid/view/View$OnClickListener;

    .line 357
    sget v0, Lbkc;->TweetView_contentSize:I

    invoke-static {}, Lcom/twitter/library/util/al;->a()F

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/TweetView;->setContentSize(F)V

    .line 359
    sget v0, Lbjw;->tweet_curation_action:I

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/TweetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/widget/TweetView;->F:Landroid/view/View;

    .line 361
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->F:Landroid/view/View;

    new-instance v4, Lcom/twitter/library/widget/be;

    invoke-direct {v4, p0}, Lcom/twitter/library/widget/be;-><init>(Lcom/twitter/library/widget/TweetView;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->F:Landroid/view/View;

    invoke-static {v0}, Lcom/twitter/ui/widget/CellLayout$CellLayoutParams;->a(Landroid/view/View;)Lcom/twitter/ui/widget/CellLayout$CellLayoutParams;

    move-result-object v0

    .line 370
    invoke-static {}, Lcbe;->a()Lcbe;

    move-result-object v4

    invoke-virtual {v4}, Lcbe;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/twitter/library/widget/TweetView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lbjv;->tweet_curation:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 372
    invoke-virtual {p0}, Lcom/twitter/library/widget/TweetView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lbjt;->subtext:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v4, v5}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 373
    iget-object v5, p0, Lcom/twitter/library/widget/TweetView;->F:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 374
    iget v4, v0, Lcom/twitter/ui/widget/CellLayout$CellLayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/twitter/library/widget/TweetView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lbju;->tweet_caret_vertical_alignment:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Lcom/twitter/ui/widget/CellLayout$CellLayoutParams;->topMargin:I

    .line 378
    :cond_0
    iget-object v4, p0, Lcom/twitter/library/widget/TweetView;->F:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 380
    iget-boolean v5, p0, Lcom/twitter/library/widget/TweetView;->g_:Z

    if-eqz v5, :cond_1

    .line 381
    iget v5, v0, Lcom/twitter/ui/widget/CellLayout$CellLayoutParams;->rightMargin:I

    iget v6, p0, Lcom/twitter/library/widget/TweetView;->g:I

    add-int/2addr v5, v6

    iput v5, v0, Lcom/twitter/ui/widget/CellLayout$CellLayoutParams;->rightMargin:I

    .line 387
    :goto_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x16

    if-ge v5, v6, :cond_2

    .line 388
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iget-object v6, p0, Lcom/twitter/library/widget/TweetView;->F:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/twitter/library/widget/TweetView;->F:Landroid/view/View;

    .line 389
    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v0, Lcom/twitter/ui/widget/CellLayout$CellLayoutParams;->width:I

    .line 390
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iget-object v5, p0, Lcom/twitter/library/widget/TweetView;->F:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/twitter/library/widget/TweetView;->F:Landroid/view/View;

    .line 391
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Lcom/twitter/ui/widget/CellLayout$CellLayoutParams;->height:I

    .line 397
    :goto_1
    sget v0, Lbjw;->tweet_user_forward:I

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/TweetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/UserForwardView;

    iput-object v0, p0, Lcom/twitter/library/widget/TweetView;->G:Lcom/twitter/library/widget/UserForwardView;

    .line 398
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->G:Lcom/twitter/library/widget/UserForwardView;

    iget-object v4, p0, Lcom/twitter/library/widget/TweetView;->R:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v0, v4}, Lcom/twitter/library/widget/UserForwardView;->setFriendshipCache(Lcom/twitter/library/util/FriendshipCache;)V

    .line 399
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->G:Lcom/twitter/library/widget/UserForwardView;

    iget v4, p0, Lcom/twitter/library/widget/TweetView;->V:F

    iget v5, p0, Lcom/twitter/library/widget/TweetView;->T:F

    invoke-virtual {v0, v4, v5}, Lcom/twitter/library/widget/UserForwardView;->a(FF)V

    .line 400
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->G:Lcom/twitter/library/widget/UserForwardView;

    new-instance v4, Lcom/twitter/library/widget/bf;

    invoke-direct {v4, p0}, Lcom/twitter/library/widget/bf;-><init>(Lcom/twitter/library/widget/TweetView;)V

    invoke-virtual {v0, v4}, Lcom/twitter/library/widget/UserForwardView;->setFollowButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    sget v0, Lbkc;->TweetView_inlineActionBarPaddingNormal:I

    .line 408
    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 409
    sget v0, Lbjw;->tweet_inline_actions:I

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/TweetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/InlineActionBar;

    iput-object v0, p0, Lcom/twitter/library/widget/TweetView;->H:Lcom/twitter/library/widget/InlineActionBar;

    .line 410
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->H:Lcom/twitter/library/widget/InlineActionBar;

    invoke-direct {p0, v0}, Lcom/twitter/library/widget/TweetView;->a(Lcom/twitter/library/widget/InlineActionBar;)V

    .line 411
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->H:Lcom/twitter/library/widget/InlineActionBar;

    invoke-static {v0}, Lcom/twitter/ui/widget/CellLayout$CellLayoutParams;->a(Landroid/view/View;)Lcom/twitter/ui/widget/CellLayout$CellLayoutParams;

    move-result-object v0

    .line 412
    neg-int v5, v4

    iput v5, v0, Lcom/twitter/ui/widget/CellLayout$CellLayoutParams;->leftMargin:I

    .line 413
    neg-int v4, v4

    iput v4, v0, Lcom/twitter/ui/widget/CellLayout$CellLayoutParams;->rightMargin:I

    .line 415
    sget v0, Lbkc;->TweetView_verticalConnectorWidth:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/library/widget/TweetView;->i:I

    .line 416
    sget v0, Lbkc;->TweetView_verticalConnectorMargin:I

    invoke-virtual {v3, v0, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/library/widget/TweetView;->j:I

    .line 417
    sget v0, Lbkc;->TweetView_verticalConnector:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/widget/TweetView;->q:Landroid/graphics/drawable/Drawable;

    .line 418
    sget v0, Lbkc;->TweetView_verticalConnector:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/widget/TweetView;->r:Landroid/graphics/drawable/Drawable;

    .line 421
    sget v0, Lbkc;->TweetView_translationIcon:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/library/widget/TweetView;->h:I

    .line 422
    sget v0, Lbkc;->TweetView_badgeSpacing:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/library/widget/TweetView;->k:I

    .line 424
    sget v0, Lbkc;->TweetView_previewFlags:I

    const/4 v4, 0x3

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/library/widget/TweetView;->p:I

    .line 426
    iget v0, p0, Lcom/twitter/library/widget/TweetView;->p:I

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/twitter/library/widget/TweetView;->s:Z

    .line 427
    sget v0, Lbkc;->TweetView_mediaTopMargin:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/library/widget/TweetView;->l:I

    .line 428
    sget v0, Lbkc;->TweetView_mediaBottomMargin:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/library/widget/TweetView;->m:I

    .line 430
    sget v0, Lbkc;->TweetView_mediaTagIcon:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/library/widget/TweetView;->n:I

    .line 431
    sget v0, Lbkc;->TweetView_mediaPlaceholderDrawable:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/library/widget/TweetView;->o:I

    .line 433
    sget v0, Lbkc;->TweetView_autoLink:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/library/widget/TweetView;->aw:Z

    .line 435
    sget v0, Lbjw;->tweet_profile_image:I

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/TweetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/widget/UserImageView;

    .line 436
    const-string/jumbo v4, "profile"

    invoke-virtual {v0, v4}, Lcom/twitter/library/media/widget/UserImageView;->setImageType(Ljava/lang/String;)V

    .line 437
    new-instance v4, Lcom/twitter/library/widget/bg;

    invoke-direct {v4, p0}, Lcom/twitter/library/widget/bg;-><init>(Lcom/twitter/library/widget/TweetView;)V

    iput-object v4, p0, Lcom/twitter/library/widget/TweetView;->f:Landroid/view/View$OnClickListener;

    .line 443
    invoke-static {v0}, Lcom/twitter/ui/widget/CellLayout$CellLayoutParams;->a(Landroid/view/View;)Lcom/twitter/ui/widget/CellLayout$CellLayoutParams;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/twitter/ui/widget/CellLayout$CellLayoutParams;->a(Z)V

    .line 444
    invoke-static {v0, v7}, Lcom/twitter/util/ui/a;->a(Landroid/view/View;I)V

    .line 445
    iput-object v0, p0, Lcom/twitter/library/widget/TweetView;->w:Lcom/twitter/library/media/widget/UserImageView;

    .line 447
    sget v0, Lbkc;->TweetView_mediaDivider:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/library/widget/TweetView;->av:I

    .line 449
    sget v0, Lbkc;->TweetView_promotedDrawable:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 450
    sget v4, Lbkc;->TweetView_politicalDrawable:I

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 451
    sget v5, Lbkc;->TweetView_alertDrawable:I

    invoke-virtual {v3, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 452
    new-instance v6, Lcom/twitter/library/revenue/a;

    invoke-direct {v6, p0, v4, v0, v5}, Lcom/twitter/library/revenue/a;-><init>(Lcom/twitter/library/revenue/b;III)V

    iput-object v6, p0, Lcom/twitter/library/widget/TweetView;->aB:Lcom/twitter/library/revenue/a;

    .line 454
    invoke-virtual {p0}, Lcom/twitter/library/widget/TweetView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/widget/TweetView;->N:Landroid/graphics/drawable/Drawable;

    .line 455
    sget v0, Lbkc;->TweetView_noPressStateBackgroundDrawable:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/library/widget/TweetView;->O:I

    .line 456
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 458
    const-string/jumbo v0, "android_media_playback_unload_on_temporary_detach"

    .line 459
    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 460
    invoke-static {}, Lbxk;->a()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/twitter/library/widget/TweetView;->aC:Z

    .line 463
    new-instance v0, Lcom/twitter/library/widget/bh;

    invoke-direct {v0, p0}, Lcom/twitter/library/widget/bh;-><init>(Lcom/twitter/library/widget/TweetView;)V

    iput-object v0, p0, Lcom/twitter/library/widget/TweetView;->K:Lcom/twitter/library/view/m;

    .line 504
    new-instance v0, Lcom/twitter/library/widget/ax;

    invoke-direct {v0, p0}, Lcom/twitter/library/widget/ax;-><init>(Lcom/twitter/library/widget/TweetView;)V

    iput-object v0, p0, Lcom/twitter/library/widget/TweetView;->L:Lcom/twitter/library/widget/aq;

    .line 510
    new-instance v0, Lcom/twitter/library/widget/an;

    invoke-virtual {p0}, Lcom/twitter/library/widget/TweetView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/library/widget/TweetView;->M:Lcom/twitter/library/widget/TextContentView;

    iget-object v5, p0, Lcom/twitter/library/widget/TweetView;->M:Lcom/twitter/library/widget/TextContentView;

    .line 511
    invoke-virtual {v5}, Lcom/twitter/library/widget/TextContentView;->getContentFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/twitter/library/widget/an;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Paint$FontMetrics;)V

    iget-object v3, p0, Lcom/twitter/library/widget/TweetView;->K:Lcom/twitter/library/view/m;

    .line 512
    invoke-virtual {v0, v3}, Lcom/twitter/library/widget/an;->a(Lcom/twitter/library/view/m;)Lcom/twitter/library/widget/an;

    move-result-object v0

    iget-object v3, p0, Lcom/twitter/library/widget/TweetView;->J:Landroid/content/res/Resources;

    sget v4, Lbjt;->link_selected:I

    .line 513
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/twitter/library/widget/an;->a(I)Lcom/twitter/library/widget/an;

    move-result-object v3

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->aH:Lcom/twitter/ui/view/s;

    iget-boolean v0, v0, Lcom/twitter/ui/view/s;->j:Z

    if-nez v0, :cond_5

    move v0, v1

    .line 514
    :goto_4
    invoke-virtual {v3, v0}, Lcom/twitter/library/widget/an;->a(Z)Lcom/twitter/library/widget/an;

    move-result-object v3

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->aH:Lcom/twitter/ui/view/s;

    iget-boolean v0, v0, Lcom/twitter/ui/view/s;->k:Z

    if-nez v0, :cond_6

    move v0, v1

    .line 515
    :goto_5
    invoke-virtual {v3, v0}, Lcom/twitter/library/widget/an;->b(Z)Lcom/twitter/library/widget/an;

    move-result-object v3

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->aH:Lcom/twitter/ui/view/s;

    iget-boolean v0, v0, Lcom/twitter/ui/view/s;->l:Z

    if-nez v0, :cond_7

    move v0, v1

    .line 516
    :goto_6
    invoke-virtual {v3, v0}, Lcom/twitter/library/widget/an;->c(Z)Lcom/twitter/library/widget/an;

    move-result-object v0

    iget-boolean v3, p0, Lcom/twitter/library/widget/TweetView;->aw:Z

    .line 517
    invoke-virtual {v0, v3}, Lcom/twitter/library/widget/an;->d(Z)Lcom/twitter/library/widget/an;

    move-result-object v0

    iget-object v3, p0, Lcom/twitter/library/widget/TweetView;->aH:Lcom/twitter/ui/view/s;

    iget-boolean v3, v3, Lcom/twitter/ui/view/s;->i:Z

    if-nez v3, :cond_8

    .line 518
    :goto_7
    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/an;->e(Z)Lcom/twitter/library/widget/an;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->J:Landroid/content/res/Resources;

    sget v2, Lbjt;->subtext:I

    .line 519
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/an;->b(I)Lcom/twitter/library/widget/an;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->L:Lcom/twitter/library/widget/aq;

    .line 520
    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/an;->a(Lcom/twitter/library/widget/aq;)Lcom/twitter/library/widget/an;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->J:Landroid/content/res/Resources;

    sget v2, Lbkb;->tagline_separator:I

    .line 521
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/an;->a(Ljava/lang/String;)Lcom/twitter/library/widget/an;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/widget/TweetView;->S:Lcom/twitter/library/widget/an;

    .line 522
    return-void

    .line 383
    :cond_1
    iget v5, v0, Lcom/twitter/ui/widget/CellLayout$CellLayoutParams;->leftMargin:I

    iget v6, p0, Lcom/twitter/library/widget/TweetView;->g:I

    add-int/2addr v5, v6

    iput v5, v0, Lcom/twitter/ui/widget/CellLayout$CellLayoutParams;->leftMargin:I

    goto/16 :goto_0

    .line 393
    :cond_2
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iput v5, v0, Lcom/twitter/ui/widget/CellLayout$CellLayoutParams;->width:I

    .line 394
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iput v4, v0, Lcom/twitter/ui/widget/CellLayout$CellLayoutParams;->height:I

    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 426
    goto/16 :goto_2

    :cond_4
    move v0, v2

    .line 460
    goto/16 :goto_3

    :cond_5
    move v0, v2

    .line 513
    goto :goto_4

    :cond_6
    move v0, v2

    .line 514
    goto :goto_5

    :cond_7
    move v0, v2

    .line 515
    goto :goto_6

    :cond_8
    move v1, v2

    .line 517
    goto :goto_7
.end method

.method private a(III)I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1337
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1338
    if-lez p1, :cond_3

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->ar:Lcom/twitter/library/widget/renderablecontent/e;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/twitter/library/widget/TweetView;->am:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/twitter/library/widget/TweetView;->am:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/twitter/library/widget/TweetView;->am:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    .line 1340
    invoke-static {v0}, Lcom/twitter/library/widget/TweetView;->b(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    invoke-direct {p0, v0}, Lcom/twitter/library/widget/TweetView;->c(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1343
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->ar:Lcom/twitter/library/widget/renderablecontent/e;

    invoke-virtual {p0}, Lcom/twitter/library/widget/TweetView;->getContext()Landroid/content/Context;

    move-result-object v1

    move v3, v2

    move v4, p1

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/twitter/library/widget/renderablecontent/e;->a(Landroid/content/Context;IIII)Landroid/graphics/Rect;

    move-result-object v0

    .line 1344
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 1345
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 1346
    iget v0, p0, Lcom/twitter/library/widget/TweetView;->l:I

    add-int v7, p3, v0

    .line 1348
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->ad:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/twitter/library/widget/TweetView;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1349
    add-int v0, v7, v6

    iget v3, p0, Lcom/twitter/library/widget/TweetView;->m:I

    add-int/2addr v0, v3

    .line 1350
    iget-object v3, p0, Lcom/twitter/library/widget/TweetView;->C:Lcom/twitter/ui/widget/TextLayoutView;

    iget-object v4, p0, Lcom/twitter/library/widget/TweetView;->ad:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/twitter/ui/widget/TextLayoutView;->setTextWithVisibility(Ljava/lang/CharSequence;)V

    .line 1351
    iget-object v3, p0, Lcom/twitter/library/widget/TweetView;->C:Lcom/twitter/ui/widget/TextLayoutView;

    const/high16 v4, -0x80000000

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/twitter/ui/widget/TextLayoutView;->measure(II)V

    .line 1353
    iget-object v3, p0, Lcom/twitter/library/widget/TweetView;->C:Lcom/twitter/ui/widget/TextLayoutView;

    invoke-virtual {v3}, Lcom/twitter/ui/widget/TextLayoutView;->getMeasuredWidth()I

    move-result v4

    .line 1354
    iget-object v3, p0, Lcom/twitter/library/widget/TweetView;->C:Lcom/twitter/ui/widget/TextLayoutView;

    invoke-virtual {v3}, Lcom/twitter/ui/widget/TextLayoutView;->getMeasuredHeight()I

    move-result v3

    move v5, v4

    move v4, v3

    move v3, v0

    .line 1357
    :goto_0
    if-gtz v6, :cond_1

    if-lez v4, :cond_3

    .line 1359
    :cond_1
    iget-boolean v0, p0, Lcom/twitter/library/widget/TweetView;->g_:Z

    if-eqz v0, :cond_5

    .line 1360
    iget-boolean v0, p0, Lcom/twitter/library/widget/TweetView;->au:Z

    if-eqz v0, :cond_4

    move v0, v1

    .line 1362
    :goto_1
    sub-int v1, v0, v1

    .line 1363
    sub-int p2, v0, v5

    move v2, v1

    move v1, v0

    .line 1371
    :goto_2
    iget-object v5, p0, Lcom/twitter/library/widget/TweetView;->e:Landroid/graphics/Rect;

    add-int/2addr v6, v7

    invoke-virtual {v5, v2, v7, v1, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1372
    invoke-direct {p0}, Lcom/twitter/library/widget/TweetView;->getForwardMediaView()Landroid/view/View;

    move-result-object v1

    .line 1373
    if-eqz v1, :cond_2

    .line 1374
    invoke-static {v1}, Lcom/twitter/ui/widget/CellLayout$CellLayoutParams;->b(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 1375
    iget-object v2, p0, Lcom/twitter/library/widget/TweetView;->e:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1377
    :cond_2
    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->C:Lcom/twitter/ui/widget/TextLayoutView;

    invoke-static {v1}, Lcom/twitter/ui/widget/CellLayout$CellLayoutParams;->b(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 1378
    add-int v2, v3, v4

    invoke-virtual {v1, p2, v3, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1380
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int v2, v0, p3

    .line 1383
    :cond_3
    return v2

    .line 1360
    :cond_4
    invoke-virtual {p0}, Lcom/twitter/library/widget/TweetView;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p1

    goto :goto_1

    .line 1367
    :cond_5
    add-int/2addr v1, p2

    .line 1368
    add-int v0, p2, v5

    move v2, p2

    goto :goto_2

    :cond_6
    move v3, p3

    move v4, v2

    move v5, v2

    goto :goto_0
.end method

.method private a(Landroid/graphics/Rect;)I
    .locals 1

    .prologue
    .line 1983
    iget-boolean v0, p0, Lcom/twitter/library/widget/TweetView;->g_:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/library/widget/TweetView;)Lcom/twitter/library/view/aa;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->Q:Lcom/twitter/library/view/aa;

    return-object v0
.end method

.method private a(Lcom/twitter/model/core/Tweet;Z)Lcom/twitter/model/core/i;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1151
    invoke-static {p1}, Lcom/twitter/library/provider/aq;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/provider/aq;

    move-result-object v2

    .line 1153
    invoke-static {p1}, Lcih;->a(Lcom/twitter/model/core/Tweet;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/twitter/library/provider/aq;->e(Z)Lcom/twitter/library/provider/aq;

    .line 1155
    invoke-virtual {p0}, Lcom/twitter/library/widget/TweetView;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1156
    invoke-virtual {v2, v1}, Lcom/twitter/library/provider/aq;->a(Z)Lcom/twitter/library/provider/aq;

    move-result-object v2

    .line 1157
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->ar()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    .line 1158
    invoke-static {v3}, Lcom/twitter/library/widget/TweetView;->b(Lcom/twitter/model/core/Tweet;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v1

    .line 1157
    :cond_1
    invoke-virtual {v2, v0}, Lcom/twitter/library/provider/aq;->b(Z)Lcom/twitter/library/provider/aq;

    move-result-object v0

    .line 1158
    invoke-virtual {v0}, Lcom/twitter/library/provider/aq;->a()Lcom/twitter/model/core/i;

    move-result-object v0

    .line 1178
    :goto_0
    return-object v0

    .line 1159
    :cond_2
    iget v3, p0, Lcom/twitter/library/widget/TweetView;->am:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 1160
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->am()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcbl;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1161
    invoke-virtual {v2, v1}, Lcom/twitter/library/provider/aq;->a(Z)Lcom/twitter/library/provider/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/provider/aq;->a()Lcom/twitter/model/core/i;

    move-result-object v0

    goto :goto_0

    .line 1163
    :cond_3
    invoke-virtual {v2}, Lcom/twitter/library/provider/aq;->a()Lcom/twitter/model/core/i;

    move-result-object v0

    goto :goto_0

    .line 1165
    :cond_4
    iget-object v3, p0, Lcom/twitter/library/widget/TweetView;->t:Lcom/twitter/library/view/QuoteView;

    invoke-virtual {v3}, Lcom/twitter/library/view/QuoteView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    .line 1166
    invoke-virtual {v2, v1}, Lcom/twitter/library/provider/aq;->c(Z)Lcom/twitter/library/provider/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/provider/aq;->a()Lcom/twitter/model/core/i;

    move-result-object v0

    goto :goto_0

    .line 1167
    :cond_5
    iget-boolean v3, p0, Lcom/twitter/library/widget/TweetView;->ax:Z

    if-eqz v3, :cond_8

    .line 1169
    invoke-virtual {v2, v1}, Lcom/twitter/library/provider/aq;->a(Z)Lcom/twitter/library/provider/aq;

    move-result-object v2

    .line 1170
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->ar()Z

    move-result v3

    if-nez v3, :cond_6

    if-nez p2, :cond_6

    iget-object v3, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    .line 1171
    invoke-static {v3}, Lcom/twitter/library/widget/TweetView;->b(Lcom/twitter/model/core/Tweet;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    move v0, v1

    .line 1170
    :cond_7
    invoke-virtual {v2, v0}, Lcom/twitter/library/provider/aq;->b(Z)Lcom/twitter/library/provider/aq;

    move-result-object v0

    .line 1172
    invoke-virtual {v0}, Lcom/twitter/library/provider/aq;->a()Lcom/twitter/model/core/i;

    move-result-object v0

    goto :goto_0

    .line 1173
    :cond_8
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    invoke-static {v0}, Lcom/twitter/library/widget/TweetView;->b(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1174
    invoke-virtual {v2, v1}, Lcom/twitter/library/provider/aq;->b(Z)Lcom/twitter/library/provider/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/provider/aq;->a()Lcom/twitter/model/core/i;

    move-result-object v0

    goto :goto_0

    .line 1176
    :cond_9
    new-instance v0, Lcom/twitter/model/core/i;

    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->ae()Lcom/twitter/model/core/bm;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/twitter/model/core/i;-><init>(Ljava/lang/String;Lcom/twitter/model/core/bm;)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Rect;II)V
    .locals 2

    .prologue
    .line 1987
    invoke-virtual {p0}, Lcom/twitter/library/widget/TweetView;->getPaddingLeft()I

    move-result v0

    .line 1988
    invoke-virtual {p0}, Lcom/twitter/library/widget/TweetView;->getPaddingRight()I

    move-result v1

    sub-int v1, p3, v1

    .line 1989
    invoke-virtual {p1, v0, p2, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1990
    return-void
.end method

.method private a(Landroid/graphics/Rect;IIZLcom/twitter/ui/widget/CellLayout$CellLayoutParams;)V
    .locals 0

    .prologue
    .line 1994
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/library/widget/TweetView;->a(Landroid/graphics/Rect;II)V

    .line 1995
    if-eqz p4, :cond_0

    .line 1996
    invoke-virtual {p0, p1, p5}, Lcom/twitter/library/widget/TweetView;->a(Landroid/graphics/Rect;Lcom/twitter/ui/widget/CellLayout$CellLayoutParams;)V

    .line 1998
    :cond_0
    return-void
.end method

.method private a(Lcom/twitter/library/widget/InlineActionBar;)V
    .locals 1

    .prologue
    .line 1940
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->R:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/InlineActionBar;->setFriendshipCache(Lcom/twitter/library/util/FriendshipCache;)V

    .line 1941
    new-instance v0, Lcom/twitter/library/widget/az;

    invoke-direct {v0, p0}, Lcom/twitter/library/widget/az;-><init>(Lcom/twitter/library/widget/TweetView;)V

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/InlineActionBar;->setOnInlineActionClickListener(Lcom/twitter/library/widget/n;)V

    .line 1955
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/twitter/util/ui/a;->a(Landroid/view/View;I)V

    .line 1957
    return-void
.end method

.method private a(Lcom/twitter/model/core/Tweet;ZZZZ)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1045
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v4

    .line 1047
    if-eqz p2, :cond_2

    .line 1048
    iget-object v2, p1, Lcom/twitter/model/core/Tweet;->R:Ljava/util/List;

    .line 1049
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1050
    invoke-static {v2}, Lcug;->k(Ljava/lang/Iterable;)Lcom/twitter/model/media/EditableMedia;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_0
    iput v0, p0, Lcom/twitter/library/widget/TweetView;->am:I

    .line 1105
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 1050
    goto :goto_0

    .line 1053
    :cond_2
    if-eqz p5, :cond_6

    invoke-static {p1}, Lciz;->d(Lcom/twitter/model/core/Tweet;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1054
    invoke-direct {p0, p1}, Lcom/twitter/library/widget/TweetView;->a(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1055
    invoke-static {}, Lcbh;->a()Lcbh;

    move-result-object v0

    invoke-virtual {v0}, Lcbh;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1056
    const/4 v0, 0x4

    iput v0, p0, Lcom/twitter/library/widget/TweetView;->am:I

    .line 1057
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->al:Lcom/twitter/library/widget/PossiblySensitiveWarningView;

    if-nez v0, :cond_3

    .line 1058
    sget v0, Lbjw;->possibly_sensitive_warning_stub:I

    .line 1059
    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/TweetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/PossiblySensitiveWarningView;

    iput-object v0, p0, Lcom/twitter/library/widget/TweetView;->al:Lcom/twitter/library/widget/PossiblySensitiveWarningView;

    .line 1061
    :cond_3
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->al:Lcom/twitter/library/widget/PossiblySensitiveWarningView;

    invoke-virtual {v0, v2}, Lcom/twitter/library/widget/PossiblySensitiveWarningView;->setVisibility(I)V

    goto :goto_1

    .line 1063
    :cond_4
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->al:Lcom/twitter/library/widget/PossiblySensitiveWarningView;

    if-eqz v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->al:Lcom/twitter/library/widget/PossiblySensitiveWarningView;

    invoke-virtual {v0, v5}, Lcom/twitter/library/widget/PossiblySensitiveWarningView;->setVisibility(I)V

    goto :goto_1

    .line 1068
    :cond_5
    const/4 v0, 0x3

    iput v0, p0, Lcom/twitter/library/widget/TweetView;->am:I

    .line 1069
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->al:Lcom/twitter/library/widget/PossiblySensitiveWarningView;

    if-eqz v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->al:Lcom/twitter/library/widget/PossiblySensitiveWarningView;

    invoke-virtual {v0, v5}, Lcom/twitter/library/widget/PossiblySensitiveWarningView;->setVisibility(I)V

    goto :goto_1

    .line 1073
    :cond_6
    if-nez p4, :cond_7

    if-eqz p3, :cond_8

    :cond_7
    if-nez v4, :cond_8

    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->M()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1074
    iput v0, p0, Lcom/twitter/library/widget/TweetView;->am:I

    goto :goto_1

    .line 1075
    :cond_8
    if-eqz p4, :cond_f

    if-eqz v4, :cond_f

    .line 1076
    iget-boolean v3, p0, Lcom/twitter/library/widget/TweetView;->ah:Z

    if-eqz v3, :cond_b

    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->aj()Z

    move-result v3

    if-nez v3, :cond_9

    .line 1077
    invoke-static {p1}, Lcom/twitter/library/av/playback/bm;->c(Lcom/twitter/model/core/Tweet;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-boolean v3, p0, Lcom/twitter/library/widget/TweetView;->aq:Z

    if-eqz v3, :cond_b

    :cond_9
    move v3, v1

    .line 1079
    :goto_2
    if-eqz p3, :cond_c

    if-eqz v3, :cond_c

    .line 1090
    :cond_a
    :goto_3
    if-eqz v1, :cond_0

    .line 1091
    iput v0, p0, Lcom/twitter/library/widget/TweetView;->am:I

    .line 1092
    invoke-virtual {v4}, Lclw;->h()Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    .line 1093
    if-eqz p3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Lclw;->u()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1094
    iget-object v0, v0, Lcom/twitter/model/core/TwitterUser;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/library/widget/TweetView;->ad:Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    move v3, v2

    .line 1077
    goto :goto_2

    .line 1081
    :cond_c
    invoke-virtual {v4}, Lclw;->s()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {v4}, Lclw;->u()Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_d
    iget v5, p0, Lcom/twitter/library/widget/TweetView;->p:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_e

    if-nez p3, :cond_a

    if-nez v3, :cond_a

    .line 1085
    :cond_e
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->M()Z

    move-result v3

    if-nez v3, :cond_a

    move v1, v2

    goto :goto_3

    .line 1097
    :cond_f
    if-eqz p4, :cond_0

    iget v0, p0, Lcom/twitter/library/widget/TweetView;->p:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1100
    if-nez p3, :cond_10

    iget-boolean v0, p0, Lcom/twitter/library/widget/TweetView;->ah:Z

    if-eqz v0, :cond_0

    :cond_10
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->aA:Lcom/twitter/util/math/Size;

    .line 1101
    invoke-static {p1, v0}, Lcug;->c(Lcom/twitter/model/core/Tweet;Lcom/twitter/util/math/Size;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1102
    iput v1, p0, Lcom/twitter/library/widget/TweetView;->am:I

    goto/16 :goto_1
.end method

.method private a(Landroid/view/View;Landroid/graphics/Rect;III)Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2002
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2031
    :goto_0
    return v7

    .line 2005
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int v3, p3, v0

    iget v5, p2, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/library/widget/TweetView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 2006
    invoke-static {p1}, Lcom/twitter/ui/widget/CellLayout$CellLayoutParams;->a(Landroid/view/View;)Lcom/twitter/ui/widget/CellLayout$CellLayoutParams;

    move-result-object v2

    .line 2007
    invoke-virtual {v2}, Lcom/twitter/ui/widget/CellLayout$CellLayoutParams;->b()Landroid/graphics/Rect;

    move-result-object v3

    .line 2010
    invoke-virtual {v2}, Lcom/twitter/ui/widget/CellLayout$CellLayoutParams;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/twitter/library/widget/TweetView;->g_:Z

    .line 2011
    :goto_1
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v4, v2, Lcom/twitter/ui/widget/CellLayout$CellLayoutParams;->topMargin:I

    add-int/2addr v4, v1

    .line 2013
    if-eqz v0, :cond_4

    .line 2014
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Lcom/twitter/ui/widget/CellLayout$CellLayoutParams;->leftMargin:I

    add-int/2addr v1, v5

    .line 2018
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v3, v1, v4, v5, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 2021
    if-eqz v0, :cond_5

    .line 2022
    iget v0, v3, Landroid/graphics/Rect;->right:I

    iget v1, v2, Lcom/twitter/ui/widget/CellLayout$CellLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 2027
    :goto_3
    invoke-virtual {v2}, Lcom/twitter/ui/widget/CellLayout$CellLayoutParams;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2028
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    iget v1, v2, Lcom/twitter/ui/widget/CellLayout$CellLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 2029
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 2031
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ltz v0, :cond_6

    :goto_4
    move v7, v6

    goto :goto_0

    .line 2010
    :cond_2
    iget-boolean v0, p0, Lcom/twitter/library/widget/TweetView;->g_:Z

    if-nez v0, :cond_3

    move v0, v6

    goto :goto_1

    :cond_3
    move v0, v7

    goto :goto_1

    .line 2016
    :cond_4
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v5, v2, Lcom/twitter/ui/widget/CellLayout$CellLayoutParams;->rightMargin:I

    sub-int/2addr v1, v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v1, v5

    goto :goto_2

    .line 2024
    :cond_5
    iget v0, v3, Landroid/graphics/Rect;->left:I

    iget v1, v2, Lcom/twitter/ui/widget/CellLayout$CellLayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    goto :goto_3

    :cond_6
    move v6, v7

    .line 2031
    goto :goto_4
.end method

.method static synthetic a(Lcom/twitter/library/widget/TweetView;Lcom/twitter/model/core/Tweet;)Z
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/twitter/library/widget/TweetView;->a(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/twitter/model/core/Tweet;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 985
    invoke-direct {p0}, Lcom/twitter/library/widget/TweetView;->getOwnerId()J

    move-result-wide v4

    iget-wide v6, p1, Lcom/twitter/model/core/Tweet;->o:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    move v0, v1

    .line 986
    :goto_0
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->C()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/twitter/library/widget/TweetView;->an:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 985
    goto :goto_0

    :cond_2
    move v1, v2

    .line 986
    goto :goto_1
.end method

.method private a(Lcom/twitter/model/core/Tweet;ZZ)Z
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x1

    .line 1109
    iget v1, p0, Lcom/twitter/library/widget/TweetView;->am:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    invoke-static {p1, v1}, Lciz;->b(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/Tweet;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1118
    :cond_0
    :goto_0
    return v0

    .line 1113
    :cond_1
    invoke-direct {p0}, Lcom/twitter/library/widget/TweetView;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    .line 1114
    invoke-static {p1, v1}, Lciz;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/Tweet;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1118
    :cond_2
    iget v1, p0, Lcom/twitter/library/widget/TweetView;->am:I

    if-eq v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/twitter/library/widget/TweetView;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/model/core/cx;Lclw;)Z
    .locals 1

    .prologue
    .line 110
    invoke-static {p0, p1}, Lcom/twitter/library/widget/TweetView;->b(Lcom/twitter/model/core/cx;Lclw;)Z

    move-result v0

    return v0
.end method

.method private a(ZLcom/twitter/model/core/Tweet;ZZ)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1008
    iget v0, p0, Lcom/twitter/library/widget/TweetView;->am:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    move v0, v1

    .line 1009
    :goto_0
    iget-object v3, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    invoke-static {p2, v3}, Lciz;->b(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/Tweet;)Z

    move-result v5

    .line 1012
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/twitter/library/widget/TweetView;->o()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    if-eqz p3, :cond_4

    move v3, v1

    .line 1013
    :goto_1
    iget-object v4, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    invoke-static {p2, v4}, Lciz;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/Tweet;)Z

    move-result v6

    .line 1015
    if-eqz v3, :cond_5

    if-eqz p4, :cond_5

    move v4, v1

    .line 1016
    :goto_2
    invoke-direct {p0, v0, v5}, Lcom/twitter/library/widget/TweetView;->b(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v3, v6}, Lcom/twitter/library/widget/TweetView;->b(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez v4, :cond_1

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    .line 1017
    invoke-static {v0}, Lcom/twitter/library/widget/TweetView;->b(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    invoke-direct {p0, v0}, Lcom/twitter/library/widget/TweetView;->c(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    .line 1016
    :cond_2
    return v2

    :cond_3
    move v0, v2

    .line 1008
    goto :goto_0

    :cond_4
    move v3, v2

    .line 1012
    goto :goto_1

    :cond_5
    move v4, v2

    .line 1015
    goto :goto_2
.end method

.method static synthetic b(Lcom/twitter/library/widget/TweetView;)Lcom/twitter/model/core/Tweet;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    return-object v0
.end method

.method private static b(Lcom/twitter/model/core/Tweet;)Z
    .locals 1

    .prologue
    .line 1122
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/twitter/model/core/cx;Lclw;)Z
    .locals 2

    .prologue
    .line 990
    instance-of v0, p0, Lcom/twitter/model/core/MediaEntity;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 991
    invoke-virtual {p1}, Lclw;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/cx;->D:Ljava/lang/String;

    .line 992
    invoke-virtual {p1}, Lclw;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 990
    :goto_0
    return v0

    .line 992
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(ZZ)Z
    .locals 1

    .prologue
    .line 1032
    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/twitter/library/widget/TweetView;->aE:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/twitter/library/widget/TweetView;)Z
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/twitter/library/widget/TweetView;->n()Z

    move-result v0

    return v0
.end method

.method private c(Lcom/twitter/model/core/Tweet;)Z
    .locals 1

    .prologue
    .line 1126
    invoke-static {p1}, Lciz;->c(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->aH:Lcom/twitter/ui/view/s;

    iget-boolean v0, v0, Lcom/twitter/ui/view/s;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Lcom/twitter/model/core/Tweet;)V
    .locals 2

    .prologue
    .line 1960
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->H:Lcom/twitter/library/widget/InlineActionBar;

    if-eqz v0, :cond_0

    .line 1961
    invoke-direct {p0, p1}, Lcom/twitter/library/widget/TweetView;->e(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1962
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->H:Lcom/twitter/library/widget/InlineActionBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/InlineActionBar;->setVisibility(I)V

    .line 1968
    :cond_0
    :goto_0
    return-void

    .line 1964
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->H:Lcom/twitter/library/widget/InlineActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/InlineActionBar;->setVisibility(I)V

    .line 1965
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->H:Lcom/twitter/library/widget/InlineActionBar;

    invoke-virtual {v0, p1}, Lcom/twitter/library/widget/InlineActionBar;->setTweet(Lcom/twitter/model/core/Tweet;)V

    goto :goto_0
.end method

.method private e(Lcom/twitter/model/core/Tweet;)Z
    .locals 1

    .prologue
    .line 1971
    iget-boolean v0, p0, Lcom/twitter/library/widget/TweetView;->ab:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lciz;->c(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/twitter/model/core/Tweet;->u:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 1972
    invoke-static {p1}, Lciz;->m(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1971
    :goto_0
    return v0

    .line 1972
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g(Z)V
    .locals 2

    .prologue
    .line 1922
    invoke-static {}, Lcam;->a()Lcam;

    move-result-object v0

    .line 1923
    invoke-virtual {v0}, Lcam;->b()I

    move-result v1

    iput v1, p0, Lcom/twitter/library/widget/TweetView;->az:I

    .line 1924
    invoke-virtual {v0}, Lcam;->e()Lcom/twitter/util/math/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/library/widget/TweetView;->aA:Lcom/twitter/util/math/Size;

    .line 1925
    invoke-virtual {v0}, Lcam;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/widget/TweetView;->ay:Ljava/lang/String;

    .line 1926
    invoke-direct {p0, p1}, Lcom/twitter/library/widget/TweetView;->setupInlineActionBar(Z)V

    .line 1927
    invoke-direct {p0}, Lcom/twitter/library/widget/TweetView;->u()V

    .line 1928
    return-void
.end method

.method private getForwardMediaView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->ar:Lcom/twitter/library/widget/renderablecontent/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->ar:Lcom/twitter/library/widget/renderablecontent/e;

    invoke-interface {v0}, Lcom/twitter/library/widget/renderablecontent/e;->d()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOwner()Lcom/twitter/model/core/TwitterUser;
    .locals 1

    .prologue
    .line 1131
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    return-object v0
.end method

.method private getOwnerId()J
    .locals 2

    .prologue
    .line 1135
    invoke-direct {p0}, Lcom/twitter/library/widget/TweetView;->getOwner()Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    .line 1136
    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private m()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1140
    iget v1, p0, Lcom/twitter/library/widget/TweetView;->ak:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v1}, Lcom/twitter/model/core/Tweet;->x()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()Z
    .locals 1

    .prologue
    .line 1557
    iget-boolean v0, p0, Lcom/twitter/library/widget/TweetView;->aG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    invoke-direct {p0, v0}, Lcom/twitter/library/widget/TweetView;->e(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->A:Lcom/twitter/ui/widget/BadgeView;

    .line 1558
    invoke-virtual {v0}, Lcom/twitter/ui/widget/BadgeView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->B:Lcom/twitter/library/view/TweetPivotView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->B:Lcom/twitter/library/view/TweetPivotView;

    .line 1559
    invoke-virtual {v0}, Lcom/twitter/library/view/TweetPivotView;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1557
    :goto_0
    return v0

    .line 1559
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o()Z
    .locals 2

    .prologue
    .line 1571
    iget v0, p0, Lcom/twitter/library/widget/TweetView;->am:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/twitter/library/widget/TweetView;->am:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/twitter/library/widget/TweetView;->am:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private p()Z
    .locals 1

    .prologue
    .line 1825
    iget-boolean v0, p0, Lcom/twitter/library/widget/TweetView;->ai:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    invoke-static {v0}, Lciz;->d(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    .line 1826
    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1825
    :goto_0
    return v0

    .line 1826
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q()V
    .locals 2

    .prologue
    .line 1853
    invoke-direct {p0}, Lcom/twitter/library/widget/TweetView;->getForwardMediaView()Landroid/view/View;

    move-result-object v0

    .line 1854
    if-eqz v0, :cond_0

    .line 1855
    const/4 v1, 0x4

    .line 1856
    invoke-static {v0, v1}, Lcom/twitter/util/ui/a;->a(Landroid/view/View;I)V

    .line 1857
    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/TweetView;->addView(Landroid/view/View;)V

    .line 1858
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/library/widget/TweetView;->as:Z

    .line 1860
    :cond_0
    return-void
.end method

.method private r()Z
    .locals 1

    .prologue
    .line 1886
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    invoke-static {v0}, Lciz;->c(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->aH:Lcom/twitter/ui/view/s;

    iget-boolean v0, v0, Lcom/twitter/ui/view/s;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private s()V
    .locals 1

    .prologue
    .line 1890
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->ar:Lcom/twitter/library/widget/renderablecontent/e;

    if-eqz v0, :cond_1

    .line 1891
    iget-boolean v0, p0, Lcom/twitter/library/widget/TweetView;->at:Z

    if-eqz v0, :cond_0

    .line 1892
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->ar:Lcom/twitter/library/widget/renderablecontent/e;

    invoke-interface {v0}, Lcom/twitter/library/widget/renderablecontent/e;->bh_()V

    .line 1893
    invoke-direct {p0}, Lcom/twitter/library/widget/TweetView;->q()V

    .line 1894
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/library/widget/TweetView;->at:Z

    .line 1896
    :cond_0
    iget-boolean v0, p0, Lcom/twitter/library/widget/TweetView;->ap:Z

    if-nez v0, :cond_1

    .line 1897
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->ar:Lcom/twitter/library/widget/renderablecontent/e;

    invoke-interface {v0}, Lcom/twitter/library/widget/renderablecontent/e;->c()V

    .line 1900
    :cond_1
    return-void
.end method

.method public static setAnimationTestHooks(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .prologue
    .line 290
    invoke-static {}, Lcom/twitter/util/h;->d()V

    .line 291
    sput-object p0, Lcom/twitter/library/widget/TweetView;->d:Landroid/animation/Animator$AnimatorListener;

    .line 292
    return-void
.end method

.method private setupInlineActionBar(Z)V
    .locals 2

    .prologue
    .line 1976
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->H:Lcom/twitter/library/widget/InlineActionBar;

    if-eqz v0, :cond_0

    .line 1977
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->H:Lcom/twitter/library/widget/InlineActionBar;

    invoke-virtual {v0, p1}, Lcom/twitter/library/widget/InlineActionBar;->setForceHideDMInlineAction(Z)V

    .line 1978
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->H:Lcom/twitter/library/widget/InlineActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/InlineActionBar;->setShowBadge(Z)V

    .line 1980
    :cond_0
    return-void
.end method

.method private t()V
    .locals 2

    .prologue
    .line 1903
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->ar:Lcom/twitter/library/widget/renderablecontent/e;

    if-eqz v0, :cond_0

    .line 1904
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->ar:Lcom/twitter/library/widget/renderablecontent/e;

    .line 1905
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/twitter/library/widget/TweetView;->ar:Lcom/twitter/library/widget/renderablecontent/e;

    .line 1906
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/twitter/library/widget/TweetView;->as:Z

    .line 1907
    invoke-interface {v0}, Lcom/twitter/library/widget/renderablecontent/e;->bi_()V

    .line 1908
    invoke-interface {v0}, Lcom/twitter/library/widget/renderablecontent/e;->d()Landroid/view/View;

    move-result-object v0

    .line 1909
    if-eqz v0, :cond_0

    .line 1910
    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/TweetView;->removeView(Landroid/view/View;)V

    .line 1913
    :cond_0
    return-void
.end method

.method private u()V
    .locals 2

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->w:Lcom/twitter/library/media/widget/UserImageView;

    iget v1, p0, Lcom/twitter/library/widget/TweetView;->az:I

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/widget/UserImageView;->setSize(I)V

    .line 1936
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->u:Lcom/twitter/library/view/SocialProofView;

    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->w:Lcom/twitter/library/media/widget/UserImageView;

    invoke-virtual {v1}, Lcom/twitter/library/media/widget/UserImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Lcom/twitter/library/view/SocialProofView;->setTextOffset(I)V

    .line 1937
    return-void
.end method


# virtual methods
.method a(I)V
    .locals 2

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->Q:Lcom/twitter/library/view/aa;

    if-eqz v0, :cond_0

    .line 1650
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->Q:Lcom/twitter/library/view/aa;

    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    invoke-interface {v0, v1, p0, p1}, Lcom/twitter/library/view/aa;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/TweetView;I)V

    .line 1652
    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 1697
    invoke-direct {p0}, Lcom/twitter/library/widget/TweetView;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1698
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->G:Lcom/twitter/library/widget/UserForwardView;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/library/widget/UserForwardView;->a(ILjava/lang/String;)V

    .line 1702
    :goto_0
    return-void

    .line 1700
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->A:Lcom/twitter/ui/widget/BadgeView;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/ui/widget/BadgeView;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method a(Lcom/twitter/model/core/MediaEntity;)V
    .locals 2

    .prologue
    .line 1582
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->Q:Lcom/twitter/library/view/aa;

    if-eqz v0, :cond_0

    .line 1583
    invoke-static {p1}, Lcug;->c(Lcom/twitter/model/core/MediaEntity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1584
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->Q:Lcom/twitter/library/view/aa;

    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    invoke-interface {v0, v1, p0}, Lcom/twitter/library/view/aa;->b(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/TweetView;)V

    .line 1589
    :cond_0
    :goto_0
    return-void

    .line 1586
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->Q:Lcom/twitter/library/view/aa;

    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    invoke-interface {v0, v1, p1, p0}, Lcom/twitter/library/view/aa;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/MediaEntity;Lcom/twitter/library/widget/TweetView;)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/core/Tweet;Lcom/twitter/ui/view/s;)V
    .locals 6

    .prologue
    .line 715
    const/4 v3, 0x0

    new-instance v4, Lcjm;

    invoke-virtual {p0}, Lcom/twitter/library/widget/TweetView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v4, v0, p1}, Lcjm;-><init>(Landroid/app/Activity;Lcom/twitter/model/core/Tweet;)V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/library/widget/TweetView;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/ui/view/s;ZLcjm;Z)V

    .line 716
    return-void
.end method

.method public a(Lcom/twitter/model/core/Tweet;Lcom/twitter/ui/view/s;ZLcjm;)V
    .locals 6

    .prologue
    .line 739
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/library/widget/TweetView;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/ui/view/s;ZLcjm;Z)V

    .line 740
    return-void
.end method

.method public a(Lcom/twitter/model/core/Tweet;Lcom/twitter/ui/view/s;ZLcjm;Z)V
    .locals 20

    .prologue
    .line 755
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/library/widget/TweetView;->getContext()Landroid/content/Context;

    move-result-object v15

    .line 756
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/twitter/library/widget/TweetView;->av:I

    .line 757
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 756
    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Lcjm;->a(ILjava/lang/Object;)V

    .line 758
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/twitter/library/widget/TweetView;->o:I

    .line 760
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 758
    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Lcjm;->a(ILjava/lang/Object;)V

    .line 761
    const/4 v2, 0x2

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v2, v1}, Lcjm;->a(ILjava/lang/Object;)V

    .line 762
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/library/widget/TweetView;->aI:Lcjo;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Lcjm;->a(ILjava/lang/Object;)V

    .line 765
    invoke-static/range {p1 .. p1}, Lcom/twitter/android/av/p;->a(Lcom/twitter/model/core/Tweet;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/twitter/library/widget/TweetView;->aD:Z

    .line 766
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/twitter/model/core/Tweet;->u:Ljava/lang/Long;

    if-eqz v2, :cond_f

    const/4 v4, 0x1

    .line 768
    :goto_0
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/twitter/library/widget/TweetView;->ap:Z

    .line 769
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/twitter/library/widget/TweetView;->aH:Lcom/twitter/ui/view/s;

    .line 771
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/twitter/ui/view/s;->e:Z

    if-nez v2, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/twitter/library/widget/TweetView;->b(Lcom/twitter/model/core/Tweet;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_0
    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/twitter/library/widget/TweetView;->au:Z

    .line 774
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/widget/TweetView;->ay:Ljava/lang/String;

    .line 775
    invoke-static {}, Lcam;->a()Lcam;

    move-result-object v3

    invoke-virtual {v3}, Lcam;->f()Ljava/lang/String;

    move-result-object v3

    .line 774
    invoke-static {v2, v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const/4 v2, 0x1

    move v14, v2

    .line 777
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/twitter/library/widget/TweetView;->aE:Z

    if-nez v2, :cond_1

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/twitter/model/core/Tweet;->a(Lcom/twitter/model/core/Tweet;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 778
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/widget/TweetView;->al:Lcom/twitter/library/widget/PossiblySensitiveWarningView;

    if-eqz v2, :cond_2

    .line 779
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/widget/TweetView;->al:Lcom/twitter/library/widget/PossiblySensitiveWarningView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/twitter/library/widget/PossiblySensitiveWarningView;->setVisibility(I)V

    .line 782
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/twitter/library/widget/TweetView;->W:J

    move-wide/from16 v16, v0

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    move-object/from16 v18, v0

    .line 784
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/twitter/ui/view/s;->f:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/twitter/library/widget/TweetView;->g(Z)V

    .line 785
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/library/widget/TweetView;->U:Ljava/lang/CharSequence;

    .line 786
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    .line 787
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/twitter/library/widget/TweetView;->W:J

    .line 788
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/twitter/library/widget/TweetView;->am:I

    .line 789
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/library/widget/TweetView;->ad:Ljava/lang/String;

    .line 790
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/widget/TweetView;->e:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 791
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/twitter/library/widget/TweetView;->ae:Z

    .line 792
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/twitter/library/widget/TweetView;->af:Z

    .line 793
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/widget/TweetView;->aF:Lcom/twitter/library/view/ActionPromptView;

    if-eqz v2, :cond_3

    .line 794
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/widget/TweetView;->aF:Lcom/twitter/library/view/ActionPromptView;

    invoke-virtual {v2}, Lcom/twitter/library/view/ActionPromptView;->c()V

    .line 796
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/widget/TweetView;->C:Lcom/twitter/ui/widget/TextLayoutView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/twitter/ui/widget/TextLayoutView;->setTextWithVisibility(Ljava/lang/CharSequence;)V

    .line 797
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/widget/TweetView;->D:Lcom/twitter/ui/widget/TextLayoutView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/twitter/ui/widget/TextLayoutView;->setTextWithVisibility(Ljava/lang/CharSequence;)V

    .line 799
    invoke-direct/range {p0 .. p0}, Lcom/twitter/library/widget/TweetView;->getOwnerId()J

    move-result-wide v10

    .line 801
    invoke-direct/range {p0 .. p0}, Lcom/twitter/library/widget/TweetView;->p()Z

    move-result v5

    .line 803
    invoke-direct/range {p0 .. p1}, Lcom/twitter/library/widget/TweetView;->a(Lcom/twitter/model/core/Tweet;)Z

    move-result v2

    .line 805
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/twitter/library/widget/TweetView;->s:Z

    if-eqz v3, :cond_12

    if-nez v5, :cond_4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/twitter/library/widget/TweetView;->ah:Z

    if-nez v3, :cond_4

    .line 806
    invoke-virtual/range {p1 .. p1}, Lcom/twitter/model/core/Tweet;->q()Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_4
    if-nez v2, :cond_12

    .line 809
    invoke-static/range {p1 .. p1}, Lciz;->d(Lcom/twitter/model/core/Tweet;)Z

    move-result v2

    if-nez v2, :cond_12

    const/4 v6, 0x1

    .line 811
    :goto_3
    invoke-virtual/range {p4 .. p4}, Lcjm;->a()Lcom/twitter/library/widget/renderablecontent/e;

    move-result-object v19

    .line 812
    if-eqz v19, :cond_5

    .line 813
    invoke-virtual/range {p1 .. p1}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 814
    invoke-virtual/range {p4 .. p4}, Lcjm;->b()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 815
    invoke-virtual/range {p1 .. p1}, Lcom/twitter/model/core/Tweet;->aj()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual/range {p1 .. p1}, Lcom/twitter/model/core/Tweet;->i()Z

    move-result v2

    if-nez v2, :cond_13

    .line 816
    invoke-virtual/range {p1 .. p1}, Lcom/twitter/model/core/Tweet;->M()Z

    move-result v2

    if-nez v2, :cond_13

    const/4 v7, 0x1

    :goto_4
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 818
    invoke-direct/range {v2 .. v7}, Lcom/twitter/library/widget/TweetView;->a(Lcom/twitter/model/core/Tweet;ZZZZ)V

    .line 822
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/widget/TweetView;->w:Lcom/twitter/library/media/widget/UserImageView;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/twitter/library/media/widget/UserImageView;->setFromMemoryOnly(Z)V

    .line 823
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/widget/TweetView;->w:Lcom/twitter/library/media/widget/UserImageView;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/twitter/model/core/Tweet;->n:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/twitter/model/core/Tweet;->o:J

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v8, v9, v7}, Lcom/twitter/library/media/widget/UserImageView;->a(Ljava/lang/String;JZ)Z

    .line 825
    if-eqz p5, :cond_6

    .line 826
    if-eqz v4, :cond_14

    const v2, 0x3ecccccd    # 0.4f

    :goto_5
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/twitter/util/ui/r;->a(Landroid/view/View;F)V

    .line 829
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/twitter/model/core/Tweet;->U()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 830
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/widget/TweetView;->t:Lcom/twitter/library/view/QuoteView;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/twitter/library/widget/TweetView;->an:Z

    invoke-virtual {v2, v3}, Lcom/twitter/library/view/QuoteView;->setDisplaySensitiveMedia(Z)V

    .line 831
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/widget/TweetView;->t:Lcom/twitter/library/view/QuoteView;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/twitter/library/widget/TweetView;->ah:Z

    invoke-virtual {v2, v3}, Lcom/twitter/library/view/QuoteView;->setAlwaysExpandMedia(Z)V

    .line 832
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/widget/TweetView;->t:Lcom/twitter/library/view/QuoteView;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/twitter/model/core/Tweet;->s:Lcom/twitter/model/core/ay;

    move/from16 v0, p3

    invoke-virtual {v2, v3, v0}, Lcom/twitter/library/view/QuoteView;->a(Lcom/twitter/model/core/ay;Z)V

    .line 833
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/widget/TweetView;->t:Lcom/twitter/library/view/QuoteView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/twitter/library/view/QuoteView;->setVisibility(I)V

    .line 839
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/twitter/library/widget/TweetView;->a(Lcom/twitter/model/core/Tweet;Z)Lcom/twitter/model/core/i;

    move-result-object v2

    .line 841
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/twitter/model/core/Tweet;->Q:[Lcom/twitter/model/core/e;

    invoke-static {v3}, Lcom/twitter/util/collection/r;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 843
    invoke-static/range {p1 .. p1}, Lccb;->a(Lcom/twitter/model/core/Tweet;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 844
    invoke-static {v5}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_16

    .line 845
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sget v8, Lccb;->a:I

    if-gt v7, v8, :cond_16

    .line 846
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/library/widget/TweetView;->J:Landroid/content/res/Resources;

    sget v8, Lbkb;->tagline_location_poi:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v9, v12

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 847
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/library/widget/TweetView;->S:Lcom/twitter/library/widget/an;

    invoke-virtual {v7, v5}, Lcom/twitter/library/widget/an;->a(Ljava/lang/CharSequence;)Lcom/twitter/library/widget/an;

    .line 852
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/library/widget/TweetView;->S:Lcom/twitter/library/widget/an;

    iget-object v7, v2, Lcom/twitter/model/core/i;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/twitter/model/core/i;->b:Lcom/twitter/model/core/bm;

    invoke-virtual {v5, v7, v2, v3}, Lcom/twitter/library/widget/an;->a(Ljava/lang/CharSequence;Lcom/twitter/model/core/bm;Ljava/lang/Iterable;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/library/widget/TweetView;->U:Ljava/lang/CharSequence;

    .line 854
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/widget/TweetView;->G:Lcom/twitter/library/widget/UserForwardView;

    if-eqz v2, :cond_7

    .line 855
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/widget/TweetView;->aH:Lcom/twitter/ui/view/s;

    iget-boolean v2, v2, Lcom/twitter/ui/view/s;->m:Z

    if-eqz v2, :cond_17

    .line 856
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/widget/TweetView;->G:Lcom/twitter/library/widget/UserForwardView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/twitter/library/widget/UserForwardView;->setVisibility(I)V

    .line 862
    :cond_7
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/widget/TweetView;->aB:Lcom/twitter/library/revenue/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/library/widget/TweetView;->J:Landroid/content/res/Resources;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/twitter/library/revenue/a;->a(Lcom/twitter/model/core/Tweet;Landroid/content/res/Resources;)V

    .line 863
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/widget/TweetView;->y:Lcim;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1, v10, v11}, Lcim;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/ui/view/s;J)V

    .line 864
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/library/widget/TweetView;->v:Lcis;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/widget/TweetView;->z:Lcom/twitter/ui/widget/TextLayoutView;

    invoke-virtual {v2}, Lcom/twitter/ui/widget/TextLayoutView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_18

    const/4 v12, 0x1

    :goto_9
    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v7 .. v12}, Lcis;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/ui/view/s;JZ)V

    .line 867
    invoke-static {}, Lcbh;->a()Lcbh;

    move-result-object v2

    invoke-virtual {v2}, Lcbh;->c()Z

    move-result v3

    .line 869
    invoke-static {}, Lcbh;->a()Lcbh;

    move-result-object v2

    invoke-virtual {v2}, Lcbh;->d()Z

    move-result v5

    .line 870
    move-object/from16 v0, p0

    iget v2, v0, Lcom/twitter/library/widget/TweetView;->h:I

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/twitter/library/view/ab;->a(Lcom/twitter/library/widget/TweetView;I)I

    move-result v11

    .line 872
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/widget/TweetView;->J:Landroid/content/res/Resources;

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/twitter/model/core/Tweet;->m:J

    invoke-static {v2, v8, v9}, Lcom/twitter/util/al;->a(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v10

    .line 873
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/library/widget/TweetView;->x:Lcom/twitter/ui/widget/TweetHeaderView;

    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/twitter/ui/view/s;->g:Z

    if-nez v2, :cond_19

    invoke-direct/range {p0 .. p0}, Lcom/twitter/library/widget/TweetView;->m()Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v2, 0x1

    :goto_a
    invoke-virtual {v7, v2}, Lcom/twitter/ui/widget/TweetHeaderView;->setShowTimestamp(Z)V

    .line 874
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/library/widget/TweetView;->x:Lcom/twitter/ui/widget/TweetHeaderView;

    invoke-virtual/range {p1 .. p1}, Lcom/twitter/model/core/Tweet;->d()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lcom/twitter/library/view/ab;->a(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/twitter/model/core/Tweet;->H:Z

    if-eqz v2, :cond_1a

    if-eqz v3, :cond_1a

    const/4 v12, 0x1

    :goto_b
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/twitter/model/core/Tweet;->B:Z

    if-eqz v2, :cond_1b

    if-eqz v5, :cond_1b

    const/4 v13, 0x1

    :goto_c
    invoke-virtual/range {v7 .. v13}, Lcom/twitter/ui/widget/TweetHeaderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 878
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/widget/TweetView;->x:Lcom/twitter/ui/widget/TweetHeaderView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1, v2}, Lcom/twitter/library/view/ab;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/TweetView;Lcom/twitter/ui/widget/TweetHeaderView;)V

    .line 880
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/widget/TweetView;->x:Lcom/twitter/ui/widget/TweetHeaderView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/twitter/ui/widget/TweetHeaderView;->setOnAuthorClick(Landroid/view/View$OnClickListener;)V

    .line 882
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/twitter/library/widget/TweetView;->aa:Z

    if-eqz v2, :cond_1c

    .line 883
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/twitter/library/widget/TweetView;->W:J

    const-wide/16 v8, 0x4

    or-long/2addr v2, v8

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/twitter/library/widget/TweetView;->W:J

    .line 888
    :goto_d
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/twitter/library/widget/TweetView;->W:J

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-eqz v2, :cond_9

    .line 889
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/library/widget/TweetView;->refreshDrawableState()V

    .line 894
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v6, v14}, Lcom/twitter/library/widget/TweetView;->a(Lcom/twitter/model/core/Tweet;ZZ)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 895
    invoke-direct/range {p0 .. p0}, Lcom/twitter/library/widget/TweetView;->t()V

    .line 899
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v4, v1, v6, v14}, Lcom/twitter/library/widget/TweetView;->a(ZLcom/twitter/model/core/Tweet;ZZ)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 900
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/twitter/library/widget/TweetView;->at:Z

    .line 901
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/twitter/library/widget/TweetView;->ar:Lcom/twitter/library/widget/renderablecontent/e;

    .line 902
    invoke-direct/range {p0 .. p0}, Lcom/twitter/library/widget/TweetView;->s()V

    .line 906
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/twitter/library/widget/TweetView;->aE:Z

    .line 908
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/widget/TweetView;->aA:Lcom/twitter/util/math/Size;

    .line 909
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcug;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/util/math/Size;)Ljava/util/List;

    move-result-object v3

    .line 911
    move-object/from16 v0, p0

    iget v2, v0, Lcom/twitter/library/widget/TweetView;->n:I

    invoke-static {v15, v3, v2}, Lcom/twitter/library/media/util/aa;->a(Landroid/content/Context;Ljava/util/List;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 913
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/twitter/library/widget/TweetView;->ac:Z

    if-nez v4, :cond_c

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 914
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/library/widget/TweetView;->D:Lcom/twitter/ui/widget/TextLayoutView;

    invoke-virtual/range {p1 .. p1}, Lcom/twitter/model/core/Tweet;->n()Z

    move-result v5

    invoke-static {v5}, Lcom/twitter/util/a;->a(Z)Landroid/text/Layout$Alignment;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/twitter/ui/widget/TextLayoutView;->a(Landroid/text/Layout$Alignment;)Lcom/twitter/ui/widget/TextLayoutView;

    .line 915
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/library/widget/TweetView;->D:Lcom/twitter/ui/widget/TextLayoutView;

    invoke-virtual {v4, v2}, Lcom/twitter/ui/widget/TextLayoutView;->setTextWithVisibility(Ljava/lang/CharSequence;)V

    .line 918
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/widget/TweetView;->M:Lcom/twitter/library/widget/TextContentView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/library/widget/TweetView;->U:Ljava/lang/CharSequence;

    invoke-virtual/range {p1 .. p1}, Lcom/twitter/model/core/Tweet;->n()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/twitter/library/widget/TextContentView;->a(Ljava/lang/CharSequence;Z)V

    .line 920
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/widget/TweetView;->u:Lcom/twitter/library/view/SocialProofView;

    invoke-virtual {v2}, Lcom/twitter/library/view/SocialProofView;->getSocialProofAccessibilityString()Ljava/lang/String;

    move-result-object v7

    .line 921
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/widget/TweetView;->U:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 924
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/widget/TweetView;->J:Landroid/content/res/Resources;

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/twitter/model/core/Tweet;->m:J

    invoke-static {v2, v8, v9}, Lcom/twitter/util/al;->b(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, ""

    invoke-static {v2, v4}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 925
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 926
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    iget-object v4, v4, Lcom/twitter/model/core/Tweet;->w:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " @"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    iget-object v4, v4, Lcom/twitter/model/core/Tweet;->r:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 928
    move-object/from16 v0, p0

    iget v2, v0, Lcom/twitter/library/widget/TweetView;->am:I

    const/4 v8, 0x3

    if-ne v2, v8, :cond_1d

    invoke-virtual/range {p1 .. p1}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 929
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/twitter/library/view/ab;->a(Landroid/view/View;Lcom/twitter/model/core/Tweet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/widget/TweetView;->B:Lcom/twitter/library/view/TweetPivotView;

    if-eqz v2, :cond_d

    .line 954
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/widget/TweetView;->B:Lcom/twitter/library/view/TweetPivotView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/library/widget/TweetView;->Q:Lcom/twitter/library/view/aa;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/twitter/library/view/TweetPivotView;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/view/aa;)V

    .line 957
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/twitter/model/core/Tweet;->c()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 958
    move-object/from16 v0, p0

    iget v2, v0, Lcom/twitter/library/widget/TweetView;->O:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/twitter/library/widget/TweetView;->setBackgroundResource(I)V

    .line 963
    :goto_f
    if-eqz p5, :cond_e

    .line 964
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/library/widget/TweetView;->requestLayout()V

    .line 965
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/library/widget/TweetView;->invalidate()V

    .line 972
    :cond_e
    :goto_10
    invoke-direct/range {p0 .. p1}, Lcom/twitter/library/widget/TweetView;->d(Lcom/twitter/model/core/Tweet;)V

    .line 974
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/library/widget/TweetView;->w:Lcom/twitter/library/media/widget/UserImageView;

    invoke-virtual/range {p1 .. p1}, Lcom/twitter/model/core/Tweet;->c()Z

    move-result v2

    if-nez v2, :cond_22

    const/4 v2, 0x1

    :goto_11
    invoke-virtual {v3, v2}, Lcom/twitter/library/media/widget/UserImageView;->a(Z)V

    .line 975
    return-void

    .line 766
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 771
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 774
    :cond_11
    const/4 v2, 0x0

    move v14, v2

    goto/16 :goto_2

    .line 809
    :cond_12
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 816
    :cond_13
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 826
    :cond_14
    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_5

    .line 835
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/widget/TweetView;->t:Lcom/twitter/library/view/QuoteView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/twitter/library/view/QuoteView;->a(Z)V

    .line 836
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/widget/TweetView;->t:Lcom/twitter/library/view/QuoteView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/twitter/library/view/QuoteView;->setVisibility(I)V

    goto/16 :goto_6

    .line 849
    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/library/widget/TweetView;->S:Lcom/twitter/library/widget/an;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/twitter/library/widget/an;->a(Ljava/lang/CharSequence;)Lcom/twitter/library/widget/an;

    goto/16 :goto_7

    .line 858
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/widget/TweetView;->G:Lcom/twitter/library/widget/UserForwardView;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/twitter/library/widget/UserForwardView;->a(Lcom/twitter/model/core/Tweet;)V

    goto/16 :goto_8

    .line 864
    :cond_18
    const/4 v12, 0x0

    goto/16 :goto_9

    .line 873
    :cond_19
    const/4 v2, 0x0

    goto/16 :goto_a

    .line 874
    :cond_1a
    const/4 v12, 0x0

    goto/16 :goto_b

    :cond_1b
    const/4 v13, 0x0

    goto/16 :goto_c

    .line 885
    :cond_1c
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/twitter/library/widget/TweetView;->W:J

    const-wide/16 v8, -0x5

    and-long/2addr v2, v8

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/twitter/library/widget/TweetView;->W:J

    goto/16 :goto_d

    .line 936
    :cond_1d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 937
    move-object/from16 v0, p0

    iget v2, v0, Lcom/twitter/library/widget/TweetView;->am:I

    const/4 v9, 0x1

    if-ne v2, v9, :cond_1f

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 938
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1e
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/core/MediaEntity;

    .line 939
    iget-object v9, v2, Lcom/twitter/model/core/MediaEntity;->x:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1e

    .line 940
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/library/widget/TweetView;->J:Landroid/content/res/Resources;

    sget v10, Lbkb;->timeline_tweet_media_format:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v2, v2, Lcom/twitter/model/core/MediaEntity;->x:Ljava/lang/String;

    aput-object v2, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v9, ". "

    .line 941
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 945
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/widget/TweetView;->J:Landroid/content/res/Resources;

    sget v3, Lbkb;->timeline_tweet_format:I

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v4, 0x1

    aput-object v5, v9, v4

    const/4 v4, 0x2

    .line 948
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v4

    const/4 v4, 0x3

    aput-object v6, v9, v4

    const/4 v4, 0x4

    aput-object v7, v9, v4

    .line 945
    invoke-virtual {v2, v3, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/twitter/library/widget/TweetView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 960
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/widget/TweetView;->N:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/twitter/library/widget/TweetView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_f

    .line 968
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/widget/TweetView;->w:Lcom/twitter/library/media/widget/UserImageView;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/twitter/model/core/Tweet;->n:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/twitter/model/core/Tweet;->o:J

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/twitter/library/media/widget/UserImageView;->a(Ljava/lang/String;JZ)Z

    .line 970
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/library/widget/TweetView;->aP_()V

    goto/16 :goto_10

    .line 974
    :cond_22
    const/4 v2, 0x0

    goto/16 :goto_11
.end method

.method public a(Lcom/twitter/model/core/Tweet;ZLcjm;)V
    .locals 1

    .prologue
    .line 733
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/twitter/library/widget/TweetView;->a(Lcom/twitter/model/core/Tweet;ZLcjm;Z)V

    .line 734
    return-void
.end method

.method public a(Lcom/twitter/model/core/Tweet;ZLcjm;Z)V
    .locals 6

    .prologue
    .line 746
    sget-object v2, Lcom/twitter/library/widget/TweetView;->c:Lcom/twitter/ui/view/s;

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/library/widget/TweetView;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/ui/view/s;ZLcjm;Z)V

    .line 748
    return-void
.end method

.method a(Lcom/twitter/model/media/EditableMedia;)V
    .locals 2

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->Q:Lcom/twitter/library/view/aa;

    if-eqz v0, :cond_0

    .line 1602
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->Q:Lcom/twitter/library/view/aa;

    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    invoke-interface {v0, v1, p1, p0}, Lcom/twitter/library/view/aa;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/media/EditableMedia;Lcom/twitter/library/widget/TweetView;)V

    .line 1604
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1717
    iget-boolean v0, p0, Lcom/twitter/library/widget/TweetView;->ag:Z

    if-nez v0, :cond_0

    .line 1729
    :goto_0
    return-void

    .line 1721
    :cond_0
    if-eqz p1, :cond_1

    .line 1722
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/twitter/model/core/Tweet;->a:Z

    .line 1723
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    iget v1, v0, Lcom/twitter/model/core/Tweet;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/twitter/model/core/Tweet;->k:I

    .line 1728
    :goto_1
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    invoke-direct {p0, v0}, Lcom/twitter/library/widget/TweetView;->d(Lcom/twitter/model/core/Tweet;)V

    goto :goto_0

    .line 1725
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    iput-boolean v2, v0, Lcom/twitter/model/core/Tweet;->a:Z

    .line 1726
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    iget v1, v1, Lcom/twitter/model/core/Tweet;->k:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/twitter/model/core/Tweet;->k:I

    goto :goto_1
.end method

.method public a(ZZ)V
    .locals 0

    .prologue
    .line 1848
    iput-boolean p1, p0, Lcom/twitter/library/widget/TweetView;->ae:Z

    .line 1849
    iput-boolean p2, p0, Lcom/twitter/library/widget/TweetView;->af:Z

    .line 1850
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 580
    iget-boolean v0, p0, Lcom/twitter/library/widget/TweetView;->aj:Z

    return v0
.end method

.method public a(Lcom/twitter/model/core/TweetActionType;)Z
    .locals 4

    .prologue
    .line 667
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    invoke-direct {p0}, Lcom/twitter/library/widget/TweetView;->getOwnerId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/core/Tweet;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aP_()V
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->w:Lcom/twitter/library/media/widget/UserImageView;

    invoke-virtual {v0}, Lcom/twitter/library/media/widget/UserImageView;->aP_()V

    .line 625
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->t:Lcom/twitter/library/view/QuoteView;

    invoke-virtual {v0}, Lcom/twitter/library/view/QuoteView;->aP_()V

    .line 626
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->aF:Lcom/twitter/library/view/ActionPromptView;

    if-eqz v0, :cond_0

    .line 1680
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->aF:Lcom/twitter/library/view/ActionPromptView;

    invoke-virtual {v0}, Lcom/twitter/library/view/ActionPromptView;->getActionPrompt()Lcom/twitter/model/timeline/w;

    move-result-object v0

    .line 1681
    if-eqz v0, :cond_0

    .line 1682
    invoke-virtual {v0}, Lcom/twitter/model/timeline/w;->k()V

    .line 1683
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->aF:Lcom/twitter/library/view/ActionPromptView;

    invoke-virtual {v0}, Lcom/twitter/library/view/ActionPromptView;->c()V

    .line 1684
    invoke-virtual {p0, p1}, Lcom/twitter/library/widget/TweetView;->a(I)V

    .line 1687
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/library/widget/TweetView;->requestLayout()V

    .line 1688
    return-void
.end method

.method b(Lcom/twitter/model/core/TweetActionType;)V
    .locals 1

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->Q:Lcom/twitter/library/view/aa;

    if-eqz v0, :cond_0

    .line 1656
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->Q:Lcom/twitter/library/view/aa;

    invoke-interface {v0, p1, p0}, Lcom/twitter/library/view/aa;->a(Lcom/twitter/model/core/TweetActionType;Lcom/twitter/library/widget/TweetView;)V

    .line 1658
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1756
    iget-boolean v0, p0, Lcom/twitter/library/widget/TweetView;->ag:Z

    if-nez v0, :cond_1

    .line 1767
    :cond_0
    :goto_0
    return-void

    .line 1760
    :cond_1
    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    if-nez p1, :cond_2

    move v0, v6

    :goto_1
    iput-boolean v0, v1, Lcom/twitter/model/core/Tweet;->c:Z

    .line 1761
    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    iget v2, v0, Lcom/twitter/model/core/Tweet;->h:I

    if-eqz p1, :cond_3

    const/4 v0, -0x1

    :goto_2
    add-int/2addr v0, v2

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/twitter/model/core/Tweet;->h:I

    .line 1762
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    invoke-direct {p0, v0}, Lcom/twitter/library/widget/TweetView;->d(Lcom/twitter/model/core/Tweet;)V

    .line 1763
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->aH:Lcom/twitter/ui/view/s;

    iget-boolean v0, v0, Lcom/twitter/ui/view/s;->h:Z

    if-eqz v0, :cond_0

    .line 1764
    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->v:Lcis;

    iget-object v2, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    iget-object v3, p0, Lcom/twitter/library/widget/TweetView;->aH:Lcom/twitter/ui/view/s;

    invoke-direct {p0}, Lcom/twitter/library/widget/TweetView;->getOwnerId()J

    move-result-wide v4

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->z:Lcom/twitter/ui/widget/TextLayoutView;

    .line 1765
    invoke-virtual {v0}, Lcom/twitter/ui/widget/TextLayoutView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 1764
    :goto_3
    invoke-virtual/range {v1 .. v6}, Lcis;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/ui/view/s;JZ)V

    goto :goto_0

    :cond_2
    move v0, v7

    .line 1760
    goto :goto_1

    :cond_3
    move v0, v6

    .line 1761
    goto :goto_2

    :cond_4
    move v6, v7

    .line 1765
    goto :goto_3
.end method

.method public b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1564
    iget v1, p0, Lcom/twitter/library/widget/TweetView;->am:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/twitter/library/widget/TweetView;->am:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()V
    .locals 3

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->Q:Lcom/twitter/library/view/aa;

    if-eqz v0, :cond_0

    .line 1593
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v0

    .line 1594
    if-eqz v0, :cond_0

    .line 1595
    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->Q:Lcom/twitter/library/view/aa;

    iget-object v2, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    invoke-interface {v1, v2, v0, p0}, Lcom/twitter/library/view/aa;->a(Lcom/twitter/model/core/Tweet;Lclw;Lcom/twitter/library/widget/TweetView;)V

    .line 1598
    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 1733
    iget-boolean v0, p0, Lcom/twitter/library/widget/TweetView;->ag:Z

    if-nez v0, :cond_0

    .line 1742
    :goto_0
    return-void

    .line 1737
    :cond_0
    invoke-direct {p0}, Lcom/twitter/library/widget/TweetView;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1738
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->G:Lcom/twitter/library/widget/UserForwardView;

    invoke-virtual {v0, p1}, Lcom/twitter/library/widget/UserForwardView;->setFollowButtonChecked(Z)V

    goto :goto_0

    .line 1740
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    invoke-direct {p0, v0}, Lcom/twitter/library/widget/TweetView;->d(Lcom/twitter/model/core/Tweet;)V

    goto :goto_0
.end method

.method d()V
    .locals 6

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->Q:Lcom/twitter/library/view/aa;

    if-eqz v0, :cond_0

    .line 1608
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    .line 1609
    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->Q()Lcom/twitter/model/core/MediaEntity;

    move-result-object v1

    .line 1610
    if-eqz v1, :cond_0

    .line 1611
    iget-object v2, p0, Lcom/twitter/library/widget/TweetView;->Q:Lcom/twitter/library/view/aa;

    iget-wide v4, v1, Lcom/twitter/model/core/MediaEntity;->c:J

    invoke-interface {v2, v0, v4, v5, p0}, Lcom/twitter/library/view/aa;->a(Lcom/twitter/model/core/Tweet;JLcom/twitter/library/widget/TweetView;)V

    .line 1614
    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 1746
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 1433
    invoke-super {p0, p1}, Lcom/twitter/ui/widget/CellLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1435
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->H:Lcom/twitter/library/widget/InlineActionBar;

    invoke-virtual {v0, p1, p0}, Lcom/twitter/library/widget/InlineActionBar;->a(Landroid/graphics/Canvas;Landroid/view/ViewGroup;)V

    .line 1436
    return-void
.end method

.method public e(Z)V
    .locals 2

    .prologue
    .line 1692
    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->A:Lcom/twitter/ui/widget/BadgeView;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/twitter/library/widget/TweetView;->r()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/ui/widget/BadgeView;->setVisibility(I)V

    .line 1693
    return-void

    .line 1692
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->w:Lcom/twitter/library/media/widget/UserImageView;

    invoke-virtual {v0}, Lcom/twitter/library/media/widget/UserImageView;->f()V

    .line 631
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->t:Lcom/twitter/library/view/QuoteView;

    invoke-virtual {v0}, Lcom/twitter/library/view/QuoteView;->f()V

    .line 632
    return-void
.end method

.method f(Z)V
    .locals 2

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->Q:Lcom/twitter/library/view/aa;

    if-eqz v0, :cond_0

    .line 1577
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->Q:Lcom/twitter/library/view/aa;

    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    invoke-static {p0, v1, p1}, Lcjc;->a(Lcjb;Lcom/twitter/model/core/Tweet;Z)Lcjc;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twitter/library/view/aa;->a(Lcjc;)V

    .line 1579
    :cond_0
    return-void
.end method

.method g()V
    .locals 3

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->Q:Lcom/twitter/library/view/aa;

    if-eqz v0, :cond_0

    .line 1618
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->ae()Lcom/twitter/model/core/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/core/bm;->b()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->c(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cx;

    .line 1619
    if-eqz v0, :cond_0

    .line 1620
    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->Q:Lcom/twitter/library/view/aa;

    iget-object v2, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    invoke-interface {v1, v2, v0}, Lcom/twitter/library/view/aa;->b(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/cx;)V

    .line 1623
    :cond_0
    return-void
.end method

.method public getActionPrompt()Lcom/twitter/model/timeline/w;
    .locals 1

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->aF:Lcom/twitter/library/view/ActionPromptView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->aF:Lcom/twitter/library/view/ActionPromptView;

    invoke-virtual {v0}, Lcom/twitter/library/view/ActionPromptView;->getActionPrompt()Lcom/twitter/model/timeline/w;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActionPromptButton()Lcom/twitter/ui/widget/TwitterButton;
    .locals 1

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->aF:Lcom/twitter/library/view/ActionPromptView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->aF:Lcom/twitter/library/view/ActionPromptView;

    invoke-virtual {v0}, Lcom/twitter/library/view/ActionPromptView;->getActionPromptButton()Lcom/twitter/ui/widget/TwitterButton;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActionPromptVisibility()Z
    .locals 1

    .prologue
    .line 1543
    invoke-direct {p0}, Lcom/twitter/library/widget/TweetView;->n()Z

    move-result v0

    return v0
.end method

.method public getAutoPlayableItem()Lcom/twitter/library/widget/a;
    .locals 1

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/twitter/library/widget/TweetView;->getContentContainer()Lcom/twitter/library/widget/renderablecontent/c;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/library/widget/d;->a(Lcom/twitter/library/widget/renderablecontent/c;)Lcom/twitter/library/widget/a;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->U:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getContentContainer()Lcom/twitter/library/widget/renderablecontent/c;
    .locals 1

    .prologue
    .line 1706
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->ar:Lcom/twitter/library/widget/renderablecontent/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->ar:Lcom/twitter/library/widget/renderablecontent/e;

    invoke-interface {v0}, Lcom/twitter/library/widget/renderablecontent/e;->h()Lcom/twitter/library/widget/renderablecontent/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1707
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->ar:Lcom/twitter/library/widget/renderablecontent/e;

    invoke-interface {v0}, Lcom/twitter/library/widget/renderablecontent/e;->h()Lcom/twitter/library/widget/renderablecontent/c;

    move-result-object v0

    .line 1709
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/twitter/library/widget/renderablecontent/c;->B:Lcom/twitter/library/widget/renderablecontent/c;

    goto :goto_0
.end method

.method getFavoriteLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1877
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->H:Lcom/twitter/library/widget/InlineActionBar;

    sget-object v1, Lcom/twitter/model/core/TweetActionType;->b:Lcom/twitter/model/core/TweetActionType;

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/InlineActionBar;->b(Lcom/twitter/model/core/TweetActionType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFriendshipCache()Lcom/twitter/library/util/FriendshipCache;
    .locals 1

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->R:Lcom/twitter/library/util/FriendshipCache;

    return-object v0
.end method

.method public getPreviewEnabled()Z
    .locals 1

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/twitter/library/widget/TweetView;->s:Z

    return v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->v:Lcis;

    invoke-virtual {v0}, Lcis;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReasonIconResId()I
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->v:Lcis;

    invoke-virtual {v0}, Lcis;->b()I

    move-result v0

    return v0
.end method

.method getRetweetLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1882
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->H:Lcom/twitter/library/widget/InlineActionBar;

    sget-object v1, Lcom/twitter/model/core/TweetActionType;->c:Lcom/twitter/model/core/TweetActionType;

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/InlineActionBar;->b(Lcom/twitter/model/core/TweetActionType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScribeItem()Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->ao:Lcom/twitter/library/scribe/TwitterScribeItem;

    return-object v0
.end method

.method public getSocialContextCount()I
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->v:Lcis;

    invoke-virtual {v0}, Lcis;->d()I

    move-result v0

    return v0
.end method

.method public getSocialContextName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->v:Lcis;

    invoke-virtual {v0}, Lcis;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTweet()Lcom/twitter/model/core/Tweet;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    return-object v0
.end method

.method public getTweetContentHost()Lcom/twitter/library/widget/renderablecontent/e;
    .locals 1

    .prologue
    .line 687
    invoke-static {}, Lcom/twitter/util/h;->d()V

    .line 688
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->ar:Lcom/twitter/library/widget/renderablecontent/e;

    return-object v0
.end method

.method h()V
    .locals 2

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->Q:Lcom/twitter/library/view/aa;

    if-eqz v0, :cond_0

    .line 1627
    iget v0, p0, Lcom/twitter/library/widget/TweetView;->ak:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1628
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->Q:Lcom/twitter/library/view/aa;

    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    invoke-interface {v0, v1, p0}, Lcom/twitter/library/view/aa;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/TweetView;)V

    .line 1633
    :cond_0
    :goto_0
    return-void

    .line 1629
    :cond_1
    iget v0, p0, Lcom/twitter/library/widget/TweetView;->ak:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1630
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->Q:Lcom/twitter/library/view/aa;

    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    invoke-interface {v0, v1, p0}, Lcom/twitter/library/view/aa;->d(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/TweetView;)V

    goto :goto_0
.end method

.method i()V
    .locals 2

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->Q:Lcom/twitter/library/view/aa;

    if-eqz v0, :cond_0

    .line 1637
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->Q:Lcom/twitter/library/view/aa;

    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    invoke-interface {v0, v1, p0}, Lcom/twitter/library/view/aa;->c(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/TweetView;)V

    .line 1639
    :cond_0
    return-void
.end method

.method j()Z
    .locals 2

    .prologue
    .line 1642
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->Q:Lcom/twitter/library/view/aa;

    if-eqz v0, :cond_0

    .line 1643
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->Q:Lcom/twitter/library/view/aa;

    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    invoke-interface {v0, v1}, Lcom/twitter/library/view/aa;->a(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    .line 1645
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method k()V
    .locals 3

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->Q:Lcom/twitter/library/view/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    iget-object v0, v0, Lcom/twitter/model/core/Tweet;->I:Lcom/twitter/model/geo/TwitterPlace;

    if-eqz v0, :cond_0

    .line 1668
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->Q:Lcom/twitter/library/view/aa;

    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    iget-object v2, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    iget-object v2, v2, Lcom/twitter/model/core/Tweet;->I:Lcom/twitter/model/geo/TwitterPlace;

    invoke-interface {v0, v1, v2, p0}, Lcom/twitter/library/view/aa;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/geo/TwitterPlace;Lcom/twitter/library/widget/TweetView;)V

    .line 1670
    :cond_0
    return-void
.end method

.method public l()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1776
    iget-boolean v0, p0, Lcom/twitter/library/widget/TweetView;->ap:Z

    if-eqz v0, :cond_1

    .line 1777
    iput-boolean v1, p0, Lcom/twitter/library/widget/TweetView;->ap:Z

    .line 1779
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->w:Lcom/twitter/library/media/widget/UserImageView;

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/widget/UserImageView;->setFromMemoryOnly(Z)V

    .line 1780
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->t:Lcom/twitter/library/view/QuoteView;

    invoke-virtual {v0}, Lcom/twitter/library/view/QuoteView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1781
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->t:Lcom/twitter/library/view/QuoteView;

    invoke-virtual {v0, v1}, Lcom/twitter/library/view/QuoteView;->setMediaFromMemoryOnly(Z)V

    .line 1783
    :cond_0
    invoke-direct {p0}, Lcom/twitter/library/widget/TweetView;->s()V

    .line 1785
    :cond_1
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    .prologue
    .line 673
    sget-object v0, Lcom/twitter/library/widget/TweetView;->a:[I

    array-length v0, v0

    add-int/2addr v0, p1

    invoke-super {p0, v0}, Lcom/twitter/ui/widget/CellLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 674
    iget-boolean v1, p0, Lcom/twitter/library/widget/TweetView;->aa:Z

    if-eqz v1, :cond_0

    .line 675
    sget-object v1, Lcom/twitter/library/widget/TweetView;->a:[I

    invoke-static {v0, v1}, Lcom/twitter/library/widget/TweetView;->mergeDrawableStates([I[I)[I

    .line 677
    :cond_0
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 636
    invoke-super {p0}, Lcom/twitter/ui/widget/CellLayout;->onDetachedFromWindow()V

    .line 637
    invoke-direct {p0}, Lcom/twitter/library/widget/TweetView;->t()V

    .line 638
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->t:Lcom/twitter/library/view/QuoteView;

    invoke-virtual {v0}, Lcom/twitter/library/view/QuoteView;->b()V

    .line 639
    invoke-virtual {p0}, Lcom/twitter/library/widget/TweetView;->f()V

    .line 642
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/library/widget/TweetView;->aE:Z

    .line 643
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 1418
    invoke-super {p0, p1}, Lcom/twitter/ui/widget/CellLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1419
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    if-nez v0, :cond_1

    .line 1429
    :cond_0
    :goto_0
    return-void

    .line 1423
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/twitter/library/widget/TweetView;->ae:Z

    if-eqz v0, :cond_2

    .line 1424
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1426
    :cond_2
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/library/widget/TweetView;->af:Z

    if-eqz v0, :cond_0

    .line 1427
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    .line 1388
    invoke-super/range {p0 .. p5}, Lcom/twitter/ui/widget/CellLayout;->onLayout(ZIIII)V

    .line 1389
    iget-boolean v0, p0, Lcom/twitter/library/widget/TweetView;->g_:Z

    if-eqz v0, :cond_4

    .line 1390
    invoke-virtual {p0}, Lcom/twitter/library/widget/TweetView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/library/widget/TweetView;->getPaddingRight()I

    move-result v1

    iget-object v2, p0, Lcom/twitter/library/widget/TweetView;->w:Lcom/twitter/library/media/widget/UserImageView;

    invoke-virtual {v2}, Lcom/twitter/library/media/widget/UserImageView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->w:Lcom/twitter/library/media/widget/UserImageView;

    .line 1391
    invoke-virtual {v1}, Lcom/twitter/library/media/widget/UserImageView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 1392
    :goto_0
    iget-boolean v1, p0, Lcom/twitter/library/widget/TweetView;->ae:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/twitter/library/widget/TweetView;->af:Z

    if-eqz v1, :cond_2

    .line 1393
    :cond_0
    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->w:Lcom/twitter/library/media/widget/UserImageView;

    invoke-virtual {v1}, Lcom/twitter/library/media/widget/UserImageView;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 1394
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1395
    iget v1, p0, Lcom/twitter/library/widget/TweetView;->i:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 1396
    iget-boolean v1, p0, Lcom/twitter/library/widget/TweetView;->ae:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1397
    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->q:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iget v3, p0, Lcom/twitter/library/widget/TweetView;->i:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/twitter/library/widget/TweetView;->w:Lcom/twitter/library/media/widget/UserImageView;

    .line 1398
    invoke-virtual {v4}, Lcom/twitter/library/media/widget/UserImageView;->getTop()I

    move-result v4

    iget v5, p0, Lcom/twitter/library/widget/TweetView;->j:I

    sub-int/2addr v4, v5

    .line 1397
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1401
    :cond_1
    iget-boolean v1, p0, Lcom/twitter/library/widget/TweetView;->af:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 1402
    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->r:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/twitter/library/widget/TweetView;->w:Lcom/twitter/library/media/widget/UserImageView;

    .line 1403
    invoke-virtual {v2}, Lcom/twitter/library/media/widget/UserImageView;->getBottom()I

    move-result v2

    iget v3, p0, Lcom/twitter/library/widget/TweetView;->j:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/twitter/library/widget/TweetView;->i:I

    add-int/2addr v3, v0

    .line 1404
    invoke-virtual {p0}, Lcom/twitter/library/widget/TweetView;->getHeight()I

    move-result v4

    .line 1402
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1408
    :cond_2
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->aF:Lcom/twitter/library/view/ActionPromptView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->aF:Lcom/twitter/library/view/ActionPromptView;

    invoke-virtual {v0}, Lcom/twitter/library/view/ActionPromptView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1409
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->H:Lcom/twitter/library/widget/InlineActionBar;

    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->aF:Lcom/twitter/library/view/ActionPromptView;

    .line 1410
    invoke-virtual {v1}, Lcom/twitter/library/view/ActionPromptView;->getActionPrompt()Lcom/twitter/model/timeline/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/model/timeline/w;->j()Lcom/twitter/model/core/TweetActionType;

    move-result-object v1

    .line 1409
    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/InlineActionBar;->c(Lcom/twitter/model/core/TweetActionType;)Landroid/view/View;

    move-result-object v0

    .line 1411
    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->aF:Lcom/twitter/library/view/ActionPromptView;

    invoke-static {v0, p0}, Lcom/twitter/util/ui/r;->a(Landroid/view/View;Landroid/view/View;)I

    move-result v2

    .line 1412
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    .line 1411
    invoke-virtual {v1, v0}, Lcom/twitter/library/view/ActionPromptView;->a(I)V

    .line 1414
    :cond_3
    return-void

    .line 1391
    :cond_4
    invoke-virtual {p0}, Lcom/twitter/library/widget/TweetView;->getPaddingLeft()I

    move-result v0

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 15

    .prologue
    .line 1199
    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->P:Lcom/twitter/model/core/Tweet;

    .line 1200
    if-nez v1, :cond_0

    .line 1201
    invoke-super/range {p0 .. p2}, Lcom/twitter/ui/widget/CellLayout;->onMeasure(II)V

    .line 1334
    :goto_0
    return-void

    .line 1205
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/library/widget/TweetView;->getContext()Landroid/content/Context;

    move-result-object v1

    move/from16 v0, p1

    invoke-static {v1, v0}, Lcom/twitter/util/ui/j;->a(Landroid/content/Context;I)I

    move-result v5

    .line 1206
    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 1207
    invoke-virtual {p0}, Lcom/twitter/library/widget/TweetView;->getPaddingLeft()I

    move-result v1

    sub-int v1, v9, v1

    invoke-virtual {p0}, Lcom/twitter/library/widget/TweetView;->getPaddingRight()I

    move-result v2

    sub-int v4, v1, v2

    .line 1209
    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->w:Lcom/twitter/library/media/widget/UserImageView;

    invoke-static {v1}, Lcom/twitter/ui/widget/CellLayout$CellLayoutParams;->a(Landroid/view/View;)Lcom/twitter/ui/widget/CellLayout$CellLayoutParams;

    move-result-object v11

    .line 1210
    iget v1, v11, Lcom/twitter/ui/widget/CellLayout$CellLayoutParams;->width:I

    if-gt v4, v1, :cond_1

    .line 1211
    const/high16 v1, 0x1000000

    const/high16 v2, 0x1000000

    invoke-virtual {p0, v1, v2}, Lcom/twitter/library/widget/TweetView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 1215
    :cond_1
    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/twitter/library/widget/TweetView;->getPaddingTop()I

    move-result v2

    invoke-direct {p0, v1, v2, v9}, Lcom/twitter/library/widget/TweetView;->a(Landroid/graphics/Rect;II)V

    .line 1217
    const/4 v1, 0x0

    .line 1218
    iget-object v2, p0, Lcom/twitter/library/widget/TweetView;->u:Lcom/twitter/library/view/SocialProofView;

    invoke-virtual {v2}, Lcom/twitter/library/view/SocialProofView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_17

    .line 1219
    invoke-static {}, Lcbe;->a()Lcbe;

    move-result-object v2

    invoke-virtual {v2}, Lcbe;->b()Z

    move-result v2

    if-nez v2, :cond_16

    .line 1220
    iget-object v2, p0, Lcom/twitter/library/widget/TweetView;->F:Landroid/view/View;

    iget-object v3, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    move-object v1, p0

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/twitter/library/widget/TweetView;->a(Landroid/view/View;Landroid/graphics/Rect;III)Z

    .line 1221
    const/4 v1, 0x1

    move v7, v1

    .line 1223
    :goto_1
    iget-object v2, p0, Lcom/twitter/library/widget/TweetView;->u:Lcom/twitter/library/view/SocialProofView;

    iget-object v3, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    move-object v1, p0

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/twitter/library/widget/TweetView;->a(Landroid/view/View;Landroid/graphics/Rect;III)Z

    .line 1224
    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v1, v2, v9}, Lcom/twitter/library/widget/TweetView;->a(Landroid/graphics/Rect;II)V

    .line 1228
    :goto_2
    iget-object v2, p0, Lcom/twitter/library/widget/TweetView;->w:Lcom/twitter/library/media/widget/UserImageView;

    iget-object v3, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    move-object v1, p0

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/twitter/library/widget/TweetView;->a(Landroid/view/View;Landroid/graphics/Rect;III)Z

    .line 1229
    if-nez v7, :cond_2

    .line 1230
    iget-object v2, p0, Lcom/twitter/library/widget/TweetView;->F:Landroid/view/View;

    iget-object v3, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    move-object v1, p0

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/twitter/library/widget/TweetView;->a(Landroid/view/View;Landroid/graphics/Rect;III)Z

    .line 1232
    :cond_2
    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->w:Lcom/twitter/library/media/widget/UserImageView;

    invoke-virtual {v1}, Lcom/twitter/library/media/widget/UserImageView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_d

    const/4 v10, 0x1

    .line 1233
    :goto_3
    iget-object v2, p0, Lcom/twitter/library/widget/TweetView;->x:Lcom/twitter/ui/widget/TweetHeaderView;

    iget-object v3, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    move-object v1, p0

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/twitter/library/widget/TweetView;->a(Landroid/view/View;Landroid/graphics/Rect;III)Z

    .line 1234
    iget-object v7, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/twitter/library/widget/TweetView;->a(Landroid/graphics/Rect;IIZLcom/twitter/ui/widget/CellLayout$CellLayoutParams;)V

    .line 1235
    invoke-virtual {v11}, Lcom/twitter/ui/widget/CellLayout$CellLayoutParams;->b()Landroid/graphics/Rect;

    move-result-object v1

    iget v14, v1, Landroid/graphics/Rect;->bottom:I

    .line 1238
    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->z:Lcom/twitter/ui/widget/TextLayoutView;

    invoke-virtual {v1}, Lcom/twitter/ui/widget/TextLayoutView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    .line 1239
    iget-object v2, p0, Lcom/twitter/library/widget/TweetView;->z:Lcom/twitter/ui/widget/TextLayoutView;

    iget-object v3, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    move-object v1, p0

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/twitter/library/widget/TweetView;->a(Landroid/view/View;Landroid/graphics/Rect;III)Z

    .line 1240
    iget-object v7, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/twitter/library/widget/TweetView;->a(Landroid/graphics/Rect;IIZLcom/twitter/ui/widget/CellLayout$CellLayoutParams;)V

    .line 1244
    :cond_3
    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->M:Lcom/twitter/library/widget/TextContentView;

    invoke-virtual {v1}, Lcom/twitter/library/widget/TextContentView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_4

    .line 1245
    iget-object v2, p0, Lcom/twitter/library/widget/TweetView;->M:Lcom/twitter/library/widget/TextContentView;

    iget-object v3, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    move-object v1, p0

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/twitter/library/widget/TweetView;->a(Landroid/view/View;Landroid/graphics/Rect;III)Z

    .line 1246
    iget-object v7, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/twitter/library/widget/TweetView;->a(Landroid/graphics/Rect;IIZLcom/twitter/ui/widget/CellLayout$CellLayoutParams;)V

    .line 1250
    :cond_4
    iget v1, p0, Lcom/twitter/library/widget/TweetView;->am:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_e

    .line 1251
    iget-object v2, p0, Lcom/twitter/library/widget/TweetView;->al:Lcom/twitter/library/widget/PossiblySensitiveWarningView;

    iget-object v3, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    move-object v1, p0

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/twitter/library/widget/TweetView;->a(Landroid/view/View;Landroid/graphics/Rect;III)Z

    .line 1252
    iget-object v7, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/twitter/library/widget/TweetView;->a(Landroid/graphics/Rect;IIZLcom/twitter/ui/widget/CellLayout$CellLayoutParams;)V

    .line 1262
    :goto_4
    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->t:Lcom/twitter/library/view/QuoteView;

    invoke-virtual {v1}, Lcom/twitter/library/view/QuoteView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_5

    .line 1263
    iget-object v2, p0, Lcom/twitter/library/widget/TweetView;->t:Lcom/twitter/library/view/QuoteView;

    iget-object v3, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    move-object v1, p0

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/twitter/library/widget/TweetView;->a(Landroid/view/View;Landroid/graphics/Rect;III)Z

    .line 1264
    iget-object v7, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/twitter/library/widget/TweetView;->a(Landroid/graphics/Rect;IIZLcom/twitter/ui/widget/CellLayout$CellLayoutParams;)V

    .line 1268
    :cond_5
    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->D:Lcom/twitter/ui/widget/TextLayoutView;

    invoke-virtual {v1}, Lcom/twitter/ui/widget/TextLayoutView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_6

    .line 1269
    iget-object v2, p0, Lcom/twitter/library/widget/TweetView;->D:Lcom/twitter/ui/widget/TextLayoutView;

    iget-object v3, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    move-object v1, p0

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/twitter/library/widget/TweetView;->a(Landroid/view/View;Landroid/graphics/Rect;III)Z

    .line 1270
    invoke-direct {p0}, Lcom/twitter/library/widget/TweetView;->getForwardMediaView()Landroid/view/View;

    move-result-object v1

    .line 1271
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/view/View;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_10

    iget v1, p0, Lcom/twitter/library/widget/TweetView;->am:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    .line 1272
    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->D:Lcom/twitter/ui/widget/TextLayoutView;

    iget-object v2, p0, Lcom/twitter/library/widget/TweetView;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/twitter/ui/widget/TextLayoutView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1276
    :goto_5
    iget-object v7, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/twitter/library/widget/TweetView;->a(Landroid/graphics/Rect;IIZLcom/twitter/ui/widget/CellLayout$CellLayoutParams;)V

    .line 1279
    :cond_6
    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->A:Lcom/twitter/ui/widget/BadgeView;

    invoke-virtual {v1}, Lcom/twitter/ui/widget/BadgeView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_11

    const/4 v1, 0x1

    move v12, v1

    .line 1281
    :goto_6
    const/4 v13, 0x1

    .line 1282
    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->G:Lcom/twitter/library/widget/UserForwardView;

    invoke-virtual {v1}, Lcom/twitter/library/widget/UserForwardView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_7

    .line 1283
    iget-object v2, p0, Lcom/twitter/library/widget/TweetView;->G:Lcom/twitter/library/widget/UserForwardView;

    iget-object v3, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    move-object v1, p0

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/twitter/library/widget/TweetView;->a(Landroid/view/View;Landroid/graphics/Rect;III)Z

    .line 1284
    iget-object v7, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/twitter/library/widget/TweetView;->a(Landroid/graphics/Rect;IIZLcom/twitter/ui/widget/CellLayout$CellLayoutParams;)V

    .line 1288
    :cond_7
    if-eqz v10, :cond_8

    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-le v14, v1, :cond_8

    .line 1289
    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v14, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1292
    :cond_8
    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->H:Lcom/twitter/library/widget/InlineActionBar;

    invoke-virtual {v1}, Lcom/twitter/library/widget/InlineActionBar;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_15

    .line 1293
    iget-object v2, p0, Lcom/twitter/library/widget/TweetView;->H:Lcom/twitter/library/widget/InlineActionBar;

    iget-object v3, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    move-object v1, p0

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/twitter/library/widget/TweetView;->a(Landroid/view/View;Landroid/graphics/Rect;III)Z

    .line 1294
    iget-object v7, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/twitter/library/widget/TweetView;->a(Landroid/graphics/Rect;IIZLcom/twitter/ui/widget/CellLayout$CellLayoutParams;)V

    .line 1295
    const/4 v1, 0x0

    .line 1299
    :goto_7
    if-eqz v12, :cond_a

    .line 1300
    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->H:Lcom/twitter/library/widget/InlineActionBar;

    invoke-virtual {v1}, Lcom/twitter/library/widget/InlineActionBar;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_9

    .line 1301
    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iget v3, p0, Lcom/twitter/library/widget/TweetView;->k:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1303
    :cond_9
    iget-object v2, p0, Lcom/twitter/library/widget/TweetView;->A:Lcom/twitter/ui/widget/BadgeView;

    iget-object v3, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    move-object v1, p0

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/twitter/library/widget/TweetView;->a(Landroid/view/View;Landroid/graphics/Rect;III)Z

    .line 1304
    iget-object v7, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/twitter/library/widget/TweetView;->a(Landroid/graphics/Rect;IIZLcom/twitter/ui/widget/CellLayout$CellLayoutParams;)V

    .line 1305
    const/4 v1, 0x1

    .line 1308
    :cond_a
    iget-object v2, p0, Lcom/twitter/library/widget/TweetView;->B:Lcom/twitter/library/view/TweetPivotView;

    invoke-virtual {v2}, Lcom/twitter/library/view/TweetPivotView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_b

    .line 1309
    iget-object v2, p0, Lcom/twitter/library/widget/TweetView;->B:Lcom/twitter/library/view/TweetPivotView;

    iget-object v3, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    move-object v1, p0

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/twitter/library/widget/TweetView;->a(Landroid/view/View;Landroid/graphics/Rect;III)Z

    .line 1310
    iget-object v7, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/twitter/library/widget/TweetView;->a(Landroid/graphics/Rect;IIZLcom/twitter/ui/widget/CellLayout$CellLayoutParams;)V

    .line 1311
    const/4 v1, 0x0

    .line 1316
    :cond_b
    invoke-direct {p0}, Lcom/twitter/library/widget/TweetView;->n()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1317
    iget-object v2, p0, Lcom/twitter/library/widget/TweetView;->aF:Lcom/twitter/library/view/ActionPromptView;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/twitter/library/widget/TweetView;->aF:Lcom/twitter/library/view/ActionPromptView;

    invoke-virtual {v2}, Lcom/twitter/library/view/ActionPromptView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_c

    .line 1318
    iget-object v2, p0, Lcom/twitter/library/widget/TweetView;->H:Lcom/twitter/library/widget/InlineActionBar;

    iget-object v3, p0, Lcom/twitter/library/widget/TweetView;->aF:Lcom/twitter/library/view/ActionPromptView;

    invoke-virtual {v3}, Lcom/twitter/library/view/ActionPromptView;->getActionPrompt()Lcom/twitter/model/timeline/w;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/model/timeline/w;->j()Lcom/twitter/model/core/TweetActionType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/library/widget/InlineActionBar;->a(Lcom/twitter/model/core/TweetActionType;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1319
    iget-object v2, p0, Lcom/twitter/library/widget/TweetView;->aF:Lcom/twitter/library/view/ActionPromptView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/twitter/library/view/ActionPromptView;->setVisibility(I)V

    .line 1332
    :cond_c
    :goto_8
    move/from16 v0, p1

    invoke-static {v9, v0}, Lcom/twitter/library/widget/TweetView;->resolveSize(II)I

    move-result v2

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 1333
    invoke-virtual {p0}, Lcom/twitter/library/widget/TweetView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    :goto_9
    move/from16 v0, p2

    invoke-static {v1, v0}, Lcom/twitter/library/widget/TweetView;->resolveSize(II)I

    move-result v1

    .line 1332
    invoke-virtual {p0, v2, v1}, Lcom/twitter/library/widget/TweetView;->setMeasuredDimension(II)V

    goto/16 :goto_0

    .line 1232
    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 1254
    :cond_e
    iget-boolean v1, p0, Lcom/twitter/library/widget/TweetView;->au:Z

    if-eqz v1, :cond_f

    .line 1255
    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3, v9, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1257
    :cond_f
    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v6, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    invoke-direct {p0, v6}, Lcom/twitter/library/widget/TweetView;->a(Landroid/graphics/Rect;)I

    move-result v6

    iget-object v7, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v3, v6, v7}, Lcom/twitter/library/widget/TweetView;->a(III)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1258
    iget-object v7, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/twitter/library/widget/TweetView;->a(Landroid/graphics/Rect;IIZLcom/twitter/ui/widget/CellLayout$CellLayoutParams;)V

    goto/16 :goto_4

    .line 1274
    :cond_10
    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->D:Lcom/twitter/ui/widget/TextLayoutView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/twitter/ui/widget/TextLayoutView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 1279
    :cond_11
    const/4 v1, 0x0

    move v12, v1

    goto/16 :goto_6

    .line 1321
    :cond_12
    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3, v9, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1322
    iget-object v2, p0, Lcom/twitter/library/widget/TweetView;->aF:Lcom/twitter/library/view/ActionPromptView;

    iget-object v3, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    move-object v1, p0

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/twitter/library/widget/TweetView;->a(Landroid/view/View;Landroid/graphics/Rect;III)Z

    .line 1324
    const/4 v1, 0x0

    goto :goto_8

    .line 1328
    :cond_13
    iget-object v2, p0, Lcom/twitter/library/widget/TweetView;->aF:Lcom/twitter/library/view/ActionPromptView;

    if-eqz v2, :cond_c

    .line 1329
    iget-object v2, p0, Lcom/twitter/library/widget/TweetView;->aF:Lcom/twitter/library/view/ActionPromptView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/twitter/library/view/ActionPromptView;->setVisibility(I)V

    goto/16 :goto_8

    .line 1333
    :cond_14
    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->I:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_9

    :cond_15
    move v1, v13

    goto/16 :goto_7

    :cond_16
    move v7, v1

    goto/16 :goto_1

    :cond_17
    move v7, v1

    goto/16 :goto_2
.end method

.method public onStartTemporaryDetach()V
    .locals 1

    .prologue
    .line 647
    invoke-super {p0}, Lcom/twitter/ui/widget/CellLayout;->onStartTemporaryDetach()V

    .line 648
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->w:Lcom/twitter/library/media/widget/UserImageView;

    invoke-virtual {v0}, Lcom/twitter/library/media/widget/UserImageView;->f()V

    .line 650
    iget-boolean v0, p0, Lcom/twitter/library/widget/TweetView;->aD:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/library/widget/TweetView;->aC:Z

    if-eqz v0, :cond_0

    .line 661
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/library/widget/TweetView;->aE:Z

    .line 662
    invoke-direct {p0}, Lcom/twitter/library/widget/TweetView;->t()V

    .line 664
    :cond_0
    return-void
.end method

.method public setActionPrompt(Lcom/twitter/model/timeline/w;)V
    .locals 2

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->aF:Lcom/twitter/library/view/ActionPromptView;

    if-nez v0, :cond_0

    .line 1517
    sget v0, Lbjw;->tweet_action_prompt_stub:I

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/TweetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/view/ActionPromptView;

    iput-object v0, p0, Lcom/twitter/library/widget/TweetView;->aF:Lcom/twitter/library/view/ActionPromptView;

    .line 1518
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->aF:Lcom/twitter/library/view/ActionPromptView;

    new-instance v1, Lcom/twitter/library/widget/ay;

    invoke-direct {v1, p0}, Lcom/twitter/library/widget/ay;-><init>(Lcom/twitter/library/widget/TweetView;)V

    invoke-virtual {v0, v1}, Lcom/twitter/library/view/ActionPromptView;->setOnPromptClickListener(Lcom/twitter/ui/widget/r;)V

    .line 1529
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->aF:Lcom/twitter/library/view/ActionPromptView;

    invoke-virtual {v0, p1}, Lcom/twitter/library/view/ActionPromptView;->setActionPrompt(Lcom/twitter/model/timeline/w;)V

    .line 1530
    return-void
.end method

.method public setAlwaysExpandMedia(Z)V
    .locals 1

    .prologue
    .line 1807
    iget-boolean v0, p0, Lcom/twitter/library/widget/TweetView;->ah:Z

    if-eq v0, p1, :cond_0

    .line 1808
    iput-boolean p1, p0, Lcom/twitter/library/widget/TweetView;->ah:Z

    .line 1809
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->t:Lcom/twitter/library/view/QuoteView;

    invoke-virtual {v0, p1}, Lcom/twitter/library/view/QuoteView;->setAlwaysExpandMedia(Z)V

    .line 1810
    invoke-virtual {p0}, Lcom/twitter/library/widget/TweetView;->requestLayout()V

    .line 1812
    :cond_0
    return-void
.end method

.method public setAlwaysStripMediaUrls(Z)V
    .locals 1

    .prologue
    .line 1834
    iget-boolean v0, p0, Lcom/twitter/library/widget/TweetView;->ax:Z

    if-eq v0, p1, :cond_0

    .line 1835
    iput-boolean p1, p0, Lcom/twitter/library/widget/TweetView;->ax:Z

    .line 1836
    invoke-virtual {p0}, Lcom/twitter/library/widget/TweetView;->requestLayout()V

    .line 1838
    :cond_0
    return-void
.end method

.method public setAutoLink(Z)V
    .locals 0

    .prologue
    .line 707
    iput-boolean p1, p0, Lcom/twitter/library/widget/TweetView;->aw:Z

    .line 708
    return-void
.end method

.method public setContentSize(F)V
    .locals 4

    .prologue
    .line 1466
    iget v0, p0, Lcom/twitter/library/widget/TweetView;->V:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_2

    .line 1467
    iput p1, p0, Lcom/twitter/library/widget/TweetView;->V:F

    .line 1468
    iget v0, p0, Lcom/twitter/library/widget/TweetView;->V:F

    invoke-static {v0}, Lcom/twitter/library/util/al;->a(F)F

    move-result v0

    iput v0, p0, Lcom/twitter/library/widget/TweetView;->T:F

    .line 1469
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->t:Lcom/twitter/library/view/QuoteView;

    iget v1, p0, Lcom/twitter/library/widget/TweetView;->V:F

    iget v2, p0, Lcom/twitter/library/widget/TweetView;->T:F

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/view/QuoteView;->a(FF)V

    .line 1470
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->u:Lcom/twitter/library/view/SocialProofView;

    iget v1, p0, Lcom/twitter/library/widget/TweetView;->T:F

    invoke-virtual {v0, v1}, Lcom/twitter/library/view/SocialProofView;->setContentSize(F)V

    .line 1471
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->x:Lcom/twitter/ui/widget/TweetHeaderView;

    iget v1, p0, Lcom/twitter/library/widget/TweetView;->V:F

    iget v2, p0, Lcom/twitter/library/widget/TweetView;->T:F

    iget v3, p0, Lcom/twitter/library/widget/TweetView;->T:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/ui/widget/TweetHeaderView;->a(FFF)V

    .line 1472
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->z:Lcom/twitter/ui/widget/TextLayoutView;

    iget v1, p0, Lcom/twitter/library/widget/TweetView;->T:F

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TextLayoutView;->a(F)Lcom/twitter/ui/widget/TextLayoutView;

    .line 1473
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->A:Lcom/twitter/ui/widget/BadgeView;

    iget v1, p0, Lcom/twitter/library/widget/TweetView;->T:F

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/BadgeView;->setContentSize(F)V

    .line 1474
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->B:Lcom/twitter/library/view/TweetPivotView;

    iget v1, p0, Lcom/twitter/library/widget/TweetView;->V:F

    invoke-virtual {v0, v1}, Lcom/twitter/library/view/TweetPivotView;->setContentSize(F)V

    .line 1475
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->M:Lcom/twitter/library/widget/TextContentView;

    iget v1, p0, Lcom/twitter/library/widget/TweetView;->V:F

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/TextContentView;->setContentSize(F)V

    .line 1476
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->G:Lcom/twitter/library/widget/UserForwardView;

    if-eqz v0, :cond_0

    .line 1477
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->G:Lcom/twitter/library/widget/UserForwardView;

    iget v1, p0, Lcom/twitter/library/widget/TweetView;->V:F

    iget v2, p0, Lcom/twitter/library/widget/TweetView;->T:F

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/widget/UserForwardView;->a(FF)V

    .line 1479
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->H:Lcom/twitter/library/widget/InlineActionBar;

    if-eqz v0, :cond_1

    .line 1480
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->H:Lcom/twitter/library/widget/InlineActionBar;

    iget v1, p0, Lcom/twitter/library/widget/TweetView;->T:F

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/InlineActionBar;->setBylineSize(F)V

    .line 1482
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/library/widget/TweetView;->requestLayout()V

    .line 1483
    invoke-virtual {p0}, Lcom/twitter/library/widget/TweetView;->invalidate()V

    .line 1485
    :cond_2
    return-void
.end method

.method public setCurationAction(I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1187
    iput p1, p0, Lcom/twitter/library/widget/TweetView;->ak:I

    .line 1188
    iget-object v2, p0, Lcom/twitter/library/widget/TweetView;->F:Landroid/view/View;

    if-nez p1, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1189
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->x:Lcom/twitter/ui/widget/TweetHeaderView;

    invoke-direct {p0}, Lcom/twitter/library/widget/TweetView;->m()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/twitter/ui/widget/TweetHeaderView;->setShowTimestamp(Z)V

    .line 1190
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->x:Lcom/twitter/ui/widget/TweetHeaderView;

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TweetHeaderView;->a(Z)V

    .line 1191
    return-void

    :cond_1
    move v0, v1

    .line 1188
    goto :goto_0
.end method

.method public setDisplaySensitiveMedia(Z)V
    .locals 0

    .prologue
    .line 584
    iput-boolean p1, p0, Lcom/twitter/library/widget/TweetView;->an:Z

    .line 585
    return-void
.end method

.method public setDisplayTranslationBadge(Z)V
    .locals 0

    .prologue
    .line 576
    iput-boolean p1, p0, Lcom/twitter/library/widget/TweetView;->aj:Z

    .line 577
    return-void
.end method

.method public setExpandCardMedia(Z)V
    .locals 1

    .prologue
    .line 1818
    iget-boolean v0, p0, Lcom/twitter/library/widget/TweetView;->ai:Z

    if-eq v0, p1, :cond_0

    .line 1819
    iput-boolean p1, p0, Lcom/twitter/library/widget/TweetView;->ai:Z

    .line 1820
    invoke-virtual {p0}, Lcom/twitter/library/widget/TweetView;->requestLayout()V

    .line 1822
    :cond_0
    return-void
.end method

.method public setFriendshipCache(Lcom/twitter/library/util/FriendshipCache;)V
    .locals 1

    .prologue
    .line 1439
    iput-object p1, p0, Lcom/twitter/library/widget/TweetView;->R:Lcom/twitter/library/util/FriendshipCache;

    .line 1440
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->G:Lcom/twitter/library/widget/UserForwardView;

    if-eqz v0, :cond_0

    .line 1441
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->G:Lcom/twitter/library/widget/UserForwardView;

    invoke-virtual {v0, p1}, Lcom/twitter/library/widget/UserForwardView;->setFriendshipCache(Lcom/twitter/library/util/FriendshipCache;)V

    .line 1443
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->H:Lcom/twitter/library/widget/InlineActionBar;

    if-eqz v0, :cond_1

    .line 1444
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->H:Lcom/twitter/library/widget/InlineActionBar;

    invoke-virtual {v0, p1}, Lcom/twitter/library/widget/InlineActionBar;->setFriendshipCache(Lcom/twitter/library/util/FriendshipCache;)V

    .line 1446
    :cond_1
    return-void
.end method

.method public setHideInlineActions(Z)V
    .locals 0

    .prologue
    .line 1497
    iput-boolean p1, p0, Lcom/twitter/library/widget/TweetView;->ab:Z

    .line 1498
    return-void
.end method

.method public setHideMediaTagSummary(Z)V
    .locals 0

    .prologue
    .line 1501
    iput-boolean p1, p0, Lcom/twitter/library/widget/TweetView;->ac:Z

    .line 1502
    return-void
.end method

.method public setHideProfileImage(Z)V
    .locals 2

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->w:Lcom/twitter/library/media/widget/UserImageView;

    if-eqz v0, :cond_0

    .line 1511
    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->w:Lcom/twitter/library/media/widget/UserImageView;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/library/media/widget/UserImageView;->setVisibility(I)V

    .line 1513
    :cond_0
    return-void

    .line 1511
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHighlighted(Z)V
    .locals 1

    .prologue
    .line 1459
    iget-boolean v0, p0, Lcom/twitter/library/widget/TweetView;->aa:Z

    if-eq v0, p1, :cond_0

    .line 1460
    iput-boolean p1, p0, Lcom/twitter/library/widget/TweetView;->aa:Z

    .line 1461
    invoke-virtual {p0}, Lcom/twitter/library/widget/TweetView;->refreshDrawableState()V

    .line 1463
    :cond_0
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->M:Lcom/twitter/library/widget/TextContentView;

    invoke-virtual {v0, p1}, Lcom/twitter/library/widget/TextContentView;->setMaxLines(I)V

    .line 600
    return-void
.end method

.method public setMinLines(I)V
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->M:Lcom/twitter/library/widget/TextContentView;

    invoke-virtual {v0, p1}, Lcom/twitter/library/widget/TextContentView;->setMinLines(I)V

    .line 611
    return-void
.end method

.method public setOnTweetViewClickListener(Lcom/twitter/library/view/aa;)V
    .locals 2

    .prologue
    .line 1488
    iput-object p1, p0, Lcom/twitter/library/widget/TweetView;->Q:Lcom/twitter/library/view/aa;

    .line 1489
    if-eqz p1, :cond_0

    .line 1490
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->w:Lcom/twitter/library/media/widget/UserImageView;

    iget-object v1, p0, Lcom/twitter/library/widget/TweetView;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/widget/UserImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1494
    :goto_0
    return-void

    .line 1492
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->w:Lcom/twitter/library/media/widget/UserImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/widget/UserImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setPromotedBadgeEnabled(Z)V
    .locals 1

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->aB:Lcom/twitter/library/revenue/a;

    invoke-virtual {v0, p1}, Lcom/twitter/library/revenue/a;->a(Z)V

    .line 1845
    return-void
.end method

.method public setQuoteDisplayMode(I)V
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->t:Lcom/twitter/library/view/QuoteView;

    invoke-virtual {v0, p1}, Lcom/twitter/library/view/QuoteView;->setDisplayMode(I)V

    .line 1195
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->v:Lcis;

    invoke-virtual {v0, p1}, Lcis;->a(Ljava/lang/String;)V

    .line 561
    return-void
.end method

.method public setReasonIconResId(I)V
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->v:Lcis;

    invoke-virtual {v0, p1}, Lcis;->a(I)V

    .line 565
    return-void
.end method

.method public setScribeItem(Lcom/twitter/library/scribe/TwitterScribeItem;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lcom/twitter/library/widget/TweetView;->ao:Lcom/twitter/library/scribe/TwitterScribeItem;

    .line 536
    return-void
.end method

.method public setShouldSimulateInlineActions(Z)V
    .locals 1

    .prologue
    .line 1795
    iget-boolean v0, p0, Lcom/twitter/library/widget/TweetView;->ag:Z

    if-eq v0, p1, :cond_0

    .line 1796
    iput-boolean p1, p0, Lcom/twitter/library/widget/TweetView;->ag:Z

    .line 1797
    invoke-virtual {p0}, Lcom/twitter/library/widget/TweetView;->requestLayout()V

    .line 1799
    :cond_0
    return-void
.end method

.method public setShowActionPrompt(Z)V
    .locals 0

    .prologue
    .line 1548
    iput-boolean p1, p0, Lcom/twitter/library/widget/TweetView;->aG:Z

    .line 1549
    invoke-virtual {p0}, Lcom/twitter/library/widget/TweetView;->requestLayout()V

    .line 1550
    return-void
.end method

.method public setShowSocialBadge(Z)V
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->v:Lcis;

    invoke-virtual {v0, p1}, Lcis;->a(Z)V

    .line 532
    return-void
.end method

.method public setSocialContextCount(I)V
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->v:Lcis;

    invoke-virtual {v0, p1}, Lcis;->b(I)V

    .line 545
    return-void
.end method

.method public setSocialContextName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->v:Lcis;

    invoke-virtual {v0, p1}, Lcis;->b(Ljava/lang/String;)V

    .line 549
    return-void
.end method

.method public setTruncateText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/twitter/library/widget/TweetView;->M:Lcom/twitter/library/widget/TextContentView;

    invoke-virtual {v0, p1}, Lcom/twitter/library/widget/TextContentView;->setTruncateText(Ljava/lang/CharSequence;)V

    .line 620
    return-void
.end method

.method public setTweet(Lcom/twitter/model/core/Tweet;)V
    .locals 3

    .prologue
    .line 711
    const/4 v1, 0x0

    new-instance v2, Lcjm;

    invoke-virtual {p0}, Lcom/twitter/library/widget/TweetView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v2, v0, p1}, Lcjm;-><init>(Landroid/app/Activity;Lcom/twitter/model/core/Tweet;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/twitter/library/widget/TweetView;->a(Lcom/twitter/model/core/Tweet;ZLcjm;Z)V

    .line 712
    return-void
.end method

.method public setTweetNoLayout(Lcom/twitter/model/core/Tweet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 719
    new-instance v1, Lcjm;

    invoke-virtual {p0}, Lcom/twitter/library/widget/TweetView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0, p1}, Lcjm;-><init>(Landroid/app/Activity;Lcom/twitter/model/core/Tweet;)V

    invoke-virtual {p0, p1, v2, v1, v2}, Lcom/twitter/library/widget/TweetView;->a(Lcom/twitter/model/core/Tweet;ZLcjm;Z)V

    .line 721
    return-void
.end method
