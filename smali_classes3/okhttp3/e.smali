.class Lokhttp3/e;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldfr;


# instance fields
.field final synthetic a:Lokhttp3/d;


# direct methods
.method constructor <init>(Lokhttp3/d;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lokhttp3/e;->a:Lokhttp3/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/ax;)Ldfe;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lokhttp3/e;->a:Lokhttp3/d;

    invoke-static {v0, p1}, Lokhttp3/d;->a(Lokhttp3/d;Lokhttp3/ax;)Ldfe;

    move-result-object v0

    return-object v0
.end method

.method public a(Lokhttp3/at;)Lokhttp3/ax;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lokhttp3/e;->a:Lokhttp3/d;

    invoke-virtual {v0, p1}, Lokhttp3/d;->a(Lokhttp3/at;)Lokhttp3/ax;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lokhttp3/e;->a:Lokhttp3/d;

    invoke-static {v0}, Lokhttp3/d;->a(Lokhttp3/d;)V

    .line 161
    return-void
.end method

.method public a(Ldff;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lokhttp3/e;->a:Lokhttp3/d;

    invoke-static {v0, p1}, Lokhttp3/d;->a(Lokhttp3/d;Ldff;)V

    .line 165
    return-void
.end method

.method public a(Lokhttp3/ax;Lokhttp3/ax;)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lokhttp3/e;->a:Lokhttp3/d;

    invoke-static {v0, p1, p2}, Lokhttp3/d;->a(Lokhttp3/d;Lokhttp3/ax;Lokhttp3/ax;)V

    .line 157
    return-void
.end method

.method public b(Lokhttp3/at;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lokhttp3/e;->a:Lokhttp3/d;

    invoke-static {v0, p1}, Lokhttp3/d;->a(Lokhttp3/d;Lokhttp3/at;)V

    .line 153
    return-void
.end method
