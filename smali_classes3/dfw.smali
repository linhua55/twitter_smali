.class abstract Ldfw;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lokio/ab;


# instance fields
.field protected final a:Lokio/n;

.field protected b:Z

.field final synthetic c:Ldfu;


# direct methods
.method private constructor <init>(Ldfu;)V
    .locals 2

    .prologue
    .line 336
    iput-object p1, p0, Ldfw;->c:Ldfu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    new-instance v0, Lokio/n;

    iget-object v1, p0, Ldfw;->c:Ldfu;

    invoke-static {v1}, Ldfu;->b(Ldfu;)Lokio/j;

    move-result-object v1

    invoke-interface {v1}, Lokio/j;->timeout()Lokio/ac;

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/n;-><init>(Lokio/ac;)V

    iput-object v0, p0, Ldfw;->a:Lokio/n;

    return-void
.end method

.method synthetic constructor <init>(Ldfu;Ldfv;)V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0, p1}, Ldfw;-><init>(Ldfu;)V

    return-void
.end method


# virtual methods
.method protected final a(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x6

    .line 349
    iget-object v0, p0, Ldfw;->c:Ldfu;

    invoke-static {v0}, Ldfu;->c(Ldfu;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-object v0, p0, Ldfw;->c:Ldfu;

    invoke-static {v0}, Ldfu;->c(Ldfu;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldfw;->c:Ldfu;

    invoke-static {v2}, Ldfu;->c(Ldfu;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_2
    iget-object v0, p0, Ldfw;->c:Ldfu;

    iget-object v1, p0, Ldfw;->a:Lokio/n;

    invoke-static {v0, v1}, Ldfu;->a(Ldfu;Lokio/n;)V

    .line 354
    iget-object v0, p0, Ldfw;->c:Ldfu;

    invoke-static {v0, v2}, Ldfu;->a(Ldfu;I)I

    .line 355
    iget-object v0, p0, Ldfw;->c:Ldfu;

    invoke-static {v0}, Ldfu;->d(Ldfu;)Lokhttp3/internal/connection/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Ldfw;->c:Ldfu;

    invoke-static {v0}, Ldfu;->d(Ldfu;)Lokhttp3/internal/connection/f;

    move-result-object v1

    if-nez p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Ldfw;->c:Ldfu;

    invoke-virtual {v1, v0, v2}, Lokhttp3/internal/connection/f;->a(ZLdgi;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public timeout()Lokio/ac;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Ldfw;->a:Lokio/n;

    return-object v0
.end method
