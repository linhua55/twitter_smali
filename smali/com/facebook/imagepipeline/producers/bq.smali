.class Lcom/facebook/imagepipeline/producers/bq;
.super Lcom/facebook/imagepipeline/producers/w;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/w",
        "<",
        "Lcom/facebook/common/references/a",
        "<",
        "Lfm;",
        ">;",
        "Lcom/facebook/common/references/a",
        "<",
        "Lfm;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/bo;

.field private final b:Lcom/facebook/imagepipeline/producers/bz;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/facebook/imagepipeline/request/a;

.field private e:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "PostprocessorConsumer.this"
    .end annotation
.end field

.field private f:Lcom/facebook/common/references/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/a",
            "<",
            "Lfm;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "PostprocessorConsumer.this"
    .end annotation
.end field

.field private g:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "PostprocessorConsumer.this"
    .end annotation
.end field

.field private h:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "PostprocessorConsumer.this"
    .end annotation
.end field

.field private i:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "PostprocessorConsumer.this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/bo;Lcom/facebook/imagepipeline/producers/o;Lcom/facebook/imagepipeline/producers/bz;Ljava/lang/String;Lcom/facebook/imagepipeline/request/a;Lcom/facebook/imagepipeline/producers/bx;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/o",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lfm;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/bz;",
            "Ljava/lang/String;",
            "Lcom/facebook/imagepipeline/request/a;",
            "Lcom/facebook/imagepipeline/producers/bx;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 103
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/bq;->a:Lcom/facebook/imagepipeline/producers/bo;

    .line 104
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/w;-><init>(Lcom/facebook/imagepipeline/producers/o;)V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/bq;->f:Lcom/facebook/common/references/a;

    .line 91
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/producers/bq;->g:Z

    .line 93
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/producers/bq;->h:Z

    .line 95
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/producers/bq;->i:Z

    .line 105
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/bq;->b:Lcom/facebook/imagepipeline/producers/bz;

    .line 106
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/bq;->c:Ljava/lang/String;

    .line 107
    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/bq;->d:Lcom/facebook/imagepipeline/request/a;

    .line 108
    new-instance v0, Lcom/facebook/imagepipeline/producers/br;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/br;-><init>(Lcom/facebook/imagepipeline/producers/bq;Lcom/facebook/imagepipeline/producers/bo;)V

    invoke-interface {p6, v0}, Lcom/facebook/imagepipeline/producers/bx;->a(Lcom/facebook/imagepipeline/producers/by;)V

    .line 115
    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/producers/bq;Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/bq;->f:Lcom/facebook/common/references/a;

    return-object p1
.end method

.method private a(Lcom/facebook/imagepipeline/producers/bz;Ljava/lang/String;Lcom/facebook/imagepipeline/request/a;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/bz;",
            "Ljava/lang/String;",
            "Lcom/facebook/imagepipeline/request/a;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    invoke-interface {p1, p2}, Lcom/facebook/imagepipeline/producers/bz;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    const/4 v0, 0x0

    .line 242
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "Postprocessor"

    invoke-interface {p3}, Lcom/facebook/imagepipeline/request/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbe;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/producers/bq;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/bq;->g()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/producers/bq;Lcom/facebook/common/references/a;Z)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/bq;->c(Lcom/facebook/common/references/a;Z)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/producers/bq;Z)Z
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/producers/bq;->h:Z

    return p1
.end method

.method private a(Lfm;)Z
    .locals 1

    .prologue
    .line 246
    instance-of v0, p1, Lfn;

    return v0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/producers/bq;)Lcom/facebook/common/references/a;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/bq;->f:Lcom/facebook/common/references/a;

    return-object v0
.end method

.method private b(Lfm;)Lcom/facebook/common/references/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfm;",
            ")",
            "Lcom/facebook/common/references/a",
            "<",
            "Lfm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    move-object v0, p1

    check-cast v0, Lfn;

    .line 251
    invoke-virtual {v0}, Lfn;->f()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 252
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/bq;->d:Lcom/facebook/imagepipeline/request/a;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/bq;->a:Lcom/facebook/imagepipeline/producers/bo;

    invoke-static {v3}, Lcom/facebook/imagepipeline/producers/bo;->b(Lcom/facebook/imagepipeline/producers/bo;)Lcom/facebook/imagepipeline/bitmaps/g;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/facebook/imagepipeline/request/a;->a(Landroid/graphics/Bitmap;Lcom/facebook/imagepipeline/bitmaps/g;)Lcom/facebook/common/references/a;

    move-result-object v1

    .line 253
    invoke-virtual {v0}, Lfn;->h()I

    move-result v0

    .line 255
    :try_start_0
    new-instance v2, Lfn;

    invoke-virtual {p1}, Lfm;->g()Lfr;

    move-result-object v3

    invoke-direct {v2, v1, v3, v0}, Lfn;-><init>(Lcom/facebook/common/references/a;Lfr;I)V

    invoke-static {v2}, Lcom/facebook/common/references/a;->a(Ljava/io/Closeable;)Lcom/facebook/common/references/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 258
    invoke-static {v1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    throw v0
.end method

.method private b(Lcom/facebook/common/references/a;Z)V
    .locals 2
    .param p1    # Lcom/facebook/common/references/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a",
            "<",
            "Lfm;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 145
    monitor-enter p0

    .line 146
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/bq;->e:Z

    if-eqz v0, :cond_1

    .line 147
    monitor-exit p0

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/bq;->f:Lcom/facebook/common/references/a;

    .line 150
    invoke-static {p1}, Lcom/facebook/common/references/a;->b(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/producers/bq;->f:Lcom/facebook/common/references/a;

    .line 151
    iput-boolean p2, p0, Lcom/facebook/imagepipeline/producers/bq;->g:Z

    .line 152
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/imagepipeline/producers/bq;->h:Z

    .line 153
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/bq;->f()Z

    move-result v1

    .line 154
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-static {v0}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 156
    if-eqz v1, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/bq;->c()V

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/bq;->a:Lcom/facebook/imagepipeline/producers/bo;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/bo;->a(Lcom/facebook/imagepipeline/producers/bo;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/imagepipeline/producers/bs;

    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/producers/bs;-><init>(Lcom/facebook/imagepipeline/producers/bq;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method private c(Lcom/facebook/common/references/a;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a",
            "<",
            "Lfm;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 211
    invoke-static {p1}, Lcom/facebook/common/references/a;->a(Lcom/facebook/common/references/a;)Z

    move-result v0

    invoke-static {v0}, Lbk;->a(Z)V

    .line 212
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfm;

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/producers/bq;->a(Lfm;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/bq;->d(Lcom/facebook/common/references/a;Z)V

    .line 233
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/bq;->b:Lcom/facebook/imagepipeline/producers/bz;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/bq;->c:Ljava/lang/String;

    const-string/jumbo v2, "PostprocessorProducer"

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/bz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const/4 v1, 0x0

    .line 220
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfm;

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/producers/bq;->b(Lfm;)Lcom/facebook/common/references/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 227
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/bq;->b:Lcom/facebook/imagepipeline/producers/bz;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/bq;->c:Ljava/lang/String;

    const-string/jumbo v3, "PostprocessorProducer"

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/bq;->b:Lcom/facebook/imagepipeline/producers/bz;

    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/bq;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/imagepipeline/producers/bq;->d:Lcom/facebook/imagepipeline/request/a;

    invoke-direct {p0, v4, v5, v6}, Lcom/facebook/imagepipeline/producers/bq;->a(Lcom/facebook/imagepipeline/producers/bz;Ljava/lang/String;Lcom/facebook/imagepipeline/request/a;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lcom/facebook/imagepipeline/producers/bz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 229
    invoke-direct {p0, v1, p2}, Lcom/facebook/imagepipeline/producers/bq;->d(Lcom/facebook/common/references/a;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    invoke-static {v1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    :try_start_2
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/bq;->b:Lcom/facebook/imagepipeline/producers/bz;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/bq;->c:Ljava/lang/String;

    const-string/jumbo v4, "PostprocessorProducer"

    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/bq;->b:Lcom/facebook/imagepipeline/producers/bz;

    iget-object v6, p0, Lcom/facebook/imagepipeline/producers/bq;->c:Ljava/lang/String;

    iget-object v7, p0, Lcom/facebook/imagepipeline/producers/bq;->d:Lcom/facebook/imagepipeline/request/a;

    invoke-direct {p0, v5, v6, v7}, Lcom/facebook/imagepipeline/producers/bq;->a(Lcom/facebook/imagepipeline/producers/bz;Ljava/lang/String;Lcom/facebook/imagepipeline/request/a;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v2, v3, v4, v0, v5}, Lcom/facebook/imagepipeline/producers/bz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 224
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/producers/bq;->c(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    invoke-static {v1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    throw v0
.end method

.method private c(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/bq;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/bq;->d()Lcom/facebook/imagepipeline/producers/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/o;->b(Ljava/lang/Throwable;)V

    .line 272
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/producers/bq;)Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/bq;->g:Z

    return v0
.end method

.method private d(Lcom/facebook/common/references/a;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a",
            "<",
            "Lfm;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 263
    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/bq;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/bq;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/bq;->d()Lcom/facebook/imagepipeline/producers/o;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/o;->b(Ljava/lang/Object;Z)V

    .line 266
    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/facebook/imagepipeline/producers/bq;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/bq;->e()V

    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 190
    monitor-enter p0

    .line 191
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/producers/bq;->i:Z

    .line 192
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/bq;->f()Z

    move-result v0

    .line 193
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    if-eqz v0, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/bq;->c()V

    .line 197
    :cond_0
    return-void

    .line 193
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized f()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 200
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/producers/bq;->e:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/producers/bq;->h:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/producers/bq;->i:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/bq;->f:Lcom/facebook/common/references/a;

    invoke-static {v1}, Lcom/facebook/common/references/a;->a(Lcom/facebook/common/references/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/imagepipeline/producers/bq;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/bq;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/bq;->d()Lcom/facebook/imagepipeline/producers/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/o;->b()V

    .line 278
    :cond_0
    return-void
.end method

.method private declared-synchronized h()Z
    .locals 1

    .prologue
    .line 281
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/bq;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private i()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 286
    monitor-enter p0

    .line 287
    :try_start_0
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/producers/bq;->e:Z

    if-eqz v1, :cond_0

    .line 288
    const/4 v0, 0x0

    monitor-exit p0

    .line 295
    :goto_0
    return v0

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/bq;->f:Lcom/facebook/common/references/a;

    .line 291
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/imagepipeline/producers/bq;->f:Lcom/facebook/common/references/a;

    .line 292
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/imagepipeline/producers/bq;->e:Z

    .line 293
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    invoke-static {v1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    goto :goto_0

    .line 293
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/bq;->g()V

    .line 138
    return-void
.end method

.method protected a(Lcom/facebook/common/references/a;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a",
            "<",
            "Lfm;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 119
    invoke-static {p1}, Lcom/facebook/common/references/a;->a(Lcom/facebook/common/references/a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    if-eqz p2, :cond_0

    .line 122
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/facebook/imagepipeline/producers/bq;->d(Lcom/facebook/common/references/a;Z)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/bq;->b(Lcom/facebook/common/references/a;Z)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 78
    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/bq;->a(Lcom/facebook/common/references/a;Z)V

    return-void
.end method

.method protected a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/bq;->c(Ljava/lang/Throwable;)V

    .line 133
    return-void
.end method
