.class final Lokhttp3/ap;
.super Ldew;
.source "Twttr"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ldew;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lokhttp3/HttpUrl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-static {p1}, Lokhttp3/HttpUrl;->f(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method public a(Lokhttp3/v;Lokhttp3/a;Lokhttp3/internal/connection/f;)Lokhttp3/internal/connection/c;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p1, p2, p3}, Lokhttp3/v;->a(Lokhttp3/a;Lokhttp3/internal/connection/f;)Lokhttp3/internal/connection/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Lokhttp3/v;)Lokhttp3/internal/connection/d;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p1, Lokhttp3/v;->a:Lokhttp3/internal/connection/d;

    return-object v0
.end method

.method public a(Lokhttp3/aj;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    invoke-virtual {p1, p2}, Lokhttp3/aj;->a(Ljava/lang/String;)Lokhttp3/aj;

    .line 128
    return-void
.end method

.method public a(Lokhttp3/aj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    invoke-virtual {p1, p2, p3}, Lokhttp3/aj;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/aj;

    .line 132
    return-void
.end method

.method public a(Lokhttp3/x;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 0

    .prologue
    .line 162
    invoke-virtual {p1, p2, p3}, Lokhttp3/x;->a(Ljavax/net/ssl/SSLSocket;Z)V

    .line 163
    return-void
.end method

.method public a(Lokhttp3/v;Lokhttp3/internal/connection/c;)Z
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p1, p2}, Lokhttp3/v;->b(Lokhttp3/internal/connection/c;)Z

    move-result v0

    return v0
.end method

.method public b(Lokhttp3/v;Lokhttp3/internal/connection/c;)V
    .locals 0

    .prologue
    .line 149
    invoke-virtual {p1, p2}, Lokhttp3/v;->a(Lokhttp3/internal/connection/c;)V

    .line 150
    return-void
.end method
