.class public Lcom/twitter/internal/network/n;
.super Lcom/twitter/internal/network/HttpOperation;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/internal/network/HttpOperation",
        "<",
        "Lokhttp3/av;",
        "Lokhttp3/ax;",
        ">;"
    }
.end annotation


# instance fields
.field private g:Lokhttp3/ao;

.field private h:Lokhttp3/n;


# direct methods
.method protected constructor <init>(Lokhttp3/ao;Lcom/twitter/internal/network/HttpOperation$RequestMethod;Ljava/net/URI;Lcom/twitter/internal/network/i;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p2, p3, p4}, Lcom/twitter/internal/network/HttpOperation;-><init>(Lcom/twitter/internal/network/HttpOperation$RequestMethod;Ljava/net/URI;Lcom/twitter/internal/network/i;)V

    .line 36
    iput-object p1, p0, Lcom/twitter/internal/network/n;->g:Lokhttp3/ao;

    .line 37
    return-void
.end method


# virtual methods
.method protected synthetic a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/twitter/internal/network/n;->u()Lokhttp3/av;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    check-cast p1, Lokhttp3/ax;

    invoke-virtual {p0, p1}, Lcom/twitter/internal/network/n;->a(Lokhttp3/ax;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    check-cast p1, Lokhttp3/ax;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/internal/network/n;->a(Lokhttp3/ax;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lokhttp3/ax;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string/jumbo v0, "Content-Encoding"

    invoke-virtual {p1, v0}, Lokhttp3/ax;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lokhttp3/ax;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p1, p2}, Lokhttp3/ax;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 118
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p3, :cond_0

    .line 119
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lokhttp3/av;)Lokhttp3/ax;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/twitter/internal/network/n;->g:Lokhttp3/ao;

    invoke-virtual {p1}, Lokhttp3/av;->a()Lokhttp3/at;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/ao;->a(Lokhttp3/at;)Lokhttp3/n;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/internal/network/n;->h:Lokhttp3/n;

    .line 87
    iget-object v0, p0, Lcom/twitter/internal/network/n;->h:Lokhttp3/n;

    invoke-interface {v0}, Lokhttp3/n;->a()Lokhttp3/ax;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lokhttp3/av;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/internal/network/n;->a(Lokhttp3/av;I)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lokhttp3/av;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/internal/network/n;->a(Lokhttp3/av;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Lorg/apache/http/HttpEntity;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lokhttp3/av;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/internal/network/n;->a(Lokhttp3/av;Lorg/apache/http/HttpEntity;)V

    return-void
.end method

.method protected a(Lokhttp3/av;I)V
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/twitter/internal/network/n;->g:Lokhttp3/ao;

    invoke-virtual {v0}, Lokhttp3/ao;->y()Lokhttp3/aq;

    move-result-object v0

    int-to-long v2, p2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/aq;->b(JLjava/util/concurrent/TimeUnit;)Lokhttp3/aq;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/aq;->a()Lokhttp3/ao;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/internal/network/n;->g:Lokhttp3/ao;

    .line 141
    return-void
.end method

.method protected a(Lokhttp3/av;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p1, p2, p3}, Lokhttp3/av;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/av;

    .line 81
    return-void
.end method

.method protected a(Lokhttp3/av;Lorg/apache/http/HttpEntity;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-virtual {p0}, Lcom/twitter/internal/network/n;->h()Lcom/twitter/internal/network/HttpOperation$RequestMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/network/HttpOperation$RequestMethod;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 128
    if-eqz p2, :cond_0

    .line 129
    new-instance v0, Lcom/twitter/internal/network/o;

    invoke-direct {v0, p2, v1}, Lcom/twitter/internal/network/o;-><init>(Lorg/apache/http/HttpEntity;Ljava/lang/String;)V

    move-object v1, v0

    .line 134
    :cond_0
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lokhttp3/av;->a(Z)Lokhttp3/av;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lokhttp3/av;->a(Ljava/lang/String;Lokhttp3/aw;)Lokhttp3/av;

    .line 135
    return-void

    .line 134
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/twitter/internal/network/HttpOperation$Protocol;)Z
    .locals 1

    .prologue
    .line 158
    :try_start_0
    invoke-virtual {p1}, Lcom/twitter/internal/network/HttpOperation$Protocol;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/Protocol;->a(Ljava/lang/String;)Lokhttp3/Protocol;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    const/4 v0, 0x1

    .line 161
    :goto_0
    return v0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    check-cast p1, Lokhttp3/ax;

    invoke-virtual {p0, p1}, Lcom/twitter/internal/network/n;->b(Lokhttp3/ax;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lokhttp3/ax;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string/jumbo v0, "Content-Type"

    invoke-virtual {p1, v0}, Lokhttp3/ax;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lokhttp3/av;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/twitter/internal/network/n;->h:Lokhttp3/n;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/twitter/internal/network/n;->h:Lokhttp3/n;

    invoke-interface {v0}, Lokhttp3/n;->b()V

    .line 95
    :cond_0
    return-void
.end method

.method protected b([Lcom/twitter/internal/network/HttpOperation$Protocol;)V
    .locals 5

    .prologue
    .line 167
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v1

    .line 168
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 170
    :try_start_0
    invoke-virtual {v3}, Lcom/twitter/internal/network/HttpOperation$Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lokhttp3/Protocol;->a(Ljava/lang/String;)Lokhttp3/Protocol;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown Protocol "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/twitter/internal/network/n;->g:Lokhttp3/ao;

    invoke-virtual {v0}, Lokhttp3/ao;->y()Lokhttp3/aq;

    move-result-object v2

    invoke-virtual {v1}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lokhttp3/aq;->a(Ljava/util/List;)Lokhttp3/aq;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/aq;->a()Lokhttp3/ao;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/internal/network/n;->g:Lokhttp3/ao;

    .line 176
    return-void
.end method

.method protected bridge synthetic c(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 28
    check-cast p1, Lokhttp3/ax;

    invoke-virtual {p0, p1}, Lcom/twitter/internal/network/n;->c(Lokhttp3/ax;)I

    move-result v0

    return v0
.end method

.method protected c(Lokhttp3/ax;)I
    .locals 4

    .prologue
    .line 53
    invoke-virtual {p1}, Lokhttp3/ax;->g()Lokhttp3/ba;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ba;->a()J

    move-result-wide v0

    .line 54
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 55
    const-string/jumbo v0, "TwitterNetwork"

    const-string/jumbo v1, "OkHttp3 response body exceeded Integer.MAX_VALUE. Returning Integer.MAX_VALUE"

    invoke-static {v0, v1}, Lcjw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const v0, 0x7fffffff

    .line 59
    :goto_0
    return v0

    :cond_0
    long-to-int v0, v0

    goto :goto_0
.end method

.method protected bridge synthetic d(Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    check-cast p1, Lokhttp3/ax;

    invoke-virtual {p0, p1}, Lcom/twitter/internal/network/n;->d(Lokhttp3/ax;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected d(Lokhttp3/ax;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p1}, Lokhttp3/ax;->g()Lokhttp3/ba;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ba;->c()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    const-string/jumbo v0, "OkHttp3"

    return-object v0
.end method

.method protected e(Lokhttp3/ax;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/ax;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p1}, Lokhttp3/ax;->f()Lokhttp3/ah;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ah;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic e(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lokhttp3/av;

    invoke-virtual {p0, p1}, Lcom/twitter/internal/network/n;->b(Lokhttp3/av;)V

    return-void
.end method

.method protected f(Lokhttp3/ax;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p1}, Lokhttp3/ax;->c()I

    move-result v0

    return v0
.end method

.method protected synthetic f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    check-cast p1, Lokhttp3/av;

    invoke-virtual {p0, p1}, Lcom/twitter/internal/network/n;->a(Lokhttp3/av;)Lokhttp3/ax;

    move-result-object v0

    return-object v0
.end method

.method protected g(Lokhttp3/ax;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p1}, Lokhttp3/ax;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic g(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 28
    check-cast p1, Lokhttp3/ax;

    invoke-virtual {p0, p1}, Lcom/twitter/internal/network/n;->e(Lokhttp3/ax;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic h(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    check-cast p1, Lokhttp3/ax;

    invoke-virtual {p0, p1}, Lcom/twitter/internal/network/n;->f(Lokhttp3/ax;)I

    move-result v0

    return v0
.end method

.method protected h(Lokhttp3/ax;)Lcom/twitter/internal/network/HttpOperation$Protocol;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p1}, Lokhttp3/ax;->b()Lokhttp3/Protocol;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/internal/network/HttpOperation$Protocol;->a(Ljava/lang/String;)Lcom/twitter/internal/network/HttpOperation$Protocol;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic i(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    check-cast p1, Lokhttp3/ax;

    invoke-virtual {p0, p1}, Lcom/twitter/internal/network/n;->g(Lokhttp3/ax;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic k(Ljava/lang/Object;)Lcom/twitter/internal/network/HttpOperation$Protocol;
    .locals 1

    .prologue
    .line 28
    check-cast p1, Lokhttp3/ax;

    invoke-virtual {p0, p1}, Lcom/twitter/internal/network/n;->h(Lokhttp3/ax;)Lcom/twitter/internal/network/HttpOperation$Protocol;

    move-result-object v0

    return-object v0
.end method

.method protected u()Lokhttp3/av;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    sget-object v0, Ldew;->a:Ldew;

    invoke-virtual {p0}, Lcom/twitter/internal/network/n;->i()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldew;->a(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    .line 74
    new-instance v1, Lokhttp3/av;

    invoke-direct {v1}, Lokhttp3/av;-><init>()V

    .line 75
    invoke-virtual {v1, v0}, Lokhttp3/av;->a(Lokhttp3/HttpUrl;)Lokhttp3/av;

    move-result-object v0

    .line 74
    return-object v0
.end method
