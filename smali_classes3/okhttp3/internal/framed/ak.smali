.class Lokhttp3/internal/framed/ak;
.super Lokio/m;
.source "Twttr"


# instance fields
.field final synthetic a:Lokhttp3/internal/framed/aj;


# direct methods
.method constructor <init>(Lokhttp3/internal/framed/aj;Lokio/ab;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lokhttp3/internal/framed/ak;->a:Lokhttp3/internal/framed/aj;

    invoke-direct {p0, p2}, Lokio/m;-><init>(Lokio/ab;)V

    return-void
.end method


# virtual methods
.method public read(Lokio/f;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .line 55
    iget-object v2, p0, Lokhttp3/internal/framed/ak;->a:Lokhttp3/internal/framed/aj;

    invoke-static {v2}, Lokhttp3/internal/framed/aj;->a(Lokhttp3/internal/framed/aj;)I

    move-result v2

    if-nez v2, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-wide v0

    .line 56
    :cond_1
    iget-object v2, p0, Lokhttp3/internal/framed/ak;->a:Lokhttp3/internal/framed/aj;

    invoke-static {v2}, Lokhttp3/internal/framed/aj;->a(Lokhttp3/internal/framed/aj;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-super {p0, p1, v2, v3}, Lokio/m;->read(Lokio/f;J)J

    move-result-wide v2

    .line 57
    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 58
    iget-object v0, p0, Lokhttp3/internal/framed/ak;->a:Lokhttp3/internal/framed/aj;

    iget-object v1, p0, Lokhttp3/internal/framed/ak;->a:Lokhttp3/internal/framed/aj;

    invoke-static {v1}, Lokhttp3/internal/framed/aj;->a(Lokhttp3/internal/framed/aj;)I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v4, v2

    long-to-int v1, v4

    invoke-static {v0, v1}, Lokhttp3/internal/framed/aj;->a(Lokhttp3/internal/framed/aj;I)I

    move-wide v0, v2

    .line 59
    goto :goto_0
.end method
