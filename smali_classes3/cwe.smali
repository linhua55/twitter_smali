.class public Lcwe;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field a:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:Lcwn;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final d:Landroid/view/View;

.field private final e:Ljava/lang/Runnable;

.field private final f:Ljava/lang/Runnable;

.field private g:Lcwm;

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Lrx/ao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/ao",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lrx/t;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/16 v0, 0x3c

    iput v0, p0, Lcwe;->h:I

    .line 63
    iput-object p1, p0, Lcwe;->d:Landroid/view/View;

    .line 64
    new-instance v0, Lcwf;

    invoke-direct {v0, p0}, Lcwf;-><init>(Lcwe;)V

    iput-object v0, p0, Lcwe;->e:Ljava/lang/Runnable;

    .line 72
    new-instance v0, Lcwg;

    invoke-direct {v0, p0}, Lcwg;-><init>(Lcwe;)V

    iput-object v0, p0, Lcwe;->f:Ljava/lang/Runnable;

    .line 80
    return-void
.end method

.method static synthetic a(Lcwe;)Lcwm;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcwe;->g:Lcwm;

    return-object v0
.end method

.method private a(Lrx/t;)Lrx/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/t;",
            ")",
            "Lrx/o",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    new-instance v0, Lcwh;

    invoke-direct {v0, p0, p1}, Lcwh;-><init>(Lcwe;Lrx/t;)V

    invoke-static {v0}, Lrx/o;->a(Lrx/p;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcwe;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcwe;->j:Z

    return v0
.end method

.method static synthetic c(Lcwe;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcwe;->i:I

    return v0
.end method

.method static synthetic d(Lcwe;)Landroid/view/View;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcwe;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcwe;)I
    .locals 2

    .prologue
    .line 42
    iget v0, p0, Lcwe;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcwe;->i:I

    return v0
.end method

.method static synthetic f(Lcwe;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcwe;->h()V

    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 263
    iput-boolean v0, p0, Lcwe;->j:Z

    .line 264
    iput-boolean v0, p0, Lcwe;->k:Z

    .line 265
    iget-object v0, p0, Lcwe;->l:Lrx/ao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcwe;->l:Lrx/ao;

    invoke-virtual {v0}, Lrx/ao;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcwe;->l:Lrx/ao;

    invoke-virtual {v0}, Lrx/ao;->R_()V

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcwe;->l:Lrx/ao;

    .line 269
    :cond_0
    return-void
.end method

.method private declared-synchronized h()V
    .locals 2

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcwe;->g()V

    .line 276
    invoke-static {}, Lcom/twitter/util/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcwe;->e:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    :goto_0
    monitor-exit p0

    return-void

    .line 279
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcwe;->d:Landroid/view/View;

    iget-object v1, p0, Lcwe;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Lcwm;)Lcwe;
    .locals 1

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcwe;->g:Lcwm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-object p0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/util/List;)Lcwe;
    .locals 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcwe;"
        }
    .end annotation

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcwe;->c:Ljava/util/List;

    .line 103
    new-instance v0, Lcwo;

    iget-object v1, p0, Lcwe;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcwo;-><init>(Landroid/content/res/Resources;Ljava/util/List;)V

    iput-object v0, p0, Lcwe;->b:Lcwn;

    .line 104
    iget-object v0, p0, Lcwe;->b:Lcwn;

    invoke-virtual {v0}, Lcwn;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-object p0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()V
    .locals 4

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcwe;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcwe;->b:Lcwn;

    if-nez v0, :cond_1

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No frames have been set to this animation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 135
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcwe;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 156
    :goto_0
    monitor-exit p0

    return-void

    .line 138
    :cond_2
    :try_start_2
    iget-boolean v0, p0, Lcwe;->k:Z

    if-eqz v0, :cond_3

    .line 139
    invoke-virtual {p0}, Lcwe;->e()V

    goto :goto_0

    .line 142
    :cond_3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iget v2, p0, Lcwe;->h:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcwe;->a:I

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcwe;->j:Z

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcwe;->k:Z

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcwe;->i:I

    .line 146
    iget-object v0, p0, Lcwe;->g:Lcwm;

    if-eqz v0, :cond_4

    .line 147
    iget-object v0, p0, Lcwe;->g:Lcwm;

    invoke-interface {v0}, Lcwm;->a()V

    .line 149
    :cond_4
    invoke-virtual {p0}, Lcwe;->c()Lrx/t;

    move-result-object v0

    iput-object v0, p0, Lcwe;->m:Lrx/t;

    .line 150
    invoke-virtual {p0}, Lcwe;->d()Lrx/ao;

    move-result-object v0

    iput-object v0, p0, Lcwe;->l:Lrx/ao;

    .line 152
    iget-object v0, p0, Lcwe;->m:Lrx/t;

    invoke-direct {p0, v0}, Lcwe;->a(Lrx/t;)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Lcwe;->m:Lrx/t;

    .line 153
    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/t;)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Lcwe;->m:Lrx/t;

    .line 154
    invoke-virtual {v0, v1}, Lrx/o;->a(Lrx/t;)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Lcwe;->l:Lrx/ao;

    .line 155
    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/ao;)Lrx/ap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public b()Lcom/twitter/util/math/Size;
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcwe;->b:Lcwn;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "FrameDecoder not initialized! Call setFrames first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    iget-object v0, p0, Lcwe;->b:Lcwn;

    invoke-virtual {v0}, Lcwn;->b()Lcom/twitter/util/math/Size;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized b(Ljava/util/List;)Lcwe;
    .locals 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcwe;"
        }
    .end annotation

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcwe;->c:Ljava/util/List;

    .line 112
    new-instance v0, Lcwl;

    iget-object v1, p0, Lcwe;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcwl;-><init>(Landroid/content/res/Resources;Ljava/util/List;)V

    iput-object v0, p0, Lcwe;->b:Lcwn;

    .line 113
    iget-object v0, p0, Lcwe;->b:Lcwn;

    invoke-virtual {v0}, Lcwn;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-object p0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c()Lrx/t;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 169
    invoke-static {}, Ldls;->b()Lrx/t;

    move-result-object v0

    return-object v0
.end method

.method d()Lrx/ao;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/ao",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Lcwj;

    invoke-direct {v0, p0}, Lcwj;-><init>(Lcwe;)V

    return-object v0
.end method

.method public declared-synchronized e()V
    .locals 2

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcwe;->g()V

    .line 243
    invoke-static {}, Lcom/twitter/util/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcwe;->f:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :goto_0
    monitor-exit p0

    return-void

    .line 246
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcwe;->d:Landroid/view/View;

    iget-object v1, p0, Lcwe;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()V
    .locals 1

    .prologue
    .line 254
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcwe;->k:Z

    if-eqz v0, :cond_0

    .line 255
    invoke-direct {p0}, Lcwe;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :goto_0
    monitor-exit p0

    return-void

    .line 258
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcwe;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
