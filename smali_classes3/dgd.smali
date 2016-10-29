.class Ldgd;
.super Lokio/m;
.source "Twttr"


# instance fields
.field final synthetic a:Ldgc;


# direct methods
.method public constructor <init>(Ldgc;Lokio/ab;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Ldgd;->a:Ldgc;

    .line 283
    invoke-direct {p0, p2}, Lokio/m;-><init>(Lokio/ab;)V

    .line 284
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Ldgd;->a:Ldgc;

    invoke-static {v0}, Ldgc;->a(Ldgc;)Lokhttp3/internal/connection/f;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Ldgd;->a:Ldgc;

    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/connection/f;->a(ZLdgi;)V

    .line 288
    invoke-super {p0}, Lokio/m;->close()V

    .line 289
    return-void
.end method
