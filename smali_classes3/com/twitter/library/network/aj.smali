.class public Lcom/twitter/library/network/aj;
.super Lcom/twitter/internal/network/l;
.source "Twttr"


# instance fields
.field private final b:Ljavax/net/ssl/SSLSocketFactory;

.field private final c:Lcom/twitter/util/network/g;


# direct methods
.method public constructor <init>(Lcom/twitter/util/network/g;Lcom/twitter/internal/network/f;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p2}, Lcom/twitter/internal/network/l;-><init>(Lcom/twitter/internal/network/f;)V

    .line 31
    iput-object p1, p0, Lcom/twitter/library/network/aj;->c:Lcom/twitter/util/network/g;

    .line 32
    invoke-interface {p1}, Lcom/twitter/util/network/g;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/network/aj;->b:Ljavax/net/ssl/SSLSocketFactory;

    .line 33
    return-void
.end method


# virtual methods
.method public a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/twitter/internal/network/l;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 46
    const-string/jumbo v0, "https"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 47
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 48
    # iget-object v2, p0, Lcom/twitter/library/network/aj;->b:Ljavax/net/ssl/SSLSocketFactory;

    # invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 49
    iget-object v2, p0, Lcom/twitter/library/network/aj;->c:Lcom/twitter/util/network/g;

    invoke-interface {v2}, Lcom/twitter/util/network/g;->c()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    # invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 51
    :cond_0
    return-object v1
.end method
