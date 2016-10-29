.class public Lcom/twitter/android/livevideo/landing/c;
.super Lcom/twitter/app/common/inject/w;
.source "Twttr"


# static fields
.field private static final a:Ldjj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldjj",
            "<-",
            "Lcom/twitter/model/livevideo/d;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/twitter/app/common/list/w;

.field private final c:Labv;

.field private final d:Landroid/support/v4/app/FragmentManager;

.field private final e:Landroid/support/v4/app/FragmentActivity;

.field private final f:Lcom/twitter/android/livevideo/player/m;

.field private final g:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private final h:Lcom/twitter/android/livevideo/landing/l;

.field private final i:Lcom/twitter/android/livevideo/landing/a;

.field private j:Z

.field private final k:Ldlx;

.field private l:Lcom/twitter/model/livevideo/a;

.field private final m:Landroid/view/View$OnClickListener;

.field private final n:Lrx/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/r",
            "<",
            "Lcom/twitter/model/livevideo/d;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lrx/subjects/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/e",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Lcom/twitter/android/livevideo/player/t;

.field private final q:Lcom/twitter/android/livevideo/landing/q;

.field private r:Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/twitter/android/livevideo/landing/d;

    invoke-direct {v0}, Lcom/twitter/android/livevideo/landing/d;-><init>()V

    sput-object v0, Lcom/twitter/android/livevideo/landing/c;->a:Ldjj;

    return-void
.end method

.method public constructor <init>(Lcom/twitter/app/common/base/BaseFragmentActivity;Landroid/os/Bundle;Lcom/twitter/app/common/base/n;Lcom/twitter/android/media/selection/MediaAttachmentController;Laby;Lcom/twitter/app/common/list/w;Lcom/twitter/android/livevideo/player/m;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/android/livevideo/landing/a;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 190
    invoke-direct {p0, p2}, Lcom/twitter/app/common/inject/w;-><init>(Landroid/os/Bundle;)V

    .line 98
    new-instance v0, Ldlx;

    invoke-direct {v0}, Ldlx;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->k:Ldlx;

    .line 102
    new-instance v0, Lcom/twitter/android/livevideo/landing/e;

    invoke-direct {v0, p0}, Lcom/twitter/android/livevideo/landing/e;-><init>(Lcom/twitter/android/livevideo/landing/c;)V

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->m:Landroid/view/View$OnClickListener;

    .line 110
    new-instance v0, Lcom/twitter/android/livevideo/landing/f;

    invoke-direct {v0, p0}, Lcom/twitter/android/livevideo/landing/f;-><init>(Lcom/twitter/android/livevideo/landing/c;)V

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->n:Lrx/r;

    .line 142
    invoke-static {}, Lrx/subjects/e;->q()Lrx/subjects/e;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->o:Lrx/subjects/e;

    .line 144
    new-instance v0, Lcom/twitter/android/livevideo/landing/g;

    invoke-direct {v0, p0}, Lcom/twitter/android/livevideo/landing/g;-><init>(Lcom/twitter/android/livevideo/landing/c;)V

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->p:Lcom/twitter/android/livevideo/player/t;

    .line 156
    new-instance v0, Lcom/twitter/android/livevideo/landing/h;

    invoke-direct {v0, p0}, Lcom/twitter/android/livevideo/landing/h;-><init>(Lcom/twitter/android/livevideo/landing/c;)V

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->q:Lcom/twitter/android/livevideo/landing/q;

    .line 191
    iput-object p1, p0, Lcom/twitter/android/livevideo/landing/c;->e:Landroid/support/v4/app/FragmentActivity;

    .line 192
    invoke-virtual {p1}, Lcom/twitter/app/common/base/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->d:Landroid/support/v4/app/FragmentManager;

    .line 193
    iput-object p6, p0, Lcom/twitter/android/livevideo/landing/c;->b:Lcom/twitter/app/common/list/w;

    .line 194
    iput-object p8, p0, Lcom/twitter/android/livevideo/landing/c;->g:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 196
    invoke-direct {p0, p1}, Lcom/twitter/android/livevideo/landing/c;->a(Landroid/support/v4/app/FragmentActivity;)Landroid/view/View;

    move-result-object v0

    .line 197
    invoke-virtual {p0, v0}, Lcom/twitter/android/livevideo/landing/c;->a(Landroid/view/View;)V

    .line 198
    new-instance v3, Lcom/twitter/android/livevideo/landing/l;

    invoke-direct {v3, v0}, Lcom/twitter/android/livevideo/landing/l;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lcom/twitter/android/livevideo/landing/c;->h:Lcom/twitter/android/livevideo/landing/l;

    .line 200
    invoke-direct/range {p0 .. p5}, Lcom/twitter/android/livevideo/landing/c;->a(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;Lcom/twitter/app/common/base/n;Lcom/twitter/android/media/selection/MediaAttachmentController;Laby;)Labv;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->c:Labv;

    .line 203
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->h:Lcom/twitter/android/livevideo/landing/l;

    iget-object v0, v0, Lcom/twitter/android/livevideo/landing/l;->a:Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;

    invoke-virtual {v0}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->h:Lcom/twitter/android/livevideo/landing/l;

    iget-object v0, v0, Lcom/twitter/android/livevideo/landing/l;->a:Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;

    invoke-virtual {v0}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->h:Lcom/twitter/android/livevideo/landing/l;

    iget-object v0, v0, Lcom/twitter/android/livevideo/landing/l;->a:Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;

    iget-object v3, p0, Lcom/twitter/android/livevideo/landing/c;->p:Lcom/twitter/android/livevideo/player/t;

    invoke-virtual {v0, v3}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->setOnFullscreenClickListener(Lcom/twitter/android/livevideo/player/t;)V

    .line 208
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->h:Lcom/twitter/android/livevideo/landing/l;

    iget-object v0, v0, Lcom/twitter/android/livevideo/landing/l;->e:Lcom/twitter/android/livevideo/landing/LiveVideoPlaceholderView;

    iget-object v3, p0, Lcom/twitter/android/livevideo/landing/c;->q:Lcom/twitter/android/livevideo/landing/q;

    invoke-virtual {v0, v3}, Lcom/twitter/android/livevideo/landing/LiveVideoPlaceholderView;->setListener(Lcom/twitter/android/livevideo/landing/q;)V

    .line 209
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->h:Lcom/twitter/android/livevideo/landing/l;

    iget-object v0, v0, Lcom/twitter/android/livevideo/landing/l;->e:Lcom/twitter/android/livevideo/landing/LiveVideoPlaceholderView;

    iget-object v3, p0, Lcom/twitter/android/livevideo/landing/c;->e:Landroid/support/v4/app/FragmentActivity;

    .line 210
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-static {v3}, Lcom/twitter/android/livevideo/landing/c;->b(Landroid/content/res/Configuration;)F

    move-result v3

    .line 209
    invoke-virtual {v0, v3}, Lcom/twitter/android/livevideo/landing/LiveVideoPlaceholderView;->setAspectRatio(F)V

    .line 212
    iput-object p7, p0, Lcom/twitter/android/livevideo/landing/c;->f:Lcom/twitter/android/livevideo/player/m;

    .line 213
    if-eqz p2, :cond_1

    const-string/jumbo v0, "fullscreen_on_landscape"

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/livevideo/landing/c;->j:Z

    .line 214
    if-eqz p2, :cond_3

    const-string/jumbo v0, "state_start_video_on_view_resume"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    iput-boolean v2, p0, Lcom/twitter/android/livevideo/landing/c;->s:Z

    .line 216
    iput-object p9, p0, Lcom/twitter/android/livevideo/landing/c;->i:Lcom/twitter/android/livevideo/landing/a;

    .line 218
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->e:Landroid/support/v4/app/FragmentActivity;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 220
    const v0, 0x7f130432

    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/c;->c:Labv;

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/livevideo/landing/c;->a(ILcom/twitter/app/common/inject/v;)V

    .line 222
    invoke-direct {p0}, Lcom/twitter/android/livevideo/landing/c;->h()Lrx/o;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Lrx/o;->h()Lrx/o;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/livevideo/landing/c;->n:Lrx/r;

    .line 225
    invoke-virtual {v1, v2}, Lrx/o;->a(Lrx/r;)Lrx/ap;

    move-result-object v1

    .line 226
    iget-object v2, p0, Lcom/twitter/android/livevideo/landing/c;->k:Ldlx;

    invoke-virtual {v2, v1}, Ldlx;->a(Lrx/ap;)V

    .line 227
    invoke-direct {p0, p2, v0}, Lcom/twitter/android/livevideo/landing/c;->a(Landroid/os/Bundle;Lrx/o;)Lrx/ap;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/c;->k:Ldlx;

    invoke-virtual {v1, v0}, Ldlx;->a(Lrx/ap;)V

    .line 229
    return-void

    :cond_2
    move v0, v1

    .line 213
    goto :goto_0

    :cond_3
    move v2, v1

    .line 214
    goto :goto_1
.end method

.method public constructor <init>(Lcom/twitter/app/common/base/BaseFragmentActivity;Lcom/twitter/app/common/inject/t;Lcom/twitter/app/common/base/n;Lcom/twitter/android/media/selection/MediaAttachmentController;Laby;Lcom/twitter/app/common/list/w;Lcom/twitter/android/livevideo/player/m;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/android/livevideo/landing/a;)V
    .locals 10

    .prologue
    .line 178
    const-string/jumbo v0, "ViewHost"

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/inject/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/twitter/android/livevideo/landing/c;-><init>(Lcom/twitter/app/common/base/BaseFragmentActivity;Landroid/os/Bundle;Lcom/twitter/app/common/base/n;Lcom/twitter/android/media/selection/MediaAttachmentController;Laby;Lcom/twitter/app/common/list/w;Lcom/twitter/android/livevideo/player/m;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/android/livevideo/landing/a;)V

    .line 181
    return-void
.end method

.method private a(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;Lcom/twitter/app/common/base/n;Lcom/twitter/android/media/selection/MediaAttachmentController;Laby;)Labv;
    .locals 3

    .prologue
    .line 243
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f049d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 244
    invoke-virtual {p0}, Lcom/twitter/android/livevideo/landing/c;->aK_()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f13042c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 245
    new-instance v2, Lawq;

    invoke-direct {v2, v1, v0}, Lawq;-><init>(Landroid/view/View;I)V

    .line 246
    invoke-virtual {p0}, Lcom/twitter/android/livevideo/landing/c;->aK_()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f130432

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 247
    new-instance v0, Labx;

    invoke-direct {v0}, Labx;-><init>()V

    .line 248
    invoke-virtual {v0, p2}, Labx;->a(Landroid/os/Bundle;)Laxf;

    move-result-object v0

    check-cast v0, Labx;

    .line 249
    invoke-virtual {v0, v1}, Labx;->a(Landroid/view/View;)Laxf;

    move-result-object v0

    check-cast v0, Labx;

    .line 250
    invoke-virtual {v0, p1}, Labx;->a(Landroid/support/v4/app/FragmentActivity;)Laxf;

    move-result-object v0

    check-cast v0, Labx;

    .line 251
    invoke-virtual {v0, p3}, Labx;->a(Lcom/twitter/app/common/base/n;)Laxf;

    move-result-object v0

    check-cast v0, Labx;

    .line 252
    invoke-virtual {v0, p4}, Labx;->a(Lcom/twitter/android/media/selection/MediaAttachmentController;)Laxf;

    move-result-object v0

    check-cast v0, Labx;

    .line 253
    invoke-virtual {v0, v2}, Labx;->a(Lawq;)Laxf;

    move-result-object v0

    check-cast v0, Labx;

    const v1, 0x7f0a0682

    .line 254
    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Labx;->a(Ljava/lang/CharSequence;)Laxf;

    move-result-object v0

    check-cast v0, Labx;

    .line 255
    invoke-virtual {v0, p5}, Labx;->a(Laby;)Labx;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Labx;->a()Labv;

    move-result-object v0

    .line 247
    return-object v0
.end method

.method private a(Landroid/support/v4/app/FragmentActivity;)Landroid/view/View;
    .locals 3

    .prologue
    .line 234
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 235
    const v1, 0x7f040178

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/livevideo/landing/c;)Lcom/twitter/android/livevideo/landing/l;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->h:Lcom/twitter/android/livevideo/landing/l;

    return-object v0
.end method

.method private a(Landroid/os/Bundle;Lrx/o;)Lrx/ap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lrx/o",
            "<",
            "Lcom/twitter/model/livevideo/d;",
            ">;)",
            "Lrx/ap;"
        }
    .end annotation

    .prologue
    .line 285
    .line 288
    invoke-static {}, Ldcn;->d()Ldjj;

    move-result-object v0

    invoke-virtual {p2, v0}, Lrx/o;->d(Ldjj;)Lrx/o;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/livevideo/landing/c;->a:Ldjj;

    .line 289
    invoke-virtual {v0, v1}, Lrx/o;->d(Ldjj;)Lrx/o;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Lrx/o;->i()Lrx/o;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/c;->o:Lrx/subjects/e;

    new-instance v2, Lcom/twitter/android/livevideo/landing/j;

    invoke-direct {v2, p0}, Lcom/twitter/android/livevideo/landing/j;-><init>(Lcom/twitter/android/livevideo/landing/c;)V

    .line 286
    invoke-static {v0, v1, v2}, Lrx/o;->a(Lrx/o;Lrx/o;Ldjk;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/livevideo/landing/i;

    invoke-direct {v1, p0}, Lcom/twitter/android/livevideo/landing/i;-><init>(Lcom/twitter/android/livevideo/landing/c;)V

    .line 298
    invoke-virtual {v0, v1}, Lrx/o;->c(Ldjf;)Lrx/ap;

    move-result-object v0

    .line 307
    invoke-direct {p0, p1}, Lcom/twitter/android/livevideo/landing/c;->b(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/c;->o:Lrx/subjects/e;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/subjects/e;->b_(Ljava/lang/Object;)V

    .line 311
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/livevideo/landing/c;Lcom/twitter/model/livevideo/d;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/twitter/android/livevideo/landing/c;->e(Lcom/twitter/model/livevideo/d;)V

    return-void
.end method

.method private a(Lcom/twitter/model/livevideo/d;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 341
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->h:Lcom/twitter/android/livevideo/landing/l;

    iget-object v0, v0, Lcom/twitter/android/livevideo/landing/l;->e:Lcom/twitter/android/livevideo/landing/LiveVideoPlaceholderView;

    invoke-virtual {v0, p1}, Lcom/twitter/android/livevideo/landing/LiveVideoPlaceholderView;->setEvent(Lcom/twitter/model/livevideo/d;)V

    .line 343
    iget-object v0, p1, Lcom/twitter/model/livevideo/d;->i:Lcom/twitter/model/livevideo/a;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/twitter/model/livevideo/d;->i:Lcom/twitter/model/livevideo/a;

    iget-object v0, v0, Lcom/twitter/model/livevideo/a;->d:Lcom/twitter/model/livevideo/BroadcastState;

    sget-object v1, Lcom/twitter/model/livevideo/BroadcastState;->b:Lcom/twitter/model/livevideo/BroadcastState;

    if-ne v0, v1, :cond_0

    .line 344
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->h:Lcom/twitter/android/livevideo/landing/l;

    iget-object v0, v0, Lcom/twitter/android/livevideo/landing/l;->b:Lcom/twitter/internal/android/widget/ToolBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/ToolBar;->setDisplayShowTitleEnabled(Z)V

    .line 345
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->h:Lcom/twitter/android/livevideo/landing/l;

    iget-object v0, v0, Lcom/twitter/android/livevideo/landing/l;->e:Lcom/twitter/android/livevideo/landing/LiveVideoPlaceholderView;

    invoke-virtual {v0, v3}, Lcom/twitter/android/livevideo/landing/LiveVideoPlaceholderView;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->h:Lcom/twitter/android/livevideo/landing/l;

    iget-object v0, v0, Lcom/twitter/android/livevideo/landing/l;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 352
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->h:Lcom/twitter/android/livevideo/landing/l;

    iget-object v0, v0, Lcom/twitter/android/livevideo/landing/l;->b:Lcom/twitter/internal/android/widget/ToolBar;

    invoke-virtual {v0, v2}, Lcom/twitter/internal/android/widget/ToolBar;->setDisplayShowTitleEnabled(Z)V

    .line 349
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->h:Lcom/twitter/android/livevideo/landing/l;

    iget-object v0, v0, Lcom/twitter/android/livevideo/landing/l;->e:Lcom/twitter/android/livevideo/landing/LiveVideoPlaceholderView;

    invoke-virtual {v0, v2}, Lcom/twitter/android/livevideo/landing/LiveVideoPlaceholderView;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->h:Lcom/twitter/android/livevideo/landing/l;

    iget-object v0, v0, Lcom/twitter/android/livevideo/landing/l;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 442
    invoke-static {p1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    :goto_0
    return-void

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->c:Labv;

    invoke-virtual {v0, p1}, Labv;->b(Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->e:Landroid/support/v4/app/FragmentActivity;

    const v1, 0x7f0a0201

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 449
    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/c;->c:Labv;

    invoke-virtual {v1, v0}, Labv;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/livevideo/landing/c;Z)Z
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/twitter/android/livevideo/landing/c;->j:Z

    return p1
.end method

.method private static b(Landroid/content/res/Configuration;)F
    .locals 2

    .prologue
    .line 400
    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x40800000    # 4.0f

    :goto_0
    return v0

    :cond_0
    const v0, 0x3fe38e39

    goto :goto_0
.end method

.method static synthetic b(Lcom/twitter/android/livevideo/landing/c;)Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->e:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/livevideo/landing/c;Lcom/twitter/model/livevideo/d;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/twitter/android/livevideo/landing/c;->d(Lcom/twitter/model/livevideo/d;)V

    return-void
.end method

.method private b(Lcom/twitter/model/livevideo/d;)V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p1, Lcom/twitter/model/livevideo/d;->i:Lcom/twitter/model/livevideo/a;

    if-nez v0, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    invoke-direct {p0, p1}, Lcom/twitter/android/livevideo/landing/c;->c(Lcom/twitter/model/livevideo/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p1, Lcom/twitter/model/livevideo/d;->i:Lcom/twitter/model/livevideo/a;

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->l:Lcom/twitter/model/livevideo/a;

    .line 365
    new-instance v0, Lcom/twitter/library/av/playback/livevideo/LiveVideoDataSource;

    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/c;->i:Lcom/twitter/android/livevideo/landing/a;

    iget-object v1, v1, Lcom/twitter/android/livevideo/landing/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/twitter/library/av/playback/livevideo/LiveVideoDataSource;-><init>(Ljava/lang/String;Lcom/twitter/model/livevideo/d;)V

    .line 366
    new-instance v1, Lcom/twitter/android/av/video/l;

    invoke-direct {v1}, Lcom/twitter/android/av/video/l;-><init>()V

    .line 367
    invoke-virtual {v1, v0}, Lcom/twitter/android/av/video/l;->a(Lcom/twitter/library/av/playback/AVDataSource;)Lcom/twitter/android/av/video/l;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/c;->g:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 368
    invoke-virtual {v0, v1}, Lcom/twitter/android/av/video/l;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/android/av/video/l;

    move-result-object v0

    sget-object v1, Lbxa;->g:Lbxa;

    .line 369
    invoke-virtual {v0, v1}, Lcom/twitter/android/av/video/l;->a(Lbxa;)Lcom/twitter/android/av/video/l;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/av/VideoPlayerView$Mode;->l:Lcom/twitter/library/av/VideoPlayerView$Mode;

    .line 370
    invoke-virtual {v0, v1}, Lcom/twitter/android/av/video/l;->a(Lcom/twitter/library/av/VideoPlayerView$Mode;)Lcom/twitter/android/av/video/l;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/c;->h:Lcom/twitter/android/livevideo/landing/l;

    iget-object v1, v1, Lcom/twitter/android/livevideo/landing/l;->a:Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;

    .line 371
    invoke-virtual {v0, v1}, Lcom/twitter/android/av/video/l;->a(Lcom/twitter/library/av/control/h;)Lcom/twitter/android/av/video/l;

    move-result-object v0

    const v1, 0x3fe38e39

    .line 372
    invoke-static {v1}, Lcom/twitter/library/av/model/c;->a(F)Lcom/twitter/library/av/model/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/video/l;->a(Lcom/twitter/library/av/model/c;)Lcom/twitter/android/av/video/l;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/c;->m:Landroid/view/View$OnClickListener;

    .line 373
    invoke-virtual {v0, v1}, Lcom/twitter/android/av/video/l;->a(Landroid/view/View$OnClickListener;)Lcom/twitter/android/av/video/l;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Lcom/twitter/android/av/video/l;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/av/video/k;

    .line 375
    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/c;->h:Lcom/twitter/android/livevideo/landing/l;

    iget-object v1, v1, Lcom/twitter/android/livevideo/landing/l;->d:Lcom/twitter/android/av/video/VideoContainerHost;

    invoke-virtual {v1, v0}, Lcom/twitter/android/av/video/VideoContainerHost;->setVideoContainerConfig(Lcom/twitter/android/av/video/k;)V

    .line 376
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->h:Lcom/twitter/android/livevideo/landing/l;

    iget-object v0, v0, Lcom/twitter/android/livevideo/landing/l;->d:Lcom/twitter/android/av/video/VideoContainerHost;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/VideoContainerHost;->getAutoPlayableItem()Lcom/twitter/library/widget/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/widget/a;->ay_()Lcom/twitter/library/av/playback/ba;

    .line 377
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/livevideo/landing/c;->b(Landroid/content/res/Configuration;)F

    move-result v0

    .line 378
    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/c;->h:Lcom/twitter/android/livevideo/landing/l;

    iget-object v1, v1, Lcom/twitter/android/livevideo/landing/l;->d:Lcom/twitter/android/av/video/VideoContainerHost;

    invoke-virtual {v1, v0}, Lcom/twitter/android/av/video/VideoContainerHost;->setAspectRatio(F)V

    .line 379
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->h:Lcom/twitter/android/livevideo/landing/l;

    iget-object v0, v0, Lcom/twitter/android/livevideo/landing/l;->a:Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;

    invoke-virtual {v0}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->h:Lcom/twitter/android/livevideo/landing/l;

    iget-object v0, v0, Lcom/twitter/android/livevideo/landing/l;->a:Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;

    invoke-virtual {v0}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 453
    invoke-static {p1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    :goto_0
    return-void

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->c:Labv;

    invoke-static {p1}, Lcom/twitter/util/collection/r;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Labv;->b(Ljava/util/List;)V

    goto :goto_0
.end method

.method private b(Landroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 336
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->e:Landroid/support/v4/app/FragmentActivity;

    .line 337
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 336
    :goto_0
    return v0

    .line 337
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/twitter/android/livevideo/landing/c;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/twitter/android/livevideo/landing/c;->g()V

    return-void
.end method

.method static synthetic c(Lcom/twitter/android/livevideo/landing/c;Lcom/twitter/model/livevideo/d;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/twitter/android/livevideo/landing/c;->a(Lcom/twitter/model/livevideo/d;)V

    return-void
.end method

.method private c(Lcom/twitter/model/livevideo/d;)Z
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->l:Lcom/twitter/model/livevideo/a;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/twitter/model/livevideo/d;->i:Lcom/twitter/model/livevideo/a;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/twitter/model/livevideo/d;->i:Lcom/twitter/model/livevideo/a;

    iget-object v0, v0, Lcom/twitter/model/livevideo/a;->d:Lcom/twitter/model/livevideo/BroadcastState;

    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/c;->l:Lcom/twitter/model/livevideo/a;

    iget-object v1, v1, Lcom/twitter/model/livevideo/a;->d:Lcom/twitter/model/livevideo/BroadcastState;

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/twitter/android/livevideo/landing/c;)Lrx/subjects/e;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->o:Lrx/subjects/e;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/android/livevideo/landing/c;Lcom/twitter/model/livevideo/d;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/twitter/android/livevideo/landing/c;->b(Lcom/twitter/model/livevideo/d;)V

    return-void
.end method

.method private d(Lcom/twitter/model/livevideo/d;)V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p1, Lcom/twitter/model/livevideo/d;->i:Lcom/twitter/model/livevideo/a;

    if-nez v0, :cond_0

    .line 416
    :goto_0
    return-void

    .line 411
    :cond_0
    new-instance v0, Lcom/twitter/library/av/playback/livevideo/LiveVideoDataSource;

    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/c;->i:Lcom/twitter/android/livevideo/landing/a;

    iget-object v1, v1, Lcom/twitter/android/livevideo/landing/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/twitter/library/av/playback/livevideo/LiveVideoDataSource;-><init>(Ljava/lang/String;Lcom/twitter/model/livevideo/d;)V

    .line 412
    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/c;->f:Lcom/twitter/android/livevideo/player/m;

    .line 413
    invoke-virtual {v1, v0}, Lcom/twitter/android/livevideo/player/m;->a(Lcom/twitter/library/av/playback/AVDataSource;)Lcom/twitter/library/av/ap;

    move-result-object v0

    const/4 v1, 0x1

    .line 414
    invoke-virtual {v0, v1}, Lcom/twitter/library/av/ap;->c(Z)Lcom/twitter/library/av/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/c;->g:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 415
    invoke-virtual {v0, v1}, Lcom/twitter/library/av/ap;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/library/av/ap;

    goto :goto_0
.end method

.method static synthetic e(Lcom/twitter/android/livevideo/landing/c;)Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->r:Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;

    return-object v0
.end method

.method private e(Lcom/twitter/model/livevideo/d;)V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p1, Lcom/twitter/model/livevideo/d;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/twitter/android/livevideo/landing/c;->a(Ljava/lang/String;)V

    .line 438
    iget-object v0, p1, Lcom/twitter/model/livevideo/d;->j:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/twitter/android/livevideo/landing/c;->b(Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method static synthetic f(Lcom/twitter/android/livevideo/landing/c;)Lcom/twitter/android/livevideo/player/m;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->f:Lcom/twitter/android/livevideo/player/m;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/twitter/android/livevideo/landing/c;->s:Z

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->h:Lcom/twitter/android/livevideo/landing/l;

    iget-object v0, v0, Lcom/twitter/android/livevideo/landing/l;->d:Lcom/twitter/android/av/video/VideoContainerHost;

    new-instance v1, Lcom/twitter/android/livevideo/landing/k;

    invoke-direct {v1, p0}, Lcom/twitter/android/livevideo/landing/k;-><init>(Lcom/twitter/android/livevideo/landing/c;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/video/VideoContainerHost;->post(Ljava/lang/Runnable;)Z

    .line 329
    :cond_0
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->h:Lcom/twitter/android/livevideo/landing/l;

    iget-object v0, v0, Lcom/twitter/android/livevideo/landing/l;->d:Lcom/twitter/android/av/video/VideoContainerHost;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/VideoContainerHost;->getAutoPlayableItem()Lcom/twitter/library/widget/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/widget/a;->at_()Lcom/twitter/library/av/playback/ba;

    .line 395
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->h:Lcom/twitter/android/livevideo/landing/l;

    iget-object v0, v0, Lcom/twitter/android/livevideo/landing/l;->d:Lcom/twitter/android/av/video/VideoContainerHost;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/VideoContainerHost;->a()V

    .line 396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->l:Lcom/twitter/model/livevideo/a;

    .line 397
    return-void
.end method

.method private h()Lrx/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/o",
            "<",
            "Lcom/twitter/model/livevideo/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 420
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->d:Landroid/support/v4/app/FragmentManager;

    const-string/jumbo v1, "TAG_TIMELINE_FRAGMENT"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 421
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/twitter/android/livevideo/landing/c;->i()Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->r:Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;

    .line 422
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->r:Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;

    invoke-virtual {v0}, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->u()Lrx/o;

    move-result-object v0

    return-object v0

    .line 421
    :cond_0
    check-cast v0, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;

    goto :goto_0
.end method

.method private i()Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;
    .locals 4

    .prologue
    .line 427
    new-instance v0, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;

    invoke-direct {v0}, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;-><init>()V

    .line 428
    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/c;->b:Lcom/twitter/app/common/list/w;

    invoke-virtual {v0, v1}, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->a(Lcom/twitter/app/common/base/f;)V

    .line 429
    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/c;->d:Landroid/support/v4/app/FragmentManager;

    .line 430
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f130431

    const-string/jumbo v3, "TAG_TIMELINE_FRAGMENT"

    .line 431
    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 432
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 433
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 461
    invoke-super {p0, p1}, Lcom/twitter/app/common/inject/w;->a(Landroid/content/res/Configuration;)V

    .line 462
    iget-boolean v0, p0, Lcom/twitter/android/livevideo/landing/c;->j:Z

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 463
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->o:Lrx/subjects/e;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/e;->b_(Ljava/lang/Object;)V

    .line 467
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/twitter/android/livevideo/landing/c;->b(Landroid/content/res/Configuration;)F

    move-result v0

    .line 468
    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/c;->h:Lcom/twitter/android/livevideo/landing/l;

    iget-object v1, v1, Lcom/twitter/android/livevideo/landing/l;->d:Lcom/twitter/android/av/video/VideoContainerHost;

    invoke-virtual {v1, v0}, Lcom/twitter/android/av/video/VideoContainerHost;->setAspectRatio(F)V

    .line 469
    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/c;->h:Lcom/twitter/android/livevideo/landing/l;

    iget-object v1, v1, Lcom/twitter/android/livevideo/landing/l;->e:Lcom/twitter/android/livevideo/landing/LiveVideoPlaceholderView;

    invoke-virtual {v1, v0}, Lcom/twitter/android/livevideo/landing/LiveVideoPlaceholderView;->setAspectRatio(F)V

    .line 470
    return-void

    .line 464
    :cond_1
    iget-boolean v0, p0, Lcom/twitter/android/livevideo/landing/c;->j:Z

    if-nez v0, :cond_0

    .line 465
    iput-boolean v2, p0, Lcom/twitter/android/livevideo/landing/c;->j:Z

    goto :goto_0
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 474
    invoke-super {p0, p1}, Lcom/twitter/app/common/inject/w;->a(Landroid/os/Bundle;)V

    .line 475
    const-string/jumbo v0, "fullscreen_on_landscape"

    iget-boolean v1, p0, Lcom/twitter/android/livevideo/landing/c;->j:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 476
    const-string/jumbo v0, "state_start_video_on_view_resume"

    iget-boolean v1, p0, Lcom/twitter/android/livevideo/landing/c;->s:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 477
    return-void
.end method

.method public aL_()V
    .locals 0

    .prologue
    .line 272
    invoke-super {p0}, Lcom/twitter/app/common/inject/w;->aL_()V

    .line 273
    invoke-direct {p0}, Lcom/twitter/android/livevideo/landing/c;->f()V

    .line 274
    return-void
.end method

.method public aM_()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->h:Lcom/twitter/android/livevideo/landing/l;

    iget-object v0, v0, Lcom/twitter/android/livevideo/landing/l;->a:Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;

    invoke-virtual {v0}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->k()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/livevideo/landing/c;->s:Z

    .line 279
    invoke-super {p0}, Lcom/twitter/app/common/inject/w;->aM_()V

    .line 280
    return-void
.end method

.method public as_()V
    .locals 1

    .prologue
    .line 266
    invoke-super {p0}, Lcom/twitter/app/common/inject/w;->as_()V

    .line 267
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->k:Ldlx;

    invoke-virtual {v0}, Ldlx;->R_()V

    .line 268
    return-void
.end method

.method public d()Labv;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/c;->c:Labv;

    return-object v0
.end method
