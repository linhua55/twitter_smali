.class public Lcom/twitter/android/composer/ComposerActivity;
.super Lcom/twitter/app/common/base/TwitterFragmentActivity;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/ba;
.implements Lcom/twitter/android/media/imageeditor/y;
.implements Lcom/twitter/android/widget/ak;
.implements Lcom/twitter/android/widget/bc;
.implements Lcom/twitter/library/media/util/a;


# static fields
.field static final synthetic d:Z


# instance fields
.field private A:[Landroid/widget/FrameLayout;

.field private B:Landroid/widget/ImageView;

.field private C:Lcom/twitter/ui/widget/TwitterButton;

.field private D:Lcom/twitter/ui/widget/TwitterButton;

.field private E:Lcom/twitter/ui/widget/TwitterButton;

.field private K:Lcom/twitter/library/view/QuoteView;

.field private L:Lcom/twitter/android/widget/RevealClipFrameLayout;

.field private M:Lcom/twitter/android/media/selection/MediaAttachmentController;

.field private N:Lcom/twitter/android/widget/GalleryGridFragment;

.field private O:Lcom/twitter/android/widget/ComposerPoiFragment;

.field private P:Lcom/twitter/android/widget/ComposerSelectionFragment;

.field private Q:Lcom/twitter/library/client/Session;

.field private R:I

.field private S:I

.field private T:I

.field private U:Z

.field private V:J

.field private W:Lcom/twitter/library/client/bd;

.field private X:Z

.field private Y:I

.field private Z:Lcom/twitter/android/composer/at;

.field final a:Lcom/twitter/android/composer/ba;

.field private aA:Z

.field private aB:Z

.field private aC:J

.field private aD:Z

.field private aE:Lcom/twitter/android/card/p;

.field private aF:Lclw;

.field private aG:Z

.field private aH:Lcom/twitter/android/card/pollcompose/o;

.field private aI:Z

.field private aJ:Lwo;

.field private aK:Lcom/twitter/android/composer/geotag/a;

.field private aL:Lrx/ap;

.field private aM:Lcom/twitter/android/av/monetization/g;

.field private aN:Laum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laum",
            "<",
            "Lcom/twitter/model/av/o;",
            ">;"
        }
    .end annotation
.end field

.field private aa:Z

.field private ab:Z

.field private ac:Z

.field private ad:Z

.field private ae:Z

.field private af:Z

.field private ag:I

.field private ah:Z

.field private ai:Lcom/twitter/app/common/util/a;

.field private aj:Z

.field private ak:Lcom/twitter/android/d;

.field private al:Z

.field private am:I

.field private an:Lcom/twitter/android/composer/bq;

.field private ao:I

.field private ap:I

.field private aq:Landroid/view/animation/Animation;

.field private ar:Landroid/view/animation/Animation;

.field private as:Z

.field private at:Landroid/animation/Animator;

.field private au:Z

.field private av:Z

.field private aw:Landroid/view/View;

.field private ax:Lcom/twitter/android/composer/by;

.field private ay:Landroid/widget/TextView;

.field private az:Lcom/twitter/android/media/imageeditor/EditImageFragment;

.field b:Lcom/twitter/android/composer/br;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field c:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final e:Lcom/twitter/android/composer/aw;

.field private final f:Z

.field private final g:Landroid/os/Handler;

.field private final h:Lcom/twitter/android/composer/bi;

.field private i:Lcom/twitter/android/composer/TweetBox;

.field private j:Lcom/twitter/android/composer/ComposerScrollView;

.field private k:Lcom/twitter/android/media/widget/MediaAttachmentsView;

.field private l:Lcom/twitter/android/widget/FoundMediaAttributionView;

.field private m:Lcom/twitter/library/media/widget/UserImageView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/ImageButton;

.field private q:Lcom/twitter/android/widget/ToggleImageButton;

.field private r:Landroid/widget/ImageButton;

.field private s:Landroid/widget/ImageButton;

.field private t:Lcom/twitter/android/composer/ComposerCountView;

.field private u:Lcom/twitter/android/widget/DraggableDrawerLayout;

.field private v:Landroid/view/View;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/Button;

.field private y:Landroid/view/View;

.field private z:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 217
    const-class v0, Lcom/twitter/android/composer/ComposerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/android/composer/ComposerActivity;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 429
    invoke-direct {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;-><init>()V

    .line 308
    new-instance v0, Lcom/twitter/android/composer/ba;

    invoke-direct {v0}, Lcom/twitter/android/composer/ba;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    .line 313
    new-instance v0, Lcom/twitter/android/composer/aw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/composer/aw;-><init>(Lcom/twitter/android/composer/ComposerActivity;Lcom/twitter/android/composer/a;)V

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->e:Lcom/twitter/android/composer/aw;

    .line 316
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->g:Landroid/os/Handler;

    .line 317
    new-instance v0, Lcom/twitter/android/composer/bi;

    invoke-direct {v0}, Lcom/twitter/android/composer/bi;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->h:Lcom/twitter/android/composer/bi;

    .line 353
    iput v2, p0, Lcom/twitter/android/composer/ComposerActivity;->R:I

    .line 355
    iput v2, p0, Lcom/twitter/android/composer/ComposerActivity;->S:I

    .line 360
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/twitter/android/composer/ComposerActivity;->V:J

    .line 365
    iput v3, p0, Lcom/twitter/android/composer/ComposerActivity;->Y:I

    .line 383
    iput v3, p0, Lcom/twitter/android/composer/ComposerActivity;->am:I

    .line 430
    const-string/jumbo v0, "typeahead_button_triggering_android_2405"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "to_button"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/twitter/config/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/composer/ComposerActivity;->f:Z

    .line 433
    return-void
.end method

.method static synthetic A(Lcom/twitter/android/composer/ComposerActivity;)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->aB()V

    return-void
.end method

.method static synthetic B(Lcom/twitter/android/composer/ComposerActivity;)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->ay()V

    return-void
.end method

.method private C()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 829
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aH:Lcom/twitter/android/card/pollcompose/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    .line 830
    invoke-virtual {v0}, Lcom/twitter/android/composer/ba;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aH:Lcom/twitter/android/card/pollcompose/o;

    invoke-virtual {v0}, Lcom/twitter/android/card/pollcompose/o;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 831
    :goto_0
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->al()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 832
    iget-object v3, p0, Lcom/twitter/android/composer/ComposerActivity;->x:Landroid/widget/Button;

    const v4, 0x7f0a067b

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 838
    :goto_1
    iget-object v3, p0, Lcom/twitter/android/composer/ComposerActivity;->x:Landroid/widget/Button;

    iget-boolean v4, p0, Lcom/twitter/android/composer/ComposerActivity;->U:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/twitter/android/composer/ComposerActivity;->M:Lcom/twitter/android/media/selection/MediaAttachmentController;

    .line 839
    invoke-virtual {v4}, Lcom/twitter/android/media/selection/MediaAttachmentController;->f()Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v0, :cond_4

    .line 838
    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 841
    return-void

    :cond_1
    move v0, v1

    .line 830
    goto :goto_0

    .line 833
    :cond_2
    iget-object v3, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v3}, Lcom/twitter/android/composer/ba;->l()Lcom/twitter/model/core/ay;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v3}, Lcom/twitter/android/composer/TweetBox;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 834
    iget-object v3, p0, Lcom/twitter/android/composer/ComposerActivity;->x:Landroid/widget/Button;

    const v4, 0x7f0a0907

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 836
    :cond_3
    iget-object v3, p0, Lcom/twitter/android/composer/ComposerActivity;->x:Landroid/widget/Button;

    const v4, 0x7f0a0682

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    :cond_4
    move v2, v1

    .line 839
    goto :goto_2
.end method

.method static synthetic C(Lcom/twitter/android/composer/ComposerActivity;)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->av()V

    return-void
.end method

.method private D()V
    .locals 6

    .prologue
    .line 844
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->Q:Lcom/twitter/library/client/Session;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 845
    invoke-static {p0, v0, v1}, Lcom/twitter/library/provider/s;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/s;

    move-result-object v2

    .line 846
    new-instance v3, Lcom/twitter/util/concurrent/c;

    invoke-direct {v3}, Lcom/twitter/util/concurrent/c;-><init>()V

    .line 847
    invoke-static {}, Lcom/twitter/internal/android/service/p;->a()Lcom/twitter/internal/android/service/p;

    move-result-object v4

    sget-object v5, Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;->g:Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;

    invoke-virtual {v4, v5}, Lcom/twitter/internal/android/service/p;->a(Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/twitter/util/concurrent/c;->a(Ljava/util/concurrent/Executor;)Lcom/twitter/util/concurrent/c;

    move-result-object v3

    new-instance v4, Lcom/twitter/android/composer/c;

    invoke-direct {v4, p0, v2}, Lcom/twitter/android/composer/c;-><init>(Lcom/twitter/android/composer/ComposerActivity;Lcom/twitter/library/provider/s;)V

    .line 848
    invoke-virtual {v3, v4}, Lcom/twitter/util/concurrent/c;->a(Ljava/util/concurrent/Callable;)Lcom/twitter/util/concurrent/c;

    move-result-object v2

    .line 854
    invoke-virtual {v2}, Lcom/twitter/util/concurrent/c;->a()Lcom/twitter/util/concurrent/j;

    move-result-object v2

    .line 855
    new-instance v3, Lcom/twitter/util/concurrent/f;

    invoke-direct {v3}, Lcom/twitter/util/concurrent/f;-><init>()V

    sget-object v4, Lcom/twitter/util/concurrent/i;->b:Ljava/util/concurrent/Executor;

    .line 856
    invoke-virtual {v3, v4}, Lcom/twitter/util/concurrent/f;->a(Ljava/util/concurrent/Executor;)Lcom/twitter/util/concurrent/f;

    move-result-object v3

    new-instance v4, Lcom/twitter/android/composer/d;

    invoke-direct {v4, p0, v0, v1}, Lcom/twitter/android/composer/d;-><init>(Lcom/twitter/android/composer/ComposerActivity;J)V

    .line 857
    invoke-virtual {v3, v4}, Lcom/twitter/util/concurrent/f;->a(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/f;

    move-result-object v0

    .line 855
    invoke-interface {v2, v0}, Lcom/twitter/util/concurrent/j;->b(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/j;

    .line 866
    invoke-virtual {p0, v2}, Lcom/twitter/android/composer/ComposerActivity;->a(Lcom/twitter/util/concurrent/j;)V

    .line 867
    return-void
.end method

.method static synthetic D(Lcom/twitter/android/composer/ComposerActivity;)Z
    .locals 1

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->al()Z

    move-result v0

    return v0
.end method

.method static synthetic E(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/ui/widget/TwitterButton;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->D:Lcom/twitter/ui/widget/TwitterButton;

    return-object v0
.end method

.method static synthetic F(Lcom/twitter/android/composer/ComposerActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->z:Landroid/view/View;

    return-object v0
.end method

.method private static G(Lcom/twitter/android/composer/ComposerActivity;)V
    .locals 4

    .prologue
    .line 2694
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->g:Landroid/os/Handler;

    new-instance v1, Lcom/twitter/android/composer/ag;

    invoke-direct {v1, p0}, Lcom/twitter/android/composer/ag;-><init>(Lcom/twitter/android/composer/ComposerActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2719
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/composer/ComposerActivity;J)J
    .locals 1

    .prologue
    .line 217
    iput-wide p1, p0, Lcom/twitter/android/composer/ComposerActivity;->aC:J

    return-wide p1
.end method

.method static synthetic a(Lcom/twitter/android/composer/ComposerActivity;Ljava/lang/Runnable;)Lcom/twitter/android/composer/ar;
    .locals 1

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/twitter/android/composer/ComposerActivity;->a(Ljava/lang/Runnable;)Lcom/twitter/android/composer/ar;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Runnable;)Lcom/twitter/android/composer/ar;
    .locals 1

    .prologue
    .line 3472
    new-instance v0, Lcom/twitter/android/composer/ak;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/composer/ak;-><init>(Lcom/twitter/android/composer/ComposerActivity;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/composer/ComposerActivity;Lcom/twitter/android/composer/at;)Lcom/twitter/android/composer/at;
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/twitter/android/composer/ComposerActivity;->Z:Lcom/twitter/android/composer/at;

    return-object p1
.end method

.method static synthetic a(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/composer/ay;
    .locals 1

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->ap()Lcom/twitter/android/composer/ay;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/composer/ComposerActivity;Lcom/twitter/android/media/imageeditor/EditImageFragment;)Lcom/twitter/android/media/imageeditor/EditImageFragment;
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/twitter/android/composer/ComposerActivity;->az:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    return-object p1
.end method

.method static synthetic a(Lcom/twitter/android/composer/ComposerActivity;Lcom/twitter/app/common/util/a;)Lcom/twitter/app/common/util/a;
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/twitter/android/composer/ComposerActivity;->ai:Lcom/twitter/app/common/util/a;

    return-object p1
.end method

.method static synthetic a(JLandroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/library/client/bd;)V
    .locals 0

    .prologue
    .line 217
    invoke-static {p0, p1, p2, p3, p4}, Lcom/twitter/android/composer/ComposerActivity;->b(JLandroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/library/client/bd;)V

    return-void
.end method

.method private a(Landroid/net/Uri;ZLcom/twitter/android/media/selection/AttachMediaListener;)V
    .locals 2

    .prologue
    .line 3309
    const/16 v0, 0x207

    invoke-direct {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3310
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->k:Lcom/twitter/android/media/widget/MediaAttachmentsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/media/widget/MediaAttachmentsView;->setVisibility(I)V

    .line 3311
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->M:Lcom/twitter/android/media/selection/MediaAttachmentController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/twitter/android/media/selection/MediaAttachmentController;->a(Landroid/net/Uri;ZLcom/twitter/android/media/selection/AttachMediaListener;)V

    .line 3312
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->aq()V

    .line 3314
    :cond_0
    return-void
.end method

.method private a(Landroid/net/Uri;[IZI)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1140
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ba;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_7

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/twitter/android/composer/ComposerActivity;->Y:I

    .line 1141
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v2}, Lcom/twitter/android/composer/ba;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/twitter/android/composer/TweetBox;->a(Ljava/lang/String;[I)V

    .line 1143
    new-instance v0, Lcom/twitter/android/composer/as;

    invoke-direct {v0, p0, p3}, Lcom/twitter/android/composer/as;-><init>(Lcom/twitter/android/composer/ComposerActivity;Z)V

    .line 1144
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v2}, Lcom/twitter/android/composer/ba;->i()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1145
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->k:Lcom/twitter/android/media/widget/MediaAttachmentsView;

    invoke-virtual {v2, v1}, Lcom/twitter/android/media/widget/MediaAttachmentsView;->setVisibility(I)V

    .line 1146
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->M:Lcom/twitter/android/media/selection/MediaAttachmentController;

    iget-object v3, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v3}, Lcom/twitter/android/composer/ba;->i()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/twitter/android/media/selection/MediaAttachmentController;->a(Ljava/util/List;Lcom/twitter/android/media/selection/AttachMediaListener;)V

    .line 1148
    :cond_0
    if-eqz p1, :cond_1

    .line 1149
    invoke-static {}, Lcom/twitter/media/util/r;->a()Z

    move-result v0

    new-instance v2, Lcom/twitter/android/composer/as;

    invoke-direct {v2, p0, p3}, Lcom/twitter/android/composer/as;-><init>(Lcom/twitter/android/composer/ComposerActivity;Z)V

    invoke-direct {p0, p1, v0, v2}, Lcom/twitter/android/composer/ComposerActivity;->a(Landroid/net/Uri;ZLcom/twitter/android/media/selection/AttachMediaListener;)V

    .line 1152
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ba;->l()Lcom/twitter/model/core/ay;

    move-result-object v0

    .line 1153
    if-eqz v0, :cond_2

    .line 1154
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->K:Lcom/twitter/library/view/QuoteView;

    invoke-virtual {v2, v0}, Lcom/twitter/library/view/QuoteView;->setQuoteData(Lcom/twitter/model/core/ay;)V

    .line 1155
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->K:Lcom/twitter/library/view/QuoteView;

    invoke-virtual {v2, v1}, Lcom/twitter/library/view/QuoteView;->setVisibility(I)V

    .line 1156
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v2, v0}, Lcom/twitter/android/composer/TweetBox;->setQuote(Lcom/twitter/model/core/ay;)V

    .line 1157
    invoke-direct {p0, v1}, Lcom/twitter/android/composer/ComposerActivity;->i(Z)V

    .line 1159
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->c:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020124

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1160
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->az()V

    .line 1161
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->aA()V

    .line 1164
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ba;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1165
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->Q:Lcom/twitter/library/client/Session;

    invoke-virtual {v0, p0, v2}, Lcom/twitter/android/composer/ba;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;)Lcom/twitter/util/concurrent/j;

    move-result-object v0

    .line 1166
    new-instance v2, Lcom/twitter/util/concurrent/f;

    invoke-direct {v2}, Lcom/twitter/util/concurrent/f;-><init>()V

    sget-object v3, Lcom/twitter/util/concurrent/i;->a:Ljava/util/concurrent/Executor;

    .line 1167
    invoke-virtual {v2, v3}, Lcom/twitter/util/concurrent/f;->a(Ljava/util/concurrent/Executor;)Lcom/twitter/util/concurrent/f;

    move-result-object v2

    new-instance v3, Lcom/twitter/android/composer/o;

    invoke-direct {v3, p0}, Lcom/twitter/android/composer/o;-><init>(Lcom/twitter/android/composer/ComposerActivity;)V

    .line 1168
    invoke-virtual {v2, v3}, Lcom/twitter/util/concurrent/f;->a(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/f;

    move-result-object v2

    .line 1166
    invoke-interface {v0, v2}, Lcom/twitter/util/concurrent/j;->b(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/j;

    .line 1189
    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->a(Lcom/twitter/util/concurrent/j;)V

    .line 1192
    :cond_3
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->aD()V

    .line 1193
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->ah()V

    .line 1194
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ba;->n()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aI:Z

    if-eqz v0, :cond_9

    .line 1195
    :cond_4
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aH:Lcom/twitter/android/card/pollcompose/o;

    if-eqz v0, :cond_8

    .line 1196
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aH:Lcom/twitter/android/card/pollcompose/o;

    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v2}, Lcom/twitter/android/composer/ba;->m()Lclp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/android/card/pollcompose/o;->a(Lclp;)V

    .line 1202
    :goto_1
    iput-boolean v1, p0, Lcom/twitter/android/composer/ComposerActivity;->aI:Z

    .line 1208
    :cond_5
    :goto_2
    invoke-static {p0}, Lcom/twitter/android/util/v;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    if-ne p4, v0, :cond_6

    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->an:Lcom/twitter/android/composer/bq;

    const-string/jumbo v1, "found_media_umf_tooltip"

    .line 1210
    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/bq;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1211
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->an:Lcom/twitter/android/composer/bq;

    const-string/jumbo v1, "found_media_umf_tooltip"

    .line 1212
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 1211
    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/composer/bq;->a(Ljava/lang/String;Landroid/support/v4/app/FragmentManager;)V

    .line 1214
    :cond_6
    return-void

    :cond_7
    move v0, v1

    .line 1140
    goto/16 :goto_0

    .line 1199
    :cond_8
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/twitter/android/composer/ba;->a(Lclp;)V

    goto :goto_1

    .line 1204
    :cond_9
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aH:Lcom/twitter/android/card/pollcompose/o;

    if-eqz v0, :cond_5

    .line 1205
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aH:Lcom/twitter/android/card/pollcompose/o;

    invoke-virtual {v0}, Lcom/twitter/android/card/pollcompose/o;->a()V

    goto :goto_2
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 694
    if-eqz p1, :cond_1

    const-string/jumbo v0, "editing_media"

    .line 695
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .line 697
    :goto_0
    if-eqz v1, :cond_0

    .line 698
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->L:Lcom/twitter/android/widget/RevealClipFrameLayout;

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/RevealClipFrameLayout;->setVisibility(I)V

    .line 699
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "image_edit"

    .line 700
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/media/imageeditor/EditImageFragment;

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->az:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    .line 701
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->az:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    if-eqz v0, :cond_0

    .line 702
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->az:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->k:Lcom/twitter/android/media/widget/MediaAttachmentsView;

    :goto_1
    invoke-virtual {v2, v0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->a(Lcom/twitter/android/media/imageeditor/x;)V

    .line 704
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->az:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    invoke-virtual {v0, p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->a(Lcom/twitter/android/media/imageeditor/y;)V

    .line 707
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 695
    goto :goto_0

    .line 702
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->N:Lcom/twitter/android/widget/GalleryGridFragment;

    goto :goto_1
.end method

.method private a(Landroid/view/View;)V
    .locals 6

    .prologue
    const v5, 0x7f13027e

    const/4 v4, 0x0

    .line 870
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 871
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/composer/e;

    invoke-direct {v2, p0, v0}, Lcom/twitter/android/composer/e;-><init>(Lcom/twitter/android/composer/ComposerActivity;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 880
    const v0, 0x7f13026d

    .line 881
    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/DraggableDrawerLayout;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/DraggableDrawerLayout;

    .line 882
    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->u:Lcom/twitter/android/widget/DraggableDrawerLayout;

    .line 883
    invoke-virtual {v0, v4}, Lcom/twitter/android/widget/DraggableDrawerLayout;->a(Z)V

    .line 884
    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/DraggableDrawerLayout;->setDrawerLayoutListener(Lcom/twitter/android/widget/ak;)V

    .line 886
    new-instance v1, Lcom/twitter/android/d;

    new-instance v2, Lcom/twitter/android/composer/f;

    invoke-direct {v2, p0}, Lcom/twitter/android/composer/f;-><init>(Lcom/twitter/android/composer/ComposerActivity;)V

    invoke-direct {v1, p0, v0, v2}, Lcom/twitter/android/d;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/twitter/android/e;)V

    iput-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->ak:Lcom/twitter/android/d;

    .line 895
    const v0, 0x7f130274

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/composer/TweetBox;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/composer/TweetBox;

    .line 896
    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    .line 897
    new-instance v1, Lcom/twitter/android/composer/g;

    invoke-direct {v1, p0}, Lcom/twitter/android/composer/g;-><init>(Lcom/twitter/android/composer/ComposerActivity;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/TweetBox;->setTweetBoxListener(Lcom/twitter/android/composer/cl;)V

    .line 933
    const v1, 0x7f1300a7

    .line 934
    invoke-virtual {p0, v1}, Lcom/twitter/android/composer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/composer/ComposerScrollView;

    invoke-static {v1}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/composer/ComposerScrollView;

    .line 935
    iput-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->j:Lcom/twitter/android/composer/ComposerScrollView;

    .line 936
    new-instance v2, Lcom/twitter/android/composer/h;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/twitter/android/composer/h;-><init>(Lcom/twitter/android/composer/ComposerActivity;Landroid/view/View;Lcom/twitter/android/composer/ComposerScrollView;Lcom/twitter/android/composer/TweetBox;)V

    invoke-virtual {v1, v2}, Lcom/twitter/android/composer/ComposerScrollView;->setObservableScrollViewListener(Lcom/twitter/library/widget/w;)V

    .line 969
    invoke-virtual {v1, v4}, Lcom/twitter/android/composer/ComposerScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 970
    new-instance v2, Lcom/twitter/android/composer/i;

    invoke-direct {v2, p0, v0}, Lcom/twitter/android/composer/i;-><init>(Lcom/twitter/android/composer/ComposerActivity;Lcom/twitter/android/composer/TweetBox;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 978
    new-instance v2, Lcom/twitter/android/composer/j;

    invoke-direct {v2, p0, v0}, Lcom/twitter/android/composer/j;-><init>(Lcom/twitter/android/composer/ComposerActivity;Lcom/twitter/android/composer/TweetBox;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 985
    const v0, 0x7f130278

    .line 986
    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/media/widget/MediaAttachmentsView;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/media/widget/MediaAttachmentsView;

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->k:Lcom/twitter/android/media/widget/MediaAttachmentsView;

    .line 987
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->k:Lcom/twitter/android/media/widget/MediaAttachmentsView;

    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->j:Lcom/twitter/android/composer/ComposerScrollView;

    invoke-virtual {v0, v1}, Lcom/twitter/android/media/widget/MediaAttachmentsView;->setVisibleAreaContainer(Landroid/view/ViewGroup;)V

    .line 988
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->k:Lcom/twitter/android/media/widget/MediaAttachmentsView;

    new-instance v1, Lcom/twitter/android/composer/k;

    invoke-direct {v1, p0}, Lcom/twitter/android/composer/k;-><init>(Lcom/twitter/android/composer/ComposerActivity;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/media/widget/MediaAttachmentsView;->setActionListener(Lcom/twitter/android/media/widget/bc;)V

    .line 1051
    const v0, 0x7f130279

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/FoundMediaAttributionView;

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->l:Lcom/twitter/android/widget/FoundMediaAttributionView;

    .line 1053
    const v0, 0x7f13027a

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->C:Lcom/twitter/ui/widget/TwitterButton;

    .line 1054
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->C:Lcom/twitter/ui/widget/TwitterButton;

    new-instance v1, Lcom/twitter/android/composer/m;

    invoke-direct {v1, p0}, Lcom/twitter/android/composer/m;-><init>(Lcom/twitter/android/composer/ComposerActivity;)V

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1061
    const v0, 0x7f13027b

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->D:Lcom/twitter/ui/widget/TwitterButton;

    .line 1062
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->D:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/TwitterButton;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/composer/ComposerActivity;->ao:I

    .line 1063
    const v0, 0x7f13027c

    .line 1064
    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->E:Lcom/twitter/ui/widget/TwitterButton;

    .line 1065
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->E:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/TwitterButton;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/composer/ComposerActivity;->ap:I

    .line 1067
    invoke-virtual {p0, v5}, Lcom/twitter/android/composer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->v:Landroid/view/View;

    .line 1068
    const v0, 0x7f13027f

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->B:Landroid/widget/ImageView;

    .line 1069
    const v0, 0x7f130280

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->w:Landroid/widget/TextView;

    .line 1071
    const v0, 0x7f130277

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/view/QuoteView;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/view/QuoteView;

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->K:Lcom/twitter/library/view/QuoteView;

    .line 1072
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->K:Lcom/twitter/library/view/QuoteView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/library/view/QuoteView;->setDisplaySensitiveMedia(Z)V

    .line 1073
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->K:Lcom/twitter/library/view/QuoteView;

    invoke-static {}, Lcom/twitter/util/ak;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/view/QuoteView;->setRenderRtl(Z)V

    .line 1075
    const v0, 0x7f130296

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/RevealClipFrameLayout;

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->L:Lcom/twitter/android/widget/RevealClipFrameLayout;

    .line 1077
    const v0, 0x7f130272

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aw:Landroid/view/View;

    .line 1078
    const v0, 0x7f130271

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->ay:Landroid/widget/TextView;

    .line 1079
    new-instance v1, Lcom/twitter/android/composer/by;

    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aw:Landroid/view/View;

    const v3, 0x7f130273

    .line 1080
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, v2, v4, v0}, Lcom/twitter/android/composer/by;-><init>(Landroid/content/res/Resources;ZLandroid/widget/TextView;)V

    iput-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->ax:Lcom/twitter/android/composer/by;

    .line 1083
    invoke-virtual {p0, v5}, Lcom/twitter/android/composer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "translationY"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    .line 1082
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1c2

    .line 1084
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1085
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1086
    new-instance v1, Lcom/twitter/android/composer/n;

    invoke-direct {v1, p0}, Lcom/twitter/android/composer/n;-><init>(Lcom/twitter/android/composer/ComposerActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1093
    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->at:Landroid/animation/Animator;

    .line 1094
    return-void

    .line 1083
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static a(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 3366
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 3367
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 3368
    return-void

    .line 3367
    :cond_0
    const v0, 0x3e99999a    # 0.3f

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/composer/ComposerActivity;I)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/twitter/android/composer/ComposerActivity;->g(I)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/composer/ComposerActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/twitter/android/composer/ComposerActivity;->b(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/composer/ComposerActivity;Lcom/twitter/model/av/o;)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/twitter/android/composer/ComposerActivity;->a(Lcom/twitter/model/av/o;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/composer/ComposerActivity;Lcom/twitter/model/drafts/DraftAttachment;)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/twitter/android/composer/ComposerActivity;->a(Lcom/twitter/model/drafts/DraftAttachment;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/composer/ComposerActivity;Lcom/twitter/model/media/EditableMedia;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/composer/ComposerActivity;->b(Lcom/twitter/model/media/EditableMedia;Landroid/view/View;)V

    return-void
.end method

.method private a(Lcom/twitter/android/composer/PeriscopeBroadcastGalleryItem;)V
    .locals 2

    .prologue
    .line 3028
    invoke-static {p0}, Lcbb;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3029
    invoke-virtual {p1}, Lcom/twitter/android/composer/PeriscopeBroadcastGalleryItem;->c()V

    .line 3033
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ba;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3034
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->h:Lcom/twitter/android/composer/bi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/bi;->a(Z)V

    .line 3035
    invoke-virtual {p1}, Lcom/twitter/android/composer/PeriscopeBroadcastGalleryItem;->a()V

    .line 3040
    :goto_1
    return-void

    .line 3031
    :cond_0
    invoke-virtual {p1}, Lcom/twitter/android/composer/PeriscopeBroadcastGalleryItem;->d()V

    goto :goto_0

    .line 3037
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->h:Lcom/twitter/android/composer/bi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/bi;->a(Z)V

    .line 3038
    invoke-virtual {p1}, Lcom/twitter/android/composer/PeriscopeBroadcastGalleryItem;->b()V

    goto :goto_1
.end method

.method private a(Lcom/twitter/android/composer/TweetBox;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 640
    const/16 v0, 0x8c

    invoke-virtual {p1, v0}, Lcom/twitter/android/composer/TweetBox;->setMaxChars(I)V

    .line 642
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->N:Lcom/twitter/android/widget/GalleryGridFragment;

    invoke-direct {p0, p2}, Lcom/twitter/android/composer/ComposerActivity;->e(Z)[Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/GalleryGridFragment;->a([Landroid/view/View;)V

    .line 643
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->N:Lcom/twitter/android/widget/GalleryGridFragment;

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/GalleryGridFragment;->a(Lcom/twitter/android/widget/bc;)V

    .line 645
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->P:Lcom/twitter/android/widget/ComposerSelectionFragment;

    .line 646
    new-instance v1, Lcom/twitter/android/composer/l;

    invoke-direct {v1, p0, p1, v0}, Lcom/twitter/android/composer/l;-><init>(Lcom/twitter/android/composer/ComposerActivity;Lcom/twitter/android/composer/TweetBox;Lcom/twitter/android/widget/ComposerSelectionFragment;)V

    invoke-virtual {p1, v1}, Lcom/twitter/android/composer/TweetBox;->setTextWatcher(Landroid/text/TextWatcher;)V

    .line 658
    invoke-static {p0}, Lcom/twitter/util/c;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 659
    invoke-virtual {p1, v2}, Lcom/twitter/android/composer/TweetBox;->setSuggestionsEnabled(Z)V

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    iget-boolean v1, p0, Lcom/twitter/android/composer/ComposerActivity;->f:Z

    if-eqz v1, :cond_0

    .line 661
    invoke-virtual {p1, v2}, Lcom/twitter/android/composer/TweetBox;->setSuggestionsEnabled(Z)V

    .line 663
    new-instance v1, Lcom/twitter/android/composer/w;

    invoke-direct {v1, p0}, Lcom/twitter/android/composer/w;-><init>(Lcom/twitter/android/composer/ComposerActivity;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ComposerSelectionFragment;->a(Lcom/twitter/android/widget/y;)V

    goto :goto_0
.end method

.method private a(Lcom/twitter/library/client/Session;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f130282

    .line 607
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    .line 608
    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 610
    const-string/jumbo v0, "gallery"

    invoke-virtual {v6, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/GalleryGridFragment;

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->N:Lcom/twitter/android/widget/GalleryGridFragment;

    .line 611
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->N:Lcom/twitter/android/widget/GalleryGridFragment;

    if-nez v0, :cond_0

    .line 612
    const v0, 0x7f0d01ab

    .line 613
    invoke-static {p0}, Lcom/twitter/media/filters/g;->a(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    .line 612
    invoke-static {v0, v5, v2, v5, v3}, Lcom/twitter/android/widget/GalleryGridFragment;->b(IIZIZ)Lcom/twitter/android/widget/GalleryGridFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->N:Lcom/twitter/android/widget/GalleryGridFragment;

    .line 615
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->N:Lcom/twitter/android/widget/GalleryGridFragment;

    const-string/jumbo v2, "gallery"

    invoke-virtual {v1, v4, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 618
    :cond_0
    const-string/jumbo v0, "user_select"

    invoke-virtual {v6, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ComposerSelectionFragment;

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->P:Lcom/twitter/android/widget/ComposerSelectionFragment;

    .line 619
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->P:Lcom/twitter/android/widget/ComposerSelectionFragment;

    if-nez v0, :cond_1

    .line 620
    new-instance v0, Lcom/twitter/android/widget/ComposerSelectionFragment;

    invoke-direct {v0}, Lcom/twitter/android/widget/ComposerSelectionFragment;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->P:Lcom/twitter/android/widget/ComposerSelectionFragment;

    .line 621
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->P:Lcom/twitter/android/widget/ComposerSelectionFragment;

    const-string/jumbo v2, "user_select"

    invoke-virtual {v1, v4, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 624
    :cond_1
    const-string/jumbo v0, "location"

    invoke-virtual {v6, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ComposerPoiFragment;

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->O:Lcom/twitter/android/widget/ComposerPoiFragment;

    .line 625
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->O:Lcom/twitter/android/widget/ComposerPoiFragment;

    if-nez v0, :cond_2

    .line 626
    new-instance v0, Lcom/twitter/android/widget/ComposerPoiFragment;

    invoke-direct {v0}, Lcom/twitter/android/widget/ComposerPoiFragment;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->O:Lcom/twitter/android/widget/ComposerPoiFragment;

    .line 627
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->O:Lcom/twitter/android/widget/ComposerPoiFragment;

    const-string/jumbo v2, "location"

    invoke-virtual {v1, v4, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 630
    :cond_2
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 632
    const-string/jumbo v2, "composition"

    sget-object v3, Lcom/twitter/media/model/MediaType;->h:Ljava/util/EnumSet;

    const/4 v4, 0x4

    move-object v0, p0

    move-object v1, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/media/selection/MediaAttachmentController;->a(Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/media/util/a;Ljava/lang/String;Ljava/util/EnumSet;ILcom/twitter/library/client/Session;)Lcom/twitter/android/media/selection/MediaAttachmentController;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->M:Lcom/twitter/android/media/selection/MediaAttachmentController;

    .line 636
    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 637
    return-void
.end method

.method private a(Lcom/twitter/model/av/o;)V
    .locals 3

    .prologue
    .line 2757
    if-eqz p1, :cond_1

    .line 2758
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 2760
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->C:Lcom/twitter/ui/widget/TwitterButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 2761
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->C:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {p1}, Lcom/twitter/model/av/o;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0a0513

    .line 2762
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2761
    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/ui/widget/TwitterButton;->setText(Ljava/lang/CharSequence;)V

    .line 2768
    :goto_1
    return-void

    .line 2762
    :cond_0
    const v2, 0x7f0a0514

    .line 2763
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2766
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->C:Lcom/twitter/ui/widget/TwitterButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    goto :goto_1
.end method

.method private a(Lcom/twitter/model/drafts/DraftAttachment;)V
    .locals 2

    .prologue
    .line 3043
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v0, p1}, Lcom/twitter/android/composer/ba;->a(Lcom/twitter/model/drafts/DraftAttachment;)Lcom/twitter/model/drafts/DraftAttachment;

    move-result-object v0

    .line 3044
    if-eqz v0, :cond_0

    .line 3045
    invoke-virtual {v0, p1}, Lcom/twitter/model/drafts/DraftAttachment;->b(Lcom/twitter/model/drafts/DraftAttachment;)Lcom/twitter/util/concurrent/j;

    .line 3047
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/twitter/model/drafts/DraftAttachment;->a(I)Lcom/twitter/model/media/EditableMedia;

    move-result-object v0

    .line 3048
    if-eqz v0, :cond_1

    .line 3049
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->N:Lcom/twitter/android/widget/GalleryGridFragment;

    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/GalleryGridFragment;->b(Lcom/twitter/model/media/EditableMedia;)V

    .line 3050
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->aK:Lcom/twitter/android/composer/geotag/a;

    invoke-virtual {v1, v0}, Lcom/twitter/android/composer/geotag/a;->a(Lcom/twitter/model/media/EditableMedia;)V

    .line 3051
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->ar()V

    .line 3053
    :cond_1
    return-void
.end method

.method private a(Lcom/twitter/model/drafts/DraftAttachment;Lcom/twitter/android/media/selection/AttachMediaListener;)V
    .locals 2

    .prologue
    .line 3291
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->k:Lcom/twitter/android/media/widget/MediaAttachmentsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/media/widget/MediaAttachmentsView;->setVisibility(I)V

    .line 3292
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/twitter/model/drafts/DraftAttachment;->a(I)Lcom/twitter/model/media/EditableMedia;

    move-result-object v0

    .line 3293
    if-nez v0, :cond_0

    .line 3294
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->M:Lcom/twitter/android/media/selection/MediaAttachmentController;

    new-instance v1, Lcom/twitter/android/media/selection/MediaAttachment;

    invoke-direct {v1, p1}, Lcom/twitter/android/media/selection/MediaAttachment;-><init>(Lcom/twitter/model/drafts/DraftAttachment;)V

    invoke-virtual {v0, v1, p2}, Lcom/twitter/android/media/selection/MediaAttachmentController;->a(Lcom/twitter/android/media/selection/MediaAttachment;Lcom/twitter/android/media/selection/AttachMediaListener;)V

    .line 3299
    :goto_0
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->aq()V

    .line 3300
    return-void

    .line 3296
    :cond_0
    invoke-direct {p0, p1}, Lcom/twitter/android/composer/ComposerActivity;->a(Lcom/twitter/model/drafts/DraftAttachment;)V

    .line 3297
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->M:Lcom/twitter/android/media/selection/MediaAttachmentController;

    invoke-virtual {v1, v0, p2}, Lcom/twitter/android/media/selection/MediaAttachmentController;->a(Lcom/twitter/model/media/EditableMedia;Lcom/twitter/android/media/selection/AttachMediaListener;)V

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;Lcom/twitter/media/model/MediaType;Z)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2970
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v1, p1}, Lcom/twitter/android/composer/ba;->c(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2971
    if-eqz p3, :cond_0

    .line 2972
    const v1, 0x7f0a067e

    invoke-virtual {p0, v1}, Lcom/twitter/android/composer/ComposerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 2973
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2978
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v0, p2}, Lcom/twitter/android/composer/ba;->a(Lcom/twitter/media/model/MediaType;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/composer/ComposerActivity;Landroid/net/Uri;Lcom/twitter/media/model/MediaType;Z)Z
    .locals 1

    .prologue
    .line 217
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/android/composer/ComposerActivity;->a(Landroid/net/Uri;Lcom/twitter/media/model/MediaType;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/twitter/android/composer/ComposerActivity;Z)Z
    .locals 0

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/twitter/android/composer/ComposerActivity;->ab:Z

    return p1
.end method

.method private static a(Ljava/lang/String;Lcom/twitter/model/core/Tweet;J)Z
    .locals 2

    .prologue
    .line 3427
    .line 3428
    invoke-static {p1, p2, p3}, Lciz;->c(Lcom/twitter/model/core/Tweet;J)Ljava/util/List;

    move-result-object v0

    .line 3427
    invoke-static {v0}, Lciz;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/drafts/DraftAttachment;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2270
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/drafts/DraftAttachment;

    .line 2271
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/twitter/model/drafts/DraftAttachment;->a(I)Lcom/twitter/model/media/EditableMedia;

    move-result-object v2

    .line 2272
    iget v0, v0, Lcom/twitter/model/drafts/DraftAttachment;->d:I

    if-nez v0, :cond_0

    instance-of v0, v2, Lcom/twitter/model/media/EditableImage;

    if-eqz v0, :cond_0

    .line 2274
    const/4 v0, 0x1

    .line 2277
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aA()V
    .locals 2

    .prologue
    .line 3355
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->r:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 3363
    :goto_0
    return-void

    .line 3358
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ba;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aG:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->K:Lcom/twitter/library/view/QuoteView;

    .line 3360
    invoke-virtual {v0}, Lcom/twitter/library/view/QuoteView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    .line 3361
    invoke-virtual {v0}, Lcom/twitter/android/composer/ba;->n()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3362
    :goto_1
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->r:Landroid/widget/ImageButton;

    invoke-static {v1, v0}, Lcom/twitter/android/composer/ComposerActivity;->a(Landroid/view/View;Z)V

    goto :goto_0

    .line 3361
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private aB()V
    .locals 3

    .prologue
    .line 3388
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->Q:Lcom/twitter/library/client/Session;

    .line 3390
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/Session;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    .line 3391
    invoke-virtual {v1}, Lcom/twitter/android/composer/TweetBox;->getText()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/composer/aj;

    invoke-direct {v2, p0}, Lcom/twitter/android/composer/aj;-><init>(Lcom/twitter/android/composer/ComposerActivity;)V

    .line 3388
    invoke-static {p0, v0, v1, v2}, Ldmo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ldmr;)V

    .line 3399
    return-void
.end method

.method private aC()V
    .locals 5

    .prologue
    .line 3403
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ba;->h()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    .line 3404
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v1}, Lcom/twitter/android/composer/ba;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3414
    :cond_0
    :goto_0
    return-void

    .line 3408
    :cond_1
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v1}, Lcom/twitter/android/composer/ba;->d()Ljava/lang/String;

    move-result-object v1

    .line 3409
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->Q:Lcom/twitter/library/client/Session;

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-static {v1, v0, v2, v3}, Lcom/twitter/android/composer/ComposerActivity;->a(Ljava/lang/String;Lcom/twitter/model/core/Tweet;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3410
    iget-boolean v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aB:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "editedover140"

    .line 3411
    :goto_1
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->Q:Lcom/twitter/library/client/Session;

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, ":composition:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "mentions"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    .line 3412
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 3411
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0

    .line 3410
    :cond_2
    const-string/jumbo v0, "edited"

    goto :goto_1
.end method

.method private aD()V
    .locals 2

    .prologue
    .line 3417
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ba;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a067b

    .line 3420
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/android/composer/TweetBox;->setImeActionLabel(Ljava/lang/CharSequence;)V

    .line 3421
    return-void

    .line 3417
    :cond_0
    const v0, 0x7f0a0682

    goto :goto_0
.end method

.method private ae()V
    .locals 6

    .prologue
    .line 1237
    const v0, 0x7f1301d0

    .line 1238
    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/card/CardPreviewView;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/card/CardPreviewView;

    .line 1239
    invoke-static {}, Lcom/twitter/android/card/r;->a()Lcom/twitter/android/card/r;

    move-result-object v0

    iget-object v3, p0, Lcom/twitter/android/composer/ComposerActivity;->aF:Lclw;

    sget-object v4, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->d:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/card/r;->a(Landroid/app/Activity;Lcom/twitter/android/card/o;Lclw;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Z)Lcom/twitter/android/card/p;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aE:Lcom/twitter/android/card/p;

    .line 1241
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aE:Lcom/twitter/android/card/p;

    new-instance v1, Lcom/twitter/android/composer/q;

    invoke-direct {v1, p0}, Lcom/twitter/android/composer/q;-><init>(Lcom/twitter/android/composer/ComposerActivity;)V

    invoke-interface {v0, v1}, Lcom/twitter/android/card/p;->a(Lcom/twitter/android/card/q;)V

    .line 1262
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aE:Lcom/twitter/android/card/p;

    invoke-virtual {v2, v0}, Lcom/twitter/android/card/CardPreviewView;->setController(Lcom/twitter/android/card/p;)V

    .line 1263
    const v0, 0x7f13028e

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const v1, 0x7f13028d

    .line 1264
    invoke-virtual {p0, v1}, Lcom/twitter/android/composer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1263
    invoke-virtual {v2, v0, v1}, Lcom/twitter/android/card/CardPreviewView;->a(Landroid/widget/ProgressBar;Ljava/util/List;)V

    .line 1265
    return-void
.end method

.method private af()V
    .locals 3

    .prologue
    .line 1268
    const-string/jumbo v0, "cards_polling_card_poll2choice_text_only_compose"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1269
    const v0, 0x7f13027d

    .line 1270
    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/card/pollcompose/PollComposeView;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/card/pollcompose/q;

    .line 1271
    const v1, 0x7f13028c

    invoke-virtual {p0, v1}, Lcom/twitter/android/composer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-static {v1}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->s:Landroid/widget/ImageButton;

    .line 1272
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->s:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1273
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->s:Landroid/widget/ImageButton;

    new-instance v2, Lcom/twitter/android/composer/r;

    invoke-direct {v2, p0}, Lcom/twitter/android/composer/r;-><init>(Lcom/twitter/android/composer/ComposerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1282
    new-instance v1, Lcom/twitter/android/card/pollcompose/o;

    new-instance v2, Lcom/twitter/android/card/pollcompose/i;

    invoke-direct {v2}, Lcom/twitter/android/card/pollcompose/i;-><init>()V

    .line 1283
    invoke-virtual {v2, p0}, Lcom/twitter/android/card/pollcompose/i;->a(Landroid/app/Activity;)Lcom/twitter/android/card/pollcompose/h;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/twitter/android/card/pollcompose/o;-><init>(Lcom/twitter/android/card/pollcompose/q;Lcom/twitter/android/card/pollcompose/h;)V

    iput-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->aH:Lcom/twitter/android/card/pollcompose/o;

    .line 1284
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aH:Lcom/twitter/android/card/pollcompose/o;

    new-instance v1, Lcom/twitter/android/composer/s;

    invoke-direct {v1, p0}, Lcom/twitter/android/composer/s;-><init>(Lcom/twitter/android/composer/ComposerActivity;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/card/pollcompose/o;->a(Lcom/twitter/android/card/pollcompose/p;)V

    .line 1325
    :cond_0
    return-void
.end method

.method private ag()V
    .locals 0

    .prologue
    .line 1428
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->az()V

    .line 1429
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->aA()V

    .line 1430
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->z()V

    .line 1431
    return-void
.end method

.method private ah()V
    .locals 3

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    .line 1435
    invoke-virtual {v0}, Lcom/twitter/android/composer/ba;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    .line 1436
    invoke-virtual {v0}, Lcom/twitter/android/composer/ba;->l()Lcom/twitter/model/core/ay;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    .line 1437
    invoke-virtual {v0}, Lcom/twitter/android/composer/ba;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1438
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->aE:Lcom/twitter/android/card/p;

    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v2}, Lcom/twitter/android/composer/TweetBox;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/twitter/android/card/p;->a(Ljava/lang/String;Z)V

    .line 1439
    return-void

    .line 1437
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ai()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1476
    iget-boolean v0, p0, Lcom/twitter/android/composer/ComposerActivity;->ac:Z

    if-eqz v0, :cond_0

    .line 1477
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->u:Lcom/twitter/android/widget/DraggableDrawerLayout;

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/DraggableDrawerLayout;->a(Z)V

    .line 1478
    const/4 v0, 0x1

    iput v0, p0, Lcom/twitter/android/composer/ComposerActivity;->R:I

    .line 1479
    iput-boolean v2, p0, Lcom/twitter/android/composer/ComposerActivity;->ac:Z

    .line 1483
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    const v1, 0x7f130275

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/TweetBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1484
    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1486
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->as()V

    .line 1487
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->aj()V

    .line 1488
    return-void
.end method

.method private aj()V
    .locals 3

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->z:Landroid/view/View;

    const v1, 0x7f13028a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1492
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->an:Lcom/twitter/android/composer/bq;

    const-string/jumbo v1, "record_video_tooltip"

    .line 1493
    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/bq;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1494
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->an:Lcom/twitter/android/composer/bq;

    const-string/jumbo v1, "record_video_tooltip"

    .line 1495
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 1494
    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/composer/bq;->a(Ljava/lang/String;Landroid/support/v4/app/FragmentManager;)V

    .line 1496
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->u()V

    .line 1498
    :cond_0
    return-void
.end method

.method private ak()Z
    .locals 4

    .prologue
    .line 1717
    iget-wide v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aC:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1718
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/twitter/android/composer/ComposerActivity;->aC:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 1717
    :goto_0
    return v0

    .line 1718
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private al()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2411
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v1}, Lcom/twitter/android/composer/ba;->h()Lcom/twitter/model/core/Tweet;

    move-result-object v1

    .line 2412
    if-nez v1, :cond_1

    .line 2418
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, v1, Lcom/twitter/model/core/Tweet;->o:J

    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->Q:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    .line 2419
    invoke-virtual {v1}, Lcom/twitter/android/composer/ba;->a()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    .line 2420
    invoke-virtual {v1}, Lcom/twitter/android/composer/TweetBox;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private am()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2568
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/TweetBox;->setVisibility(I)V

    .line 2569
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->az:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    if-eqz v0, :cond_0

    .line 2570
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->az:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 2571
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->L:Lcom/twitter/android/widget/RevealClipFrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/RevealClipFrameLayout;->setVisibility(I)V

    .line 2572
    iput-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->az:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    .line 2574
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->N:Lcom/twitter/android/widget/GalleryGridFragment;

    invoke-virtual {v0}, Lcom/twitter/android/widget/GalleryGridFragment;->f()V

    .line 2575
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->k:Lcom/twitter/android/media/widget/MediaAttachmentsView;

    invoke-virtual {v0, v2}, Lcom/twitter/android/media/widget/MediaAttachmentsView;->setSelectedImage(Lcom/twitter/model/media/EditableImage;)V

    .line 2576
    return-void
.end method

.method private an()V
    .locals 3

    .prologue
    .line 2727
    .line 2728
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->ap()Lcom/twitter/android/composer/ay;

    move-result-object v0

    .line 2729
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->Q:Lcom/twitter/library/client/Session;

    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    .line 2730
    invoke-virtual {v2}, Lcom/twitter/android/composer/ba;->i()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/composer/ay;->a(Lcom/twitter/library/client/Session;Ljava/lang/Object;)Lrx/o;

    move-result-object v1

    .line 2732
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->aL:Lrx/ap;

    if-eqz v2, :cond_0

    .line 2733
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->aL:Lrx/ap;

    invoke-interface {v2}, Lrx/ap;->R_()V

    .line 2736
    :cond_0
    new-instance v2, Lcom/twitter/android/composer/ai;

    invoke-direct {v2, p0, v0}, Lcom/twitter/android/composer/ai;-><init>(Lcom/twitter/android/composer/ComposerActivity;Lcom/twitter/android/composer/ay;)V

    invoke-virtual {v1, v2}, Lrx/o;->c(Ldjf;)Lrx/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aL:Lrx/ap;

    .line 2753
    return-void
.end method

.method private ao()V
    .locals 3

    .prologue
    .line 2771
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aM:Lcom/twitter/android/av/monetization/g;

    if-nez v0, :cond_1

    .line 2785
    :cond_0
    :goto_0
    return-void

    .line 2776
    :cond_1
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->ap()Lcom/twitter/android/composer/ay;

    move-result-object v0

    .line 2778
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    .line 2779
    invoke-virtual {v1}, Lcom/twitter/android/composer/ba;->i()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ay;->a(Ljava/util/List;)Lcom/twitter/model/av/o;

    move-result-object v0

    .line 2781
    if-eqz v0, :cond_0

    .line 2782
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->aM:Lcom/twitter/android/av/monetization/g;

    new-instance v2, Lcom/twitter/android/av/monetization/e;

    invoke-direct {v2, v0}, Lcom/twitter/android/av/monetization/e;-><init>(Lcom/twitter/model/av/o;)V

    .line 2783
    invoke-virtual {v1, v2}, Lcom/twitter/android/av/monetization/g;->c(Lauc;)V

    goto :goto_0
.end method

.method private ap()Lcom/twitter/android/composer/ay;
    .locals 1

    .prologue
    .line 2789
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->U()Lcom/twitter/app/common/inject/b;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/composer/az;

    .line 2790
    invoke-virtual {v0}, Lcom/twitter/android/composer/az;->a()Lcom/twitter/android/composer/ay;

    move-result-object v0

    return-object v0
.end method

.method private aq()V
    .locals 1

    .prologue
    .line 2807
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->M:Lcom/twitter/android/media/selection/MediaAttachmentController;

    invoke-virtual {v0}, Lcom/twitter/android/media/selection/MediaAttachmentController;->f()Z

    move-result v0

    .line 2808
    if-eqz v0, :cond_1

    .line 2809
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/composer/ComposerActivity;->af:Z

    .line 2813
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->C()V

    .line 2814
    return-void

    .line 2810
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->k:Lcom/twitter/android/media/widget/MediaAttachmentsView;

    invoke-virtual {v0}, Lcom/twitter/android/media/widget/MediaAttachmentsView;->getMediaCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2811
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->k:Lcom/twitter/android/media/widget/MediaAttachmentsView;

    invoke-virtual {v0}, Lcom/twitter/android/media/widget/MediaAttachmentsView;->c()V

    goto :goto_0
.end method

.method private ar()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3005
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ba;->k()Z

    move-result v4

    .line 3006
    iget-object v3, p0, Lcom/twitter/android/composer/ComposerActivity;->N:Lcom/twitter/android/widget/GalleryGridFragment;

    if-nez v4, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/twitter/android/widget/GalleryGridFragment;->b(Z)V

    .line 3007
    iget-object v3, p0, Lcom/twitter/android/composer/ComposerActivity;->N:Lcom/twitter/android/widget/GalleryGridFragment;

    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ba;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/twitter/android/widget/GalleryGridFragment;->c(Z)V

    .line 3009
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ba;->f()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->e(Z)[Landroid/widget/FrameLayout;

    move-result-object v5

    .line 3010
    array-length v6, v5

    move v3, v2

    :goto_2
    if-ge v3, v6, :cond_5

    aget-object v0, v5, v3

    .line 3013
    instance-of v7, v0, Lcom/twitter/android/composer/PeriscopeBroadcastGalleryItem;

    if-eqz v7, :cond_3

    .line 3014
    check-cast v0, Lcom/twitter/android/composer/PeriscopeBroadcastGalleryItem;

    invoke-direct {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->a(Lcom/twitter/android/composer/PeriscopeBroadcastGalleryItem;)V

    .line 3010
    :cond_0
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_1
    move v0, v2

    .line 3006
    goto :goto_0

    :cond_2
    move v0, v2

    .line 3007
    goto :goto_1

    .line 3015
    :cond_3
    if-eqz v4, :cond_4

    .line 3016
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 3017
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    goto :goto_3

    .line 3018
    :cond_4
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_0

    .line 3019
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f12015e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 3020
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    goto :goto_3

    .line 3024
    :cond_5
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->N:Lcom/twitter/android/widget/GalleryGridFragment;

    invoke-virtual {v0, v5}, Lcom/twitter/android/widget/GalleryGridFragment;->a([Landroid/view/View;)V

    .line 3025
    return-void
.end method

.method private as()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3135
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->u:Lcom/twitter/android/widget/DraggableDrawerLayout;

    invoke-virtual {v0}, Lcom/twitter/android/widget/DraggableDrawerLayout;->getDrawerState()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    .line 3136
    :goto_0
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->z:Landroid/view/View;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3137
    return-void

    :cond_0
    move v0, v1

    .line 3135
    goto :goto_0

    .line 3136
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method private at()V
    .locals 5

    .prologue
    .line 3158
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ba;->h()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    .line 3159
    if-eqz v0, :cond_0

    .line 3160
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->ax:Lcom/twitter/android/composer/by;

    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->Q:Lcom/twitter/library/client/Session;

    .line 3162
    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    iget-object v4, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    .line 3163
    invoke-virtual {v4}, Lcom/twitter/android/composer/ba;->a()Z

    move-result v4

    .line 3160
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/twitter/android/composer/by;->a(Lcom/twitter/model/core/Tweet;JZ)V

    .line 3165
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->au()V

    .line 3166
    return-void
.end method

.method private au()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 3169
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v1}, Lcom/twitter/android/composer/ba;->g()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 3170
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->al()Z

    move-result v1

    .line 3171
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->aw:Landroid/view/View;

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3172
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->j:Lcom/twitter/android/composer/ComposerScrollView;

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ComposerScrollView;->setHeaderVisible(Z)V

    .line 3177
    :goto_1
    return-void

    .line 3171
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 3174
    :cond_1
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->aw:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3175
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->j:Lcom/twitter/android/composer/ComposerScrollView;

    invoke-virtual {v1, v0}, Lcom/twitter/android/composer/ComposerScrollView;->setHeaderVisible(Z)V

    goto :goto_1
.end method

.method private av()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 3203
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->aw()V

    .line 3204
    iget v0, p0, Lcom/twitter/android/composer/ComposerActivity;->Y:I

    packed-switch v0, :pswitch_data_0

    .line 3225
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3210
    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ba;->c()J

    move-result-wide v0

    .line 3211
    cmp-long v2, v0, v6

    if-lez v2, :cond_0

    .line 3212
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/composer/ComposerActivity;->Q:Lcom/twitter/library/client/Session;

    iget-object v4, p0, Lcom/twitter/android/composer/ComposerActivity;->W:Lcom/twitter/library/client/bd;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/twitter/android/composer/ComposerActivity;->b(JLandroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/library/client/bd;)V

    .line 3213
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v0, v6, v7}, Lcom/twitter/android/composer/ba;->a(J)V

    goto :goto_0

    .line 3218
    :pswitch_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/composer/ComposerActivity;->Y:I

    goto :goto_0

    .line 3204
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private aw()V
    .locals 5

    .prologue
    .line 3240
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->Z:Lcom/twitter/android/composer/at;

    if-eqz v0, :cond_2

    .line 3241
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3243
    iget v0, p0, Lcom/twitter/android/composer/ComposerActivity;->Y:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3244
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mFirstDraftSaver set but mDraftSaveState is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/twitter/android/composer/ComposerActivity;->Y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3247
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ba;->c()J

    move-result-wide v0

    .line 3248
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 3249
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mFirstDraftSaver set but mDraftId is not 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3253
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->Z:Lcom/twitter/android/composer/at;

    invoke-virtual {v0}, Lcom/twitter/android/composer/at;->a()V

    .line 3254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->Z:Lcom/twitter/android/composer/at;

    .line 3255
    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/composer/ComposerActivity;->Y:I

    .line 3257
    :cond_2
    return-void
.end method

.method private ax()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3317
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ay()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3322
    iget-boolean v0, p0, Lcom/twitter/android/composer/ComposerActivity;->ah:Z

    if-nez v0, :cond_1

    .line 3323
    iput-boolean v1, p0, Lcom/twitter/android/composer/ComposerActivity;->ah:Z

    .line 3324
    iget-boolean v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aj:Z

    if-eqz v0, :cond_0

    .line 3325
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->M:Lcom/twitter/android/media/selection/MediaAttachmentController;

    invoke-virtual {v0}, Lcom/twitter/android/media/selection/MediaAttachmentController;->g()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/composer/ComposerActivity;->a(Ljava/util/List;Z)V

    .line 3326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aj:Z

    .line 3328
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->ai:Lcom/twitter/app/common/util/a;

    if-eqz v0, :cond_1

    .line 3329
    invoke-static {}, Lcom/twitter/app/common/util/c;->a()Lcom/twitter/app/common/util/c;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->ai:Lcom/twitter/app/common/util/a;

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/util/c;->b(Lcom/twitter/app/common/util/a;)V

    .line 3330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->ai:Lcom/twitter/app/common/util/a;

    .line 3333
    :cond_1
    return-void
.end method

.method private az()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3336
    const/4 v2, 0x1

    .line 3337
    iget-boolean v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aG:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 3351
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->c:Landroid/widget/ImageButton;

    invoke-static {v1, v0}, Lcom/twitter/android/composer/ComposerActivity;->a(Landroid/view/View;Z)V

    .line 3352
    return-void

    .line 3339
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->K:Lcom/twitter/library/view/QuoteView;

    invoke-virtual {v0}, Lcom/twitter/library/view/QuoteView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 3340
    goto :goto_0

    .line 3341
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ba;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 3342
    goto :goto_0

    .line 3344
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ba;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/drafts/DraftAttachment;

    .line 3345
    iget-object v0, v0, Lcom/twitter/model/drafts/DraftAttachment;->g:Lcom/twitter/media/model/MediaType;

    sget-object v4, Lcom/twitter/media/model/MediaType;->b:Lcom/twitter/media/model/MediaType;

    if-eq v0, v4, :cond_3

    move v0, v1

    .line 3347
    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method static synthetic b(Lcom/twitter/android/composer/ComposerActivity;I)I
    .locals 0

    .prologue
    .line 217
    iput p1, p0, Lcom/twitter/android/composer/ComposerActivity;->Y:I

    return p1
.end method

.method private b(I)V
    .locals 0

    .prologue
    .line 2985
    iput p1, p0, Lcom/twitter/android/composer/ComposerActivity;->ao:I

    .line 2986
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->u()V

    .line 2987
    return-void
.end method

.method private static b(JLandroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/library/client/bd;)V
    .locals 8

    .prologue
    .line 3232
    new-instance v1, Lcom/twitter/android/composer/bt;

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p0

    invoke-direct/range {v1 .. v6}, Lcom/twitter/android/composer/bt;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JZ)V

    .line 3233
    sget-object v0, Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;->g:Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;

    invoke-virtual {v1, v0}, Lcom/twitter/android/composer/bt;->a(Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;)V

    .line 3234
    invoke-virtual {p4, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 3235
    return-void
.end method

.method private b(Landroid/net/Uri;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3056
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v1, p1}, Lcom/twitter/android/composer/ba;->a(Landroid/net/Uri;)Lcom/twitter/model/drafts/DraftAttachment;

    move-result-object v1

    .line 3057
    if-eqz v1, :cond_0

    .line 3058
    invoke-virtual {v1, v0}, Lcom/twitter/model/drafts/DraftAttachment;->b(Lcom/twitter/model/drafts/DraftAttachment;)Lcom/twitter/util/concurrent/j;

    .line 3060
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->N:Lcom/twitter/android/widget/GalleryGridFragment;

    invoke-virtual {v1, p1}, Lcom/twitter/android/widget/GalleryGridFragment;->a(Landroid/net/Uri;)V

    .line 3061
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v1}, Lcom/twitter/android/composer/ba;->i()Ljava/util/List;

    move-result-object v1

    .line 3062
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3065
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->aK:Lcom/twitter/android/composer/geotag/a;

    invoke-virtual {v1, v0}, Lcom/twitter/android/composer/geotag/a;->a(Lcom/twitter/model/media/EditableMedia;)V

    .line 3066
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->ar()V

    .line 3067
    return-void

    .line 3062
    :cond_1
    const/4 v0, 0x0

    .line 3064
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/drafts/DraftAttachment;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/twitter/model/drafts/DraftAttachment;->a(I)Lcom/twitter/model/media/EditableMedia;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1217
    .line 1218
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 1217
    invoke-static {p0, v0, p1}, Lcom/twitter/android/composer/bq;->a(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/os/Bundle;)Lcom/twitter/android/composer/bq;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->an:Lcom/twitter/android/composer/bq;

    .line 1219
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->an:Lcom/twitter/android/composer/bq;

    new-instance v1, Lcom/twitter/android/composer/p;

    invoke-direct {v1, p0}, Lcom/twitter/android/composer/p;-><init>(Lcom/twitter/android/composer/ComposerActivity;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/bq;->a(Lcom/twitter/ui/widget/af;)V

    .line 1234
    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1467
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1468
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f049d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1469
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->ai()V

    .line 1473
    :cond_0
    :goto_0
    return-void

    .line 1470
    :cond_1
    iget v0, p0, Lcom/twitter/android/composer/ComposerActivity;->R:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1471
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/android/composer/ComposerActivity;->R:I

    goto :goto_0
.end method

.method static synthetic b(Lcom/twitter/android/composer/ComposerActivity;Z)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/twitter/android/composer/ComposerActivity;->i(Z)V

    return-void
.end method

.method private b(Lcom/twitter/model/media/EditableMedia;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 3303
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->M:Lcom/twitter/android/media/selection/MediaAttachmentController;

    new-instance v1, Lcom/twitter/android/composer/as;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/twitter/android/composer/as;-><init>(Lcom/twitter/android/composer/ComposerActivity;Z)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/twitter/android/media/selection/MediaAttachmentController;->a(Lcom/twitter/model/media/EditableMedia;Landroid/view/View;Lcom/twitter/android/media/selection/AttachMediaListener;)V

    .line 3305
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->aq()V

    .line 3306
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/am;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 2281
    invoke-static {p0, p1, v4}, Lcom/twitter/library/media/util/aa;->b(Landroid/content/Context;Ljava/util/List;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2282
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2283
    invoke-direct {p0, v2}, Lcom/twitter/android/composer/ComposerActivity;->d(I)V

    .line 2284
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ba;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2285
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->D:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000c

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/ui/widget/TwitterButton;->setText(Ljava/lang/CharSequence;)V

    .line 2286
    invoke-direct {p0, v4}, Lcom/twitter/android/composer/ComposerActivity;->b(I)V

    .line 2292
    :goto_0
    return-void

    .line 2288
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->E:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v1, v0}, Lcom/twitter/ui/widget/TwitterButton;->setText(Ljava/lang/CharSequence;)V

    .line 2289
    invoke-direct {p0, v4}, Lcom/twitter/android/composer/ComposerActivity;->d(I)V

    .line 2290
    invoke-direct {p0, v2}, Lcom/twitter/android/composer/ComposerActivity;->b(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/twitter/android/composer/ComposerActivity;)Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/twitter/android/composer/ComposerActivity;->f:Z

    return v0
.end method

.method static synthetic c(Lcom/twitter/android/composer/ComposerActivity;I)I
    .locals 0

    .prologue
    .line 217
    iput p1, p0, Lcom/twitter/android/composer/ComposerActivity;->am:I

    return p1
.end method

.method private c(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    .line 1328
    new-instance v2, Lcom/twitter/android/composer/t;

    invoke-direct {v2, p0}, Lcom/twitter/android/composer/t;-><init>(Lcom/twitter/android/composer/ComposerActivity;)V

    .line 1346
    new-instance v0, Lwo;

    .line 1349
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    .line 1350
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v4

    iget-object v5, p0, Lcom/twitter/android/composer/ComposerActivity;->p:Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/twitter/android/composer/ComposerActivity;->v:Landroid/view/View;

    iget-object v7, p0, Lcom/twitter/android/composer/ComposerActivity;->w:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/twitter/android/composer/ComposerActivity;->B:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/twitter/android/composer/ComposerActivity;->h:Lcom/twitter/android/composer/bi;

    move-object v1, p0

    move-object v10, p1

    invoke-direct/range {v0 .. v10}, Lwo;-><init>(Landroid/content/Context;Lwr;Landroid/support/v4/app/FragmentManager;Lcom/twitter/library/client/bk;Landroid/widget/ImageButton;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/twitter/android/composer/bi;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aJ:Lwo;

    .line 1357
    return-void
.end method

.method static synthetic c(Lcom/twitter/android/composer/ComposerActivity;)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->ah()V

    return-void
.end method

.method private c(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/drafts/DraftAttachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 3070
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 3071
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/drafts/DraftAttachment;

    .line 3072
    iget-object v4, v0, Lcom/twitter/model/drafts/DraftAttachment;->e:Landroid/net/Uri;

    .line 3073
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v1, v4}, Lcom/twitter/android/composer/ba;->b(Landroid/net/Uri;)Lcom/twitter/model/drafts/DraftAttachment;

    move-result-object v1

    .line 3074
    if-eqz v1, :cond_0

    .line 3075
    invoke-virtual {v1, v6}, Lcom/twitter/model/drafts/DraftAttachment;->a(I)Lcom/twitter/model/media/EditableMedia;

    move-result-object v1

    .line 3076
    invoke-virtual {v0, v6}, Lcom/twitter/model/drafts/DraftAttachment;->a(I)Lcom/twitter/model/media/EditableMedia;

    move-result-object v0

    .line 3077
    instance-of v5, v1, Lcom/twitter/model/media/EditableImage;

    if-eqz v5, :cond_1

    instance-of v5, v0, Lcom/twitter/model/media/EditableImage;

    if-eqz v5, :cond_1

    .line 3078
    check-cast v0, Lcom/twitter/model/media/EditableImage;

    check-cast v1, Lcom/twitter/model/media/EditableImage;

    iget-object v1, v1, Lcom/twitter/model/media/EditableImage;->g:Ljava/util/List;

    iput-object v1, v0, Lcom/twitter/model/media/EditableImage;->g:Ljava/util/List;

    .line 3080
    :cond_1
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3084
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ba;->i()Ljava/util/List;

    move-result-object v0

    .line 3085
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3086
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/drafts/DraftAttachment;

    .line 3087
    iget-object v4, v0, Lcom/twitter/model/drafts/DraftAttachment;->e:Landroid/net/Uri;

    .line 3088
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 3089
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/twitter/model/drafts/DraftAttachment;->b(Lcom/twitter/model/drafts/DraftAttachment;)Lcom/twitter/util/concurrent/j;

    .line 3090
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3094
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 3095
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/twitter/android/composer/ComposerActivity;->a(Landroid/net/Uri;Z)V

    goto :goto_2

    .line 3098
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/drafts/DraftAttachment;

    .line 3099
    invoke-direct {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->a(Lcom/twitter/model/drafts/DraftAttachment;)V

    goto :goto_3

    .line 3102
    :cond_6
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->ar()V

    .line 3103
    return-void
.end method

.method static synthetic c(Lcom/twitter/android/composer/ComposerActivity;Z)Z
    .locals 0

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/twitter/android/composer/ComposerActivity;->aG:Z

    return p1
.end method

.method static synthetic d(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/composer/TweetBox;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    return-object v0
.end method

.method private d(I)V
    .locals 0

    .prologue
    .line 2990
    iput p1, p0, Lcom/twitter/android/composer/ComposerActivity;->ap:I

    .line 2991
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->u()V

    .line 2992
    return-void
.end method

.method private d(Landroid/os/Bundle;)V
    .locals 15

    .prologue
    .line 1360
    new-instance v6, Lcom/twitter/android/geo/c;

    const-string/jumbo v0, "composer_activity_location_dialog"

    .line 1363
    invoke-static {}, Lcom/twitter/android/lb;->a()Lcom/twitter/android/lb;

    move-result-object v1

    const/16 v2, 0x204

    invoke-direct {v6, p0, v0, v1, v2}, Lcom/twitter/android/geo/c;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Lcom/twitter/android/lb;I)V

    .line 1366
    new-instance v2, Lcom/twitter/android/composer/u;

    invoke-direct {v2, p0}, Lcom/twitter/android/composer/u;-><init>(Lcom/twitter/android/composer/ComposerActivity;)V

    .line 1405
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v3

    .line 1406
    new-instance v8, Lcom/twitter/android/composer/geotag/l;

    const v0, 0x7f130419

    .line 1407
    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/composer/geotag/InlinePlacePickerView;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/composer/geotag/o;

    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->O:Lcom/twitter/android/widget/ComposerPoiFragment;

    .line 1409
    invoke-virtual {v1}, Lcom/twitter/android/widget/ComposerPoiFragment;->k()Lcom/twitter/android/geo/PlacePickerModel;

    move-result-object v1

    invoke-direct {v8, v0, v3, v1}, Lcom/twitter/android/composer/geotag/l;-><init>(Lcom/twitter/android/composer/geotag/o;Lcom/twitter/library/client/bk;Lcom/twitter/android/geo/PlacePickerModel;)V

    .line 1410
    new-instance v0, Lcom/twitter/android/composer/geotag/a;

    iget-object v4, p0, Lcom/twitter/android/composer/ComposerActivity;->W:Lcom/twitter/library/client/bd;

    .line 1415
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->O()Lccf;

    move-result-object v5

    iget-object v7, p0, Lcom/twitter/android/composer/ComposerActivity;->O:Lcom/twitter/android/widget/ComposerPoiFragment;

    const v1, 0x7f13041b

    .line 1419
    invoke-virtual {p0, v1}, Lcom/twitter/android/composer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/twitter/android/composer/ComposerActivity;->q:Lcom/twitter/android/widget/ToggleImageButton;

    iget-object v11, p0, Lcom/twitter/android/composer/ComposerActivity;->v:Landroid/view/View;

    iget-object v12, p0, Lcom/twitter/android/composer/ComposerActivity;->w:Landroid/widget/TextView;

    iget-object v13, p0, Lcom/twitter/android/composer/ComposerActivity;->B:Landroid/widget/ImageView;

    move-object v1, p0

    move-object/from16 v14, p1

    invoke-direct/range {v0 .. v14}, Lcom/twitter/android/composer/geotag/a;-><init>(Landroid/content/Context;Lcom/twitter/android/composer/geotag/e;Lcom/twitter/library/client/bk;Lcom/twitter/library/client/bd;Lccf;Lcom/twitter/android/geo/c;Lcom/twitter/android/widget/ComposerPoiFragment;Lcom/twitter/android/composer/geotag/l;Landroid/widget/TextView;Lcom/twitter/android/widget/ToggleImageButton;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aK:Lcom/twitter/android/composer/geotag/a;

    .line 1425
    return-void
.end method

.method static synthetic d(Lcom/twitter/android/composer/ComposerActivity;Z)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/twitter/android/composer/ComposerActivity;->j(Z)V

    return-void
.end method

.method static synthetic e(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/widget/DraggableDrawerLayout;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->u:Lcom/twitter/android/widget/DraggableDrawerLayout;

    return-object v0
.end method

.method private e(Z)[Landroid/widget/FrameLayout;
    .locals 10

    .prologue
    const v9, 0x7f13003e

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 1502
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->A:[Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    .line 1504
    iget-boolean v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aD:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 1505
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1506
    iget-object v3, p0, Lcom/twitter/android/composer/ComposerActivity;->A:[Landroid/widget/FrameLayout;

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 1507
    instance-of v6, v5, Lcom/twitter/android/composer/PeriscopeBroadcastGalleryItem;

    if-nez v6, :cond_0

    .line 1508
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1506
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1511
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/widget/FrameLayout;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->A:[Landroid/widget/FrameLayout;

    .line 1512
    iput-boolean v1, p0, Lcom/twitter/android/composer/ComposerActivity;->aD:Z

    .line 1514
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->A:[Landroid/widget/FrameLayout;

    .line 1625
    :goto_1
    return-object v0

    .line 1517
    :cond_3
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1519
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1521
    const v0, 0x7f040108

    invoke-virtual {v2, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1522
    new-instance v1, Lcom/twitter/android/composer/v;

    invoke-direct {v1, p0}, Lcom/twitter/android/composer/v;-><init>(Lcom/twitter/android/composer/ComposerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1530
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1532
    const v1, 0x7f04010a

    invoke-virtual {v2, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 1533
    new-instance v4, Lcom/twitter/android/composer/x;

    invoke-direct {v4, p0}, Lcom/twitter/android/composer/x;-><init>(Lcom/twitter/android/composer/ComposerActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1541
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1544
    if-nez p1, :cond_4

    invoke-static {}, Lcbb;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1545
    new-instance v1, Lcom/twitter/android/composer/PeriscopeBroadcastGalleryItem;

    invoke-direct {v1, p0}, Lcom/twitter/android/composer/PeriscopeBroadcastGalleryItem;-><init>(Landroid/content/Context;)V

    .line 1546
    invoke-static {p0}, Lcbb;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1547
    invoke-virtual {v1}, Lcom/twitter/android/composer/PeriscopeBroadcastGalleryItem;->c()V

    .line 1551
    :goto_2
    new-instance v4, Lcom/twitter/android/composer/y;

    invoke-direct {v4, p0}, Lcom/twitter/android/composer/y;-><init>(Lcom/twitter/android/composer/ComposerActivity;)V

    invoke-virtual {v1, v4}, Lcom/twitter/android/composer/PeriscopeBroadcastGalleryItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1560
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1561
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/twitter/android/composer/ComposerActivity;->aD:Z

    .line 1564
    :cond_4
    const v1, 0x7f040107

    .line 1565
    invoke-virtual {v2, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 1566
    new-instance v2, Lcom/twitter/android/composer/z;

    invoke-direct {v2, p0}, Lcom/twitter/android/composer/z;-><init>(Lcom/twitter/android/composer/ComposerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1574
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1576
    const v2, 0x7f050052

    .line 1577
    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 1578
    const v2, 0x7f050053

    .line 1579
    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    .line 1580
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 1581
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f120166

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1582
    new-instance v7, Landroid/view/GestureDetector;

    new-instance v8, Lcom/twitter/android/composer/aa;

    invoke-direct {v8, p0, v2, v4, v5}, Lcom/twitter/android/composer/aa;-><init>(Lcom/twitter/android/composer/ComposerActivity;Landroid/widget/FrameLayout;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    invoke-direct {v7, p0, v8}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 1602
    new-instance v8, Lcom/twitter/android/composer/ab;

    invoke-direct {v8, p0, v7, v2}, Lcom/twitter/android/composer/ab;-><init>(Lcom/twitter/android/composer/ComposerActivity;Landroid/view/GestureDetector;Landroid/widget/FrameLayout;)V

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_3

    .line 1549
    :cond_5
    invoke-virtual {v1}, Lcom/twitter/android/composer/PeriscopeBroadcastGalleryItem;->d()V

    goto :goto_2

    .line 1617
    :cond_6
    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1618
    const v2, 0x7f02011e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1620
    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1621
    const v1, 0x7f020121

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1622
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1624
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->A:[Landroid/widget/FrameLayout;

    .line 1625
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->A:[Landroid/widget/FrameLayout;

    goto/16 :goto_1
.end method

.method static synthetic f(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/composer/bi;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->h:Lcom/twitter/android/composer/bi;

    return-object v0
.end method

.method private f(Z)V
    .locals 4

    .prologue
    .line 1730
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->Q:Lcom/twitter/library/client/Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->Q:Lcom/twitter/library/client/Session;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/twitter/android/composer/ComposerActivity;->V:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1731
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v1

    iget-wide v2, p0, Lcom/twitter/android/composer/ComposerActivity;->V:J

    invoke-virtual {v1, v2, v3}, Lcom/twitter/library/client/bk;->b(J)Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bk;->c(Lcom/twitter/library/client/Session;)V

    .line 1733
    :cond_0
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->finish()V

    .line 1734
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aK:Lcom/twitter/android/composer/geotag/a;

    if-eqz v0, :cond_1

    .line 1735
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aK:Lcom/twitter/android/composer/geotag/a;

    iget-boolean v1, p0, Lcom/twitter/android/composer/ComposerActivity;->aa:Z

    iget v2, p0, Lcom/twitter/android/composer/ComposerActivity;->am:I

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/composer/geotag/a;->a(ZI)V

    .line 1737
    :cond_1
    const v0, 0x7f05003b

    const v1, 0x7f05003c

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/composer/ComposerActivity;->overridePendingTransition(II)V

    .line 1740
    invoke-static {p0}, Lcom/twitter/android/composer/ax;->a(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/composer/ax;

    move-result-object v0

    .line 1741
    invoke-virtual {v0}, Lcom/twitter/android/composer/ax;->v()J

    move-result-wide v2

    .line 1742
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2

    .line 1743
    iget-boolean v0, p0, Lcom/twitter/android/composer/ComposerActivity;->X:Z

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    .line 1744
    :goto_0
    invoke-static {}, Lcom/twitter/android/card/m;->b()Lcom/twitter/android/card/m;

    move-result-object v1

    invoke-virtual {v1, v2, v3, v0}, Lcom/twitter/android/card/m;->a(JI)V

    .line 1746
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->h:Lcom/twitter/android/composer/bi;

    invoke-virtual {v0}, Lcom/twitter/android/composer/bi;->a()V

    .line 1747
    return-void

    .line 1743
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(I)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 3122
    invoke-static {p0}, Lcom/twitter/android/widget/GalleryGridFragment;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3131
    :goto_0
    return v0

    .line 3125
    :cond_0
    new-instance v2, Lcom/twitter/android/runtimepermissions/b;

    const v3, 0x7f0a03d8

    .line 3126
    invoke-virtual {p0, v3}, Lcom/twitter/android/composer/ComposerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v5, v4, v1

    invoke-direct {v2, v3, p0, v4}, Lcom/twitter/android/runtimepermissions/b;-><init>(Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;)V

    const-string/jumbo v3, ":composition:gallery:"

    .line 3127
    invoke-virtual {v2, v3}, Lcom/twitter/android/runtimepermissions/b;->f(Ljava/lang/String;)Lcom/twitter/android/runtimepermissions/b;

    move-result-object v2

    .line 3128
    invoke-virtual {v2, v0}, Lcom/twitter/android/runtimepermissions/b;->a(Z)Lcom/twitter/android/runtimepermissions/b;

    move-result-object v0

    .line 3129
    invoke-virtual {v0}, Lcom/twitter/android/runtimepermissions/b;->a()Landroid/content/Intent;

    move-result-object v0

    .line 3130
    invoke-virtual {p0, v0, p1}, Lcom/twitter/android/composer/ComposerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    .line 3131
    goto :goto_0
.end method

.method static synthetic g(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->Q:Lcom/twitter/library/client/Session;

    return-object v0
.end method

.method private g(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3376
    invoke-static {p0, p1}, Lcom/twitter/android/media/camera/z;->a(Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3377
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->M:Lcom/twitter/android/media/selection/MediaAttachmentController;

    invoke-virtual {v0, v2, p1}, Lcom/twitter/android/media/selection/MediaAttachmentController;->a(ZI)V

    .line 3385
    :goto_0
    return-void

    .line 3379
    :cond_0
    const-string/jumbo v0, ":composition::twitter_camera"

    .line 3380
    invoke-static {p0, p1, v0}, Lcom/twitter/android/media/camera/z;->a(Landroid/app/Activity;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x205

    .line 3379
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/composer/ComposerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3382
    iput p1, p0, Lcom/twitter/android/composer/ComposerActivity;->ag:I

    .line 3383
    iput-boolean v2, p0, Lcom/twitter/android/composer/ComposerActivity;->au:Z

    goto :goto_0
.end method

.method private g(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2037
    if-eqz p1, :cond_0

    .line 2038
    new-instance v0, Lcom/twitter/android/widget/ec;

    const/16 v1, 0x201

    invoke-direct {v0, v1}, Lcom/twitter/android/widget/ec;-><init>(I)V

    const v1, 0x7f0a067f

    .line 2040
    invoke-virtual {p0, v1}, Lcom/twitter/android/composer/ComposerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->a(Ljava/lang/CharSequence;)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a026d

    .line 2041
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->f(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a0717

    .line 2042
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->d(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 2043
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/PromptDialogFragment;

    .line 2044
    new-instance v1, Lcom/twitter/android/composer/ad;

    invoke-direct {v1, p0}, Lcom/twitter/android/composer/ad;-><init>(Lcom/twitter/android/composer/ComposerActivity;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/PromptDialogFragment;->a(Lcom/twitter/app/common/base/m;)Lcom/twitter/app/common/base/BaseDialogFragment;

    .line 2071
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/PromptDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 2079
    :goto_0
    return-void

    .line 2073
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->av()V

    .line 2074
    const/4 v0, 0x3

    iput v0, p0, Lcom/twitter/android/composer/ComposerActivity;->Y:I

    .line 2075
    invoke-virtual {p0, v1}, Lcom/twitter/android/composer/ComposerActivity;->setResult(I)V

    .line 2076
    invoke-virtual {p0, v1}, Lcom/twitter/android/composer/ComposerActivity;->a(Z)V

    .line 2077
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->finish()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/composer/geotag/a;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aK:Lcom/twitter/android/composer/geotag/a;

    return-object v0
.end method

.method private i(Z)V
    .locals 5

    .prologue
    .line 2521
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ba;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2522
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a066f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/TweetBox;->setHintText(Ljava/lang/String;)V

    .line 2542
    :goto_0
    return-void

    .line 2526
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2527
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v1}, Lcom/twitter/android/composer/ba;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v1}, Lcom/twitter/android/composer/ba;->l()Lcom/twitter/model/core/ay;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2528
    :cond_1
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    const v2, 0x7f0a01f0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/android/composer/TweetBox;->setHintText(Ljava/lang/String;)V

    goto :goto_0

    .line 2532
    :cond_2
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v1}, Lcom/twitter/android/composer/ba;->h()Lcom/twitter/model/core/Tweet;

    move-result-object v1

    .line 2533
    if-eqz v1, :cond_5

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->al()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2534
    :cond_3
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v2}, Lcom/twitter/android/composer/ba;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    const v1, 0x7f0a0220

    .line 2535
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2537
    :goto_1
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v1, v0}, Lcom/twitter/android/composer/TweetBox;->setHintText(Ljava/lang/String;)V

    goto :goto_0

    .line 2535
    :cond_4
    const v2, 0x7f0a01fd

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 2536
    invoke-virtual {v1}, Lcom/twitter/model/core/Tweet;->d()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2541
    :cond_5
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    const v2, 0x7f0a01f6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/android/composer/TweetBox;->setHintText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/twitter/android/composer/ComposerActivity;)Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/twitter/android/composer/ComposerActivity;->af:Z

    return v0
.end method

.method static synthetic j(Lcom/twitter/android/composer/ComposerActivity;)I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/twitter/android/composer/ComposerActivity;->R:I

    return v0
.end method

.method private j(Z)V
    .locals 6

    .prologue
    .line 3182
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->aw()V

    .line 3184
    new-instance v0, Lcom/twitter/android/composer/ca;

    .line 3185
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->Q:Lcom/twitter/library/client/Session;

    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->j()Lcom/twitter/model/drafts/d;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/twitter/android/composer/ca;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/model/drafts/d;Z)V

    .line 3186
    sget-object v1, Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;->g:Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ca;->a(Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;)V

    .line 3190
    iget v1, p0, Lcom/twitter/android/composer/ComposerActivity;->Y:I

    if-nez v1, :cond_1

    .line 3191
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v1}, Lcom/twitter/android/composer/ba;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 3192
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "mDraftSaveState and mDraftId out of sync. Unsaved with draft id > 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 3195
    :cond_0
    new-instance v1, Lcom/twitter/android/composer/at;

    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->Q:Lcom/twitter/library/client/Session;

    iget-object v3, p0, Lcom/twitter/android/composer/ComposerActivity;->W:Lcom/twitter/library/client/bd;

    invoke-direct {v1, p0, v2, v3}, Lcom/twitter/android/composer/at;-><init>(Lcom/twitter/android/composer/ComposerActivity;Lcom/twitter/library/client/Session;Lcom/twitter/library/client/bd;)V

    iput-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->Z:Lcom/twitter/android/composer/at;

    .line 3196
    const/4 v1, 0x1

    iput v1, p0, Lcom/twitter/android/composer/ComposerActivity;->Y:I

    .line 3197
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->Z:Lcom/twitter/android/composer/at;

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ca;->a(Lcom/twitter/internal/android/service/c;)Lcom/twitter/internal/android/service/AsyncOperation;

    .line 3199
    :cond_1
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->W:Lcom/twitter/library/client/bd;

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 3200
    return-void
.end method

.method static synthetic k(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/media/widget/MediaAttachmentsView;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->k:Lcom/twitter/android/media/widget/MediaAttachmentsView;

    return-object v0
.end method

.method static synthetic l(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/media/selection/MediaAttachmentController;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->M:Lcom/twitter/android/media/selection/MediaAttachmentController;

    return-object v0
.end method

.method static synthetic m(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/widget/RevealClipFrameLayout;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->L:Lcom/twitter/android/widget/RevealClipFrameLayout;

    return-object v0
.end method

.method static synthetic n(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/media/imageeditor/EditImageFragment;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->az:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    return-object v0
.end method

.method static synthetic o(Lcom/twitter/android/composer/ComposerActivity;)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->ao()V

    return-void
.end method

.method static synthetic p(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/composer/by;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->ax:Lcom/twitter/android/composer/by;

    return-object v0
.end method

.method static synthetic q(Lcom/twitter/android/composer/ComposerActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->ay:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic r(Lcom/twitter/android/composer/ComposerActivity;)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->at()V

    return-void
.end method

.method static synthetic s(Lcom/twitter/android/composer/ComposerActivity;)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->ar()V

    return-void
.end method

.method static synthetic t(Lcom/twitter/android/composer/ComposerActivity;)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->ag()V

    return-void
.end method

.method static synthetic u(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/card/pollcompose/o;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aH:Lcom/twitter/android/card/pollcompose/o;

    return-object v0
.end method

.method static synthetic v(Lcom/twitter/android/composer/ComposerActivity;)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->C()V

    return-void
.end method

.method static synthetic w(Lcom/twitter/android/composer/ComposerActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->s:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic x(Lcom/twitter/android/composer/ComposerActivity;)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->aD()V

    return-void
.end method

.method static synthetic y(Lcom/twitter/android/composer/ComposerActivity;)Lwo;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aJ:Lwo;

    return-object v0
.end method

.method private y()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 710
    const v0, 0x7f130290

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 711
    const v1, 0x7f130295

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->y:Landroid/view/View;

    .line 712
    const v0, 0x7f130288

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->z:Landroid/view/View;

    .line 713
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->z:Landroid/view/View;

    const v1, 0x7f13028a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 714
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 715
    const v2, 0x7f020124

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 717
    const v2, 0x7f050020

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->aq:Landroid/view/animation/Animation;

    .line 719
    const v2, 0x7f050022

    .line 720
    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 721
    const v3, 0x7f050021

    .line 722
    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 723
    new-instance v4, Lcom/twitter/android/composer/ah;

    invoke-direct {v4, p0, v0, v1, v3}, Lcom/twitter/android/composer/ah;-><init>(Lcom/twitter/android/composer/ComposerActivity;Landroid/widget/ImageButton;Landroid/content/res/Resources;Landroid/view/animation/Animation;)V

    .line 724
    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 731
    iput-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->ar:Landroid/view/animation/Animation;

    .line 733
    new-instance v1, Lcom/twitter/android/composer/am;

    invoke-direct {v1, p0}, Lcom/twitter/android/composer/am;-><init>(Lcom/twitter/android/composer/ComposerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 740
    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->c:Landroid/widget/ImageButton;

    .line 742
    const v0, 0x7f130294

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/widget/UserImageView;

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->m:Lcom/twitter/library/media/widget/UserImageView;

    .line 743
    const v0, 0x7f130634

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->n:Landroid/widget/TextView;

    .line 746
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->m:Lcom/twitter/library/media/widget/UserImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Lcom/twitter/library/media/widget/UserImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 748
    const v0, 0x7f130187

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 749
    if-eqz v0, :cond_2

    .line 750
    :goto_0
    new-instance v1, Lcom/twitter/android/composer/an;

    invoke-direct {v1, p0}, Lcom/twitter/android/composer/an;-><init>(Lcom/twitter/android/composer/ComposerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 757
    const v0, 0x7f130291

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 758
    new-instance v1, Lcom/twitter/android/composer/ao;

    invoke-direct {v1, p0}, Lcom/twitter/android/composer/ao;-><init>(Lcom/twitter/android/composer/ComposerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 765
    const v0, 0x7f130289

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ToggleImageButton;

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->q:Lcom/twitter/android/widget/ToggleImageButton;

    .line 767
    const v0, 0x7f13028d

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/composer/ComposerCountView;

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->t:Lcom/twitter/android/composer/ComposerCountView;

    .line 768
    const v0, 0x7f13028f

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->x:Landroid/widget/Button;

    .line 769
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->x:Landroid/widget/Button;

    new-instance v1, Lcom/twitter/android/composer/ap;

    invoke-direct {v1, p0}, Lcom/twitter/android/composer/ap;-><init>(Lcom/twitter/android/composer/ComposerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 776
    const v0, 0x7f130292

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->o:Landroid/view/View;

    .line 777
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->o:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->o:Landroid/view/View;

    new-instance v1, Lcom/twitter/android/composer/aq;

    invoke-direct {v1, p0}, Lcom/twitter/android/composer/aq;-><init>(Lcom/twitter/android/composer/ComposerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 790
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->D()V

    .line 793
    :cond_0
    const v0, 0x7f130293

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->p:Landroid/widget/ImageButton;

    .line 795
    invoke-static {p0}, Lcom/twitter/android/util/v;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 796
    const v0, 0x7f13028b

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->r:Landroid/widget/ImageButton;

    .line 797
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->r:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 798
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->r:Landroid/widget/ImageButton;

    new-instance v1, Lcom/twitter/android/composer/b;

    invoke-direct {v1, p0}, Lcom/twitter/android/composer/b;-><init>(Lcom/twitter/android/composer/ComposerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 807
    invoke-static {p0}, Lcom/twitter/android/composer/ax;->a(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/composer/ax;

    move-result-object v0

    .line 808
    invoke-virtual {v0}, Lcom/twitter/android/composer/ax;->c()I

    move-result v0

    if-eq v0, v5, :cond_1

    .line 809
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->an:Lcom/twitter/android/composer/bq;

    const-string/jumbo v1, "found_media_tooltip"

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/bq;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 810
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->an:Lcom/twitter/android/composer/bq;

    const-string/jumbo v1, "found_media_tooltip"

    .line 811
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 810
    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/composer/bq;->a(Ljava/lang/String;Landroid/support/v4/app/FragmentManager;)V

    .line 815
    :cond_1
    return-void

    .line 749
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->m:Lcom/twitter/library/media/widget/UserImageView;

    goto/16 :goto_0
.end method

.method static synthetic z(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/composer/bq;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->an:Lcom/twitter/android/composer/bq;

    return-object v0
.end method

.method private z()V
    .locals 2

    .prologue
    .line 818
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->s:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 826
    :goto_0
    return-void

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ba;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aG:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    .line 823
    invoke-virtual {v0}, Lcom/twitter/android/composer/ba;->l()Lcom/twitter/model/core/ay;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 824
    :goto_1
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->s:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 825
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->s:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_0

    .line 823
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 825
    :cond_2
    const v0, 0x3e99999a    # 0.3f

    goto :goto_2
.end method


# virtual methods
.method public A()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2484
    iget-boolean v0, p0, Lcom/twitter/android/composer/ComposerActivity;->as:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/twitter/android/composer/ComposerActivity;->a(IZ)V

    .line 2485
    iput-boolean v1, p0, Lcom/twitter/android/composer/ComposerActivity;->as:Z

    .line 2486
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->k:Lcom/twitter/android/media/widget/MediaAttachmentsView;

    invoke-virtual {v0}, Lcom/twitter/android/media/widget/MediaAttachmentsView;->d()V

    .line 2487
    return-void

    :cond_0
    move v0, v2

    .line 2484
    goto :goto_0
.end method

.method public B()V
    .locals 1

    .prologue
    .line 2862
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/composer/ComposerActivity;->al:Z

    .line 2863
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->as()V

    .line 2864
    return-void
.end method

.method public E()Z
    .locals 1

    .prologue
    .line 1443
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 438
    const-string/jumbo v0, "android_tweet_composer_location_picker_end"

    .line 439
    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d0151

    .line 441
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 442
    const v0, 0x7f04008c

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->d(I)V

    .line 443
    invoke-virtual {p2, v2}, Lcom/twitter/app/common/base/y;->b(Z)V

    .line 444
    invoke-virtual {p2, v2}, Lcom/twitter/app/common/base/y;->a(Z)V

    .line 445
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->d(Z)V

    .line 446
    return-object p2

    .line 439
    :cond_0
    const v0, 0x7f0d0150

    goto :goto_0
.end method

.method public a(F)V
    .locals 2

    .prologue
    .line 2823
    iget v0, p0, Lcom/twitter/android/composer/ComposerActivity;->R:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2824
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->N:Lcom/twitter/android/widget/GalleryGridFragment;

    invoke-virtual {v0, p1}, Lcom/twitter/android/widget/GalleryGridFragment;->a(F)V

    .line 2826
    :cond_0
    return-void
.end method

.method a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2490
    iget-boolean v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aA:Z

    if-nez v0, :cond_0

    .line 2491
    iput-boolean v3, p0, Lcom/twitter/android/composer/ComposerActivity;->aA:Z

    .line 2492
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->h:Lcom/twitter/android/composer/bi;

    invoke-virtual {v0}, Lcom/twitter/android/composer/bi;->n()V

    .line 2494
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->t:Lcom/twitter/android/composer/ComposerCountView;

    invoke-virtual {v0, p1}, Lcom/twitter/android/composer/ComposerCountView;->a(I)I

    move-result v0

    .line 2495
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v1}, Lcom/twitter/android/composer/TweetBox;->o()Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/android/composer/ComposerActivity;->U:Z

    .line 2496
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->as()V

    .line 2497
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->C()V

    .line 2498
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->au()V

    .line 2499
    if-lez p1, :cond_1

    iget v1, p0, Lcom/twitter/android/composer/ComposerActivity;->Y:I

    if-nez v1, :cond_1

    .line 2500
    invoke-direct {p0, v2}, Lcom/twitter/android/composer/ComposerActivity;->j(Z)V

    .line 2502
    :cond_1
    if-eqz p1, :cond_3

    .line 2503
    iput-boolean v2, p0, Lcom/twitter/android/composer/ComposerActivity;->af:Z

    .line 2509
    :goto_0
    if-gez v0, :cond_2

    iget-boolean v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aB:Z

    if-nez v0, :cond_2

    .line 2510
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->h:Lcom/twitter/android/composer/bi;

    invoke-virtual {v0}, Lcom/twitter/android/composer/bi;->m()V

    .line 2511
    iput-boolean v3, p0, Lcom/twitter/android/composer/ComposerActivity;->aB:Z

    .line 2513
    :cond_2
    return-void

    .line 2505
    :cond_3
    invoke-direct {p0, v2}, Lcom/twitter/android/composer/ComposerActivity;->i(Z)V

    .line 2506
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->av()V

    .line 2507
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->D()V

    goto :goto_0
.end method

.method a(IZ)V
    .locals 1

    .prologue
    .line 1887
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/android/composer/ComposerActivity;->a(IZZ)V

    .line 1888
    return-void
.end method

.method a(IZZ)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1891
    iget v2, p0, Lcom/twitter/android/composer/ComposerActivity;->R:I

    if-eq v2, p1, :cond_0

    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->u:Lcom/twitter/android/widget/DraggableDrawerLayout;

    invoke-virtual {v2}, Lcom/twitter/android/widget/DraggableDrawerLayout;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2009
    :cond_0
    :goto_0
    return-void

    .line 1895
    :cond_1
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->u:Lcom/twitter/android/widget/DraggableDrawerLayout;

    invoke-virtual {v2}, Lcom/twitter/android/widget/DraggableDrawerLayout;->clearAnimation()V

    .line 1897
    iget-boolean v2, p0, Lcom/twitter/android/composer/ComposerActivity;->ae:Z

    if-nez v2, :cond_2

    .line 1900
    iput p1, p0, Lcom/twitter/android/composer/ComposerActivity;->S:I

    goto :goto_0

    .line 1904
    :cond_2
    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->ax()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    if-eq p1, v3, :cond_5

    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->L:Lcom/twitter/android/widget/RevealClipFrameLayout;

    .line 1905
    invoke-virtual {v2}, Lcom/twitter/android/widget/RevealClipFrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    move p1, v1

    .line 1909
    :cond_5
    if-ne p1, v0, :cond_6

    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->u:Lcom/twitter/android/widget/DraggableDrawerLayout;

    invoke-virtual {v2}, Lcom/twitter/android/widget/DraggableDrawerLayout;->getDrawerState()I

    move-result v2

    if-ne v2, v3, :cond_6

    .line 1911
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->u:Lcom/twitter/android/widget/DraggableDrawerLayout;

    invoke-virtual {v2}, Lcom/twitter/android/widget/DraggableDrawerLayout;->d()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1912
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->u:Lcom/twitter/android/widget/DraggableDrawerLayout;

    invoke-virtual {v2, p2}, Lcom/twitter/android/widget/DraggableDrawerLayout;->a(Z)V

    .line 1922
    :cond_6
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 1923
    packed-switch p1, :pswitch_data_0

    .line 1955
    :goto_1
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1957
    iput p1, p0, Lcom/twitter/android/composer/ComposerActivity;->R:I

    .line 1959
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->u:Lcom/twitter/android/widget/DraggableDrawerLayout;

    invoke-virtual {v2, v1}, Lcom/twitter/android/widget/DraggableDrawerLayout;->setExtendDrawerInUpState(Z)V

    .line 1960
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->u:Lcom/twitter/android/widget/DraggableDrawerLayout;

    invoke-virtual {v2, v1}, Lcom/twitter/android/widget/DraggableDrawerLayout;->setDrawerDraggable(Z)V

    .line 1961
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->u:Lcom/twitter/android/widget/DraggableDrawerLayout;

    invoke-virtual {v2, v0}, Lcom/twitter/android/widget/DraggableDrawerLayout;->setDraggableBelowUpPosition(Z)V

    .line 1962
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->u:Lcom/twitter/android/widget/DraggableDrawerLayout;

    invoke-virtual {v2, v1}, Lcom/twitter/android/widget/DraggableDrawerLayout;->setDispatchDragToChildren(Z)V

    .line 1963
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->u:Lcom/twitter/android/widget/DraggableDrawerLayout;

    invoke-virtual {v2, v1}, Lcom/twitter/android/widget/DraggableDrawerLayout;->setLocked(Z)V

    .line 1964
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->u:Lcom/twitter/android/widget/DraggableDrawerLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/twitter/android/widget/DraggableDrawerLayout;->setFullScreenHeaderView(Landroid/view/View;)V

    .line 1966
    packed-switch p1, :pswitch_data_1

    .line 2008
    :goto_2
    iput-boolean v1, p0, Lcom/twitter/android/composer/ComposerActivity;->af:Z

    goto :goto_0

    .line 1915
    :cond_7
    iput-boolean v0, p0, Lcom/twitter/android/composer/ComposerActivity;->al:Z

    .line 1916
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->u:Lcom/twitter/android/widget/DraggableDrawerLayout;

    invoke-virtual {v0, p2, v1}, Lcom/twitter/android/widget/DraggableDrawerLayout;->a(ZZ)V

    goto :goto_0

    .line 1925
    :pswitch_0
    iget-object v3, p0, Lcom/twitter/android/composer/ComposerActivity;->O:Lcom/twitter/android/widget/ComposerPoiFragment;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1926
    iget-object v3, p0, Lcom/twitter/android/composer/ComposerActivity;->P:Lcom/twitter/android/widget/ComposerSelectionFragment;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1927
    iget-object v3, p0, Lcom/twitter/android/composer/ComposerActivity;->N:Lcom/twitter/android/widget/GalleryGridFragment;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .line 1931
    :pswitch_1
    iget-object v3, p0, Lcom/twitter/android/composer/ComposerActivity;->N:Lcom/twitter/android/widget/GalleryGridFragment;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1932
    iget-object v3, p0, Lcom/twitter/android/composer/ComposerActivity;->P:Lcom/twitter/android/widget/ComposerSelectionFragment;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1933
    iget-object v3, p0, Lcom/twitter/android/composer/ComposerActivity;->O:Lcom/twitter/android/widget/ComposerPoiFragment;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .line 1937
    :pswitch_2
    iget-object v3, p0, Lcom/twitter/android/composer/ComposerActivity;->N:Lcom/twitter/android/widget/GalleryGridFragment;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1938
    iget-object v3, p0, Lcom/twitter/android/composer/ComposerActivity;->O:Lcom/twitter/android/widget/ComposerPoiFragment;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1939
    iget-object v3, p0, Lcom/twitter/android/composer/ComposerActivity;->P:Lcom/twitter/android/widget/ComposerSelectionFragment;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1940
    iget-object v3, p0, Lcom/twitter/android/composer/ComposerActivity;->P:Lcom/twitter/android/widget/ComposerSelectionFragment;

    invoke-virtual {v3}, Lcom/twitter/android/widget/ComposerSelectionFragment;->o()V

    goto :goto_1

    .line 1945
    :pswitch_3
    iget-object v3, p0, Lcom/twitter/android/composer/ComposerActivity;->N:Lcom/twitter/android/widget/GalleryGridFragment;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1946
    iget-object v3, p0, Lcom/twitter/android/composer/ComposerActivity;->O:Lcom/twitter/android/widget/ComposerPoiFragment;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1947
    iget-object v3, p0, Lcom/twitter/android/composer/ComposerActivity;->P:Lcom/twitter/android/widget/ComposerSelectionFragment;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .line 1968
    :pswitch_4
    iput-boolean v0, p0, Lcom/twitter/android/composer/ComposerActivity;->ac:Z

    .line 1969
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v2, v0}, Lcom/twitter/android/composer/TweetBox;->a(Z)V

    goto :goto_2

    .line 1973
    :pswitch_5
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/TweetBox;->a(Z)V

    .line 1974
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->N:Lcom/twitter/android/widget/GalleryGridFragment;

    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->u:Lcom/twitter/android/widget/DraggableDrawerLayout;

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/GalleryGridFragment;->a(Lcom/twitter/android/widget/DraggableDrawerLayout;)V

    .line 1975
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->u:Lcom/twitter/android/widget/DraggableDrawerLayout;

    invoke-virtual {v0, p2, p3}, Lcom/twitter/android/widget/DraggableDrawerLayout;->a(ZZ)V

    .line 1976
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->k:Lcom/twitter/android/media/widget/MediaAttachmentsView;

    invoke-virtual {v0}, Lcom/twitter/android/media/widget/MediaAttachmentsView;->e()V

    goto :goto_2

    .line 1980
    :pswitch_6
    iput-boolean v1, p0, Lcom/twitter/android/composer/ComposerActivity;->ac:Z

    .line 1981
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v2, v1}, Lcom/twitter/android/composer/TweetBox;->a(Z)V

    .line 1982
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->u:Lcom/twitter/android/widget/DraggableDrawerLayout;

    invoke-virtual {v2, v0}, Lcom/twitter/android/widget/DraggableDrawerLayout;->setLocked(Z)V

    .line 1983
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->u:Lcom/twitter/android/widget/DraggableDrawerLayout;

    invoke-virtual {v0, p2, p3}, Lcom/twitter/android/widget/DraggableDrawerLayout;->a(ZZ)V

    goto :goto_2

    .line 1987
    :pswitch_7
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    if-nez p3, :cond_8

    :goto_3
    invoke-virtual {v2, v0}, Lcom/twitter/android/composer/TweetBox;->a(Z)V

    .line 1988
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->P:Lcom/twitter/android/widget/ComposerSelectionFragment;

    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->u:Lcom/twitter/android/widget/DraggableDrawerLayout;

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/ComposerSelectionFragment;->a(Lcom/twitter/android/widget/DraggableDrawerLayout;)V

    .line 1989
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->u:Lcom/twitter/android/widget/DraggableDrawerLayout;

    invoke-virtual {v0, p2, p3}, Lcom/twitter/android/widget/DraggableDrawerLayout;->a(ZZ)V

    .line 1990
    if-nez p3, :cond_9

    .line 1991
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v0}, Lcom/twitter/android/composer/TweetBox;->j()Z

    goto/16 :goto_2

    :cond_8
    move v0, v1

    .line 1987
    goto :goto_3

    .line 1993
    :cond_9
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->P:Lcom/twitter/android/widget/ComposerSelectionFragment;

    invoke-virtual {v0}, Lcom/twitter/android/widget/ComposerSelectionFragment;->f()V

    .line 1994
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->P:Lcom/twitter/android/widget/ComposerSelectionFragment;

    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v2}, Lcom/twitter/android/composer/TweetBox;->getTokenAtCursor()Lsv;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/ComposerSelectionFragment;->a(Lsv;)V

    goto/16 :goto_2

    .line 1999
    :pswitch_8
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->u:Lcom/twitter/android/widget/DraggableDrawerLayout;

    invoke-virtual {v0, p2}, Lcom/twitter/android/widget/DraggableDrawerLayout;->a(Z)V

    .line 2000
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/TweetBox;->a(Z)V

    goto/16 :goto_2

    .line 1923
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1966
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public a(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 2818
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 2819
    return-void
.end method

.method a(Landroid/net/Uri;Z)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 2912
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v0, p1}, Lcom/twitter/android/composer/ba;->a(Landroid/net/Uri;)Lcom/twitter/model/drafts/DraftAttachment;

    move-result-object v0

    .line 2913
    if-nez v0, :cond_0

    .line 2967
    :goto_0
    return-void

    .line 2918
    :cond_0
    sget-object v1, Lcom/twitter/android/composer/al;->a:[I

    iget-object v0, v0, Lcom/twitter/model/drafts/DraftAttachment;->g:Lcom/twitter/media/model/MediaType;

    invoke-virtual {v0}, Lcom/twitter/media/model/MediaType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 2934
    const-string/jumbo v0, ""

    .line 2938
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2939
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->Q:Lcom/twitter/library/client/Session;

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, ":composition::"

    aput-object v3, v2, v5

    aput-object v0, v2, v6

    const-string/jumbo v0, ":dismiss"

    aput-object v0, v2, v7

    .line 2940
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 2939
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 2943
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->M:Lcom/twitter/android/media/selection/MediaAttachmentController;

    invoke-virtual {v0, p1}, Lcom/twitter/android/media/selection/MediaAttachmentController;->a(Landroid/net/Uri;)V

    .line 2945
    invoke-direct {p0, p1}, Lcom/twitter/android/composer/ComposerActivity;->b(Landroid/net/Uri;)V

    .line 2946
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->k:Lcom/twitter/android/media/widget/MediaAttachmentsView;

    invoke-virtual {v0}, Lcom/twitter/android/media/widget/MediaAttachmentsView;->getMediaCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 2947
    invoke-direct {p0, v4}, Lcom/twitter/android/composer/ComposerActivity;->b(I)V

    .line 2948
    invoke-direct {p0, v4}, Lcom/twitter/android/composer/ComposerActivity;->d(I)V

    .line 2949
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v0}, Lcom/twitter/android/composer/TweetBox;->g()V

    .line 2950
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->at:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/twitter/android/composer/ComposerActivity;->R:I

    if-eq v0, v7, :cond_3

    .line 2951
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->k:Lcom/twitter/android/media/widget/MediaAttachmentsView;

    invoke-virtual {v0}, Lcom/twitter/android/media/widget/MediaAttachmentsView;->getMeasuredHeight()I

    move-result v1

    .line 2952
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->at:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 2953
    new-array v2, v6, [F

    neg-int v1, v1

    int-to-float v1, v1

    aput v1, v2, v5

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 2954
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 2959
    :goto_2
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2960
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->az()V

    .line 2965
    :cond_2
    :goto_3
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->aA()V

    .line 2966
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->z()V

    goto/16 :goto_0

    .line 2920
    :pswitch_0
    const-string/jumbo v0, "photo"

    goto :goto_1

    .line 2925
    :pswitch_1
    const-string/jumbo v0, "video"

    goto :goto_1

    .line 2929
    :pswitch_2
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->l:Lcom/twitter/android/widget/FoundMediaAttributionView;

    invoke-virtual {v0, v4}, Lcom/twitter/android/widget/FoundMediaAttributionView;->setVisibility(I)V

    .line 2930
    const-string/jumbo v0, "gif"

    goto/16 :goto_1

    .line 2956
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->k:Lcom/twitter/android/media/widget/MediaAttachmentsView;

    invoke-virtual {v0}, Lcom/twitter/android/media/widget/MediaAttachmentsView;->c()V

    goto :goto_2

    .line 2962
    :cond_4
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->c:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->ar:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3

    .line 2918
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method a(Lcmf;Lsv;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<",
            "Lcom/twitter/android/provider/m;",
            ">;",
            "Lsv;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 3261
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->u:Lcom/twitter/android/widget/DraggableDrawerLayout;

    invoke-virtual {v0}, Lcom/twitter/android/widget/DraggableDrawerLayout;->getDrawerState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 3262
    invoke-virtual {p1}, Lcmf;->bb_()I

    move-result v0

    if-lez v0, :cond_2

    .line 3263
    iget v0, p0, Lcom/twitter/android/composer/ComposerActivity;->R:I

    if-eq v0, v3, :cond_0

    .line 3264
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->h:Lcom/twitter/android/composer/bi;

    const-string/jumbo v1, "show"

    invoke-virtual {v0, p2, v1}, Lcom/twitter/android/composer/bi;->a(Lsv;Ljava/lang/String;)V

    .line 3266
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v2, v0}, Lcom/twitter/android/composer/ComposerActivity;->a(IZZ)V

    .line 3271
    :cond_1
    :goto_0
    return-void

    .line 3267
    :cond_2
    iget v0, p0, Lcom/twitter/android/composer/ComposerActivity;->R:I

    if-ne v0, v3, :cond_1

    .line 3268
    invoke-virtual {p0, v2, v2}, Lcom/twitter/android/composer/ComposerActivity;->a(IZ)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/media/EditableImage;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2546
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {p1}, Lcom/twitter/model/media/EditableImage;->d()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ba;->c(Landroid/net/Uri;)Z

    move-result v0

    .line 2547
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {p1}, Lcom/twitter/model/media/EditableImage;->g()Lcom/twitter/media/model/MediaType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/android/composer/ba;->a(Lcom/twitter/media/model/MediaType;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2548
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->h:Lcom/twitter/android/composer/bi;

    invoke-virtual {v1, p1, p2}, Lcom/twitter/android/composer/bi;->a(Lcom/twitter/model/media/EditableImage;Ljava/lang/String;)V

    .line 2549
    if-nez v0, :cond_1

    .line 2550
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->h:Lcom/twitter/android/composer/bi;

    invoke-virtual {v0}, Lcom/twitter/android/composer/bi;->d()V

    .line 2552
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->Q:Lcom/twitter/library/client/Session;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/Session;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/twitter/android/media/imageeditor/stickers/c;->a(JLcom/twitter/model/media/EditableImage;)V

    .line 2553
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->M:Lcom/twitter/android/media/selection/MediaAttachmentController;

    new-instance v1, Lcom/twitter/android/composer/as;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/twitter/android/composer/as;-><init>(Lcom/twitter/android/composer/ComposerActivity;Z)V

    invoke-virtual {v0, p1, v1}, Lcom/twitter/android/media/selection/MediaAttachmentController;->a(Lcom/twitter/model/media/EditableMedia;Lcom/twitter/android/media/selection/AttachMediaListener;)V

    .line 2554
    iget v0, p0, Lcom/twitter/android/composer/ComposerActivity;->R:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2555
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->N:Lcom/twitter/android/widget/GalleryGridFragment;

    invoke-virtual {v0, p1}, Lcom/twitter/android/widget/GalleryGridFragment;->a(Lcom/twitter/model/media/EditableImage;)V

    .line 2558
    :cond_2
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->am()V

    .line 2559
    return-void
.end method

.method public a(Lcom/twitter/model/media/EditableMedia;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2425
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {p1}, Lcom/twitter/model/media/EditableMedia;->e()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ba;->c(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2426
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->M:Lcom/twitter/android/media/selection/MediaAttachmentController;

    .line 2427
    invoke-virtual {p1}, Lcom/twitter/model/media/EditableMedia;->d()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/composer/as;

    invoke-direct {v2, p0, v4}, Lcom/twitter/android/composer/as;-><init>(Lcom/twitter/android/composer/ComposerActivity;Z)V

    .line 2426
    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/media/selection/MediaAttachmentController;->a(Landroid/net/Uri;Lcom/twitter/android/media/selection/AttachMediaListener;)V

    .line 2438
    :cond_0
    :goto_0
    iput-boolean v3, p0, Lcom/twitter/android/composer/ComposerActivity;->as:Z

    .line 2439
    :goto_1
    return-void

    .line 2429
    :cond_1
    invoke-virtual {p1}, Lcom/twitter/model/media/EditableMedia;->g()Lcom/twitter/media/model/MediaType;

    move-result-object v0

    sget-object v1, Lcom/twitter/media/model/MediaType;->d:Lcom/twitter/media/model/MediaType;

    if-ne v0, v1, :cond_2

    .line 2430
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/twitter/android/composer/ComposerActivity;->a(Lcom/twitter/model/media/EditableMedia;Landroid/view/View;)V

    goto :goto_0

    .line 2431
    :cond_2
    invoke-virtual {p1}, Lcom/twitter/model/media/EditableMedia;->d()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Lcom/twitter/model/media/EditableMedia;->g()Lcom/twitter/media/model/MediaType;

    move-result-object v1

    invoke-direct {p0, v0, v1, v4}, Lcom/twitter/android/composer/ComposerActivity;->a(Landroid/net/Uri;Lcom/twitter/media/model/MediaType;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2432
    new-instance v0, Lcom/twitter/model/drafts/DraftAttachment;

    invoke-direct {v0, p1}, Lcom/twitter/model/drafts/DraftAttachment;-><init>(Lcom/twitter/model/media/EditableMedia;)V

    new-instance v1, Lcom/twitter/android/composer/as;

    invoke-direct {v1, p0, v3}, Lcom/twitter/android/composer/as;-><init>(Lcom/twitter/android/composer/ComposerActivity;Z)V

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/composer/ComposerActivity;->a(Lcom/twitter/model/drafts/DraftAttachment;Lcom/twitter/android/media/selection/AttachMediaListener;)V

    .line 2433
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ba;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 2434
    invoke-virtual {p0, v4, v3}, Lcom/twitter/android/composer/ComposerActivity;->a(IZ)V

    goto :goto_1
.end method

.method public a(Lcom/twitter/model/media/EditableMedia;Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 2443
    invoke-virtual {p1}, Lcom/twitter/model/media/EditableMedia;->d()Landroid/net/Uri;

    move-result-object v0

    .line 2444
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v1, v0}, Lcom/twitter/android/composer/ba;->c(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    .line 2445
    invoke-virtual {p1}, Lcom/twitter/model/media/EditableMedia;->g()Lcom/twitter/media/model/MediaType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/android/composer/ba;->a(Lcom/twitter/media/model/MediaType;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2472
    :cond_0
    :goto_0
    return-void

    .line 2448
    :cond_1
    instance-of v1, p1, Lcom/twitter/model/media/EditableImage;

    if-eqz v1, :cond_4

    .line 2449
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v1, v0}, Lcom/twitter/android/composer/ba;->c(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->k:Lcom/twitter/android/media/widget/MediaAttachmentsView;

    .line 2452
    :goto_1
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->k:Lcom/twitter/android/media/widget/MediaAttachmentsView;

    if-ne v0, v1, :cond_2

    .line 2453
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->k:Lcom/twitter/android/media/widget/MediaAttachmentsView;

    move-object v1, p1

    check-cast v1, Lcom/twitter/model/media/EditableImage;

    invoke-virtual {v2, v1}, Lcom/twitter/android/media/widget/MediaAttachmentsView;->setSelectedImage(Lcom/twitter/model/media/EditableImage;)V

    .line 2458
    :cond_2
    invoke-static {p2}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/twitter/android/composer/ComposerActivity;->L:Lcom/twitter/android/widget/RevealClipFrameLayout;

    move-object v4, p1

    check-cast v4, Lcom/twitter/model/media/EditableImage;

    const-string/jumbo v5, "composer"

    move-object v1, p0

    .line 2455
    invoke-static/range {v0 .. v5}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->a(Lcom/twitter/android/media/imageeditor/x;Lcom/twitter/android/media/imageeditor/y;Landroid/view/View;Lcom/twitter/android/widget/RevealClipFrameLayout;Lcom/twitter/model/media/EditableImage;Ljava/lang/String;)Lcom/twitter/android/media/imageeditor/EditImageFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->az:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    .line 2462
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->az:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    if-eqz v0, :cond_0

    .line 2463
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->L:Lcom/twitter/android/widget/RevealClipFrameLayout;

    invoke-virtual {v1}, Lcom/twitter/android/widget/RevealClipFrameLayout;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->az:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    const-string/jumbo v3, "image_edit"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 2464
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 2449
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->N:Lcom/twitter/android/widget/GalleryGridFragment;

    goto :goto_1

    .line 2466
    :cond_4
    instance-of v0, p1, Lcom/twitter/model/media/EditableAnimatedGif;

    if-eqz v0, :cond_5

    .line 2467
    new-instance v0, Lcom/twitter/model/drafts/DraftAttachment;

    invoke-direct {v0, p1}, Lcom/twitter/model/drafts/DraftAttachment;-><init>(Lcom/twitter/model/media/EditableMedia;)V

    new-instance v1, Lcom/twitter/android/composer/as;

    invoke-direct {v1, p0, v3}, Lcom/twitter/android/composer/as;-><init>(Lcom/twitter/android/composer/ComposerActivity;Z)V

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/composer/ComposerActivity;->a(Lcom/twitter/model/drafts/DraftAttachment;Lcom/twitter/android/media/selection/AttachMediaListener;)V

    .line 2468
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/twitter/android/composer/ComposerActivity;->a(IZ)V

    goto :goto_0

    .line 2470
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/composer/ComposerActivity;->b(Lcom/twitter/model/media/EditableMedia;Landroid/view/View;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1097
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v2

    .line 1098
    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 1100
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1101
    invoke-virtual {v2, p1}, Lcom/twitter/library/client/bk;->b(Ljava/lang/String;)Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 1102
    invoke-virtual {v2, v0}, Lcom/twitter/library/client/bk;->c(Lcom/twitter/library/client/Session;)V

    .line 1105
    :goto_0
    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->Q:Lcom/twitter/library/client/Session;

    .line 1107
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    .line 1108
    sget-boolean v2, Lcom/twitter/android/composer/ComposerActivity;->d:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1109
    :cond_0
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->m:Lcom/twitter/library/media/widget/UserImageView;

    invoke-virtual {v2, v0}, Lcom/twitter/library/media/widget/UserImageView;->a(Lcom/twitter/model/core/TwitterUser;)Z

    .line 1110
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->n:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 1111
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->n:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/twitter/model/core/TwitterUser;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1114
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aK:Lcom/twitter/android/composer/geotag/a;

    invoke-virtual {v0}, Lcom/twitter/android/composer/geotag/a;->c()V

    .line 1115
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->D()V

    .line 1118
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->aw()V

    .line 1120
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ba;->c()J

    move-result-wide v2

    .line 1121
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->W:Lcom/twitter/library/client/bd;

    invoke-static {v2, v3, p0, v1, v0}, Lcom/twitter/android/composer/ComposerActivity;->b(JLandroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/library/client/bd;)V

    .line 1122
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/composer/ba;->a(J)V

    .line 1123
    iput v4, p0, Lcom/twitter/android/composer/ComposerActivity;->Y:I

    .line 1124
    invoke-direct {p0, v4}, Lcom/twitter/android/composer/ComposerActivity;->j(Z)V

    .line 1127
    invoke-static {}, Lcom/twitter/android/bo;->a()V

    .line 1130
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->at()V

    .line 1132
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aJ:Lwo;

    invoke-virtual {v0}, Lwo;->b()V

    .line 1133
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method a(Ljava/lang/String;Lsv;I)V
    .locals 2

    .prologue
    .line 3280
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v0, p1}, Lcom/twitter/android/composer/TweetBox;->a(Ljava/lang/String;)V

    .line 3281
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->h:Lcom/twitter/android/composer/bi;

    const-string/jumbo v1, "select"

    invoke-virtual {v0, p2, v1, p3}, Lcom/twitter/android/composer/bi;->a(Lsv;Ljava/lang/String;I)V

    .line 3282
    return-void
.end method

.method a(Ljava/util/List;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/android/media/selection/MediaAttachment;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 2579
    iget v0, p0, Lcom/twitter/android/composer/ComposerActivity;->ag:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/twitter/android/composer/ComposerActivity;->ah:Z

    if-nez v0, :cond_1

    .line 2586
    iput-boolean v9, p0, Lcom/twitter/android/composer/ComposerActivity;->aj:Z

    .line 2691
    :cond_0
    :goto_0
    return-void

    .line 2589
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/twitter/util/collection/MutableList;->a(I)Ljava/util/List;

    move-result-object v3

    .line 2590
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/media/selection/MediaAttachment;

    .line 2592
    iget v5, v0, Lcom/twitter/android/media/selection/MediaAttachment;->a:I

    if-ne v5, v9, :cond_4

    iget-object v5, v0, Lcom/twitter/android/media/selection/MediaAttachment;->b:Lcom/twitter/android/media/selection/AttachMediaListener$MediaAttachFailure;

    sget-object v6, Lcom/twitter/android/media/selection/AttachMediaListener$MediaAttachFailure;->e:Lcom/twitter/android/media/selection/AttachMediaListener$MediaAttachFailure;

    if-eq v5, v6, :cond_4

    .line 2593
    invoke-virtual {v0}, Lcom/twitter/android/media/selection/MediaAttachment;->a()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/twitter/android/composer/ComposerActivity;->b(Landroid/net/Uri;)V

    .line 2594
    invoke-virtual {v0}, Lcom/twitter/android/media/selection/MediaAttachment;->a()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p0, v5, v1}, Lcom/twitter/android/composer/ComposerActivity;->a(Landroid/net/Uri;Z)V

    .line 2595
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->aq()V

    .line 2596
    iget-object v0, v0, Lcom/twitter/android/media/selection/MediaAttachment;->b:Lcom/twitter/android/media/selection/AttachMediaListener$MediaAttachFailure;

    sget-object v5, Lcom/twitter/android/media/selection/AttachMediaListener$MediaAttachFailure;->d:Lcom/twitter/android/media/selection/AttachMediaListener$MediaAttachFailure;

    if-ne v0, v5, :cond_3

    .line 2597
    invoke-static {p0}, Lacb;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/twitter/util/ui/r;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2599
    :cond_3
    const v0, 0x7f0a049a

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 2601
    :cond_4
    iget-object v5, v0, Lcom/twitter/android/media/selection/MediaAttachment;->b:Lcom/twitter/android/media/selection/AttachMediaListener$MediaAttachFailure;

    sget-object v6, Lcom/twitter/android/media/selection/AttachMediaListener$MediaAttachFailure;->a:Lcom/twitter/android/media/selection/AttachMediaListener$MediaAttachFailure;

    if-ne v5, v6, :cond_2

    .line 2602
    invoke-virtual {v0}, Lcom/twitter/android/media/selection/MediaAttachment;->d()Lcom/twitter/model/drafts/DraftAttachment;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2606
    :cond_5
    invoke-direct {p0, v3}, Lcom/twitter/android/composer/ComposerActivity;->c(Ljava/util/List;)V

    .line 2608
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->k:Lcom/twitter/android/media/widget/MediaAttachmentsView;

    invoke-virtual {v0}, Lcom/twitter/android/media/widget/MediaAttachmentsView;->getCount()I

    move-result v4

    .line 2610
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->k:Lcom/twitter/android/media/widget/MediaAttachmentsView;

    invoke-virtual {v0, v1}, Lcom/twitter/android/media/widget/MediaAttachmentsView;->setVisibility(I)V

    .line 2611
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->k:Lcom/twitter/android/media/widget/MediaAttachmentsView;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/media/widget/MediaAttachmentsView;->a(Ljava/util/List;Z)Z

    .line 2613
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 2614
    if-ne v5, v9, :cond_6

    sget-object v0, Lcom/twitter/android/composer/ComposerType;->a:Lcom/twitter/android/composer/ComposerType;

    invoke-static {v0}, Lcom/twitter/android/util/v;->a(Lcom/twitter/android/composer/ComposerType;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2615
    :cond_6
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->l:Lcom/twitter/android/widget/FoundMediaAttributionView;

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/FoundMediaAttributionView;->setVisibility(I)V

    .line 2623
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2624
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v0}, Lcom/twitter/android/composer/TweetBox;->g()V

    .line 2628
    :goto_3
    invoke-direct {p0, v1}, Lcom/twitter/android/composer/ComposerActivity;->i(Z)V

    .line 2630
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->a(Lcom/twitter/model/av/o;)V

    .line 2631
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->an()V

    .line 2633
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->Q:Lcom/twitter/library/client/Session;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    .line 2634
    invoke-static {v3}, Lcom/twitter/android/composer/ComposerActivity;->a(Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 2635
    invoke-direct {p0, v2}, Lcom/twitter/android/composer/ComposerActivity;->b(I)V

    .line 2636
    invoke-direct {p0, v2}, Lcom/twitter/android/composer/ComposerActivity;->d(I)V

    .line 2672
    :cond_7
    :goto_4
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->aq()V

    .line 2673
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->as()V

    .line 2675
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2676
    if-lez v5, :cond_e

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/drafts/DraftAttachment;

    iget-object v0, v0, Lcom/twitter/model/drafts/DraftAttachment;->g:Lcom/twitter/media/model/MediaType;

    sget-object v1, Lcom/twitter/media/model/MediaType;->b:Lcom/twitter/media/model/MediaType;

    if-ne v0, v1, :cond_e

    .line 2677
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->c:Landroid/widget/ImageButton;

    const v1, 0x7f020125

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2678
    if-ne v5, v9, :cond_8

    if-nez v4, :cond_8

    .line 2679
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->c:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->aq:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2685
    :cond_8
    :goto_5
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->ag()V

    .line 2687
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->an:Lcom/twitter/android/composer/bq;

    const-string/jumbo v1, "stickers_composer_tooltip"

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/bq;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2689
    invoke-static {p0}, Lcom/twitter/android/composer/ComposerActivity;->G(Lcom/twitter/android/composer/ComposerActivity;)V

    goto/16 :goto_0

    .line 2617
    :cond_9
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/drafts/DraftAttachment;

    .line 2618
    iget-object v0, v0, Lcom/twitter/model/drafts/DraftAttachment;->h:Lcom/twitter/model/media/MediaSource;

    invoke-virtual {v0}, Lcom/twitter/model/media/MediaSource;->c()Lcom/twitter/model/media/foundmedia/FoundMediaProvider;

    move-result-object v0

    .line 2619
    iget-object v6, p0, Lcom/twitter/android/composer/ComposerActivity;->l:Lcom/twitter/android/widget/FoundMediaAttributionView;

    invoke-virtual {v6, v0}, Lcom/twitter/android/widget/FoundMediaAttributionView;->setProvider(Lcom/twitter/model/media/foundmedia/FoundMediaProvider;)V

    .line 2620
    iget-object v6, p0, Lcom/twitter/android/composer/ComposerActivity;->l:Lcom/twitter/android/widget/FoundMediaAttributionView;

    if-eqz v0, :cond_a

    move v0, v1

    :goto_6
    invoke-virtual {v6, v0}, Lcom/twitter/android/widget/FoundMediaAttributionView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_a
    move v0, v2

    goto :goto_6

    .line 2626
    :cond_b
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v0}, Lcom/twitter/android/composer/TweetBox;->f()V

    goto/16 :goto_3

    .line 2637
    :cond_c
    iget-boolean v2, v0, Lcom/twitter/model/core/TwitterUser;->m:Z

    if-eqz v2, :cond_d

    iget v0, v0, Lcom/twitter/model/core/TwitterUser;->Q:I

    if-lez v0, :cond_7

    .line 2638
    :cond_d
    invoke-static {v3}, Lcuk;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->b(Ljava/util/List;)V

    .line 2639
    new-instance v0, Lcom/twitter/android/composer/ae;

    invoke-direct {v0, p0}, Lcom/twitter/android/composer/ae;-><init>(Lcom/twitter/android/composer/ComposerActivity;)V

    .line 2646
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->D:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v2, v0}, Lcom/twitter/ui/widget/TwitterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2647
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->E:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v2, v0}, Lcom/twitter/ui/widget/TwitterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2649
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f02c3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2651
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->D:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/TwitterButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2652
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 2654
    iget-object v7, p0, Lcom/twitter/android/composer/ComposerActivity;->D:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v7}, Lcom/twitter/ui/widget/TwitterButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    new-instance v8, Lcom/twitter/android/composer/af;

    invoke-direct {v8, p0, v0, v6, v2}, Lcom/twitter/android/composer/af;-><init>(Lcom/twitter/android/composer/ComposerActivity;Landroid/view/View;Landroid/graphics/Rect;I)V

    invoke-virtual {v7, v8}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto/16 :goto_4

    .line 2682
    :cond_e
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->c:Landroid/widget/ImageButton;

    const v1, 0x7f020124

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5
.end method

.method a(Z)V
    .locals 1

    .prologue
    .line 2396
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v0, p1}, Lcom/twitter/android/composer/TweetBox;->a(Z)V

    .line 2397
    if-eqz p1, :cond_0

    .line 2398
    const/4 v0, 0x1

    iput v0, p0, Lcom/twitter/android/composer/ComposerActivity;->R:I

    .line 2400
    :cond_0
    return-void
.end method

.method public a(Lcyg;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1454
    invoke-interface {p1}, Lcyg;->j()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/ToolBar;

    .line 1455
    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/ToolBar;->setDisplayShowHomeAsUpEnabled(Z)V

    .line 1456
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Lcyg;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/ToolBar;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3287
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aK:Lcom/twitter/android/composer/geotag/a;

    invoke-virtual {v0}, Lcom/twitter/android/composer/geotag/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V
    .locals 12

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 451
    const-string/jumbo v0, "composer:complete"

    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->K()Layj;

    move-result-object v1

    sget-object v5, Laxz;->m:Laye;

    invoke-static {v0, v1, v5}, Layp;->a(Ljava/lang/String;Layj;Laye;)Layp;

    move-result-object v0

    .line 452
    invoke-virtual {v0}, Layp;->i()V

    .line 456
    iput-boolean v3, p0, Lcom/twitter/android/composer/ComposerActivity;->ae:Z

    .line 458
    invoke-static {p0}, Lcom/twitter/android/composer/ax;->a(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/composer/ax;

    move-result-object v6

    .line 460
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->h:Lcom/twitter/android/composer/bi;

    invoke-virtual {v6}, Lcom/twitter/android/composer/ax;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/bi;->a(Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->h:Lcom/twitter/android/composer/bi;

    invoke-virtual {v6}, Lcom/twitter/android/composer/ax;->t()Lcom/twitter/library/scribe/ScribeItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/bi;->a(Lcom/twitter/library/scribe/ScribeItem;)V

    .line 463
    invoke-virtual {v6}, Lcom/twitter/android/composer/ax;->d()Lcom/twitter/android/composer/br;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->b:Lcom/twitter/android/composer/br;

    .line 465
    invoke-static {p0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->W:Lcom/twitter/library/client/bd;

    .line 467
    invoke-virtual {v6}, Lcom/twitter/android/composer/ax;->i()Ljava/lang/String;

    move-result-object v0

    .line 468
    if-nez p1, :cond_0

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bk;->b(Ljava/lang/String;)Lcom/twitter/library/client/Session;

    move-result-object v0

    move-object v1, v0

    .line 470
    :goto_0
    iput-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->Q:Lcom/twitter/library/client/Session;

    .line 475
    if-eqz p1, :cond_3

    .line 476
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v0, p1}, Lcom/twitter/android/composer/ba;->a(Landroid/os/Bundle;)V

    .line 477
    const/4 v5, 0x0

    .line 478
    const-string/jumbo v0, "original_owner_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/twitter/android/composer/ComposerActivity;->V:J

    .line 479
    const-string/jumbo v0, "loaded_from_draft"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aa:Z

    .line 480
    const-string/jumbo v0, "tweet_posted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/composer/ComposerActivity;->X:Z

    .line 481
    const-string/jumbo v0, "conversation_card_data"

    sget-object v6, Lclw;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v6}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclw;

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aF:Lclw;

    .line 483
    const-string/jumbo v0, "current_drawer"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 484
    const-string/jumbo v6, "current_drawer_state"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 485
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v4, :cond_1

    if-ne v0, v8, :cond_1

    if-ne v6, v4, :cond_1

    .line 487
    iput v2, p0, Lcom/twitter/android/composer/ComposerActivity;->S:I

    .line 488
    iput v2, p0, Lcom/twitter/android/composer/ComposerActivity;->T:I

    .line 489
    iput-boolean v2, p0, Lcom/twitter/android/composer/ComposerActivity;->av:Z

    .line 497
    :goto_1
    const-string/jumbo v0, "show_link_hint"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/composer/ComposerActivity;->ad:Z

    .line 499
    const-string/jumbo v0, "launch_camera_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/composer/ComposerActivity;->ag:I

    .line 500
    const-string/jumbo v0, "selection"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 501
    const-string/jumbo v4, "edited_text"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/twitter/android/composer/ComposerActivity;->aA:Z

    .line 502
    const-string/jumbo v4, "reached_limit"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/twitter/android/composer/ComposerActivity;->aB:Z

    .line 503
    const-string/jumbo v4, "requesting_camera_permissions"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/twitter/android/composer/ComposerActivity;->au:Z

    move-object v4, v0

    move v0, v3

    .line 550
    :goto_2
    invoke-direct {p0, v1}, Lcom/twitter/android/composer/ComposerActivity;->a(Lcom/twitter/library/client/Session;)V

    .line 551
    invoke-direct {p0, p1}, Lcom/twitter/android/composer/ComposerActivity;->b(Landroid/os/Bundle;)V

    .line 552
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->y()V

    .line 553
    iget-object v6, p0, Lcom/twitter/android/composer/ComposerActivity;->y:Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/twitter/android/composer/ComposerActivity;->a(Landroid/view/View;)V

    .line 554
    iget-object v6, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    iget-object v7, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v7}, Lcom/twitter/android/composer/ba;->f()Z

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/twitter/android/composer/ComposerActivity;->a(Lcom/twitter/android/composer/TweetBox;Z)V

    .line 555
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->ae()V

    .line 556
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->af()V

    .line 557
    invoke-direct {p0, p1}, Lcom/twitter/android/composer/ComposerActivity;->c(Landroid/os/Bundle;)V

    .line 558
    invoke-direct {p0, p1}, Lcom/twitter/android/composer/ComposerActivity;->d(Landroid/os/Bundle;)V

    .line 559
    if-nez p1, :cond_7

    :goto_3
    invoke-direct {p0, v5, v4, v2, v0}, Lcom/twitter/android/composer/ComposerActivity;->a(Landroid/net/Uri;[IZI)V

    .line 560
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->as()V

    .line 561
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->a(Ljava/lang/String;)V

    .line 562
    invoke-direct {p0, p1}, Lcom/twitter/android/composer/ComposerActivity;->a(Landroid/os/Bundle;)V

    .line 564
    invoke-static {}, Lcom/twitter/android/composer/bo;->a()Lcom/twitter/android/composer/bo;

    move-result-object v0

    .line 566
    invoke-virtual {v0}, Lcom/twitter/android/composer/bo;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz p1, :cond_8

    .line 575
    :goto_4
    new-instance v0, Lcom/twitter/android/composer/a;

    invoke-direct {v0, p0}, Lcom/twitter/android/composer/a;-><init>(Lcom/twitter/android/composer/ComposerActivity;)V

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aN:Laum;

    .line 590
    new-instance v0, Lcom/twitter/android/av/monetization/g;

    const/16 v1, 0x20b

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/av/monetization/g;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aM:Lcom/twitter/android/av/monetization/g;

    .line 592
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aM:Lcom/twitter/android/av/monetization/g;

    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->aN:Laum;

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/monetization/g;->a(Laum;)V

    .line 593
    return-void

    .line 469
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    .line 490
    :cond_1
    const-string/jumbo v7, "show_full_screen_suggestions"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 491
    iput v8, p0, Lcom/twitter/android/composer/ComposerActivity;->S:I

    .line 492
    iput v4, p0, Lcom/twitter/android/composer/ComposerActivity;->T:I

    goto/16 :goto_1

    .line 494
    :cond_2
    iput v0, p0, Lcom/twitter/android/composer/ComposerActivity;->S:I

    .line 495
    iput v6, p0, Lcom/twitter/android/composer/ComposerActivity;->T:I

    goto/16 :goto_1

    .line 506
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v0, p0, v6}, Lcom/twitter/android/composer/ba;->a(Landroid/content/Context;Lcom/twitter/android/composer/ax;)V

    .line 507
    invoke-virtual {v6}, Lcom/twitter/android/composer/ax;->q()Landroid/net/Uri;

    move-result-object v5

    .line 508
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/twitter/android/composer/ComposerActivity;->V:J

    .line 509
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ba;->c()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-eqz v0, :cond_4

    move v0, v2

    :goto_5
    iput-boolean v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aa:Z

    .line 510
    iput-boolean v3, p0, Lcom/twitter/android/composer/ComposerActivity;->X:Z

    .line 511
    invoke-virtual {v6}, Lcom/twitter/android/composer/ax;->w()Lclw;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aF:Lclw;

    .line 512
    invoke-virtual {v6}, Lcom/twitter/android/composer/ax;->b()I

    move-result v0

    .line 514
    iput v3, p0, Lcom/twitter/android/composer/ComposerActivity;->ag:I

    .line 515
    iput-boolean v3, p0, Lcom/twitter/android/composer/ComposerActivity;->aI:Z

    .line 516
    packed-switch v0, :pswitch_data_0

    .line 534
    :goto_6
    :pswitch_0
    iget v7, p0, Lcom/twitter/android/composer/ComposerActivity;->ag:I

    if-eqz v7, :cond_5

    .line 535
    iput v3, p0, Lcom/twitter/android/composer/ComposerActivity;->S:I

    .line 541
    :goto_7
    iput-boolean v2, p0, Lcom/twitter/android/composer/ComposerActivity;->ad:Z

    .line 542
    iput-boolean v2, p0, Lcom/twitter/android/composer/ComposerActivity;->af:Z

    .line 543
    invoke-virtual {v6}, Lcom/twitter/android/composer/ax;->f()[I

    move-result-object v4

    .line 545
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->h:Lcom/twitter/android/composer/bi;

    iget-wide v8, p0, Lcom/twitter/android/composer/ComposerActivity;->V:J

    invoke-virtual {v6}, Lcom/twitter/android/composer/ax;->r()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v8, v9, v7}, Lcom/twitter/android/composer/bi;->a(JLjava/lang/String;)V

    .line 547
    invoke-virtual {v6}, Lcom/twitter/android/composer/ax;->c()I

    move-result v0

    goto/16 :goto_2

    :cond_4
    move v0, v3

    .line 509
    goto :goto_5

    .line 518
    :pswitch_1
    invoke-virtual {v6, v2}, Lcom/twitter/android/composer/ax;->c(I)I

    move-result v7

    iput v7, p0, Lcom/twitter/android/composer/ComposerActivity;->ag:I

    goto :goto_6

    .line 522
    :pswitch_2
    invoke-virtual {v6, v4}, Lcom/twitter/android/composer/ax;->c(I)I

    move-result v7

    iput v7, p0, Lcom/twitter/android/composer/ComposerActivity;->ag:I

    goto :goto_6

    .line 526
    :pswitch_3
    iput-boolean v2, p0, Lcom/twitter/android/composer/ComposerActivity;->aI:Z

    goto :goto_6

    .line 537
    :cond_5
    if-ne v0, v4, :cond_6

    move v0, v4

    :goto_8
    iput v0, p0, Lcom/twitter/android/composer/ComposerActivity;->S:I

    goto :goto_7

    :cond_6
    move v0, v2

    goto :goto_8

    :cond_7
    move v2, v3

    .line 559
    goto/16 :goto_3

    .line 568
    :cond_8
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v1}, Lcom/twitter/android/composer/TweetBox;->o()Z

    move-result v1

    if-nez v1, :cond_9

    .line 570
    invoke-virtual {v0, v3}, Lcom/twitter/android/composer/bo;->a(Z)V

    goto/16 :goto_4

    .line 572
    :cond_9
    invoke-virtual {v0}, Lcom/twitter/android/composer/bo;->c()J

    goto/16 :goto_4

    .line 516
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public b(Z)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 2476
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->u:Lcom/twitter/android/widget/DraggableDrawerLayout;

    invoke-virtual {v1}, Lcom/twitter/android/widget/DraggableDrawerLayout;->getDrawerState()I

    move-result v1

    .line 2477
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->u:Lcom/twitter/android/widget/DraggableDrawerLayout;

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->L:Lcom/twitter/android/widget/RevealClipFrameLayout;

    .line 2478
    invoke-virtual {v1}, Lcom/twitter/android/widget/RevealClipFrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/twitter/android/composer/ComposerActivity;->R:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    :cond_0
    if-nez p1, :cond_2

    .line 2477
    :cond_1
    :goto_0
    invoke-virtual {v2, v0}, Lcom/twitter/android/widget/DraggableDrawerLayout;->setLocked(Z)V

    .line 2480
    return-void

    .line 2478
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c(Lcom/twitter/app/common/inject/t;)Lcom/twitter/app/common/inject/b;
    .locals 2

    .prologue
    .line 598
    .line 599
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ltr;->a(Landroid/content/Context;)Ltr;

    move-result-object v0

    .line 600
    new-instance v1, Lcom/twitter/android/composer/ay;

    invoke-direct {v1, v0}, Lcom/twitter/android/composer/ay;-><init>(Ltr;)V

    .line 603
    new-instance v0, Lcom/twitter/android/composer/az;

    invoke-direct {v0, v1}, Lcom/twitter/android/composer/az;-><init>(Lcom/twitter/android/composer/ay;)V

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 2563
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->am()V

    .line 2564
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->h:Lcom/twitter/android/composer/bi;

    invoke-virtual {v0}, Lcom/twitter/android/composer/bi;->b()V

    .line 2565
    return-void
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 3372
    invoke-direct {p0, p1}, Lcom/twitter/android/composer/ComposerActivity;->g(I)V

    .line 3373
    return-void
.end method

.method c(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 3110
    const/16 v0, 0x206

    invoke-direct {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3111
    iget v0, p0, Lcom/twitter/android/composer/ComposerActivity;->R:I

    if-eq v0, v2, :cond_2

    .line 3112
    iget v0, p0, Lcom/twitter/android/composer/ComposerActivity;->R:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/composer/ComposerActivity;->as:Z

    .line 3113
    invoke-virtual {p0, v2, p1, v1}, Lcom/twitter/android/composer/ComposerActivity;->a(IZZ)V

    .line 3119
    :cond_0
    :goto_1
    return-void

    .line 3112
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3114
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->u:Lcom/twitter/android/widget/DraggableDrawerLayout;

    invoke-virtual {v0}, Lcom/twitter/android/widget/DraggableDrawerLayout;->getDrawerState()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 3116
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->u:Lcom/twitter/android/widget/DraggableDrawerLayout;

    invoke-virtual {v0, v1, v1}, Lcom/twitter/android/widget/DraggableDrawerLayout;->a(ZZ)V

    goto :goto_1
.end method

.method d(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3140
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v0}, Lcom/twitter/android/composer/TweetBox;->getCount()I

    move-result v0

    const/16 v2, 0x8c

    if-le v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 3141
    :goto_0
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->t:Lcom/twitter/android/composer/ComposerCountView;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v2, v1}, Lcom/twitter/android/composer/ComposerCountView;->setVisibility(I)V

    .line 3142
    return-void

    :cond_1
    move v0, v1

    .line 3140
    goto :goto_0

    .line 3141
    :cond_2
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public e(I)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2830
    if-nez p1, :cond_0

    .line 2831
    iput v2, p0, Lcom/twitter/android/composer/ComposerActivity;->R:I

    .line 2834
    :cond_0
    if-ne p1, v5, :cond_4

    move v0, v1

    .line 2835
    :goto_0
    iget-object v4, p0, Lcom/twitter/android/composer/ComposerActivity;->x:Landroid/widget/Button;

    if-nez v0, :cond_5

    move v3, v1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 2836
    iget v3, p0, Lcom/twitter/android/composer/ComposerActivity;->R:I

    if-eq v3, v1, :cond_1

    iget-boolean v3, p0, Lcom/twitter/android/composer/ComposerActivity;->al:Z

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 2837
    invoke-virtual {p0, v1, v2}, Lcom/twitter/android/composer/ComposerActivity;->a(IZ)V

    .line 2839
    :cond_1
    iput-boolean v2, p0, Lcom/twitter/android/composer/ComposerActivity;->al:Z

    .line 2841
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->as()V

    .line 2843
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->O:Lcom/twitter/android/widget/ComposerPoiFragment;

    invoke-virtual {v2, p1}, Lcom/twitter/android/widget/ComposerPoiFragment;->e(I)V

    .line 2844
    iget v2, p0, Lcom/twitter/android/composer/ComposerActivity;->R:I

    if-ne v2, v5, :cond_2

    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->L:Lcom/twitter/android/widget/RevealClipFrameLayout;

    .line 2845
    invoke-virtual {v2}, Lcom/twitter/android/widget/RevealClipFrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 2846
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->u:Lcom/twitter/android/widget/DraggableDrawerLayout;

    invoke-virtual {v2, v1}, Lcom/twitter/android/widget/DraggableDrawerLayout;->setLocked(Z)V

    .line 2848
    :cond_2
    iget v2, p0, Lcom/twitter/android/composer/ComposerActivity;->R:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    if-eqz v0, :cond_3

    .line 2849
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v0}, Lcom/twitter/android/composer/TweetBox;->getTokenAtCursor()Lsv;

    move-result-object v0

    .line 2851
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->u:Lcom/twitter/android/widget/DraggableDrawerLayout;

    invoke-virtual {v2, v1}, Lcom/twitter/android/widget/DraggableDrawerLayout;->setLocked(Z)V

    .line 2852
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->P:Lcom/twitter/android/widget/ComposerSelectionFragment;

    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/ComposerSelectionFragment;->a(Lsv;)V

    .line 2853
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->P:Lcom/twitter/android/widget/ComposerSelectionFragment;

    invoke-virtual {v1}, Lcom/twitter/android/widget/ComposerSelectionFragment;->f()V

    .line 2854
    if-eqz v0, :cond_3

    .line 2855
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->h:Lcom/twitter/android/composer/bi;

    const-string/jumbo v2, "full_screen"

    invoke-virtual {v1, v0, v2}, Lcom/twitter/android/composer/bi;->a(Lsv;Ljava/lang/String;)V

    .line 2858
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 2834
    goto :goto_0

    :cond_5
    move v3, v2

    .line 2835
    goto :goto_1
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 1751
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->f(Z)V

    .line 1752
    return-void
.end method

.method public h()V
    .locals 3

    .prologue
    .line 1873
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aK:Lcom/twitter/android/composer/geotag/a;

    invoke-virtual {v0}, Lcom/twitter/android/composer/geotag/a;->a()Lcom/twitter/android/geo/GeoTagState;

    move-result-object v0

    .line 1874
    invoke-virtual {v0}, Lcom/twitter/android/geo/GeoTagState;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/twitter/android/geo/GeoTagState;->e()Lcom/twitter/model/geo/TwitterPlace;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/model/geo/TwitterPlace;->d:Ljava/lang/String;

    .line 1875
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->Q:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v1

    .line 1876
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->aJ:Lwo;

    invoke-virtual {v2}, Lwo;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 1877
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->aJ:Lwo;

    invoke-virtual {v2, v0, v1}, Lwo;->a(Ljava/lang/String;Lcom/twitter/model/core/TwitterUser;)V

    .line 1881
    :goto_1
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    if-eqz v0, :cond_0

    .line 1882
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v0}, Lcom/twitter/android/composer/TweetBox;->l()V

    .line 1884
    :cond_0
    return-void

    .line 1874
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1879
    :cond_2
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->aK:Lcom/twitter/android/composer/geotag/a;

    invoke-virtual {v1, v0}, Lcom/twitter/android/composer/geotag/a;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method i()V
    .locals 21

    .prologue
    .line 2298
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/twitter/android/composer/ComposerActivity;->X:Z

    .line 2300
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/composer/ComposerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 2301
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/composer/ComposerActivity;->Q:Lcom/twitter/library/client/Session;

    .line 2302
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/composer/ComposerActivity;->j()Lcom/twitter/model/drafts/d;

    move-result-object v19

    .line 2304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v2}, Lcom/twitter/android/composer/ba;->l()Lcom/twitter/model/core/ay;

    move-result-object v20

    .line 2305
    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v2}, Lcom/twitter/android/composer/TweetBox;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v11, 0x1

    .line 2306
    :goto_0
    if-eqz v20, :cond_3

    move-object/from16 v0, v20

    iget-wide v2, v0, Lcom/twitter/model/core/ay;->b:J

    invoke-virtual {v5}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    const/4 v2, 0x1

    .line 2308
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/twitter/android/composer/ComposerActivity;->aC()V

    .line 2309
    if-eqz v11, :cond_4

    .line 2311
    invoke-direct/range {p0 .. p0}, Lcom/twitter/android/composer/ComposerActivity;->av()V

    .line 2312
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/twitter/android/composer/ComposerActivity;->Y:I

    .line 2314
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/composer/ComposerActivity;->b:Lcom/twitter/android/composer/br;

    move-object/from16 v0, v20

    iget-wide v6, v0, Lcom/twitter/model/core/ay;->e:J

    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/twitter/model/core/ay;->e:J

    move-object/from16 v0, v20

    iget-object v10, v0, Lcom/twitter/model/core/ay;->m:Lcss;

    invoke-interface/range {v3 .. v10}, Lcom/twitter/android/composer/br;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;JJLcss;)Ljava/lang/String;

    .line 2325
    :goto_2
    invoke-static {}, Lcom/twitter/android/composer/bo;->a()Lcom/twitter/android/composer/bo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/android/composer/bo;->c()J

    move-result-wide v14

    .line 2326
    if-eqz v2, :cond_0

    .line 2328
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/composer/ComposerActivity;->h:Lcom/twitter/android/composer/bi;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/twitter/android/composer/ComposerActivity;->aa:Z

    invoke-direct/range {p0 .. p0}, Lcom/twitter/android/composer/ComposerActivity;->al()Z

    move-result v9

    const/4 v10, 0x1

    const/4 v12, 0x1

    move-object/from16 v0, v19

    iget-object v13, v0, Lcom/twitter/model/drafts/d;->g:Lcom/twitter/model/geo/g;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/composer/ComposerActivity;->aE:Lcom/twitter/android/card/p;

    .line 2329
    invoke-interface {v2}, Lcom/twitter/android/card/p;->d()Lclw;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/composer/ComposerActivity;->aE:Lcom/twitter/android/card/p;

    .line 2330
    invoke-interface {v2}, Lcom/twitter/android/card/p;->c()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v16, p0

    .line 2328
    invoke-virtual/range {v7 .. v18}, Lcom/twitter/android/composer/bi;->a(ZZZZZLcom/twitter/model/geo/g;JLandroid/content/Context;Lclw;Ljava/lang/String;)V

    .line 2332
    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/composer/ComposerActivity;->h:Lcom/twitter/android/composer/bi;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/twitter/android/composer/ComposerActivity;->aa:Z

    invoke-direct/range {p0 .. p0}, Lcom/twitter/android/composer/ComposerActivity;->al()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v20, :cond_5

    const/4 v12, 0x1

    :goto_3
    move-object/from16 v0, v19

    iget-object v13, v0, Lcom/twitter/model/drafts/d;->g:Lcom/twitter/model/geo/g;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/composer/ComposerActivity;->aE:Lcom/twitter/android/card/p;

    .line 2333
    invoke-interface {v2}, Lcom/twitter/android/card/p;->d()Lclw;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/composer/ComposerActivity;->aE:Lcom/twitter/android/card/p;

    .line 2334
    invoke-interface {v2}, Lcom/twitter/android/card/p;->c()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v16, p0

    .line 2332
    invoke-virtual/range {v7 .. v18}, Lcom/twitter/android/composer/bi;->a(ZZZZZLcom/twitter/model/geo/g;JLandroid/content/Context;Lclw;Ljava/lang/String;)V

    .line 2335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/composer/ComposerActivity;->h:Lcom/twitter/android/composer/bi;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/twitter/model/drafts/d;->d:Ljava/util/List;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/twitter/android/composer/ComposerActivity;->aa:Z

    invoke-direct/range {p0 .. p0}, Lcom/twitter/android/composer/ComposerActivity;->al()Z

    move-result v7

    invoke-virtual {v2, v4, v3, v6, v7}, Lcom/twitter/android/composer/bi;->a(Landroid/content/Context;Ljava/util/List;ZZ)V

    .line 2336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/composer/ComposerActivity;->h:Lcom/twitter/android/composer/bi;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/twitter/model/drafts/d;->d:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/twitter/android/composer/bi;->a(Ljava/util/List;)V

    .line 2337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/composer/ComposerActivity;->h:Lcom/twitter/android/composer/bi;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/twitter/model/drafts/d;->k:Lclp;

    invoke-direct/range {p0 .. p0}, Lcom/twitter/android/composer/ComposerActivity;->al()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/twitter/android/composer/bi;->a(Lclp;Z)V

    .line 2338
    invoke-virtual {v5}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0}, Lcom/twitter/android/media/imageeditor/stickers/c;->a(JLcom/twitter/model/drafts/d;)V

    .line 2340
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/twitter/android/composer/ComposerActivity;->am:I

    .line 2342
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/composer/ComposerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 2343
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "android.intent.extra.RETURN_RESULT"

    const-string/jumbo v5, "android.intent.extra.RETURN_RESULT"

    .line 2345
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2344
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "extra_is_retweet"

    .line 2346
    invoke-virtual {v3, v4, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    .line 2347
    const/4 v4, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lcom/twitter/android/composer/ComposerActivity;->setResult(ILandroid/content/Intent;)V

    .line 2349
    const-string/jumbo v3, "android.intent.extra.INTENT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 2350
    if-eqz v2, :cond_1

    .line 2351
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2352
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/twitter/android/composer/ComposerActivity;->d(Landroid/content/Intent;)V

    .line 2355
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/twitter/android/composer/ComposerActivity;->f(Z)V

    .line 2356
    return-void

    .line 2305
    :cond_2
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 2306
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 2321
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/twitter/android/composer/ComposerActivity;->aw()V

    .line 2322
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/composer/ComposerActivity;->b:Lcom/twitter/android/composer/br;

    move-object/from16 v0, v19

    invoke-interface {v3, v4, v5, v0}, Lcom/twitter/android/composer/br;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/model/drafts/d;)Ljava/lang/String;

    goto/16 :goto_2

    .line 2332
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_3
.end method

.method public j()Lcom/twitter/model/drafts/d;
    .locals 2

    .prologue
    .line 2360
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->aE:Lcom/twitter/android/card/p;

    invoke-interface {v1}, Lcom/twitter/android/card/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ba;->b(Ljava/lang/String;)V

    .line 2361
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->aK:Lcom/twitter/android/composer/geotag/a;

    invoke-virtual {v1}, Lcom/twitter/android/composer/geotag/a;->d()Lcom/twitter/model/geo/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ba;->a(Lcom/twitter/model/geo/g;)V

    .line 2362
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ba;->b()Lcom/twitter/model/drafts/d;

    move-result-object v0

    return-object v0
.end method

.method k()V
    .locals 2

    .prologue
    .line 2366
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aJ:Lwo;

    invoke-virtual {v0}, Lwo;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2367
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aJ:Lwo;

    const/16 v1, 0x202

    invoke-virtual {v0, v1}, Lwo;->a(I)V

    .line 2371
    :goto_0
    return-void

    .line 2369
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->i()V

    goto :goto_0
.end method

.method protected l()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2374
    iget-boolean v2, p0, Lcom/twitter/android/composer/ComposerActivity;->X:Z

    if-eqz v2, :cond_1

    .line 2383
    :cond_0
    :goto_0
    return v0

    .line 2377
    :cond_1
    iget-boolean v2, p0, Lcom/twitter/android/composer/ComposerActivity;->aa:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 2378
    goto :goto_0

    .line 2380
    :cond_2
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v2}, Lcom/twitter/android/composer/TweetBox;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 2381
    goto :goto_0

    .line 2383
    :cond_3
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v2}, Lcom/twitter/android/composer/ba;->e()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    .line 2384
    invoke-virtual {v2}, Lcom/twitter/android/composer/ba;->i()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    .line 2385
    invoke-virtual {v2}, Lcom/twitter/android/composer/ba;->n()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->aH:Lcom/twitter/android/card/pollcompose/o;

    invoke-virtual {v2}, Lcom/twitter/android/card/pollcompose/o;->d()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method protected m()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2389
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v1}, Lcom/twitter/android/composer/TweetBox;->m()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2392
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v1}, Lcom/twitter/android/composer/ba;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v1}, Lcom/twitter/android/composer/ba;->n()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected o()V
    .locals 1

    .prologue
    .line 1863
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1864
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->m()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->g(Z)V

    .line 1870
    :goto_0
    return-void

    .line 1866
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->setResult(I)V

    .line 1867
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/composer/ComposerActivity;->af:Z

    .line 1868
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->o()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 2083
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2084
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->M:Lcom/twitter/android/media/selection/MediaAttachmentController;

    new-instance v1, Lcom/twitter/android/composer/as;

    invoke-direct {v1, p0, v4}, Lcom/twitter/android/composer/as;-><init>(Lcom/twitter/android/composer/ComposerActivity;Z)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/twitter/android/media/selection/MediaAttachmentController;->a(IILandroid/content/Intent;Lcom/twitter/android/media/selection/AttachMediaListener;)V

    .line 2086
    sparse-switch p1, :sswitch_data_0

    .line 2252
    :cond_0
    :goto_0
    return-void

    .line 2088
    :sswitch_0
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->N:Lcom/twitter/android/widget/GalleryGridFragment;

    invoke-virtual {v0}, Lcom/twitter/android/widget/GalleryGridFragment;->f()V

    goto :goto_0

    .line 2092
    :sswitch_1
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2093
    invoke-virtual {p0, v2, v2}, Lcom/twitter/android/composer/ComposerActivity;->a(IZ)V

    goto :goto_0

    .line 2099
    :sswitch_2
    if-eq p2, v3, :cond_1

    .line 2100
    iget v0, p0, Lcom/twitter/android/composer/ComposerActivity;->ag:I

    if-eqz v0, :cond_0

    .line 2101
    iput v2, p0, Lcom/twitter/android/composer/ComposerActivity;->ag:I

    .line 2102
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->finish()V

    goto :goto_0

    .line 2105
    :cond_1
    iput v2, p0, Lcom/twitter/android/composer/ComposerActivity;->ag:I

    .line 2106
    invoke-virtual {p0, v2, v2}, Lcom/twitter/android/composer/ComposerActivity;->a(IZ)V

    .line 2107
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->g:Landroid/os/Handler;

    new-instance v1, Lcom/twitter/android/composer/av;

    invoke-direct {v1, p0}, Lcom/twitter/android/composer/av;-><init>(Lcom/twitter/android/composer/ComposerActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2113
    :sswitch_3
    if-ne p2, v3, :cond_0

    .line 2114
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aH:Lcom/twitter/android/card/pollcompose/o;

    if-eqz v0, :cond_0

    .line 2115
    if-eqz p3, :cond_2

    .line 2116
    const-string/jumbo v0, "extra_editable_image"

    .line 2117
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/media/EditableImage;

    .line 2118
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->aH:Lcom/twitter/android/card/pollcompose/o;

    invoke-virtual {v1, v0}, Lcom/twitter/android/card/pollcompose/o;->a(Lcom/twitter/model/media/EditableImage;)V

    goto :goto_0

    .line 2120
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aH:Lcom/twitter/android/card/pollcompose/o;

    invoke-virtual {v0}, Lcom/twitter/android/card/pollcompose/o;->b()V

    goto :goto_0

    .line 2128
    :sswitch_4
    if-ne p2, v3, :cond_0

    if-eqz p3, :cond_0

    .line 2129
    const-string/jumbo v0, "photo_tags"

    sget-object v1, Lcom/twitter/model/core/am;->a:Lcom/twitter/util/serialization/ah;

    .line 2132
    invoke-static {v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v1

    .line 2129
    invoke-static {p3, v0, v1}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2133
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v1}, Lcom/twitter/android/composer/ba;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/drafts/DraftAttachment;

    .line 2134
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/twitter/model/drafts/DraftAttachment;->a(I)Lcom/twitter/model/media/EditableMedia;

    move-result-object v1

    .line 2135
    instance-of v3, v1, Lcom/twitter/model/media/EditableImage;

    if-eqz v3, :cond_3

    .line 2136
    check-cast v1, Lcom/twitter/model/media/EditableImage;

    iput-object v0, v1, Lcom/twitter/model/media/EditableImage;->g:Ljava/util/List;

    goto :goto_1

    .line 2139
    :cond_4
    if-eqz v0, :cond_0

    .line 2140
    invoke-direct {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->b(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2147
    :sswitch_5
    if-ne p2, v3, :cond_0

    if-eqz p3, :cond_0

    .line 2148
    const-string/jumbo v0, "alt_text"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2149
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->k:Lcom/twitter/android/media/widget/MediaAttachmentsView;

    invoke-virtual {v1}, Lcom/twitter/android/media/widget/MediaAttachmentsView;->getSelectedImage()Lcom/twitter/model/media/EditableImage;

    move-result-object v1

    .line 2150
    iput-object v0, v1, Lcom/twitter/model/media/EditableImage;->i:Ljava/lang/String;

    .line 2151
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->k:Lcom/twitter/android/media/widget/MediaAttachmentsView;

    invoke-virtual {v0}, Lcom/twitter/android/media/widget/MediaAttachmentsView;->f()V

    goto/16 :goto_0

    .line 2157
    :sswitch_6
    if-ne p2, v4, :cond_0

    if-eqz p3, :cond_0

    .line 2158
    const-string/jumbo v0, "account"

    .line 2159
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/account/UserAccount;

    .line 2158
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/account/UserAccount;

    .line 2160
    iget-object v0, v0, Lcom/twitter/model/account/UserAccount;->b:Lcom/twitter/model/core/TwitterUser;

    .line 2161
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    iget-wide v0, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-static {v0, v1}, Lcom/twitter/library/util/b;->a(J)Lcom/twitter/app/common/account/a;

    move-result-object v0

    .line 2160
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/account/a;

    .line 2162
    invoke-virtual {v0}, Lcom/twitter/app/common/account/a;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->Q:Lcom/twitter/library/client/Session;

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2163
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->ak:Lcom/twitter/android/d;

    invoke-virtual {v1, v0}, Lcom/twitter/android/d;->a(Lcom/twitter/app/common/account/a;)V

    goto/16 :goto_0

    .line 2170
    :sswitch_7
    if-ne p2, v3, :cond_0

    if-eqz p3, :cond_0

    .line 2171
    invoke-virtual {p0, v2, v2}, Lcom/twitter/android/composer/ComposerActivity;->a(IZ)V

    goto/16 :goto_0

    .line 2177
    :sswitch_8
    if-ne p2, v3, :cond_5

    if-eqz p3, :cond_5

    .line 2178
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->aw()V

    .line 2179
    invoke-static {p3}, Lcom/twitter/app/drafts/h;->a(Landroid/content/Intent;)Lcom/twitter/app/drafts/h;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/app/drafts/h;->a:Lcom/twitter/model/drafts/d;

    .line 2180
    if-eqz v0, :cond_5

    .line 2181
    iput-boolean v4, p0, Lcom/twitter/android/composer/ComposerActivity;->aa:Z

    .line 2182
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v1, v0}, Lcom/twitter/android/composer/ba;->a(Lcom/twitter/model/drafts/d;)V

    .line 2183
    invoke-direct {p0, v5, v5, v2, v2}, Lcom/twitter/android/composer/ComposerActivity;->a(Landroid/net/Uri;[IZI)V

    .line 2186
    :cond_5
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->D()V

    .line 2187
    invoke-virtual {p0, v4, v4}, Lcom/twitter/android/composer/ComposerActivity;->a(IZ)V

    goto/16 :goto_0

    .line 2192
    :sswitch_9
    if-ne p2, v3, :cond_0

    if-eqz p3, :cond_0

    .line 2193
    const-string/jumbo v0, "extra_perm_result"

    .line 2194
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/PermissionResult;

    .line 2195
    invoke-virtual {v0}, Lcom/twitter/android/PermissionResult;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2196
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->N:Lcom/twitter/android/widget/GalleryGridFragment;

    invoke-virtual {v0}, Lcom/twitter/android/widget/GalleryGridFragment;->c()V

    .line 2197
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->v()V

    goto/16 :goto_0

    .line 2199
    :cond_6
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->c:Landroid/widget/ImageButton;

    .line 2200
    invoke-static {}, Lcom/twitter/android/lb;->a()Lcom/twitter/android/lb;

    move-result-object v2

    iget-object v0, v0, Lcom/twitter/android/PermissionResult;->b:[Ljava/lang/String;

    invoke-virtual {v2, p0, v0}, Lcom/twitter/android/lb;->b(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 2199
    invoke-static {p0, v1, v0}, Lcom/twitter/android/runtimepermissions/c;->a(Landroid/content/Context;Landroid/view/View;Ljava/util/Set;)V

    goto/16 :goto_0

    .line 2207
    :sswitch_a
    if-ne p2, v3, :cond_0

    invoke-static {p3}, Lcom/twitter/android/runtimepermissions/PermissionRequestActivity;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2208
    invoke-static {p0}, Lcom/twitter/android/composer/ax;->a(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/composer/ax;

    move-result-object v0

    .line 2209
    invoke-virtual {v0}, Lcom/twitter/android/composer/ax;->q()Landroid/net/Uri;

    move-result-object v0

    .line 2210
    if-eqz v0, :cond_0

    .line 2211
    invoke-static {}, Lcom/twitter/media/util/r;->a()Z

    move-result v1

    new-instance v2, Lcom/twitter/android/composer/as;

    invoke-direct {v2, p0, v4}, Lcom/twitter/android/composer/as;-><init>(Lcom/twitter/android/composer/ComposerActivity;Z)V

    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/composer/ComposerActivity;->a(Landroid/net/Uri;ZLcom/twitter/android/media/selection/AttachMediaListener;)V

    goto/16 :goto_0

    .line 2219
    :sswitch_b
    if-eqz p3, :cond_7

    .line 2220
    invoke-static {p3}, Lcom/twitter/android/util/v;->a(Landroid/content/Intent;)Lcom/twitter/model/drafts/DraftAttachment;

    move-result-object v0

    .line 2221
    if-eqz v0, :cond_7

    .line 2222
    new-instance v1, Lcom/twitter/android/composer/as;

    invoke-direct {v1, p0, v2}, Lcom/twitter/android/composer/as;-><init>(Lcom/twitter/android/composer/ComposerActivity;Z)V

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/composer/ComposerActivity;->a(Lcom/twitter/model/drafts/DraftAttachment;Lcom/twitter/android/media/selection/AttachMediaListener;)V

    .line 2225
    :cond_7
    sget-object v0, Lcom/twitter/android/composer/ComposerType;->a:Lcom/twitter/android/composer/ComposerType;

    invoke-static {v0, p3}, Lcom/twitter/android/util/v;->a(Lcom/twitter/android/composer/ComposerType;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2230
    :sswitch_c
    if-ne p2, v3, :cond_8

    invoke-static {p3}, Lcom/twitter/android/runtimepermissions/PermissionRequestActivity;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2231
    iget v0, p0, Lcom/twitter/android/composer/ComposerActivity;->ag:I

    invoke-direct {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->g(I)V

    .line 2233
    :cond_8
    iput v2, p0, Lcom/twitter/android/composer/ComposerActivity;->ag:I

    .line 2234
    iput-boolean v2, p0, Lcom/twitter/android/composer/ComposerActivity;->au:Z

    goto/16 :goto_0

    .line 2239
    :sswitch_d
    const/16 v0, 0xced

    if-ne p2, v0, :cond_9

    .line 2240
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->h:Lcom/twitter/android/composer/bi;

    invoke-virtual {v0}, Lcom/twitter/android/composer/bi;->o()V

    goto/16 :goto_0

    .line 2241
    :cond_9
    const/16 v0, 0xcee

    if-ne p2, v0, :cond_0

    .line 2242
    invoke-virtual {p0, p3}, Lcom/twitter/android/composer/ComposerActivity;->startActivity(Landroid/content/Intent;)V

    .line 2243
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->h:Lcom/twitter/android/composer/bi;

    invoke-virtual {v0}, Lcom/twitter/android/composer/bi;->p()V

    goto/16 :goto_0

    .line 2086
    nop

    :sswitch_data_0
    .sparse-switch
        0x101 -> :sswitch_1
        0x102 -> :sswitch_2
        0x103 -> :sswitch_0
        0x105 -> :sswitch_7
        0x201 -> :sswitch_4
        0x202 -> :sswitch_6
        0x203 -> :sswitch_8
        0x205 -> :sswitch_c
        0x206 -> :sswitch_9
        0x207 -> :sswitch_a
        0x208 -> :sswitch_b
        0x209 -> :sswitch_5
        0x20a -> :sswitch_d
        0x301 -> :sswitch_3
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2013
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->az:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->L:Lcom/twitter/android/widget/RevealClipFrameLayout;

    invoke-virtual {v2}, Lcom/twitter/android/widget/RevealClipFrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 2014
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->az:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->f()V

    .line 2034
    :goto_0
    return-void

    .line 2017
    :cond_0
    iget-boolean v2, p0, Lcom/twitter/android/composer/ComposerActivity;->af:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/twitter/android/composer/ComposerActivity;->R:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/twitter/android/composer/ComposerActivity;->R:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    :cond_1
    move v2, v1

    .line 2019
    :goto_1
    if-eqz v2, :cond_4

    .line 2020
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2021
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->m()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->g(Z)V

    goto :goto_0

    :cond_2
    move v2, v0

    .line 2017
    goto :goto_1

    .line 2023
    :cond_3
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 2026
    :cond_4
    iget v2, p0, Lcom/twitter/android/composer/ComposerActivity;->R:I

    if-ne v2, v4, :cond_5

    .line 2027
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->A()V

    goto :goto_0

    .line 2029
    :cond_5
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->u:Lcom/twitter/android/widget/DraggableDrawerLayout;

    invoke-virtual {v2}, Lcom/twitter/android/widget/DraggableDrawerLayout;->getDrawerState()I

    move-result v2

    if-ne v2, v4, :cond_6

    move v0, v1

    .line 2031
    :cond_6
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/composer/ComposerActivity;->a(IZ)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1790
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onDestroy()V

    .line 1793
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->M:Lcom/twitter/android/media/selection/MediaAttachmentController;

    if-eqz v0, :cond_0

    .line 1794
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->M:Lcom/twitter/android/media/selection/MediaAttachmentController;

    invoke-virtual {v0}, Lcom/twitter/android/media/selection/MediaAttachmentController;->h()V

    .line 1797
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    if-eqz v0, :cond_1

    .line 1798
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/TweetBox;->setTweetBoxListener(Lcom/twitter/android/composer/cl;)V

    .line 1801
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->P:Lcom/twitter/android/widget/ComposerSelectionFragment;

    if-eqz v0, :cond_2

    .line 1802
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->P:Lcom/twitter/android/widget/ComposerSelectionFragment;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ComposerSelectionFragment;->a(Lcom/twitter/android/widget/y;)V

    .line 1805
    :cond_2
    invoke-static {}, Lcom/twitter/android/provider/SuggestionsProvider;->b()V

    .line 1806
    invoke-static {}, Lcom/twitter/android/provider/SuggestionsProvider;->c()V

    .line 1808
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aE:Lcom/twitter/android/card/p;

    if-eqz v0, :cond_3

    .line 1809
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aE:Lcom/twitter/android/card/p;

    invoke-interface {v0}, Lcom/twitter/android/card/p;->e()V

    .line 1810
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aE:Lcom/twitter/android/card/p;

    invoke-interface {v0, v1}, Lcom/twitter/android/card/p;->a(Lcom/twitter/android/card/q;)V

    .line 1813
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aK:Lcom/twitter/android/composer/geotag/a;

    if-eqz v0, :cond_4

    .line 1814
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aK:Lcom/twitter/android/composer/geotag/a;

    invoke-virtual {v0}, Lcom/twitter/android/composer/geotag/a;->f()V

    .line 1817
    :cond_4
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aL:Lrx/ap;

    if-eqz v0, :cond_5

    .line 1818
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aL:Lrx/ap;

    invoke-interface {v0}, Lrx/ap;->R_()V

    .line 1821
    :cond_5
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aM:Lcom/twitter/android/av/monetization/g;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aN:Laum;

    if-eqz v0, :cond_6

    .line 1822
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aM:Lcom/twitter/android/av/monetization/g;

    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->aN:Laum;

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/monetization/g;->b(Laum;)V

    .line 1824
    :cond_6
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2868
    sparse-switch p1, :sswitch_data_0

    .line 2878
    invoke-super {p0, p1, p2}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 2870
    :sswitch_0
    invoke-direct {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->g(I)V

    goto :goto_0

    .line 2874
    :sswitch_1
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/twitter/android/composer/ComposerActivity;->g(I)V

    goto :goto_0

    .line 2868
    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->W:Lcom/twitter/library/client/bd;

    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->e:Lcom/twitter/android/composer/aw;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->b(Lcom/twitter/library/service/z;)V

    .line 1757
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/composer/ComposerActivity;->ae:Z

    .line 1758
    iget v0, p0, Lcom/twitter/android/composer/ComposerActivity;->R:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1759
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    const v1, 0x7f130275

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/TweetBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1760
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1761
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1763
    :cond_0
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onPause()V

    .line 1764
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1448
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 1449
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->y:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1450
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .prologue
    .line 2257
    packed-switch p1, :pswitch_data_0

    .line 2266
    :goto_0
    return-void

    .line 2259
    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aK:Lcom/twitter/android/composer/geotag/a;

    invoke-virtual {v0, p2, p3}, Lcom/twitter/android/composer/geotag/a;->a([Ljava/lang/String;[I)V

    goto :goto_0

    .line 2257
    :pswitch_data_0
    .packed-switch 0x204
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 1674
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onResume()V

    .line 1675
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->W:Lcom/twitter/library/client/bd;

    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->e:Lcom/twitter/android/composer/aw;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/z;)V

    .line 1679
    iget v0, p0, Lcom/twitter/android/composer/ComposerActivity;->ag:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/twitter/android/composer/ComposerActivity;->au:Z

    if-nez v0, :cond_1

    .line 1680
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->ai:Lcom/twitter/app/common/util/a;

    if-nez v0, :cond_0

    .line 1681
    invoke-static {}, Lcom/twitter/app/common/util/c;->a()Lcom/twitter/app/common/util/c;

    move-result-object v0

    .line 1682
    new-instance v1, Lcom/twitter/android/composer/ac;

    invoke-direct {v1, p0, v0}, Lcom/twitter/android/composer/ac;-><init>(Lcom/twitter/android/composer/ComposerActivity;Lcom/twitter/app/common/util/c;)V

    iput-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->ai:Lcom/twitter/app/common/util/a;

    .line 1699
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->ai:Lcom/twitter/app/common/util/a;

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/util/c;->a(Lcom/twitter/app/common/util/a;)V

    .line 1701
    :cond_0
    iget v0, p0, Lcom/twitter/android/composer/ComposerActivity;->ag:I

    invoke-direct {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->g(I)V

    .line 1704
    :cond_1
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->ak()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1705
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->finish()V

    .line 1707
    :cond_2
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->ar()V

    .line 1708
    return-void
.end method

.method protected onResumeFragments()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1636
    iput-boolean v2, p0, Lcom/twitter/android/composer/ComposerActivity;->ae:Z

    .line 1637
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onResumeFragments()V

    .line 1638
    iget-boolean v3, p0, Lcom/twitter/android/composer/ComposerActivity;->af:Z

    .line 1639
    iget v0, p0, Lcom/twitter/android/composer/ComposerActivity;->S:I

    if-eq v0, v5, :cond_1

    .line 1640
    iget v0, p0, Lcom/twitter/android/composer/ComposerActivity;->S:I

    if-ne v0, v6, :cond_0

    iget v0, p0, Lcom/twitter/android/composer/ComposerActivity;->T:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->u:Lcom/twitter/android/widget/DraggableDrawerLayout;

    .line 1641
    invoke-virtual {v0}, Lcom/twitter/android/widget/DraggableDrawerLayout;->d()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1642
    :cond_0
    iget v0, p0, Lcom/twitter/android/composer/ComposerActivity;->S:I

    if-ne v0, v4, :cond_6

    .line 1643
    invoke-virtual {p0, v1}, Lcom/twitter/android/composer/ComposerActivity;->c(Z)V

    .line 1653
    :goto_0
    iput v5, p0, Lcom/twitter/android/composer/ComposerActivity;->T:I

    .line 1654
    iput v5, p0, Lcom/twitter/android/composer/ComposerActivity;->S:I

    .line 1657
    :cond_1
    iput-boolean v3, p0, Lcom/twitter/android/composer/ComposerActivity;->af:Z

    .line 1658
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v0}, Lcom/twitter/android/composer/TweetBox;->hasFocus()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->d(Z)V

    .line 1660
    const-string/jumbo v0, "composer:complete"

    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->K()Layj;

    move-result-object v1

    sget-object v3, Laxz;->m:Laye;

    invoke-static {v0, v1, v3}, Layp;->a(Ljava/lang/String;Layj;Laye;)Layp;

    move-result-object v0

    .line 1661
    invoke-virtual {v0}, Layp;->j()V

    .line 1663
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->u:Lcom/twitter/android/widget/DraggableDrawerLayout;

    invoke-virtual {v0}, Lcom/twitter/android/widget/DraggableDrawerLayout;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/twitter/android/composer/ComposerActivity;->R:I

    if-eq v0, v2, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->ax()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1664
    :cond_3
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->aj()V

    .line 1666
    :cond_4
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->L:Lcom/twitter/android/widget/RevealClipFrameLayout;

    invoke-virtual {v0}, Lcom/twitter/android/widget/RevealClipFrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 1668
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v0, v6}, Lcom/twitter/android/composer/TweetBox;->setVisibility(I)V

    .line 1670
    :cond_5
    return-void

    .line 1646
    :cond_6
    iget v0, p0, Lcom/twitter/android/composer/ComposerActivity;->T:I

    if-eq v0, v4, :cond_7

    iget v0, p0, Lcom/twitter/android/composer/ComposerActivity;->S:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_8

    :cond_7
    move v0, v2

    .line 1648
    :goto_1
    iget v4, p0, Lcom/twitter/android/composer/ComposerActivity;->S:I

    invoke-virtual {p0, v4, v1, v0}, Lcom/twitter/android/composer/ComposerActivity;->a(IZZ)V

    goto :goto_0

    :cond_8
    move v0, v1

    .line 1646
    goto :goto_1

    .line 1651
    :cond_9
    invoke-virtual {p0, v2, v1}, Lcom/twitter/android/composer/ComposerActivity;->a(IZ)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 1828
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1829
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->aw()V

    .line 1830
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->ay()V

    .line 1831
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v0, p1}, Lcom/twitter/android/composer/ba;->b(Landroid/os/Bundle;)V

    .line 1832
    const-string/jumbo v0, "original_owner_id"

    iget-wide v2, p0, Lcom/twitter/android/composer/ComposerActivity;->V:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1833
    const-string/jumbo v0, "loaded_from_draft"

    iget-boolean v1, p0, Lcom/twitter/android/composer/ComposerActivity;->aa:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1834
    const-string/jumbo v0, "tweet_posted"

    iget-boolean v1, p0, Lcom/twitter/android/composer/ComposerActivity;->X:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1835
    const-string/jumbo v0, "conversation_card_data"

    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->aF:Lclw;

    sget-object v2, Lclw;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1, v2}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/os/Bundle;

    .line 1837
    const-string/jumbo v0, "current_drawer"

    iget v1, p0, Lcom/twitter/android/composer/ComposerActivity;->R:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1838
    const-string/jumbo v0, "current_drawer_state"

    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->u:Lcom/twitter/android/widget/DraggableDrawerLayout;

    invoke-virtual {v1}, Lcom/twitter/android/widget/DraggableDrawerLayout;->getDrawerState()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1839
    const-string/jumbo v0, "show_link_hint"

    iget-boolean v1, p0, Lcom/twitter/android/composer/ComposerActivity;->ad:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1840
    const-string/jumbo v0, "launch_camera_mode"

    iget v1, p0, Lcom/twitter/android/composer/ComposerActivity;->ag:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1841
    const-string/jumbo v0, "selection"

    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v1}, Lcom/twitter/android/composer/TweetBox;->getSelection()[I

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1842
    const-string/jumbo v0, "edited_text"

    iget-boolean v1, p0, Lcom/twitter/android/composer/ComposerActivity;->aA:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1843
    const-string/jumbo v0, "reached_limit"

    iget-boolean v1, p0, Lcom/twitter/android/composer/ComposerActivity;->aB:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1844
    const-string/jumbo v0, "show_full_screen_suggestions"

    iget-boolean v1, p0, Lcom/twitter/android/composer/ComposerActivity;->av:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1845
    const/4 v0, 0x0

    .line 1846
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->az:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    if-eqz v1, :cond_0

    .line 1847
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->az:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    invoke-virtual {v1}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->b()Lcom/twitter/android/media/imageeditor/x;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->N:Lcom/twitter/android/widget/GalleryGridFragment;

    if-ne v1, v2, :cond_1

    .line 1848
    const/4 v0, 0x1

    .line 1853
    :cond_0
    :goto_0
    const-string/jumbo v1, "editing_media"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1854
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->an:Lcom/twitter/android/composer/bq;

    invoke-virtual {v0, p1}, Lcom/twitter/android/composer/bq;->a(Landroid/os/Bundle;)V

    .line 1855
    const-string/jumbo v0, "requesting_camera_permissions"

    iget-boolean v1, p0, Lcom/twitter/android/composer/ComposerActivity;->au:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1857
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aJ:Lwo;

    invoke-virtual {v0, p1}, Lwo;->a(Landroid/os/Bundle;)V

    .line 1858
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aK:Lcom/twitter/android/composer/geotag/a;

    invoke-virtual {v0, p1}, Lcom/twitter/android/composer/geotag/a;->a(Landroid/os/Bundle;)V

    .line 1859
    return-void

    .line 1849
    :cond_1
    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->az:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    invoke-virtual {v1}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->b()Lcom/twitter/android/media/imageeditor/x;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->k:Lcom/twitter/android/media/widget/MediaAttachmentsView;

    if-ne v1, v2, :cond_0

    .line 1850
    const/4 v0, 0x2

    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1768
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->aw()V

    .line 1770
    iget v0, p0, Lcom/twitter/android/composer/ComposerActivity;->Y:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1771
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1772
    invoke-direct {p0, v2}, Lcom/twitter/android/composer/ComposerActivity;->j(Z)V

    .line 1779
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onStop()V

    .line 1780
    return-void

    .line 1773
    :cond_1
    iget-boolean v0, p0, Lcom/twitter/android/composer/ComposerActivity;->X:Z

    if-nez v0, :cond_0

    .line 1775
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->av()V

    .line 1776
    iput v2, p0, Lcom/twitter/android/composer/ComposerActivity;->Y:I

    goto :goto_0
.end method

.method p()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2403
    iget v0, p0, Lcom/twitter/android/composer/ComposerActivity;->R:I

    if-eq v0, v1, :cond_0

    .line 2405
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->h:Lcom/twitter/android/composer/bi;

    invoke-virtual {v0}, Lcom/twitter/android/composer/bi;->i()V

    .line 2406
    invoke-virtual {p0, v1, v1}, Lcom/twitter/android/composer/ComposerActivity;->a(IZ)V

    .line 2408
    :cond_0
    return-void
.end method

.method r()V
    .locals 3

    .prologue
    .line 2794
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    .line 2795
    invoke-virtual {v0}, Lcom/twitter/android/composer/ba;->i()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->c(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/drafts/DraftAttachment;

    .line 2796
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/twitter/model/drafts/DraftAttachment;->a(I)Lcom/twitter/model/media/EditableMedia;

    move-result-object v0

    .line 2797
    instance-of v1, v0, Lcom/twitter/model/media/EditableImage;

    if-eqz v1, :cond_0

    .line 2798
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/MediaTagActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "editable_image"

    .line 2800
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x201

    .line 2798
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/composer/ComposerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2802
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->h:Lcom/twitter/android/composer/bi;

    invoke-virtual {v0}, Lcom/twitter/android/composer/bi;->j()V

    .line 2804
    :cond_0
    return-void
.end method

.method s()V
    .locals 3

    .prologue
    .line 2884
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/AccountsDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "AccountsDialogActivity_account_name"

    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->Q:Lcom/twitter/library/client/Session;

    .line 2886
    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v2

    .line 2885
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x202

    .line 2884
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/composer/ComposerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2889
    return-void
.end method

.method t()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2893
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ba;->i()Ljava/util/List;

    move-result-object v0

    .line 2894
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 2895
    if-ne v1, v5, :cond_1

    .line 2896
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/drafts/DraftAttachment;

    .line 2897
    iget-object v0, v0, Lcom/twitter/model/drafts/DraftAttachment;->g:Lcom/twitter/media/model/MediaType;

    sget-object v1, Lcom/twitter/media/model/MediaType;->b:Lcom/twitter/media/model/MediaType;

    if-ne v0, v1, :cond_0

    .line 2898
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/composer/ComposerActivity;->Q:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, ":composition::photo:send_photo_tweet"

    aput-object v2, v1, v4

    .line 2899
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 2898
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 2906
    :cond_0
    :goto_0
    invoke-virtual {p0, v4}, Lcom/twitter/android/composer/ComposerActivity;->a(Z)V

    .line 2907
    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->k()V

    .line 2908
    return-void

    .line 2901
    :cond_1
    if-le v1, v5, :cond_0

    .line 2902
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->Q:Lcom/twitter/library/client/Session;

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, ":composition::multiphoto:send_photo_tweet"

    aput-object v3, v2, v4

    .line 2903
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    int-to-long v2, v1

    .line 2904
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(J)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 2902
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0
.end method

.method u()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 2995
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->an:Lcom/twitter/android/composer/bq;

    invoke-virtual {v0}, Lcom/twitter/android/composer/bq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2996
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->D:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 2997
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->E:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 3002
    :goto_0
    return-void

    .line 2999
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->D:Lcom/twitter/ui/widget/TwitterButton;

    iget v1, p0, Lcom/twitter/android/composer/ComposerActivity;->ao:I

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 3000
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->E:Lcom/twitter/ui/widget/TwitterButton;

    iget v1, p0, Lcom/twitter/android/composer/ComposerActivity;->ap:I

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    goto :goto_0
.end method

.method v()V
    .locals 1

    .prologue
    .line 3106
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ComposerActivity;->c(Z)V

    .line 3107
    return-void
.end method

.method w()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3145
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->o:Landroid/view/View;

    if-nez v0, :cond_0

    .line 3155
    :goto_0
    return-void

    .line 3148
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->i:Lcom/twitter/android/composer/TweetBox;

    .line 3149
    invoke-virtual {v0}, Lcom/twitter/android/composer/TweetBox;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/twitter/android/composer/ComposerActivity;->aa:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/twitter/android/composer/ComposerActivity;->ab:Z

    if-eqz v0, :cond_1

    .line 3152
    invoke-direct {p0}, Lcom/twitter/android/composer/ComposerActivity;->al()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    .line 3153
    invoke-virtual {v0}, Lcom/twitter/android/composer/ba;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 3154
    :goto_1
    iget-object v2, p0, Lcom/twitter/android/composer/ComposerActivity;->o:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    :cond_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 3153
    goto :goto_1
.end method

.method x()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3274
    iget v0, p0, Lcom/twitter/android/composer/ComposerActivity;->R:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3275
    invoke-virtual {p0, v2, v2}, Lcom/twitter/android/composer/ComposerActivity;->a(IZ)V

    .line 3277
    :cond_0
    return-void
.end method
