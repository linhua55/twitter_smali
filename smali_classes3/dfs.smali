.class public final Ldfs;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lokhttp3/al;


# instance fields
.field private final a:Lokhttp3/ab;


# direct methods
.method public constructor <init>(Lokhttp3/ab;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Ldfs;->a:Lokhttp3/ab;

    .line 45
    return-void
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/aa;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 119
    if-lez v1, :cond_0

    .line 120
    const-string/jumbo v0, "; "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/aa;

    .line 123
    invoke-virtual {v0}, Lokhttp3/aa;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lokhttp3/aa;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lokhttp3/am;)Lokhttp3/ax;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-interface {p1}, Lokhttp3/am;->a()Lokhttp3/at;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lokhttp3/at;->e()Lokhttp3/av;

    move-result-object v2

    .line 51
    invoke-virtual {v1}, Lokhttp3/at;->d()Lokhttp3/aw;

    move-result-object v3

    .line 52
    if-eqz v3, :cond_1

    .line 53
    invoke-virtual {v3}, Lokhttp3/aw;->b()Lokhttp3/an;

    move-result-object v4

    .line 54
    if-eqz v4, :cond_0

    .line 55
    const-string/jumbo v5, "Content-Type"

    invoke-virtual {v4}, Lokhttp3/an;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lokhttp3/av;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/av;

    .line 58
    :cond_0
    invoke-virtual {v3}, Lokhttp3/aw;->a()J

    move-result-wide v4

    .line 59
    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_8

    .line 60
    const-string/jumbo v3, "Content-Length"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lokhttp3/av;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/av;

    .line 61
    const-string/jumbo v3, "Transfer-Encoding"

    invoke-virtual {v2, v3}, Lokhttp3/av;->b(Ljava/lang/String;)Lokhttp3/av;

    .line 68
    :cond_1
    :goto_0
    const-string/jumbo v3, "Host"

    invoke-virtual {v1, v3}, Lokhttp3/at;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 69
    const-string/jumbo v3, "Host"

    invoke-virtual {v1}, Lokhttp3/at;->a()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-static {v4, v0}, Ldey;->a(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lokhttp3/av;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/av;

    .line 72
    :cond_2
    const-string/jumbo v3, "Connection"

    invoke-virtual {v1, v3}, Lokhttp3/at;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 73
    const-string/jumbo v3, "Connection"

    const-string/jumbo v4, "Keep-Alive"

    invoke-virtual {v2, v3, v4}, Lokhttp3/av;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/av;

    .line 79
    :cond_3
    const-string/jumbo v3, "Accept-Encoding"

    invoke-virtual {v1, v3}, Lokhttp3/at;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 80
    const/4 v0, 0x1

    .line 81
    const-string/jumbo v3, "Accept-Encoding"

    const-string/jumbo v4, "gzip"

    invoke-virtual {v2, v3, v4}, Lokhttp3/av;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/av;

    .line 84
    :cond_4
    iget-object v3, p0, Ldfs;->a:Lokhttp3/ab;

    invoke-virtual {v1}, Lokhttp3/at;->a()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-interface {v3, v4}, Lokhttp3/ab;->a(Lokhttp3/HttpUrl;)Ljava/util/List;

    move-result-object v3

    .line 85
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 86
    const-string/jumbo v4, "Cookie"

    invoke-direct {p0, v3}, Ldfs;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lokhttp3/av;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/av;

    .line 89
    :cond_5
    const-string/jumbo v3, "User-Agent"

    invoke-virtual {v1, v3}, Lokhttp3/at;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    .line 90
    const-string/jumbo v3, "User-Agent"

    invoke-static {}, Ldfa;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lokhttp3/av;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/av;

    .line 93
    :cond_6
    invoke-virtual {v2}, Lokhttp3/av;->a()Lokhttp3/at;

    move-result-object v2

    invoke-interface {p1, v2}, Lokhttp3/am;->a(Lokhttp3/at;)Lokhttp3/ax;

    move-result-object v2

    .line 95
    iget-object v3, p0, Ldfs;->a:Lokhttp3/ab;

    invoke-virtual {v1}, Lokhttp3/at;->a()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v2}, Lokhttp3/ax;->f()Lokhttp3/ah;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ldgg;->a(Lokhttp3/ab;Lokhttp3/HttpUrl;Lokhttp3/ah;)V

    .line 97
    invoke-virtual {v2}, Lokhttp3/ax;->h()Lokhttp3/az;

    move-result-object v3

    .line 98
    invoke-virtual {v3, v1}, Lokhttp3/az;->a(Lokhttp3/at;)Lokhttp3/az;

    move-result-object v1

    .line 100
    if-eqz v0, :cond_7

    const-string/jumbo v0, "gzip"

    const-string/jumbo v3, "Content-Encoding"

    .line 101
    invoke-virtual {v2, v3}, Lokhttp3/ax;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 102
    invoke-static {v2}, Ldgg;->d(Lokhttp3/ax;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 103
    new-instance v0, Lokio/o;

    invoke-virtual {v2}, Lokhttp3/ax;->g()Lokhttp3/ba;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ba;->b()Lokio/j;

    move-result-object v3

    invoke-direct {v0, v3}, Lokio/o;-><init>(Lokio/ab;)V

    .line 104
    invoke-virtual {v2}, Lokhttp3/ax;->f()Lokhttp3/ah;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ah;->b()Lokhttp3/aj;

    move-result-object v2

    const-string/jumbo v3, "Content-Encoding"

    .line 105
    invoke-virtual {v2, v3}, Lokhttp3/aj;->b(Ljava/lang/String;)Lokhttp3/aj;

    move-result-object v2

    const-string/jumbo v3, "Content-Length"

    .line 106
    invoke-virtual {v2, v3}, Lokhttp3/aj;->b(Ljava/lang/String;)Lokhttp3/aj;

    move-result-object v2

    .line 107
    invoke-virtual {v2}, Lokhttp3/aj;->a()Lokhttp3/ah;

    move-result-object v2

    .line 108
    invoke-virtual {v1, v2}, Lokhttp3/az;->a(Lokhttp3/ah;)Lokhttp3/az;

    .line 109
    new-instance v3, Ldgk;

    invoke-static {v0}, Lokio/q;->a(Lokio/ab;)Lokio/j;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Ldgk;-><init>(Lokhttp3/ah;Lokio/j;)V

    invoke-virtual {v1, v3}, Lokhttp3/az;->a(Lokhttp3/ba;)Lokhttp3/az;

    .line 112
    :cond_7
    invoke-virtual {v1}, Lokhttp3/az;->a()Lokhttp3/ax;

    move-result-object v0

    return-object v0

    .line 63
    :cond_8
    const-string/jumbo v3, "Transfer-Encoding"

    const-string/jumbo v4, "chunked"

    invoke-virtual {v2, v3, v4}, Lokhttp3/av;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/av;

    .line 64
    const-string/jumbo v3, "Content-Length"

    invoke-virtual {v2, v3}, Lokhttp3/av;->b(Ljava/lang/String;)Lokhttp3/av;

    goto/16 :goto_0
.end method
