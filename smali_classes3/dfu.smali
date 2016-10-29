.class public final Ldfu;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldgi;


# instance fields
.field private final a:Lokhttp3/ao;

.field private final b:Lokhttp3/internal/connection/f;

.field private final c:Lokio/j;

.field private final d:Lokio/i;

.field private e:I


# direct methods
.method public constructor <init>(Lokhttp3/ao;Lokhttp3/internal/connection/f;Lokio/j;Lokio/i;)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Ldfu;->e:I

    .line 84
    iput-object p1, p0, Ldfu;->a:Lokhttp3/ao;

    .line 85
    iput-object p2, p0, Ldfu;->b:Lokhttp3/internal/connection/f;

    .line 86
    iput-object p3, p0, Ldfu;->c:Lokio/j;

    .line 87
    iput-object p4, p0, Ldfu;->d:Lokio/i;

    .line 88
    return-void
.end method

.method static synthetic a(Ldfu;I)I
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Ldfu;->e:I

    return p1
.end method

.method static synthetic a(Ldfu;)Lokio/i;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Ldfu;->d:Lokio/i;

    return-object v0
.end method

.method static synthetic a(Ldfu;Lokio/n;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Ldfu;->a(Lokio/n;)V

    return-void
.end method

.method private a(Lokio/n;)V
    .locals 2

    .prologue
    .line 255
    invoke-virtual {p1}, Lokio/n;->a()Lokio/ac;

    move-result-object v0

    .line 256
    sget-object v1, Lokio/ac;->NONE:Lokio/ac;

    invoke-virtual {p1, v1}, Lokio/n;->a(Lokio/ac;)Lokio/n;

    .line 257
    invoke-virtual {v0}, Lokio/ac;->clearDeadline()Lokio/ac;

    .line 258
    invoke-virtual {v0}, Lokio/ac;->clearTimeout()Lokio/ac;

    .line 259
    return-void
.end method

.method private b(Lokhttp3/ax;)Lokio/ab;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {p1}, Ldgg;->d(Lokhttp3/ax;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ldfu;->b(J)Lokio/ab;

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    .line 140
    :cond_0
    const-string/jumbo v0, "chunked"

    const-string/jumbo v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lokhttp3/ax;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p1}, Lokhttp3/ax;->a()Lokhttp3/at;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/at;->a()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldfu;->a(Lokhttp3/HttpUrl;)Lokio/ab;

    move-result-object v0

    goto :goto_0

    .line 144
    :cond_1
    invoke-static {p1}, Ldgg;->a(Lokhttp3/ax;)J

    move-result-wide v0

    .line 145
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 146
    invoke-virtual {p0, v0, v1}, Ldfu;->b(J)Lokio/ab;

    move-result-object v0

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p0}, Ldfu;->g()Lokio/ab;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Ldfu;)Lokio/j;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Ldfu;->c:Lokio/j;

    return-object v0
.end method

.method static synthetic c(Ldfu;)I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Ldfu;->e:I

    return v0
.end method

.method static synthetic d(Ldfu;)Lokhttp3/internal/connection/f;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Ldfu;->b:Lokhttp3/internal/connection/f;

    return-object v0
.end method

.method static synthetic e(Ldfu;)Lokhttp3/ao;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Ldfu;->a:Lokhttp3/ao;

    return-object v0
.end method


# virtual methods
.method public a(Lokhttp3/ax;)Lokhttp3/ba;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0, p1}, Ldfu;->b(Lokhttp3/ax;)Lokio/ab;

    move-result-object v0

    .line 132
    new-instance v1, Ldgk;

    invoke-virtual {p1}, Lokhttp3/ax;->f()Lokhttp3/ah;

    move-result-object v2

    invoke-static {v0}, Lokio/q;->a(Lokio/ab;)Lokio/j;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ldgk;-><init>(Lokhttp3/ah;Lokio/j;)V

    return-object v1
.end method

.method public a(J)Lokio/aa;
    .locals 3

    .prologue
    .line 224
    iget v0, p0, Ldfu;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ldfu;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Ldfu;->e:I

    .line 226
    new-instance v0, Ldfz;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Ldfz;-><init>(Ldfu;JLdfv;)V

    return-object v0
.end method

.method public a(Lokhttp3/at;J)Lokio/aa;
    .locals 2

    .prologue
    .line 91
    const-string/jumbo v0, "chunked"

    const-string/jumbo v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lokhttp3/at;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Ldfu;->f()Lokio/aa;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    .line 96
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p0, p2, p3}, Ldfu;->a(J)Lokio/aa;

    move-result-object v0

    goto :goto_0

    .line 101
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lokhttp3/HttpUrl;)Lokio/ab;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    iget v0, p0, Ldfu;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ldfu;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Ldfu;->e:I

    .line 238
    new-instance v0, Ldfy;

    invoke-direct {v0, p0, p1}, Ldfy;-><init>(Ldfu;Lokhttp3/HttpUrl;)V

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Ldfu;->b:Lokhttp3/internal/connection/f;

    invoke-virtual {v0}, Lokhttp3/internal/connection/f;->b()Lokhttp3/internal/connection/c;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->b()V

    .line 108
    :cond_0
    return-void
.end method

.method public a(Lokhttp3/ah;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    iget v0, p0, Ldfu;->e:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ldfu;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    iget-object v0, p0, Ldfu;->d:Lokio/i;

    invoke-interface {v0, p2}, Lokio/i;->b(Ljava/lang/String;)Lokio/i;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-interface {v0, v1}, Lokio/i;->b(Ljava/lang/String;)Lokio/i;

    .line 168
    const/4 v0, 0x0

    invoke-virtual {p1}, Lokhttp3/ah;->a()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 169
    iget-object v2, p0, Ldfu;->d:Lokio/i;

    invoke-virtual {p1, v0}, Lokhttp3/ah;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/i;->b(Ljava/lang/String;)Lokio/i;

    move-result-object v2

    const-string/jumbo v3, ": "

    .line 170
    invoke-interface {v2, v3}, Lokio/i;->b(Ljava/lang/String;)Lokio/i;

    move-result-object v2

    .line 171
    invoke-virtual {p1, v0}, Lokhttp3/ah;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/i;->b(Ljava/lang/String;)Lokio/i;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    .line 172
    invoke-interface {v2, v3}, Lokio/i;->b(Ljava/lang/String;)Lokio/i;

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Ldfu;->d:Lokio/i;

    const-string/jumbo v1, "\r\n"

    invoke-interface {v0, v1}, Lokio/i;->b(Ljava/lang/String;)Lokio/i;

    .line 175
    const/4 v0, 0x1

    iput v0, p0, Ldfu;->e:I

    .line 176
    return-void
.end method

.method public a(Lokhttp3/at;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Ldfu;->b:Lokhttp3/internal/connection/f;

    .line 122
    invoke-virtual {v0}, Lokhttp3/internal/connection/f;->b()Lokhttp3/internal/connection/c;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->a()Lokhttp3/bb;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/bb;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    .line 121
    invoke-static {p1, v0}, Ldgl;->a(Lokhttp3/at;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {p1}, Lokhttp3/at;->c()Lokhttp3/ah;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ldfu;->a(Lokhttp3/ah;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public b()Lokhttp3/az;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p0}, Ldfu;->d()Lokhttp3/az;

    move-result-object v0

    return-object v0
.end method

.method public b(J)Lokio/ab;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    iget v0, p0, Ldfu;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ldfu;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Ldfu;->e:I

    .line 232
    new-instance v0, Ldga;

    invoke-direct {v0, p0, p1, p2}, Ldga;-><init>(Ldfu;J)V

    return-object v0
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Ldfu;->d:Lokio/i;

    invoke-interface {v0}, Lokio/i;->flush()V

    .line 162
    return-void
.end method

.method public d()Lokhttp3/az;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    iget v0, p0, Ldfu;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Ldfu;->e:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ldfu;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    :try_start_0
    iget-object v0, p0, Ldfu;->c:Lokio/j;

    invoke-interface {v0}, Lokio/j;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldgn;->a(Ljava/lang/String;)Ldgn;

    move-result-object v0

    .line 188
    new-instance v1, Lokhttp3/az;

    invoke-direct {v1}, Lokhttp3/az;-><init>()V

    iget-object v2, v0, Ldgn;->a:Lokhttp3/Protocol;

    .line 189
    invoke-virtual {v1, v2}, Lokhttp3/az;->a(Lokhttp3/Protocol;)Lokhttp3/az;

    move-result-object v1

    iget v2, v0, Ldgn;->b:I

    .line 190
    invoke-virtual {v1, v2}, Lokhttp3/az;->a(I)Lokhttp3/az;

    move-result-object v1

    iget-object v2, v0, Ldgn;->c:Ljava/lang/String;

    .line 191
    invoke-virtual {v1, v2}, Lokhttp3/az;->a(Ljava/lang/String;)Lokhttp3/az;

    move-result-object v1

    .line 192
    invoke-virtual {p0}, Ldfu;->e()Lokhttp3/ah;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/az;->a(Lokhttp3/ah;)Lokhttp3/az;

    move-result-object v1

    .line 194
    iget v0, v0, Ldgn;->b:I

    const/16 v2, 0x64

    if-eq v0, v2, :cond_0

    .line 195
    const/4 v0, 0x4

    iput v0, p0, Ldfu;->e:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    return-object v1

    .line 199
    :catch_0
    move-exception v0

    .line 201
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected end of stream on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ldfu;->b:Lokhttp3/internal/connection/f;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 203
    throw v1
.end method

.method public e()Lokhttp3/ah;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Lokhttp3/aj;

    invoke-direct {v0}, Lokhttp3/aj;-><init>()V

    .line 211
    :goto_0
    iget-object v1, p0, Ldfu;->c:Lokio/j;

    invoke-interface {v1}, Lokio/j;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    sget-object v2, Ldew;->a:Ldew;

    invoke-virtual {v2, v0, v1}, Ldew;->a(Lokhttp3/aj;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {v0}, Lokhttp3/aj;->a()Lokhttp3/ah;

    move-result-object v0

    return-object v0
.end method

.method public f()Lokio/aa;
    .locals 3

    .prologue
    .line 218
    iget v0, p0, Ldfu;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ldfu;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Ldfu;->e:I

    .line 220
    new-instance v0, Ldfx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldfx;-><init>(Ldfu;Ldfv;)V

    return-object v0
.end method

.method public g()Lokio/ab;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    iget v0, p0, Ldfu;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ldfu;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    iget-object v0, p0, Ldfu;->b:Lokhttp3/internal/connection/f;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Ldfu;->e:I

    .line 245
    iget-object v0, p0, Ldfu;->b:Lokhttp3/internal/connection/f;

    invoke-virtual {v0}, Lokhttp3/internal/connection/f;->d()V

    .line 246
    new-instance v0, Ldgb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldgb;-><init>(Ldfu;Ldfv;)V

    return-object v0
.end method
