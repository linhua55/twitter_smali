.class public final Lokhttp3/d;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field final a:Ldfr;

.field private final b:Ldfi;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 2

    .prologue
    .line 178
    sget-object v0, Ldgp;->a:Ldgp;

    invoke-direct {p0, p1, p2, p3, v0}, Lokhttp3/d;-><init>(Ljava/io/File;JLdgp;)V

    .line 179
    return-void
.end method

.method constructor <init>(Ljava/io/File;JLdgp;)V
    .locals 6

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Lokhttp3/e;

    invoke-direct {v0, p0}, Lokhttp3/e;-><init>(Lokhttp3/d;)V

    iput-object v0, p0, Lokhttp3/d;->a:Ldfr;

    .line 182
    const v2, 0x31191

    const/4 v3, 0x2

    move-object v0, p4

    move-object v1, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Ldfi;->a(Ldgp;Ljava/io/File;IIJ)Ldfi;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/d;->b:Ldfi;

    .line 183
    return-void
.end method

.method static synthetic a(Lokio/j;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {p0}, Lokhttp3/d;->b(Lokio/j;)I

    move-result v0

    return v0
.end method

.method private a(Lokhttp3/ax;)Ldfe;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 221
    invoke-virtual {p1}, Lokhttp3/ax;->a()Lokhttp3/at;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/at;->b()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-virtual {p1}, Lokhttp3/ax;->a()Lokhttp3/at;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/at;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldgh;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/ax;->a()Lokhttp3/at;

    move-result-object v1

    invoke-direct {p0, v1}, Lokhttp3/d;->c(Lokhttp3/at;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 253
    :cond_0
    :goto_0
    return-object v0

    .line 231
    :cond_1
    const-string/jumbo v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    invoke-static {p1}, Ldgg;->b(Lokhttp3/ax;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 242
    new-instance v1, Lokhttp3/j;

    invoke-direct {v1, p1}, Lokhttp3/j;-><init>(Lokhttp3/ax;)V

    .line 245
    :try_start_1
    iget-object v2, p0, Lokhttp3/d;->b:Ldfi;

    invoke-virtual {p1}, Lokhttp3/ax;->a()Lokhttp3/at;

    move-result-object v3

    invoke-static {v3}, Lokhttp3/d;->b(Lokhttp3/at;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ldfi;->b(Ljava/lang/String;)Ldfm;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 246
    if-eqz v2, :cond_0

    .line 249
    :try_start_2
    invoke-virtual {v1, v2}, Lokhttp3/j;->a(Ldfm;)V

    .line 250
    new-instance v1, Lokhttp3/f;

    invoke-direct {v1, p0, v2}, Lokhttp3/f;-><init>(Lokhttp3/d;Ldfm;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    goto :goto_0

    .line 251
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 252
    :goto_1
    invoke-direct {p0, v1}, Lokhttp3/d;->a(Ldfm;)V

    goto :goto_0

    .line 251
    :catch_1
    move-exception v1

    move-object v1, v2

    goto :goto_1

    .line 226
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lokhttp3/d;Lokhttp3/ax;)Ldfe;
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lokhttp3/d;->a(Lokhttp3/ax;)Ldfe;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a()V
    .locals 1

    .prologue
    .line 414
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/d;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/d;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    monitor-exit p0

    return-void

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ldff;)V
    .locals 1

    .prologue
    .line 402
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/d;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/d;->g:I

    .line 404
    iget-object v0, p1, Ldff;->a:Lokhttp3/at;

    if-eqz v0, :cond_1

    .line 406
    iget v0, p0, Lokhttp3/d;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/d;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 407
    :cond_1
    :try_start_1
    iget-object v0, p1, Ldff;->b:Lokhttp3/ax;

    if-eqz v0, :cond_0

    .line 409
    iget v0, p0, Lokhttp3/d;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/d;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ldfm;)V
    .locals 1

    .prologue
    .line 279
    if-eqz p1, :cond_0

    .line 280
    :try_start_0
    invoke-virtual {p1}, Ldfm;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Lokhttp3/ax;Lokhttp3/ax;)V
    .locals 3

    .prologue
    .line 262
    new-instance v1, Lokhttp3/j;

    invoke-direct {v1, p2}, Lokhttp3/j;-><init>(Lokhttp3/ax;)V

    .line 263
    invoke-virtual {p1}, Lokhttp3/ax;->g()Lokhttp3/ba;

    move-result-object v0

    check-cast v0, Lokhttp3/h;

    invoke-static {v0}, Lokhttp3/h;->a(Lokhttp3/h;)Ldfp;

    move-result-object v2

    .line 264
    const/4 v0, 0x0

    .line 266
    :try_start_0
    invoke-virtual {v2}, Ldfp;->a()Ldfm;

    move-result-object v0

    .line 267
    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v1, v0}, Lokhttp3/j;->a(Ldfm;)V

    .line 269
    invoke-virtual {v0}, Ldfm;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v1

    .line 272
    invoke-direct {p0, v0}, Lokhttp3/d;->a(Ldfm;)V

    goto :goto_0
.end method

.method static synthetic a(Lokhttp3/d;)V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Lokhttp3/d;->a()V

    return-void
.end method

.method static synthetic a(Lokhttp3/d;Ldff;)V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lokhttp3/d;->a(Ldff;)V

    return-void
.end method

.method static synthetic a(Lokhttp3/d;Lokhttp3/at;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lokhttp3/d;->c(Lokhttp3/at;)V

    return-void
.end method

.method static synthetic a(Lokhttp3/d;Lokhttp3/ax;Lokhttp3/ax;)V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0, p1, p2}, Lokhttp3/d;->a(Lokhttp3/ax;Lokhttp3/ax;)V

    return-void
.end method

.method static synthetic b(Lokhttp3/d;)I
    .locals 2

    .prologue
    .line 136
    iget v0, p0, Lokhttp3/d;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lokhttp3/d;->c:I

    return v0
.end method

.method private static b(Lokio/j;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 725
    :try_start_0
    invoke-interface {p0}, Lokio/j;->o()J

    move-result-wide v0

    .line 726
    invoke-interface {p0}, Lokio/j;->s()Ljava/lang/String;

    move-result-object v2

    .line 727
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-ltz v3, :cond_0

    const-wide/32 v4, 0x7fffffff

    cmp-long v3, v0, v4

    if-gtz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 728
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "expected an int but was \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    :catch_0
    move-exception v0

    .line 732
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 730
    :cond_1
    long-to-int v0, v0

    return v0
.end method

.method private static b(Lokhttp3/at;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lokhttp3/at;->a()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldey;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lokhttp3/d;)I
    .locals 2

    .prologue
    .line 136
    iget v0, p0, Lokhttp3/d;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lokhttp3/d;->d:I

    return v0
.end method

.method private c(Lokhttp3/at;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lokhttp3/d;->b:Ldfi;

    invoke-static {p1}, Lokhttp3/d;->b(Lokhttp3/at;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldfi;->c(Ljava/lang/String;)Z

    .line 259
    return-void
.end method


# virtual methods
.method a(Lokhttp3/at;)Lokhttp3/ax;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 190
    invoke-static {p1}, Lokhttp3/d;->b(Lokhttp3/at;)Ljava/lang/String;

    move-result-object v1

    .line 194
    :try_start_0
    iget-object v2, p0, Lokhttp3/d;->b:Ldfi;

    invoke-virtual {v2, v1}, Ldfi;->a(Ljava/lang/String;)Ldfp;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 195
    if-nez v1, :cond_0

    .line 217
    :goto_0
    return-object v0

    .line 204
    :cond_0
    :try_start_1
    new-instance v2, Lokhttp3/j;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ldfp;->a(I)Lokio/ab;

    move-result-object v3

    invoke-direct {v2, v3}, Lokhttp3/j;-><init>(Lokio/ab;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 210
    invoke-virtual {v2, v1}, Lokhttp3/j;->a(Ldfp;)Lokhttp3/ax;

    move-result-object v1

    .line 212
    invoke-virtual {v2, p1, v1}, Lokhttp3/j;->a(Lokhttp3/at;Lokhttp3/ax;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 213
    invoke-virtual {v1}, Lokhttp3/ax;->g()Lokhttp3/ba;

    move-result-object v1

    invoke-static {v1}, Ldey;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 205
    :catch_0
    move-exception v2

    .line 206
    invoke-static {v1}, Ldey;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 217
    goto :goto_0

    .line 198
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Lokhttp3/d;->b:Ldfi;

    invoke-virtual {v0}, Ldfi;->close()V

    .line 391
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lokhttp3/d;->b:Ldfi;

    invoke-virtual {v0}, Ldfi;->flush()V

    .line 387
    return-void
.end method
