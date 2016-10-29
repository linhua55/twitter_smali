.class final Lokhttp3/ar;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lokhttp3/n;


# instance fields
.field a:Lokhttp3/at;

.field private final b:Lokhttp3/ao;

.field private final c:Ldgm;

.field private d:Z


# direct methods
.method protected constructor <init>(Lokhttp3/ao;Lokhttp3/at;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lokhttp3/ar;->b:Lokhttp3/ao;

    .line 45
    iput-object p2, p0, Lokhttp3/ar;->a:Lokhttp3/at;

    .line 46
    new-instance v0, Ldgm;

    invoke-direct {v0, p1}, Ldgm;-><init>(Lokhttp3/ao;)V

    iput-object v0, p0, Lokhttp3/ar;->c:Ldgm;

    .line 47
    return-void
.end method

.method static synthetic a(Lokhttp3/ar;)Lokhttp3/ax;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Lokhttp3/ar;->e()Lokhttp3/ax;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lokhttp3/ar;)Ldgm;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lokhttp3/ar;->c:Ldgm;

    return-object v0
.end method

.method static synthetic c(Lokhttp3/ar;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lokhttp3/ar;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lokhttp3/ar;->c:Ldgm;

    invoke-virtual {v0}, Ldgm;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "canceled call"

    .line 147
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lokhttp3/ar;->c()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 146
    :cond_0
    const-string/jumbo v0, "call"

    goto :goto_0
.end method

.method static synthetic d(Lokhttp3/ar;)Lokhttp3/ao;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lokhttp3/ar;->b:Lokhttp3/ao;

    return-object v0
.end method

.method private e()Lokhttp3/ax;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 157
    iget-object v0, p0, Lokhttp3/ar;->b:Lokhttp3/ao;

    invoke-virtual {v0}, Lokhttp3/ao;->w()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 158
    iget-object v0, p0, Lokhttp3/ar;->c:Ldgm;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v0, Ldfs;

    iget-object v3, p0, Lokhttp3/ar;->b:Lokhttp3/ao;

    invoke-virtual {v3}, Lokhttp3/ao;->f()Lokhttp3/ab;

    move-result-object v3

    invoke-direct {v0, v3}, Ldfs;-><init>(Lokhttp3/ab;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v0, Ldfb;

    iget-object v3, p0, Lokhttp3/ar;->b:Lokhttp3/ao;

    invoke-virtual {v3}, Lokhttp3/ao;->h()Ldfr;

    move-result-object v3

    invoke-direct {v0, v3}, Ldfb;-><init>(Ldfr;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v0, Lokhttp3/internal/connection/a;

    iget-object v3, p0, Lokhttp3/ar;->b:Lokhttp3/ao;

    invoke-direct {v0, v3}, Lokhttp3/internal/connection/a;-><init>(Lokhttp3/ao;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lokhttp3/ar;->c:Ldgm;

    invoke-virtual {v0}, Ldgm;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lokhttp3/ar;->b:Lokhttp3/ao;

    invoke-virtual {v0}, Lokhttp3/ao;->x()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 165
    :cond_0
    new-instance v0, Ldft;

    iget-object v3, p0, Lokhttp3/ar;->c:Ldgm;

    .line 166
    invoke-virtual {v3}, Ldgm;->c()Z

    move-result v3

    invoke-direct {v0, v3}, Ldft;-><init>(Z)V

    .line 165
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v0, Ldgj;

    const/4 v5, 0x0

    iget-object v6, p0, Lokhttp3/ar;->a:Lokhttp3/at;

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v6}, Ldgj;-><init>(Ljava/util/List;Lokhttp3/internal/connection/f;Ldgi;Lokhttp3/u;ILokhttp3/at;)V

    .line 170
    iget-object v1, p0, Lokhttp3/ar;->a:Lokhttp3/at;

    invoke-interface {v0, v1}, Lokhttp3/am;->a(Lokhttp3/at;)Lokhttp3/ax;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lokhttp3/ax;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    monitor-enter p0

    .line 55
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/ar;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 56
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lokhttp3/ar;->d:Z

    .line 57
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :try_start_2
    iget-object v0, p0, Lokhttp3/ar;->b:Lokhttp3/ao;

    invoke-virtual {v0}, Lokhttp3/ao;->t()Lokhttp3/ad;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp3/ad;->a(Lokhttp3/ar;)V

    .line 60
    invoke-direct {p0}, Lokhttp3/ar;->e()Lokhttp3/ax;

    move-result-object v0

    .line 61
    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 64
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lokhttp3/ar;->b:Lokhttp3/ao;

    invoke-virtual {v1}, Lokhttp3/ao;->t()Lokhttp3/ad;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/ad;->b(Lokhttp3/ar;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lokhttp3/ar;->b:Lokhttp3/ao;

    invoke-virtual {v1}, Lokhttp3/ao;->t()Lokhttp3/ad;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/ad;->b(Lokhttp3/ar;)V

    .line 62
    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lokhttp3/ar;->c:Ldgm;

    invoke-virtual {v0}, Ldgm;->a()V

    .line 83
    return-void
.end method

.method c()Lokhttp3/HttpUrl;
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lokhttp3/ar;->a:Lokhttp3/at;

    invoke-virtual {v0}, Lokhttp3/at;->a()Lokhttp3/HttpUrl;

    move-result-object v0

    const-string/jumbo v1, "/..."

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl;->c(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    return-object v0
.end method
