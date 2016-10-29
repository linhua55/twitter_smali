.class public final Ldfb;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lokhttp3/al;


# static fields
.field private static final b:Lokhttp3/ba;


# instance fields
.field final a:Ldfr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ldfc;

    invoke-direct {v0}, Ldfc;-><init>()V

    sput-object v0, Ldfb;->b:Lokhttp3/ba;

    return-void
.end method

.method public constructor <init>(Ldfr;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Ldfb;->a:Ldfr;

    .line 66
    return-void
.end method

.method private a(Lokhttp3/ax;Lokhttp3/at;Ldfr;)Ldfe;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 158
    if-nez p3, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-object v0

    .line 161
    :cond_1
    invoke-static {p1, p2}, Ldff;->a(Lokhttp3/ax;Lokhttp3/at;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 162
    invoke-virtual {p2}, Lokhttp3/at;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldgh;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    :try_start_0
    invoke-interface {p3, p2}, Ldfr;->b(Lokhttp3/at;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v1

    goto :goto_0

    .line 173
    :cond_2
    invoke-interface {p3, p1}, Ldfr;->a(Lokhttp3/ax;)Ldfe;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lokhttp3/ah;Lokhttp3/ah;)Lokhttp3/ah;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 262
    new-instance v2, Lokhttp3/aj;

    invoke-direct {v2}, Lokhttp3/aj;-><init>()V

    .line 264
    invoke-virtual {p0}, Lokhttp3/ah;->a()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    .line 265
    invoke-virtual {p0, v1}, Lokhttp3/ah;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 266
    invoke-virtual {p0, v1}, Lokhttp3/ah;->b(I)Ljava/lang/String;

    move-result-object v5

    .line 267
    const-string/jumbo v6, "Warning"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 264
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    :cond_1
    invoke-static {v4}, Ldfb;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1, v4}, Lokhttp3/ah;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 271
    :cond_2
    sget-object v6, Ldew;->a:Ldew;

    invoke-virtual {v6, v2, v4, v5}, Ldew;->a(Lokhttp3/aj;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 275
    :cond_3
    invoke-virtual {p1}, Lokhttp3/ah;->a()I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_6

    .line 276
    invoke-virtual {p1, v0}, Lokhttp3/ah;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 277
    const-string/jumbo v4, "Content-Length"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 275
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 280
    :cond_5
    invoke-static {v3}, Ldfb;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 281
    sget-object v4, Ldew;->a:Ldew;

    invoke-virtual {p1, v0}, Lokhttp3/ah;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v3, v5}, Ldew;->a(Lokhttp3/aj;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 285
    :cond_6
    invoke-virtual {v2}, Lokhttp3/aj;->a()Lokhttp3/ah;

    move-result-object v0

    return-object v0
.end method

.method private a(Ldfe;Lokhttp3/ax;)Lokhttp3/ax;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    if-nez p1, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-object p2

    .line 185
    :cond_1
    invoke-interface {p1}, Ldfe;->b()Lokio/aa;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p2}, Lokhttp3/ax;->g()Lokhttp3/ba;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ba;->b()Lokio/j;

    move-result-object v1

    .line 189
    invoke-static {v0}, Lokio/q;->a(Lokio/aa;)Lokio/i;

    move-result-object v0

    .line 191
    new-instance v2, Ldfd;

    invoke-direct {v2, p0, v1, p1, v0}, Ldfd;-><init>(Ldfb;Lokio/j;Ldfe;Lokio/i;)V

    .line 233
    invoke-virtual {p2}, Lokhttp3/ax;->h()Lokhttp3/az;

    move-result-object v0

    new-instance v1, Ldgk;

    .line 234
    invoke-virtual {p2}, Lokhttp3/ax;->f()Lokhttp3/ah;

    move-result-object v3

    invoke-static {v2}, Lokio/q;->a(Lokio/ab;)Lokio/j;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Ldgk;-><init>(Lokhttp3/ah;Lokio/j;)V

    invoke-virtual {v0, v1}, Lokhttp3/az;->a(Lokhttp3/ba;)Lokhttp3/az;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lokhttp3/az;->a()Lokhttp3/ax;

    move-result-object p2

    goto :goto_0
.end method

.method private static a(Lokhttp3/ax;)Lokhttp3/ax;
    .locals 2

    .prologue
    .line 151
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lokhttp3/ax;->g()Lokhttp3/ba;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lokhttp3/ax;->h()Lokhttp3/az;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lokhttp3/az;->a(Lokhttp3/ba;)Lokhttp3/az;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/az;->a()Lokhttp3/ax;

    move-result-object p0

    .line 151
    :cond_0
    return-object p0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 293
    const-string/jumbo v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Keep-Alive"

    .line 294
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Proxy-Authenticate"

    .line 295
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Proxy-Authorization"

    .line 296
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "TE"

    .line 297
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Trailers"

    .line 298
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Transfer-Encoding"

    .line 299
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Upgrade"

    .line 300
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 293
    :goto_0
    return v0

    .line 300
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lokhttp3/ax;Lokhttp3/ax;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 243
    invoke-virtual {p1}, Lokhttp3/ax;->c()I

    move-result v1

    const/16 v2, 0x130

    if-ne v1, v2, :cond_1

    .line 257
    :cond_0
    :goto_0
    return v0

    .line 248
    :cond_1
    invoke-virtual {p0}, Lokhttp3/ax;->f()Lokhttp3/ah;

    move-result-object v1

    const-string/jumbo v2, "Last-Modified"

    invoke-virtual {v1, v2}, Lokhttp3/ah;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 249
    if-eqz v1, :cond_2

    .line 250
    invoke-virtual {p1}, Lokhttp3/ax;->f()Lokhttp3/ah;

    move-result-object v2

    const-string/jumbo v3, "Last-Modified"

    invoke-virtual {v2, v3}, Lokhttp3/ah;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 251
    if-eqz v2, :cond_2

    .line 252
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 257
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lokhttp3/am;)Lokhttp3/ax;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 69
    iget-object v0, p0, Ldfb;->a:Ldfr;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldfb;->a:Ldfr;

    .line 70
    invoke-interface {p1}, Lokhttp3/am;->a()Lokhttp3/at;

    move-result-object v2

    invoke-interface {v0, v2}, Ldfr;->a(Lokhttp3/at;)Lokhttp3/ax;

    move-result-object v0

    .line 73
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 75
    new-instance v4, Ldfh;

    invoke-interface {p1}, Lokhttp3/am;->a()Lokhttp3/at;

    move-result-object v5

    invoke-direct {v4, v2, v3, v5, v0}, Ldfh;-><init>(JLokhttp3/at;Lokhttp3/ax;)V

    invoke-virtual {v4}, Ldfh;->a()Ldff;

    move-result-object v2

    .line 76
    iget-object v3, v2, Ldff;->a:Lokhttp3/at;

    .line 77
    iget-object v4, v2, Ldff;->b:Lokhttp3/ax;

    .line 79
    iget-object v5, p0, Ldfb;->a:Ldfr;

    if-eqz v5, :cond_0

    .line 80
    iget-object v5, p0, Ldfb;->a:Ldfr;

    invoke-interface {v5, v2}, Ldfr;->a(Ldff;)V

    .line 83
    :cond_0
    if-eqz v0, :cond_1

    if-nez v4, :cond_1

    .line 84
    invoke-virtual {v0}, Lokhttp3/ax;->g()Lokhttp3/ba;

    move-result-object v2

    invoke-static {v2}, Ldey;->a(Ljava/io/Closeable;)V

    .line 88
    :cond_1
    if-nez v3, :cond_4

    if-nez v4, :cond_4

    .line 89
    new-instance v0, Lokhttp3/az;

    invoke-direct {v0}, Lokhttp3/az;-><init>()V

    .line 90
    invoke-interface {p1}, Lokhttp3/am;->a()Lokhttp3/at;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/az;->a(Lokhttp3/at;)Lokhttp3/az;

    move-result-object v0

    sget-object v1, Lokhttp3/Protocol;->b:Lokhttp3/Protocol;

    .line 91
    invoke-virtual {v0, v1}, Lokhttp3/az;->a(Lokhttp3/Protocol;)Lokhttp3/az;

    move-result-object v0

    const/16 v1, 0x1f8

    .line 92
    invoke-virtual {v0, v1}, Lokhttp3/az;->a(I)Lokhttp3/az;

    move-result-object v0

    const-string/jumbo v1, "Unsatisfiable Request (only-if-cached)"

    .line 93
    invoke-virtual {v0, v1}, Lokhttp3/az;->a(Ljava/lang/String;)Lokhttp3/az;

    move-result-object v0

    sget-object v1, Ldfb;->b:Lokhttp3/ba;

    .line 94
    invoke-virtual {v0, v1}, Lokhttp3/az;->a(Lokhttp3/ba;)Lokhttp3/az;

    move-result-object v0

    const-wide/16 v2, -0x1

    .line 95
    invoke-virtual {v0, v2, v3}, Lokhttp3/az;->a(J)Lokhttp3/az;

    move-result-object v0

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lokhttp3/az;->b(J)Lokhttp3/az;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lokhttp3/az;->a()Lokhttp3/ax;

    move-result-object v0

    .line 147
    :cond_2
    :goto_1
    return-object v0

    :cond_3
    move-object v0, v1

    .line 70
    goto :goto_0

    .line 101
    :cond_4
    if-nez v3, :cond_5

    .line 102
    invoke-virtual {v4}, Lokhttp3/ax;->h()Lokhttp3/az;

    move-result-object v0

    .line 103
    invoke-static {v4}, Ldfb;->a(Lokhttp3/ax;)Lokhttp3/ax;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/az;->b(Lokhttp3/ax;)Lokhttp3/az;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lokhttp3/az;->a()Lokhttp3/ax;

    move-result-object v0

    goto :goto_1

    .line 109
    :cond_5
    :try_start_0
    invoke-interface {p1, v3}, Lokhttp3/am;->a(Lokhttp3/at;)Lokhttp3/ax;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 112
    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    .line 113
    invoke-virtual {v0}, Lokhttp3/ax;->g()Lokhttp3/ba;

    move-result-object v0

    invoke-static {v0}, Ldey;->a(Ljava/io/Closeable;)V

    .line 118
    :cond_6
    if-eqz v4, :cond_9

    .line 119
    invoke-static {v4, v1}, Ldfb;->a(Lokhttp3/ax;Lokhttp3/ax;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 120
    invoke-virtual {v4}, Lokhttp3/ax;->h()Lokhttp3/az;

    move-result-object v0

    .line 121
    invoke-virtual {v4}, Lokhttp3/ax;->f()Lokhttp3/ah;

    move-result-object v2

    invoke-virtual {v1}, Lokhttp3/ax;->f()Lokhttp3/ah;

    move-result-object v3

    invoke-static {v2, v3}, Ldfb;->a(Lokhttp3/ah;Lokhttp3/ah;)Lokhttp3/ah;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/az;->a(Lokhttp3/ah;)Lokhttp3/az;

    move-result-object v0

    .line 122
    invoke-static {v4}, Ldfb;->a(Lokhttp3/ax;)Lokhttp3/ax;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/az;->b(Lokhttp3/ax;)Lokhttp3/az;

    move-result-object v0

    .line 123
    invoke-static {v1}, Ldfb;->a(Lokhttp3/ax;)Lokhttp3/ax;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/az;->a(Lokhttp3/ax;)Lokhttp3/az;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lokhttp3/az;->a()Lokhttp3/ax;

    move-result-object v0

    .line 125
    invoke-virtual {v1}, Lokhttp3/ax;->g()Lokhttp3/ba;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ba;->close()V

    .line 129
    iget-object v1, p0, Ldfb;->a:Ldfr;

    invoke-interface {v1}, Ldfr;->a()V

    .line 130
    iget-object v1, p0, Ldfb;->a:Ldfr;

    invoke-interface {v1, v4, v0}, Ldfr;->a(Lokhttp3/ax;Lokhttp3/ax;)V

    goto :goto_1

    .line 112
    :catchall_0
    move-exception v2

    if-nez v1, :cond_7

    if-eqz v0, :cond_7

    .line 113
    invoke-virtual {v0}, Lokhttp3/ax;->g()Lokhttp3/ba;

    move-result-object v0

    invoke-static {v0}, Ldey;->a(Ljava/io/Closeable;)V

    :cond_7
    throw v2

    .line 133
    :cond_8
    invoke-virtual {v4}, Lokhttp3/ax;->g()Lokhttp3/ba;

    move-result-object v0

    invoke-static {v0}, Ldey;->a(Ljava/io/Closeable;)V

    .line 137
    :cond_9
    invoke-virtual {v1}, Lokhttp3/ax;->h()Lokhttp3/az;

    move-result-object v0

    .line 138
    invoke-static {v4}, Ldfb;->a(Lokhttp3/ax;)Lokhttp3/ax;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/az;->b(Lokhttp3/ax;)Lokhttp3/az;

    move-result-object v0

    .line 139
    invoke-static {v1}, Ldfb;->a(Lokhttp3/ax;)Lokhttp3/ax;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/az;->a(Lokhttp3/ax;)Lokhttp3/az;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lokhttp3/az;->a()Lokhttp3/ax;

    move-result-object v0

    .line 142
    invoke-static {v0}, Ldgg;->d(Lokhttp3/ax;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 143
    invoke-virtual {v1}, Lokhttp3/ax;->a()Lokhttp3/at;

    move-result-object v1

    iget-object v2, p0, Ldfb;->a:Ldfr;

    invoke-direct {p0, v0, v1, v2}, Ldfb;->a(Lokhttp3/ax;Lokhttp3/at;Ldfr;)Ldfe;

    move-result-object v1

    .line 144
    invoke-direct {p0, v1, v0}, Ldfb;->a(Ldfe;Lokhttp3/ax;)Lokhttp3/ax;

    move-result-object v0

    goto/16 :goto_1
.end method
