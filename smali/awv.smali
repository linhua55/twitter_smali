.class public Lawv;
.super Lcom/twitter/app/common/inject/v;
.source "Twttr"

# interfaces
.implements Lawp;
.implements Lcom/twitter/android/widget/bc;


# static fields
.field private static final b:I

.field private static final c:I


# instance fields
.field protected final a:Landroid/support/v4/app/FragmentActivity;

.field private final d:Lcom/twitter/android/composer/TweetBox;

.field private final e:Lcom/twitter/android/composer/ComposerCountView;

.field private final f:Landroid/widget/Button;

.field private final g:Landroid/view/View;

.field private final h:Lcom/twitter/app/common/base/n;

.field private final i:Lcom/twitter/android/composer/by;

.field private final j:Landroid/widget/TextView;

.field private final k:Lcom/twitter/android/media/selection/MediaAttachmentController;

.field private final l:Lcom/twitter/android/widget/ar;

.field private m:Lcom/twitter/android/media/widget/InlineComposerMediaLayout;

.field private n:Landroid/view/ViewGroup;

.field private o:Lcom/twitter/android/media/selection/MediaAttachment;

.field private p:Z

.field private q:I

.field private final r:Lawq;

.field private s:Lcom/twitter/model/core/Tweet;

.field private t:Lawu;

.field private u:Z

.field private v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/twitter/app/common/base/n;->a()I

    move-result v0

    sput v0, Lawv;->b:I

    .line 69
    invoke-static {}, Lcom/twitter/app/common/base/n;->a()I

    move-result v0

    sput v0, Lawv;->c:I

    return-void
.end method

.method protected constructor <init>(Laxf;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laxf",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 182
    invoke-direct {p0}, Lcom/twitter/app/common/inject/v;-><init>()V

    .line 97
    iput v10, p0, Lawv;->q:I

    .line 107
    const-string/jumbo v0, ""

    iput-object v0, p0, Lawv;->v:Ljava/lang/String;

    .line 183
    iget-object v0, p1, Laxf;->b:Landroid/view/View;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/view/View;

    .line 185
    iget-object v0, p1, Laxf;->d:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p1, Laxf;->d:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/twitter/app/common/inject/t;->a(Landroid/os/Bundle;)Lcom/twitter/app/common/inject/t;

    move-result-object v0

    invoke-virtual {p0}, Lawv;->aO_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/inject/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 187
    if-eqz v0, :cond_4

    .line 188
    const-string/jumbo v1, "sticky"

    invoke-virtual {v0, v1, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lawv;->u:Z

    .line 190
    const-string/jumbo v1, "launch_camera_mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lawv;->q:I

    move-object v8, v0

    .line 195
    :goto_0
    iget-object v0, p1, Laxf;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    iput-object v0, p0, Lawv;->a:Landroid/support/v4/app/FragmentActivity;

    .line 196
    iget-object v0, p1, Laxf;->f:Lcom/twitter/android/media/selection/MediaAttachmentController;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/media/selection/MediaAttachmentController;

    iput-object v0, p0, Lawv;->k:Lcom/twitter/android/media/selection/MediaAttachmentController;

    .line 197
    new-instance v0, Lcom/twitter/android/widget/as;

    iget-object v1, p1, Laxf;->c:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p1, Laxf;->d:Landroid/os/Bundle;

    if-eqz v2, :cond_3

    move v2, v9

    :goto_1
    iget-object v3, p0, Lawv;->k:Lcom/twitter/android/media/selection/MediaAttachmentController;

    const v4, 0x7f130740

    .line 198
    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f13038d

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/widget/as;-><init>(Landroid/support/v4/app/FragmentActivity;ZLcom/twitter/android/media/selection/MediaAttachmentController;Landroid/view/View;ILcom/twitter/android/widget/bc;)V

    iput-object v0, p0, Lawv;->l:Lcom/twitter/android/widget/ar;

    .line 201
    iget-object v0, p1, Laxf;->g:Lawq;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawq;

    iput-object v0, p0, Lawv;->r:Lawq;

    .line 202
    iget-object v0, p0, Lawv;->r:Lawq;

    new-instance v1, Laww;

    invoke-direct {v1, p0}, Laww;-><init>(Lawv;)V

    invoke-virtual {v0, v1}, Lawq;->a(Lcom/twitter/util/y;)Z

    .line 215
    const v0, 0x7f130273

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lawv;->j:Landroid/widget/TextView;

    .line 216
    new-instance v0, Lcom/twitter/android/composer/by;

    iget-object v1, p1, Laxf;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lawv;->j:Landroid/widget/TextView;

    invoke-direct {v0, v1, v9, v2}, Lcom/twitter/android/composer/by;-><init>(Landroid/content/res/Resources;ZLandroid/widget/TextView;)V

    iput-object v0, p0, Lawv;->i:Lcom/twitter/android/composer/by;

    .line 218
    iget-object v0, p1, Laxf;->e:Lcom/twitter/app/common/base/n;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/base/n;

    iput-object v0, p0, Lawv;->h:Lcom/twitter/app/common/base/n;

    .line 219
    iget-object v0, p0, Lawv;->h:Lcom/twitter/app/common/base/n;

    sget v1, Lawv;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Integer;

    sget v3, Lawv;->b:I

    .line 220
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    .line 219
    invoke-static {v1, v2}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lawx;

    invoke-direct {v2, p0}, Lawx;-><init>(Lawv;)V

    invoke-virtual {v0, v1, v2}, Lcom/twitter/app/common/base/n;->a(Ljava/lang/Iterable;Lcom/twitter/app/common/base/o;)V

    .line 237
    invoke-virtual {p0, v7}, Lawv;->a(Landroid/view/View;)V

    .line 239
    const v0, 0x7f130274

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/composer/TweetBox;

    iput-object v0, p0, Lawv;->d:Lcom/twitter/android/composer/TweetBox;

    .line 240
    const v0, 0x7f13028d

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/composer/ComposerCountView;

    iput-object v0, p0, Lawv;->e:Lcom/twitter/android/composer/ComposerCountView;

    .line 241
    const v0, 0x7f13029d

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lawv;->f:Landroid/widget/Button;

    .line 242
    const v0, 0x7f1305d7

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lawv;->g:Landroid/view/View;

    .line 244
    iget-object v0, p0, Lawv;->f:Landroid/widget/Button;

    new-instance v1, Lawy;

    invoke-direct {v1, p0}, Lawy;-><init>(Lawv;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-boolean v0, p0, Lawv;->u:Z

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lawv;->g:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 255
    invoke-direct {p0}, Lawv;->v()V

    .line 258
    :cond_0
    iget-object v0, p0, Lawv;->d:Lcom/twitter/android/composer/TweetBox;

    new-instance v1, Lawz;

    invoke-direct {v1, p0}, Lawz;-><init>(Lawv;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/TweetBox;->setTweetBoxListener(Lcom/twitter/android/composer/cl;)V

    .line 336
    invoke-direct {p0}, Lawv;->u()V

    .line 337
    invoke-direct {p0}, Lawv;->l()V

    .line 338
    invoke-direct {p0, v8}, Lawv;->b(Landroid/os/Bundle;)V

    .line 340
    iget-object v0, p1, Laxf;->h:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lawv;->f:Landroid/widget/Button;

    iget-object v1, p1, Laxf;->h:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 343
    :cond_1
    return-void

    .line 193
    :cond_2
    const/4 v0, 0x0

    move-object v8, v0

    goto/16 :goto_0

    :cond_3
    move v2, v10

    .line 197
    goto/16 :goto_1

    :cond_4
    move-object v8, v0

    goto/16 :goto_0
.end method

.method static synthetic a(Lawv;I)I
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lawv;->q:I

    return p1
.end method

.method static synthetic a(Lawv;)Lcom/twitter/android/widget/ar;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lawv;->l:Lcom/twitter/android/widget/ar;

    return-object v0
.end method

.method static synthetic a(Lawv;Z)Z
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lawv;->p:Z

    return p1
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 496
    if-eqz p1, :cond_0

    .line 497
    const-string/jumbo v0, "media_attachment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/media/selection/MediaAttachment;

    .line 498
    if-eqz v0, :cond_0

    .line 499
    iget-object v1, p0, Lawv;->k:Lcom/twitter/android/media/selection/MediaAttachmentController;

    invoke-virtual {v1, v0, p0}, Lcom/twitter/android/media/selection/MediaAttachmentController;->a(Lcom/twitter/android/media/selection/MediaAttachment;Lcom/twitter/android/media/selection/AttachMediaListener;)V

    .line 502
    :cond_0
    return-void
.end method

.method private b(Lcom/twitter/android/media/selection/MediaAttachment;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 580
    iget-object v0, p0, Lawv;->o:Lcom/twitter/android/media/selection/MediaAttachment;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lawv;->o:Lcom/twitter/android/media/selection/MediaAttachment;

    invoke-virtual {v0, p1}, Lcom/twitter/android/media/selection/MediaAttachment;->a(Lcom/twitter/android/media/selection/MediaAttachment;)V

    .line 583
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/twitter/android/media/selection/MediaAttachment;->b(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 584
    :cond_1
    iput-object v3, p0, Lawv;->o:Lcom/twitter/android/media/selection/MediaAttachment;

    .line 585
    iget-object v0, p0, Lawv;->m:Lcom/twitter/android/media/widget/InlineComposerMediaLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/android/media/widget/InlineComposerMediaLayout;->setVisibility(I)V

    .line 586
    iget-object v0, p0, Lawv;->m:Lcom/twitter/android/media/widget/InlineComposerMediaLayout;

    sget-object v1, Lcom/twitter/android/composer/ComposerType;->b:Lcom/twitter/android/composer/ComposerType;

    invoke-virtual {v0, v3, v1}, Lcom/twitter/android/media/widget/InlineComposerMediaLayout;->a(Lcom/twitter/android/media/selection/MediaAttachment;Lcom/twitter/android/composer/ComposerType;)Lcom/twitter/android/media/widget/AttachmentMediaView;

    .line 587
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lawv;->c(Z)V

    .line 632
    :goto_0
    return-void

    .line 589
    :cond_2
    iput-object p1, p0, Lawv;->o:Lcom/twitter/android/media/selection/MediaAttachment;

    .line 590
    iget-object v0, p0, Lawv;->m:Lcom/twitter/android/media/widget/InlineComposerMediaLayout;

    invoke-virtual {v0, v2}, Lcom/twitter/android/media/widget/InlineComposerMediaLayout;->setVisibility(I)V

    .line 591
    iget-object v0, p0, Lawv;->m:Lcom/twitter/android/media/widget/InlineComposerMediaLayout;

    sget-object v1, Lcom/twitter/android/composer/ComposerType;->b:Lcom/twitter/android/composer/ComposerType;

    .line 592
    invoke-virtual {v0, p1, v1}, Lcom/twitter/android/media/widget/InlineComposerMediaLayout;->a(Lcom/twitter/android/media/selection/MediaAttachment;Lcom/twitter/android/composer/ComposerType;)Lcom/twitter/android/media/widget/AttachmentMediaView;

    move-result-object v0

    .line 593
    if-eqz v0, :cond_3

    .line 594
    new-instance v1, Laxe;

    invoke-direct {v1, p0}, Laxe;-><init>(Lawv;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/media/widget/AttachmentMediaView;->setOnAttachmentActionListener(Lcom/twitter/android/media/widget/f;)V

    .line 630
    :cond_3
    invoke-direct {p0, v2}, Lawv;->c(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lawv;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lawv;->p:Z

    return v0
.end method

.method static synthetic b(Lawv;Z)Z
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lawv;->u:Z

    return p1
.end method

.method static synthetic c(Lawv;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lawv;->j()V

    return-void
.end method

.method private c(Z)V
    .locals 4

    .prologue
    .line 681
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 682
    :goto_0
    iget-object v1, p0, Lawv;->n:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 683
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 684
    iget-object v3, p0, Lawv;->n:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 685
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 686
    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 683
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 681
    :cond_0
    const v0, 0x3e99999a    # 0.3f

    goto :goto_0

    .line 688
    :cond_1
    return-void
.end method

.method static synthetic d(Lawv;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lawv;->q:I

    return v0
.end method

.method static synthetic e(Lawv;)Lawu;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lawv;->t:Lawu;

    return-object v0
.end method

.method static synthetic f(Lawv;)Lcom/twitter/android/composer/ComposerCountView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lawv;->e:Lcom/twitter/android/composer/ComposerCountView;

    return-object v0
.end method

.method static synthetic g(Lawv;)Lcom/twitter/android/composer/TweetBox;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lawv;->d:Lcom/twitter/android/composer/TweetBox;

    return-object v0
.end method

.method static synthetic h(Lawv;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lawv;->f:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic i(Lawv;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lawv;->u:Z

    return v0
.end method

.method static synthetic j(Lawv;)Landroid/view/View;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lawv;->g:Landroid/view/View;

    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lawv;->r:Lawq;

    invoke-virtual {v0}, Lawq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lawv;->p:Z

    .line 348
    iget-object v0, p0, Lawv;->d:Lcom/twitter/android/composer/TweetBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/TweetBox;->a(Z)V

    .line 352
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lawv;->l:Lcom/twitter/android/widget/ar;

    invoke-interface {v0}, Lcom/twitter/android/widget/ar;->b()V

    goto :goto_0
.end method

.method static synthetic k(Lawv;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lawv;->v()V

    return-void
.end method

.method static synthetic l(Lawv;)Lcom/twitter/app/common/base/n;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lawv;->h:Lcom/twitter/app/common/base/n;

    return-object v0
.end method

.method private l()V
    .locals 4

    .prologue
    .line 365
    invoke-virtual {p0}, Lawv;->aK_()Landroid/view/View;

    move-result-object v1

    .line 366
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 368
    const v0, 0x7f130741

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 369
    iget-object v2, p0, Lawv;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020133

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 371
    const v0, 0x7f13047d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/media/widget/InlineComposerMediaLayout;

    iput-object v0, p0, Lawv;->m:Lcom/twitter/android/media/widget/InlineComposerMediaLayout;

    .line 373
    iget-object v0, p0, Lawv;->m:Lcom/twitter/android/media/widget/InlineComposerMediaLayout;

    const v2, 0x7f13047e

    invoke-virtual {v0, v2}, Lcom/twitter/android/media/widget/InlineComposerMediaLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/media/widget/InlineComposerMediaScrollView;

    new-instance v2, Laxb;

    invoke-direct {v2, p0}, Laxb;-><init>(Lawv;)V

    .line 374
    invoke-virtual {v0, v2}, Lcom/twitter/android/media/widget/InlineComposerMediaScrollView;->setActionListener(Lcom/twitter/android/media/widget/au;)V

    .line 381
    const v0, 0x7f1305d8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lawv;->n:Landroid/view/ViewGroup;

    .line 382
    iget-object v0, p0, Lawv;->n:Landroid/view/ViewGroup;

    const v1, 0x7f1305d9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Laxc;

    invoke-direct {v1, p0}, Laxc;-><init>(Lawv;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    iget-object v0, p0, Lawv;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/twitter/android/util/v;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lawv;->n:Landroid/view/ViewGroup;

    const v1, 0x7f130481

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 408
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 409
    new-instance v1, Laxd;

    invoke-direct {v1, p0}, Laxd;-><init>(Lawv;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    :cond_0
    return-void
.end method

.method static synthetic m(Lawv;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lawv;->w()V

    return-void
.end method

.method static synthetic n(Lawv;)Lcom/twitter/android/media/selection/MediaAttachment;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lawv;->o:Lcom/twitter/android/media/selection/MediaAttachment;

    return-object v0
.end method

.method static synthetic o(Lawv;)Lcom/twitter/android/media/selection/MediaAttachmentController;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lawv;->k:Lcom/twitter/android/media/selection/MediaAttachmentController;

    return-object v0
.end method

.method static synthetic t()I
    .locals 1

    .prologue
    .line 62
    sget v0, Lawv;->b:I

    return v0
.end method

.method private u()V
    .locals 3

    .prologue
    .line 505
    invoke-virtual {p0}, Lawv;->n()Ljava/lang/CharSequence;

    move-result-object v0

    .line 506
    iget-object v1, p0, Lawv;->d:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v1, v0}, Lcom/twitter/android/composer/TweetBox;->setImeActionLabel(Ljava/lang/CharSequence;)V

    .line 508
    invoke-virtual {p0}, Lawv;->o()Ljava/lang/String;

    move-result-object v0

    .line 509
    invoke-virtual {p0, v0}, Lawv;->a(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lawv;->s:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lawv;->d:Lcom/twitter/android/composer/TweetBox;

    iget-object v1, p0, Lawv;->s:Lcom/twitter/model/core/Tweet;

    sget-object v2, Lcom/twitter/util/Tristate;->a:Lcom/twitter/util/Tristate;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/composer/TweetBox;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/util/Tristate;)V

    .line 514
    :cond_0
    return-void
.end method

.method private v()V
    .locals 5

    .prologue
    .line 517
    iget-object v0, p0, Lawv;->s:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lawv;->i:Lcom/twitter/android/composer/by;

    iget-object v1, p0, Lawv;->s:Lcom/twitter/model/core/Tweet;

    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 519
    invoke-static {}, Lcaq;->a()Lcaq;

    move-result-object v4

    invoke-virtual {v4}, Lcaq;->f()Z

    move-result v4

    .line 518
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/composer/by;->a(Lcom/twitter/model/core/Tweet;JZ)V

    .line 521
    :cond_0
    return-void
.end method

.method private w()V
    .locals 1

    .prologue
    .line 574
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lawv;->b(Lcom/twitter/android/media/selection/MediaAttachment;)V

    .line 575
    iget-object v0, p0, Lawv;->l:Lcom/twitter/android/widget/ar;

    invoke-interface {v0}, Lcom/twitter/android/widget/ar;->c()V

    .line 576
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lawv;->a(Z)V

    .line 577
    return-void
.end method


# virtual methods
.method public A()V
    .locals 0

    .prologue
    .line 716
    return-void
.end method

.method public a(I)V
    .locals 4

    .prologue
    .line 355
    iget-object v0, p0, Lawv;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, p1}, Lcom/twitter/android/media/camera/z;->a(Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lawv;->k:Lcom/twitter/android/media/selection/MediaAttachmentController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/twitter/android/media/selection/MediaAttachmentController;->a(ZI)V

    .line 362
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lawv;->h:Lcom/twitter/app/common/base/n;

    sget v1, Lawv;->c:I

    iget-object v2, p0, Lawv;->a:Landroid/support/v4/app/FragmentActivity;

    const-string/jumbo v3, ":composition::twitter_camera"

    .line 359
    invoke-static {v2, p1, v3}, Lcom/twitter/android/media/camera/z;->a(Landroid/app/Activity;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 358
    invoke-virtual {v0, v1, v2}, Lcom/twitter/app/common/base/n;->a(ILandroid/content/Intent;)V

    .line 360
    iput p1, p0, Lawv;->q:I

    goto :goto_0
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 470
    invoke-super {p0, p1}, Lcom/twitter/app/common/inject/v;->a(Landroid/os/Bundle;)V

    .line 471
    const-string/jumbo v0, "sticky"

    iget-boolean v1, p0, Lawv;->u:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 472
    const-string/jumbo v0, "media_attachment"

    iget-object v1, p0, Lawv;->o:Lcom/twitter/android/media/selection/MediaAttachment;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 473
    const-string/jumbo v0, "launch_camera_mode"

    iget v1, p0, Lawv;->q:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 474
    return-void
.end method

.method public a(Lawu;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lawv;->t:Lawu;

    .line 460
    return-void
.end method

.method public a(Lcom/twitter/model/core/Tweet;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lawv;->s:Lcom/twitter/model/core/Tweet;

    .line 465
    invoke-direct {p0}, Lawv;->u()V

    .line 466
    return-void
.end method

.method public a(Lcom/twitter/model/media/EditableMedia;)V
    .locals 2

    .prologue
    .line 701
    invoke-virtual {p1}, Lcom/twitter/model/media/EditableMedia;->g()Lcom/twitter/media/model/MediaType;

    move-result-object v0

    sget-object v1, Lcom/twitter/media/model/MediaType;->d:Lcom/twitter/media/model/MediaType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 702
    :goto_0
    if-eqz v0, :cond_1

    .line 703
    iget-object v0, p0, Lawv;->k:Lcom/twitter/android/media/selection/MediaAttachmentController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Lcom/twitter/android/media/selection/MediaAttachmentController;->a(Lcom/twitter/model/media/EditableMedia;Landroid/view/View;Lcom/twitter/android/media/selection/AttachMediaListener;)V

    .line 707
    :goto_1
    return-void

    .line 701
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 705
    :cond_1
    iget-object v0, p0, Lawv;->k:Lcom/twitter/android/media/selection/MediaAttachmentController;

    invoke-virtual {v0, p1, p0}, Lcom/twitter/android/media/selection/MediaAttachmentController;->a(Lcom/twitter/model/media/EditableMedia;Lcom/twitter/android/media/selection/AttachMediaListener;)V

    goto :goto_1
.end method

.method public a(Lcom/twitter/model/media/EditableMedia;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, Lawv;->k:Lcom/twitter/android/media/selection/MediaAttachmentController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Lcom/twitter/android/media/selection/MediaAttachmentController;->a(Lcom/twitter/model/media/EditableMedia;Landroid/view/View;Lcom/twitter/android/media/selection/AttachMediaListener;)V

    .line 712
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lawv;->d:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v0, p1}, Lcom/twitter/android/composer/TweetBox;->setHintText(Ljava/lang/String;)V

    .line 530
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/android/media/selection/MediaAttachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 652
    invoke-static {p1}, Lcom/twitter/util/collection/CollectionUtils;->c(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/media/selection/MediaAttachment;

    .line 653
    if-nez v0, :cond_0

    .line 654
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lawv;->b(Lcom/twitter/android/media/selection/MediaAttachment;)V

    .line 678
    :goto_0
    return-void

    .line 657
    :cond_0
    iget v1, v0, Lcom/twitter/android/media/selection/MediaAttachment;->a:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 659
    :pswitch_1
    invoke-direct {p0, v0}, Lawv;->b(Lcom/twitter/android/media/selection/MediaAttachment;)V

    .line 660
    iget-object v0, p0, Lawv;->l:Lcom/twitter/android/widget/ar;

    invoke-interface {v0}, Lcom/twitter/android/widget/ar;->c()V

    .line 661
    invoke-virtual {p0, v3}, Lawv;->a(Z)V

    goto :goto_0

    .line 665
    :pswitch_2
    invoke-direct {p0, v0}, Lawv;->b(Lcom/twitter/android/media/selection/MediaAttachment;)V

    goto :goto_0

    .line 669
    :pswitch_3
    iget-object v0, p0, Lawv;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lawv;->a:Landroid/support/v4/app/FragmentActivity;

    const v2, 0x7f0a049a

    .line 670
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 669
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 670
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 657
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 423
    if-eqz p1, :cond_0

    .line 424
    iget-object v0, p0, Lawv;->d:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v0}, Lcom/twitter/android/composer/TweetBox;->f()V

    .line 428
    :goto_0
    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lawv;->d:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v0}, Lcom/twitter/android/composer/TweetBox;->g()V

    goto :goto_0
.end method

.method public a(Lcom/twitter/android/media/selection/MediaAttachment;)Z
    .locals 1

    .prologue
    .line 646
    const/4 v0, 0x1

    return v0
.end method

.method public aJ_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lawv;->v:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 564
    iput-object p1, p0, Lawv;->v:Ljava/lang/String;

    .line 565
    iget-object v0, p0, Lawv;->d:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v0, p1}, Lcom/twitter/android/composer/TweetBox;->setPrefillText(Ljava/lang/String;)V

    .line 566
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 725
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lawv;->l:Lcom/twitter/android/widget/ar;

    invoke-interface {v0}, Lcom/twitter/android/widget/ar;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lawv;->l:Lcom/twitter/android/widget/ar;

    invoke-interface {v0}, Lcom/twitter/android/widget/ar;->c()V

    .line 638
    const/4 v0, 0x1

    .line 640
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 720
    invoke-virtual {p0, p1}, Lawv;->a(I)V

    .line 721
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lawv;->d:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v0}, Lcom/twitter/android/composer/TweetBox;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lawv;->o:Lcom/twitter/android/media/selection/MediaAttachment;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lawv;->d:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v0}, Lcom/twitter/android/composer/TweetBox;->j()Z

    .line 455
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lawv;->d:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v0}, Lcom/twitter/android/composer/TweetBox;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lawv;->d:Lcom/twitter/android/composer/TweetBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/TweetBox;->setVisibility(I)V

    .line 433
    return-void
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/drafts/DraftAttachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 693
    iget-object v0, p0, Lawv;->o:Lcom/twitter/android/media/selection/MediaAttachment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lawv;->o:Lcom/twitter/android/media/selection/MediaAttachment;

    iget v0, v0, Lcom/twitter/android/media/selection/MediaAttachment;->a:I

    if-eqz v0, :cond_1

    .line 694
    :cond_0
    const/4 v0, 0x0

    .line 696
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lawv;->o:Lcom/twitter/android/media/selection/MediaAttachment;

    invoke-virtual {v0}, Lcom/twitter/android/media/selection/MediaAttachment;->d()Lcom/twitter/model/drafts/DraftAttachment;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/r;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public k()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 478
    iget-object v0, p0, Lawv;->d:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v0, v2}, Lcom/twitter/android/composer/TweetBox;->a(Z)V

    .line 479
    iget-object v0, p0, Lawv;->d:Lcom/twitter/android/composer/TweetBox;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1, v4}, Lcom/twitter/android/composer/TweetBox;->a(Ljava/lang/String;[I)V

    .line 480
    iget-object v0, p0, Lawv;->d:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v0}, Lcom/twitter/android/composer/TweetBox;->clearFocus()V

    .line 482
    invoke-direct {p0}, Lawv;->u()V

    .line 484
    iput-boolean v2, p0, Lawv;->u:Z

    .line 485
    iget-object v0, p0, Lawv;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Lawv;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 488
    iput-object v4, p0, Lawv;->o:Lcom/twitter/android/media/selection/MediaAttachment;

    .line 489
    iget-object v0, p0, Lawv;->k:Lcom/twitter/android/media/selection/MediaAttachmentController;

    invoke-virtual {v0}, Lcom/twitter/android/media/selection/MediaAttachmentController;->b()V

    .line 490
    iget-object v0, p0, Lawv;->k:Lcom/twitter/android/media/selection/MediaAttachmentController;

    invoke-virtual {v0}, Lcom/twitter/android/media/selection/MediaAttachmentController;->h()V

    .line 492
    invoke-direct {p0}, Lawv;->w()V

    .line 493
    return-void
.end method

.method public m()[I
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lawv;->d:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v0}, Lcom/twitter/android/composer/TweetBox;->getSelection()[I

    move-result-object v0

    return-object v0
.end method

.method protected n()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lawv;->a:Landroid/support/v4/app/FragmentActivity;

    const v1, 0x7f0a067b

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected o()Ljava/lang/String;
    .locals 5

    .prologue
    .line 537
    iget-object v0, p0, Lawv;->s:Lcom/twitter/model/core/Tweet;

    if-nez v0, :cond_0

    .line 538
    const-string/jumbo v0, ""

    .line 546
    :goto_0
    return-object v0

    .line 542
    :cond_0
    invoke-static {}, Lcaq;->a()Lcaq;

    move-result-object v0

    invoke-virtual {v0}, Lcaq;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    iget-object v0, p0, Lawv;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0220

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 545
    :cond_1
    iget-object v0, p0, Lawv;->s:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->d()Ljava/lang/String;

    move-result-object v0

    .line 546
    iget-object v1, p0, Lawv;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01fd

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public p()Lcom/twitter/app/common/inject/v;
    .locals 0

    .prologue
    .line 730
    return-object p0
.end method
