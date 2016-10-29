.class public Lcom/twitter/android/periscope/PeriscopePlayerActivity;
.super Lcom/twitter/android/FullscreenMediaPlayerActivity;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/businessprofiles/c;
.implements Lcom/twitter/android/periscope/c;
.implements Lcom/twitter/android/periscope/r;
.implements Ldml;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Lcom/twitter/model/businessprofiles/m;

.field private D:Lcom/twitter/android/periscope/d;

.field private E:Laev;

.field private K:Lrx/ap;

.field private L:Lcom/twitter/model/core/Tweet;

.field private M:Lcom/twitter/model/core/TwitterUser;

.field private N:Lcom/twitter/android/moments/ui/fullscreen/er;

.field private O:Z

.field private P:J

.field private final l:Lcom/twitter/model/core/TwitterUser;

.field private final m:Lcom/twitter/android/profiles/au;

.field private final n:Lcom/twitter/android/av/bv;

.field private final o:Lcom/twitter/android/periscope/g;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Landroid/view/OrientationEventListener;

.field private s:Lcom/twitter/android/periscope/ae;

.field private t:Lcom/twitter/android/periscope/t;

.field private u:Lcom/twitter/library/av/playback/bw;

.field private v:Lcom/twitter/android/av/PeriscopeFullscreenChromeView;

.field private w:Lcom/twitter/android/periscope/aa;

.field private x:Lcom/twitter/android/periscope/s;

.field private y:Lcom/twitter/android/av/bp;

.field private z:Landroid/view/Display;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/twitter/android/FullscreenMediaPlayerActivity;-><init>()V

    .line 95
    new-instance v0, Lcom/twitter/model/core/cv;

    invoke-direct {v0}, Lcom/twitter/model/core/cv;-><init>()V

    const-wide v2, 0x91c81766L

    .line 96
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/core/cv;->a(J)Lcom/twitter/model/core/cv;

    move-result-object v0

    const-string/jumbo v1, "periscopeco"

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cv;->g(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/core/cv;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    iput-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->l:Lcom/twitter/model/core/TwitterUser;

    .line 97
    new-instance v0, Lcom/twitter/android/profiles/au;

    invoke-direct {v0}, Lcom/twitter/android/profiles/au;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->m:Lcom/twitter/android/profiles/au;

    .line 98
    new-instance v0, Lcom/twitter/android/periscope/v;

    invoke-direct {v0, p0}, Lcom/twitter/android/periscope/v;-><init>(Lcom/twitter/android/periscope/PeriscopePlayerActivity;)V

    iput-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->n:Lcom/twitter/android/av/bv;

    .line 104
    new-instance v0, Lcom/twitter/android/periscope/g;

    invoke-direct {v0}, Lcom/twitter/android/periscope/g;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->o:Lcom/twitter/android/periscope/g;

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->A:Z

    return-void
.end method

.method private a(Lcom/twitter/library/client/bk;)Laev;
    .locals 8

    .prologue
    .line 175
    invoke-static {}, Lcba;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    const/4 v0, 0x0

    .line 180
    :goto_0
    return-object v0

    .line 179
    :cond_0
    invoke-virtual {p1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 180
    new-instance v0, Laev;

    new-instance v2, Lazm;

    new-instance v3, Ladd;

    invoke-direct {v3, p0, v1}, Ladd;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    invoke-direct {v2, v3}, Lazm;-><init>(Lazt;)V

    new-instance v3, Lazm;

    new-instance v4, Ladb;

    .line 185
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    .line 184
    invoke-static {p0, v6, v7}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v1

    invoke-direct {v4, v1}, Ladb;-><init>(Lcom/twitter/library/provider/dm;)V

    invoke-direct {v3, v4}, Lazm;-><init>(Lazt;)V

    invoke-direct {v0, v2, v3}, Laev;-><init>(Lazt;Lazt;)V

    goto :goto_0
.end method

.method private a(JLclw;)Lcom/twitter/android/card/i;
    .locals 3

    .prologue
    .line 426
    new-instance v0, Lcom/twitter/android/card/k;

    invoke-direct {v0, p0}, Lcom/twitter/android/card/k;-><init>(Landroid/content/Context;)V

    .line 427
    invoke-interface {v0, p1, p2}, Lcom/twitter/android/card/i;->a(J)V

    .line 428
    invoke-virtual {p3}, Lclw;->N()Lclm;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twitter/android/card/i;->a(Lclm;)V

    .line 429
    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/periscope/PeriscopePlayerActivity;)Lcom/twitter/library/av/playback/bw;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->u:Lcom/twitter/library/av/playback/bw;

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/periscope/PeriscopePlayerActivity;Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/model/core/TwitterUser;
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->M:Lcom/twitter/model/core/TwitterUser;

    return-object p1
.end method

.method private a(J)V
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->E:Laev;

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 190
    invoke-static {}, Lcba;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->E:Laev;

    invoke-virtual {v0, p1, p2}, Laev;->a(J)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/periscope/x;

    invoke-direct {v1, p0}, Lcom/twitter/android/periscope/x;-><init>(Lcom/twitter/android/periscope/PeriscopePlayerActivity;)V

    .line 195
    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/ao;)Lrx/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->K:Lrx/ap;

    goto :goto_0
.end method

.method private a(Lcom/twitter/android/av/PeriscopeFullscreenChromeView;)V
    .locals 5

    .prologue
    .line 357
    iput-object p1, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->v:Lcom/twitter/android/av/PeriscopeFullscreenChromeView;

    .line 358
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->v:Lcom/twitter/android/av/PeriscopeFullscreenChromeView;

    invoke-virtual {v0, p0}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->setAppCardViewProvider(Lcom/twitter/android/periscope/c;)V

    .line 359
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->v:Lcom/twitter/android/av/PeriscopeFullscreenChromeView;

    iget-object v1, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->o:Lcom/twitter/android/periscope/g;

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->setBroadcastProgress(Lcom/twitter/android/periscope/g;)V

    .line 360
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->v:Lcom/twitter/android/av/PeriscopeFullscreenChromeView;

    iget-boolean v1, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->q:Z

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->setIsLive(Z)V

    .line 361
    iget-wide v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->P:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->v:Lcom/twitter/android/av/PeriscopeFullscreenChromeView;

    invoke-virtual {v0}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->K()V

    .line 366
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->s:Lcom/twitter/android/periscope/ae;

    iget-object v1, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->v:Lcom/twitter/android/av/PeriscopeFullscreenChromeView;

    invoke-virtual {v0, v1}, Lcom/twitter/android/periscope/ae;->a(Lcom/twitter/android/av/PeriscopeFullscreenChromeView;)V

    .line 367
    new-instance v0, Lcom/twitter/android/periscope/s;

    iget-object v1, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->v:Lcom/twitter/android/av/PeriscopeFullscreenChromeView;

    .line 368
    invoke-virtual {p0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->Y()Lcom/twitter/internal/android/widget/ToolBar;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->d:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->c:Lcom/twitter/android/av/GalleryVideoChromeView;

    invoke-virtual {v4}, Lcom/twitter/android/av/GalleryVideoChromeView;->getControls()Landroid/view/View;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/android/periscope/s;-><init>(Lcom/twitter/android/av/PeriscopeFullscreenChromeView;Lcom/twitter/internal/android/widget/ToolBar;Landroid/view/ViewGroup;Landroid/view/View;)V

    iput-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->x:Lcom/twitter/android/periscope/s;

    .line 369
    invoke-direct {p0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->s()V

    .line 371
    invoke-virtual {p0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->d()Lcom/twitter/android/av/GalleryVideoChromeView;

    move-result-object v0

    .line 372
    iget-object v1, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->a:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v1}, Lcom/twitter/library/av/playback/AVPlayer;->F()Lcom/twitter/model/av/AVMedia;

    move-result-object v1

    invoke-interface {v1}, Lcom/twitter/model/av/AVMedia;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/GalleryVideoChromeView;->setShouldShowControls(Z)V

    .line 373
    iget-object v1, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->s:Lcom/twitter/android/periscope/ae;

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/GalleryVideoChromeView;->setControlsListener(Lcom/twitter/library/av/control/f;)V

    .line 374
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->v:Lcom/twitter/android/av/PeriscopeFullscreenChromeView;

    invoke-virtual {v0}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->J()V

    goto :goto_0
.end method

.method private a(Lcom/twitter/android/av/PeriscopeFullscreenChromeView;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 297
    invoke-static {}, Lcba;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    :goto_0
    return-void

    .line 302
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 303
    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 305
    new-instance v0, Lcom/twitter/android/periscope/y;

    invoke-direct {v0, p0}, Lcom/twitter/android/periscope/y;-><init>(Lcom/twitter/android/periscope/PeriscopePlayerActivity;)V

    invoke-virtual {p1, v0}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->setProfileClickListener(Lcom/twitter/android/av/bc;)V

    .line 312
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->M:Lcom/twitter/model/core/TwitterUser;

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->M:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {p1, v0}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->setProfileUser(Lcom/twitter/model/core/TwitterUser;)V

    .line 316
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 317
    invoke-static {p0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v2

    .line 318
    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/a;

    const/16 v3, 0x4001

    invoke-direct {v1, p0, v3}, Lcom/twitter/android/moments/ui/fullscreen/a;-><init>(Landroid/app/Activity;I)V

    .line 321
    invoke-virtual {p0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100031

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 322
    new-instance v3, Lakk;

    invoke-direct {v3, p2, p3, v0, v4}, Lakk;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;I)V

    .line 324
    new-instance v4, Lcom/twitter/android/periscope/ab;

    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->L:Lcom/twitter/model/core/Tweet;

    invoke-direct {v4, p0, v1, v0}, Lcom/twitter/android/periscope/ab;-><init>(Landroid/content/Context;Lcom/twitter/android/moments/ui/fullscreen/a;Lcom/twitter/model/core/Tweet;)V

    .line 326
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/er;

    move-object v1, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/moments/ui/fullscreen/er;-><init>(Landroid/content/Context;Lcom/twitter/library/client/bd;Lakk;Lcom/twitter/android/moments/ui/fullscreen/fo;ZZ)V

    iput-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->N:Lcom/twitter/android/moments/ui/fullscreen/er;

    .line 328
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->N:Lcom/twitter/android/moments/ui/fullscreen/er;

    new-instance v1, Lcom/twitter/android/periscope/z;

    invoke-direct {v1, p0}, Lcom/twitter/android/periscope/z;-><init>(Lcom/twitter/android/periscope/PeriscopePlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/er;->a(Lcom/twitter/android/moments/ui/fullscreen/dx;)V

    .line 335
    iget-wide v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->I:J

    invoke-static {p0, v0, v1}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v0

    .line 336
    new-instance v1, Larj;

    iget-object v2, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->J:Lcom/twitter/library/client/bd;

    iget-object v3, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->M:Lcom/twitter/model/core/TwitterUser;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Larj;-><init>(Lcom/twitter/library/provider/dm;Lcom/twitter/library/client/bd;Lcom/twitter/model/core/TwitterUser;Lcss;)V

    .line 338
    new-instance v0, Lare;

    invoke-direct {v0, v1}, Lare;-><init>(Lari;)V

    .line 341
    iget-object v1, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->N:Lcom/twitter/android/moments/ui/fullscreen/er;

    invoke-virtual {v1, v0}, Lcom/twitter/android/moments/ui/fullscreen/er;->a(Lard;)V

    goto :goto_0
.end method

.method private a(Lcom/twitter/library/av/playback/bw;Lcom/twitter/android/av/PeriscopeFullscreenChromeView;)V
    .locals 3

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->m()V

    .line 280
    iput-object p1, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->u:Lcom/twitter/library/av/playback/bw;

    .line 281
    invoke-direct {p0, p2}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->a(Lcom/twitter/android/av/PeriscopeFullscreenChromeView;)V

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->B:Z

    .line 286
    invoke-static {}, Lcom/twitter/android/periscope/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->t:Lcom/twitter/android/periscope/t;

    invoke-virtual {v0}, Lcom/twitter/android/periscope/t;->i()Ltv/periscope/android/session/a;

    move-result-object v0

    invoke-interface {v0}, Ltv/periscope/android/session/a;->a()Ltv/periscope/android/session/Session;

    move-result-object v0

    if-nez v0, :cond_0

    .line 287
    new-instance v0, Lcom/twitter/android/periscope/p;

    .line 288
    invoke-static {p0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->t:Lcom/twitter/android/periscope/t;

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/periscope/p;-><init>(Lcom/twitter/library/client/bd;Ltv/periscope/android/library/d;)V

    .line 289
    invoke-virtual {v0, p0, p0}, Lcom/twitter/android/periscope/p;->a(Landroid/content/Context;Lcom/twitter/android/periscope/r;)V

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->l()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/periscope/PeriscopePlayerActivity;Z)Z
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->O:Z

    return p1
.end method

.method static synthetic b(Lcom/twitter/android/periscope/PeriscopePlayerActivity;)Lcom/twitter/android/moments/ui/fullscreen/er;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->N:Lcom/twitter/android/moments/ui/fullscreen/er;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/periscope/PeriscopePlayerActivity;)Lcom/twitter/model/core/TwitterUser;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->M:Lcom/twitter/model/core/TwitterUser;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/android/periscope/PeriscopePlayerActivity;)Lcom/twitter/android/av/PeriscopeFullscreenChromeView;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->v:Lcom/twitter/android/av/PeriscopeFullscreenChromeView;

    return-object v0
.end method

.method static synthetic e(Lcom/twitter/android/periscope/PeriscopePlayerActivity;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->h()V

    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->N:Lcom/twitter/android/moments/ui/fullscreen/er;

    if-nez v0, :cond_0

    .line 223
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-wide v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->P:J

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->a(J)V

    .line 219
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->c(Z)V

    .line 220
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->N:Lcom/twitter/android/moments/ui/fullscreen/er;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/er;->b()Z

    .line 221
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->N:Lcom/twitter/android/moments/ui/fullscreen/er;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/er;->a()V

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->O:Z

    goto :goto_0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 226
    invoke-static {p0}, Lcom/twitter/android/periscope/t;->a(Landroid/content/Context;)Lcom/twitter/android/periscope/t;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->t:Lcom/twitter/android/periscope/t;

    .line 227
    invoke-static {}, Ltv/periscope/android/library/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->t:Lcom/twitter/android/periscope/t;

    invoke-static {v0, v1}, Ltv/periscope/android/library/b;->a(Landroid/content/Context;Ltv/periscope/android/library/d;)V

    .line 230
    :cond_0
    return-void
.end method

.method private l()V
    .locals 8

    .prologue
    .line 345
    new-instance v4, Ltv/periscope/android/ui/broadcast/bk;

    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->v:Lcom/twitter/android/av/PeriscopeFullscreenChromeView;

    invoke-direct {v4, v0}, Ltv/periscope/android/ui/broadcast/bk;-><init>(Ltv/periscope/android/player/c;)V

    .line 346
    iget-boolean v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->q:Z

    if-eqz v0, :cond_0

    sget-object v3, Ltv/periscope/android/player/PlayMode;->b:Ltv/periscope/android/player/PlayMode;

    .line 347
    :goto_0
    new-instance v0, Lcom/twitter/android/periscope/aa;

    iget-object v1, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->u:Lcom/twitter/library/av/playback/bw;

    iget-object v2, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->t:Lcom/twitter/android/periscope/t;

    .line 348
    invoke-virtual {v2}, Lcom/twitter/android/periscope/t;->h()Ltv/periscope/android/data/b;

    move-result-object v2

    invoke-direct {v0, v4, v1, v2}, Lcom/twitter/android/periscope/aa;-><init>(Ltv/periscope/android/player/b;Lcom/twitter/library/av/playback/bw;Ltv/periscope/android/data/b;)V

    iput-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->w:Lcom/twitter/android/periscope/aa;

    .line 349
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->w:Lcom/twitter/android/periscope/aa;

    invoke-virtual {v0}, Lcom/twitter/android/periscope/aa;->a()V

    .line 350
    invoke-static {}, Ltv/periscope/android/library/b;->a()Ltv/periscope/android/library/b;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Ltv/periscope/android/library/b;->c()Ldmm;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->p:Ljava/lang/String;

    iget-object v5, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->w:Lcom/twitter/android/periscope/aa;

    iget-object v6, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->w:Lcom/twitter/android/periscope/aa;

    move-object v1, p0

    move-object v7, p0

    .line 352
    invoke-interface/range {v0 .. v7}, Ldmm;->a(Landroid/app/Activity;Ljava/lang/String;Ltv/periscope/android/player/PlayMode;Ltv/periscope/android/player/b;Ltv/periscope/android/player/d;Ltv/periscope/android/player/e;Ldml;)V

    .line 354
    return-void

    .line 346
    :cond_0
    sget-object v3, Ltv/periscope/android/player/PlayMode;->d:Ltv/periscope/android/player/PlayMode;

    goto :goto_0
.end method

.method private m()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 377
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->w:Lcom/twitter/android/periscope/aa;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->w:Lcom/twitter/android/periscope/aa;

    invoke-virtual {v0}, Lcom/twitter/android/periscope/aa;->b()V

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->s:Lcom/twitter/android/periscope/ae;

    invoke-virtual {v0, v2}, Lcom/twitter/android/periscope/ae;->a(Ldmj;)V

    .line 382
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->s:Lcom/twitter/android/periscope/ae;

    invoke-virtual {v0, v2}, Lcom/twitter/android/periscope/ae;->a(Lcom/twitter/android/av/PeriscopeFullscreenChromeView;)V

    .line 384
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->t:Lcom/twitter/android/periscope/t;

    invoke-virtual {v0}, Lcom/twitter/android/periscope/t;->k()Lcom/twitter/android/periscope/h;

    move-result-object v0

    .line 385
    invoke-virtual {v0}, Lcom/twitter/android/periscope/h;->a()V

    .line 387
    iput-boolean v1, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->B:Z

    .line 388
    iput-boolean v1, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->O:Z

    .line 389
    return-void
.end method

.method private p()Landroid/view/View;
    .locals 4

    .prologue
    .line 394
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->C:Lcom/twitter/model/businessprofiles/m;

    iget-object v0, v0, Lcom/twitter/model/businessprofiles/m;->f:Lcom/twitter/model/businessprofiles/e;

    iget-object v0, v0, Lcom/twitter/model/businessprofiles/e;->e:Lclw;

    .line 395
    iget-object v1, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->l:Lcom/twitter/model/core/TwitterUser;

    iget-wide v2, v1, Lcom/twitter/model/core/TwitterUser;->c:J

    .line 396
    invoke-static {p0, v2, v3, v0}, Lcom/twitter/library/card/ay;->a(Landroid/app/Activity;JLclw;)Lcom/twitter/library/card/ay;

    move-result-object v1

    .line 398
    invoke-interface {v1}, Lcom/twitter/library/widget/renderablecontent/e;->bh_()V

    .line 399
    invoke-interface {v1}, Lcom/twitter/library/widget/renderablecontent/e;->c()V

    .line 400
    invoke-interface {v1}, Lcom/twitter/library/widget/renderablecontent/e;->d()Landroid/view/View;

    move-result-object v1

    .line 401
    iget-object v2, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->l:Lcom/twitter/model/core/TwitterUser;

    iget-wide v2, v2, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-direct {p0, v2, v3, v0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->a(JLclw;)Lcom/twitter/android/card/i;

    move-result-object v0

    const-string/jumbo v2, "impression"

    const-string/jumbo v3, "platform_card"

    .line 402
    invoke-interface {v0, v2, v3}, Lcom/twitter/android/card/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return-object v1
.end method

.method private r()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->D:Lcom/twitter/android/periscope/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->C:Lcom/twitter/model/businessprofiles/m;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->D:Lcom/twitter/android/periscope/d;

    invoke-direct {p0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->p()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twitter/android/periscope/d;->a(Landroid/view/View;)V

    .line 422
    :cond_0
    return-void
.end method

.method private s()V
    .locals 4

    .prologue
    .line 522
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->x:Lcom/twitter/android/periscope/s;

    if-eqz v0, :cond_1

    .line 523
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 524
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 525
    iget-object v2, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->z:Landroid/view/Display;

    invoke-virtual {v2, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 526
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 527
    iget-object v2, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->z:Landroid/view/Display;

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 529
    :cond_0
    iget-object v2, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->x:Lcom/twitter/android/periscope/s;

    iget-boolean v3, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->b:Z

    invoke-virtual {v2, v1, v0, v3}, Lcom/twitter/android/periscope/s;->a(Landroid/graphics/Point;Landroid/graphics/Point;Z)V

    .line 531
    :cond_1
    return-void
.end method

.method private t()V
    .locals 4

    .prologue
    .line 534
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->y:Lcom/twitter/android/av/bp;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/av/bp;->a(J)V

    .line 535
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/periscope/d;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->D:Lcom/twitter/android/periscope/d;

    .line 409
    invoke-direct {p0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->r()V

    .line 410
    return-void
.end method

.method public a(Lcom/twitter/library/service/x;)V
    .locals 0

    .prologue
    .line 555
    invoke-direct {p0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->l()V

    .line 556
    return-void
.end method

.method public a(Lcom/twitter/model/businessprofiles/m;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->C:Lcom/twitter/model/businessprofiles/m;

    .line 415
    invoke-direct {p0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->r()V

    .line 416
    return-void
.end method

.method public a(Ldmj;)V
    .locals 2

    .prologue
    .line 489
    const-string/jumbo v0, "PeriscopePlayerActivity"

    const-string/jumbo v1, "Loaded broadcast successfully"

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->s:Lcom/twitter/android/periscope/ae;

    invoke-virtual {v0, p1}, Lcom/twitter/android/periscope/ae;->a(Ldmj;)V

    .line 491
    invoke-direct {p0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->s()V

    .line 492
    return-void
.end method

.method public a(Ltv/periscope/android/api/PsUser;)V
    .locals 0

    .prologue
    .line 541
    invoke-direct {p0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->l()V

    .line 542
    return-void
.end method

.method public a(Ltv/periscope/android/library/PeriscopeException;)V
    .locals 2

    .prologue
    .line 496
    const-string/jumbo v0, "PeriscopePlayerActivity"

    const-string/jumbo v1, "Failed to load broadcast"

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    return-void
.end method

.method protected a(Lzz;Z)V
    .locals 8

    .prologue
    .line 234
    invoke-super {p0, p1, p2}, Lcom/twitter/android/FullscreenMediaPlayerActivity;->a(Lzz;Z)V

    .line 235
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->a:Lcom/twitter/library/av/playback/AVPlayer;

    if-eqz v0, :cond_0

    .line 236
    check-cast p1, Laal;

    .line 237
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->a:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->g()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v1

    .line 238
    iget-boolean v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->B:Z

    if-nez v0, :cond_0

    instance-of v0, v1, Lcom/twitter/library/av/playback/bw;

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p1}, Laal;->g()Lcom/twitter/library/av/control/h;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;

    .line 240
    check-cast v1, Lcom/twitter/library/av/playback/bw;

    invoke-direct {p0, v1, v0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->a(Lcom/twitter/library/av/playback/bw;Lcom/twitter/android/av/PeriscopeFullscreenChromeView;)V

    .line 242
    invoke-virtual {p1}, Laal;->h()Lcom/twitter/library/av/VideoPlayerView;

    move-result-object v1

    .line 243
    invoke-virtual {p1}, Laal;->i()Landroid/view/ViewGroup;

    move-result-object v2

    .line 244
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-wide v4, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->P:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 246
    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->a(Lcom/twitter/android/av/PeriscopeFullscreenChromeView;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 252
    :cond_0
    return-void
.end method

.method public a(Lcyd;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 441
    invoke-interface {p1}, Lcyd;->a()I

    move-result v0

    .line 442
    const v3, 0x7f1307f3

    if-ne v0, v3, :cond_3

    .line 443
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->v:Lcom/twitter/android/av/PeriscopeFullscreenChromeView;

    if-eqz v0, :cond_0

    .line 445
    iget-boolean v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->A:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->A:Z

    .line 447
    iget-boolean v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->A:Z

    if-eqz v0, :cond_2

    .line 448
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->v:Lcom/twitter/android/av/PeriscopeFullscreenChromeView;

    invoke-virtual {v0}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->getChatRoomView()Ltv/periscope/android/ui/broadcast/ChatRoomView;

    move-result-object v0

    invoke-virtual {v0, v2}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->a(Z)V

    .line 449
    const v0, 0x7f0a05ff

    .line 455
    :goto_1
    invoke-interface {p1, v0}, Lcyd;->g(I)Lcyd;

    .line 459
    :cond_0
    :goto_2
    return v1

    :cond_1
    move v0, v2

    .line 445
    goto :goto_0

    .line 451
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->v:Lcom/twitter/android/av/PeriscopeFullscreenChromeView;

    invoke-virtual {v0}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->getChatRoomView()Ltv/periscope/android/ui/broadcast/ChatRoomView;

    move-result-object v0

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->a()V

    .line 452
    const v0, 0x7f0a0604

    goto :goto_1

    .line 459
    :cond_3
    invoke-super {p0, p1}, Lcom/twitter/android/FullscreenMediaPlayerActivity;->a(Lcyd;)Z

    move-result v1

    goto :goto_2
.end method

.method public a(Lcyg;)Z
    .locals 1

    .prologue
    .line 434
    invoke-super {p0, p1}, Lcom/twitter/android/FullscreenMediaPlayerActivity;->a(Lcyg;)Z

    .line 435
    const v0, 0x7f140021

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 436
    const/4 v0, 0x1

    return v0
.end method

.method public aZ_()V
    .locals 0

    .prologue
    .line 548
    invoke-direct {p0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->l()V

    .line 549
    return-void
.end method

.method public b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 134
    invoke-super {p0, p1, p2}, Lcom/twitter/android/FullscreenMediaPlayerActivity;->b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V

    .line 136
    invoke-virtual {p0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 137
    const-string/jumbo v0, "broadcast_id"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->p:Ljava/lang/String;

    .line 138
    const-string/jumbo v0, "is_live"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->q:Z

    .line 139
    const-string/jumbo v0, "tw"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    iput-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->L:Lcom/twitter/model/core/Tweet;

    .line 140
    const-string/jumbo v0, "broadcaster_twitter_user_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->P:J

    .line 143
    new-instance v0, Lcom/twitter/android/periscope/w;

    invoke-direct {v0, p0, p0}, Lcom/twitter/android/periscope/w;-><init>(Lcom/twitter/android/periscope/PeriscopePlayerActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->r:Landroid/view/OrientationEventListener;

    .line 156
    invoke-virtual {p0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->a(Lcom/twitter/library/client/bk;)Laev;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->E:Laev;

    .line 158
    new-instance v0, Lcom/twitter/android/av/bp;

    invoke-direct {v0, p0}, Lcom/twitter/android/av/bp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->y:Lcom/twitter/android/av/bp;

    .line 159
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->y:Lcom/twitter/android/av/bp;

    iget-object v1, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->n:Lcom/twitter/android/av/bv;

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/bp;->a(Lcom/twitter/android/av/bv;)V

    .line 160
    new-instance v0, Lcom/twitter/android/periscope/ae;

    iget-object v1, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->y:Lcom/twitter/android/av/bp;

    invoke-direct {v0, v1}, Lcom/twitter/android/periscope/ae;-><init>(Lcom/twitter/android/av/bp;)V

    iput-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->s:Lcom/twitter/android/periscope/ae;

    .line 161
    invoke-direct {p0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->t()V

    .line 163
    invoke-direct {p0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->i()V

    .line 164
    invoke-virtual {p0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->z:Landroid/view/Display;

    .line 166
    new-instance v0, Lcom/twitter/android/businessprofiles/d;

    .line 167
    invoke-virtual {p0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    iget-object v5, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->l:Lcom/twitter/model/core/TwitterUser;

    .line 168
    invoke-static {p0}, Lbyi;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/businessprofiles/d;-><init>(Landroid/content/Context;Lcom/twitter/android/businessprofiles/c;Landroid/support/v4/app/LoaderManager;ILcom/twitter/model/core/TwitterUser;Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->m:Lcom/twitter/android/profiles/au;

    invoke-virtual {v1, v0}, Lcom/twitter/android/profiles/au;->a(Lcom/twitter/android/profiles/at;)V

    .line 170
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->m:Lcom/twitter/android/profiles/au;

    invoke-virtual {v0}, Lcom/twitter/android/profiles/au;->a()V

    .line 171
    return-void
.end method

.method public c(I)V
    .locals 8

    .prologue
    .line 470
    invoke-super {p0, p1}, Lcom/twitter/android/FullscreenMediaPlayerActivity;->c(I)V

    .line 471
    iget-boolean v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->B:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->a:Lcom/twitter/library/av/playback/AVPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->a:Lcom/twitter/library/av/playback/AVPlayer;

    .line 472
    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->g()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    instance-of v0, v0, Lcom/twitter/library/av/playback/bw;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->f:Lzv;

    .line 474
    invoke-virtual {v0, p1}, Lzv;->b(I)Lzz;

    move-result-object v0

    check-cast v0, Laal;

    .line 475
    invoke-virtual {v0}, Laal;->g()Lcom/twitter/library/av/control/h;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;

    .line 476
    iget-object v2, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->a:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v2}, Lcom/twitter/library/av/playback/AVPlayer;->g()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/av/playback/bw;

    invoke-direct {p0, v2, v1}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->a(Lcom/twitter/library/av/playback/bw;Lcom/twitter/android/av/PeriscopeFullscreenChromeView;)V

    .line 478
    invoke-virtual {v0}, Laal;->h()Lcom/twitter/library/av/VideoPlayerView;

    move-result-object v2

    .line 479
    invoke-virtual {v0}, Laal;->i()Landroid/view/ViewGroup;

    move-result-object v0

    .line 480
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-wide v4, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->P:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 482
    invoke-direct {p0, v1, v2, v0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->a(Lcom/twitter/android/av/PeriscopeFullscreenChromeView;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 485
    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->O:Z

    if-eqz v0, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    invoke-super {p0, p1}, Lcom/twitter/android/FullscreenMediaPlayerActivity;->c(Z)V

    .line 268
    invoke-direct {p0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->s()V

    .line 270
    if-eqz p1, :cond_0

    .line 271
    invoke-direct {p0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->t()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 256
    invoke-super {p0, p1}, Lcom/twitter/android/FullscreenMediaPlayerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 257
    invoke-direct {p0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->s()V

    .line 258
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 517
    invoke-direct {p0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->m()V

    .line 518
    invoke-super {p0}, Lcom/twitter/android/FullscreenMediaPlayerActivity;->onDestroy()V

    .line 519
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 464
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->B:Z

    .line 465
    invoke-super {p0}, Lcom/twitter/android/FullscreenMediaPlayerActivity;->onRestart()V

    .line 466
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 501
    invoke-super {p0}, Lcom/twitter/android/FullscreenMediaPlayerActivity;->onStart()V

    .line 502
    iget-wide v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->P:J

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->a(J)V

    .line 503
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->r:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 504
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->K:Lrx/ap;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->K:Lrx/ap;

    invoke-interface {v0}, Lrx/ap;->R_()V

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->r:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 512
    invoke-super {p0}, Lcom/twitter/android/FullscreenMediaPlayerActivity;->onStop()V

    .line 513
    return-void
.end method
