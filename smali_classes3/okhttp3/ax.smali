.class public final Lokhttp3/ax;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Lokhttp3/at;

.field private final b:Lokhttp3/Protocol;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Lokhttp3/ag;

.field private final f:Lokhttp3/ah;

.field private final g:Lokhttp3/ba;

.field private final h:Lokhttp3/ax;

.field private final i:Lokhttp3/ax;

.field private final j:Lokhttp3/ax;

.field private final k:J

.field private final l:J

.field private volatile m:Lokhttp3/k;


# direct methods
.method private constructor <init>(Lokhttp3/az;)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Lokhttp3/az;->a(Lokhttp3/az;)Lokhttp3/at;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ax;->a:Lokhttp3/at;

    .line 60
    invoke-static {p1}, Lokhttp3/az;->b(Lokhttp3/az;)Lokhttp3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ax;->b:Lokhttp3/Protocol;

    .line 61
    invoke-static {p1}, Lokhttp3/az;->c(Lokhttp3/az;)I

    move-result v0

    iput v0, p0, Lokhttp3/ax;->c:I

    .line 62
    invoke-static {p1}, Lokhttp3/az;->d(Lokhttp3/az;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ax;->d:Ljava/lang/String;

    .line 63
    invoke-static {p1}, Lokhttp3/az;->e(Lokhttp3/az;)Lokhttp3/ag;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ax;->e:Lokhttp3/ag;

    .line 64
    invoke-static {p1}, Lokhttp3/az;->f(Lokhttp3/az;)Lokhttp3/aj;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/aj;->a()Lokhttp3/ah;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ax;->f:Lokhttp3/ah;

    .line 65
    invoke-static {p1}, Lokhttp3/az;->g(Lokhttp3/az;)Lokhttp3/ba;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ax;->g:Lokhttp3/ba;

    .line 66
    invoke-static {p1}, Lokhttp3/az;->h(Lokhttp3/az;)Lokhttp3/ax;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ax;->h:Lokhttp3/ax;

    .line 67
    invoke-static {p1}, Lokhttp3/az;->i(Lokhttp3/az;)Lokhttp3/ax;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ax;->i:Lokhttp3/ax;

    .line 68
    invoke-static {p1}, Lokhttp3/az;->j(Lokhttp3/az;)Lokhttp3/ax;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ax;->j:Lokhttp3/ax;

    .line 69
    invoke-static {p1}, Lokhttp3/az;->k(Lokhttp3/az;)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/ax;->k:J

    .line 70
    invoke-static {p1}, Lokhttp3/az;->l(Lokhttp3/az;)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/ax;->l:J

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/az;Lokhttp3/ay;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lokhttp3/ax;-><init>(Lokhttp3/az;)V

    return-void
.end method

.method static synthetic a(Lokhttp3/ax;)Lokhttp3/at;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/ax;->a:Lokhttp3/at;

    return-object v0
.end method

.method static synthetic b(Lokhttp3/ax;)Lokhttp3/Protocol;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/ax;->b:Lokhttp3/Protocol;

    return-object v0
.end method

.method static synthetic c(Lokhttp3/ax;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lokhttp3/ax;->c:I

    return v0
.end method

.method static synthetic d(Lokhttp3/ax;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/ax;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lokhttp3/ax;)Lokhttp3/ag;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/ax;->e:Lokhttp3/ag;

    return-object v0
.end method

.method static synthetic f(Lokhttp3/ax;)Lokhttp3/ah;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/ax;->f:Lokhttp3/ah;

    return-object v0
.end method

.method static synthetic g(Lokhttp3/ax;)Lokhttp3/ba;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/ax;->g:Lokhttp3/ba;

    return-object v0
.end method

.method static synthetic h(Lokhttp3/ax;)Lokhttp3/ax;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/ax;->h:Lokhttp3/ax;

    return-object v0
.end method

.method static synthetic i(Lokhttp3/ax;)Lokhttp3/ax;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/ax;->i:Lokhttp3/ax;

    return-object v0
.end method

.method static synthetic j(Lokhttp3/ax;)Lokhttp3/ax;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/ax;->j:Lokhttp3/ax;

    return-object v0
.end method

.method static synthetic k(Lokhttp3/ax;)J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lokhttp3/ax;->k:J

    return-wide v0
.end method

.method static synthetic l(Lokhttp3/ax;)J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lokhttp3/ax;->l:J

    return-wide v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lokhttp3/ax;->f:Lokhttp3/ah;

    invoke-virtual {v0, p1}, Lokhttp3/ah;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_0

    move-object p2, v0

    :cond_0
    return-object p2
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lokhttp3/ax;->f:Lokhttp3/ah;

    invoke-virtual {v0, p1}, Lokhttp3/ah;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a()Lokhttp3/at;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lokhttp3/ax;->a:Lokhttp3/at;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lokhttp3/ax;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lokhttp3/Protocol;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lokhttp3/ax;->b:Lokhttp3/Protocol;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lokhttp3/ax;->c:I

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lokhttp3/ax;->g:Lokhttp3/ba;

    invoke-virtual {v0}, Lokhttp3/ba;->close()V

    .line 270
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lokhttp3/ax;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lokhttp3/ag;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lokhttp3/ax;->e:Lokhttp3/ag;

    return-object v0
.end method

.method public f()Lokhttp3/ah;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lokhttp3/ax;->f:Lokhttp3/ah;

    return-object v0
.end method

.method public g()Lokhttp3/ba;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lokhttp3/ax;->g:Lokhttp3/ba;

    return-object v0
.end method

.method public h()Lokhttp3/az;
    .locals 2

    .prologue
    .line 176
    new-instance v0, Lokhttp3/az;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/az;-><init>(Lokhttp3/ax;Lokhttp3/ay;)V

    return-object v0
.end method

.method public i()Lokhttp3/ax;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lokhttp3/ax;->h:Lokhttp3/ax;

    return-object v0
.end method

.method public j()Lokhttp3/k;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lokhttp3/ax;->m:Lokhttp3/k;

    .line 246
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lokhttp3/ax;->f:Lokhttp3/ah;

    invoke-static {v0}, Lokhttp3/k;->a(Lokhttp3/ah;)Lokhttp3/k;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ax;->m:Lokhttp3/k;

    goto :goto_0
.end method

.method public k()J
    .locals 2

    .prologue
    .line 255
    iget-wide v0, p0, Lokhttp3/ax;->k:J

    return-wide v0
.end method

.method public l()J
    .locals 2

    .prologue
    .line 264
    iget-wide v0, p0, Lokhttp3/ax;->l:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/ax;->b:Lokhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lokhttp3/ax;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/ax;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/ax;->a:Lokhttp3/at;

    .line 280
    invoke-virtual {v1}, Lokhttp3/at;->a()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    return-object v0
.end method
