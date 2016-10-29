.class public Lcom/twitter/library/network/ak;
.super Lcom/twitter/internal/network/p;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/network/y;


# instance fields
.field private final b:Lcom/twitter/util/network/g;

.field private final c:Lcom/twitter/library/network/w;


# direct methods
.method public constructor <init>(Lcom/twitter/util/network/g;Lcom/twitter/internal/network/f;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p2}, Lcom/twitter/internal/network/p;-><init>(Lcom/twitter/internal/network/f;)V

    .line 38
    iput-object p1, p0, Lcom/twitter/library/network/ak;->b:Lcom/twitter/util/network/g;

    .line 39
    new-instance v0, Lcom/twitter/library/network/w;

    invoke-direct {v0, p0}, Lcom/twitter/library/network/w;-><init>(Lcom/twitter/library/network/y;)V

    iput-object v0, p0, Lcom/twitter/library/network/ak;->c:Lcom/twitter/library/network/w;

    .line 42
    invoke-static {}, Ldgx;->b()Ldgx;

    move-result-object v0

    instance-of v0, v0, Ldgy;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ldgy;

    invoke-direct {v0, p1}, Ldgy;-><init>(Lcom/twitter/util/network/g;)V

    invoke-static {v0}, Ldgy;->a(Ldgx;)V

    .line 45
    :cond_0
    return-void
.end method

.method private static b()Lokhttp3/al;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->b()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->a()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 110
    :goto_0
    return-object v0

    .line 107
    :cond_0
    :try_start_0
    const-string/jumbo v0, "com.facebook.stetho.okhttp3.StethoInterceptor"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 108
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/al;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 110
    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/twitter/internal/network/HttpOperation$RequestMethod;Ljava/net/URI;Lcom/twitter/internal/network/i;)Lcom/twitter/internal/network/HttpOperation;
    .locals 4

    .prologue
    .line 84
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/internal/network/p;->a(Lcom/twitter/internal/network/HttpOperation$RequestMethod;Ljava/net/URI;Lcom/twitter/internal/network/i;)Lcom/twitter/internal/network/HttpOperation;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/twitter/library/network/ak;->c:Lcom/twitter/library/network/w;

    invoke-virtual {v1, p2}, Lcom/twitter/library/network/w;->b(Ljava/net/URI;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/twitter/internal/network/HttpOperation$Protocol;

    const/4 v2, 0x0

    sget-object v3, Lcom/twitter/internal/network/HttpOperation$Protocol;->b:Lcom/twitter/internal/network/HttpOperation$Protocol;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/internal/network/HttpOperation;->a([Lcom/twitter/internal/network/HttpOperation$Protocol;)V

    .line 91
    :cond_0
    return-object v0
.end method

.method protected a(Lcom/twitter/internal/network/f;)Lokhttp3/aq;
    .locals 4

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/twitter/internal/network/p;->a(Lcom/twitter/internal/network/f;)Lokhttp3/aq;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/twitter/library/network/ak;->b:Lcom/twitter/util/network/g;

    invoke-interface {v1}, Lcom/twitter/util/network/g;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 57
    iget-object v2, p0, Lcom/twitter/library/network/ak;->b:Lcom/twitter/util/network/g;

    invoke-interface {v2}, Lcom/twitter/util/network/g;->b()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    .line 58
    iget-object v3, p0, Lcom/twitter/library/network/ak;->b:Lcom/twitter/util/network/g;

    invoke-interface {v3}, Lcom/twitter/util/network/g;->c()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v3

    .line 60
    if-eqz v3, :cond_0

    .line 61
    invoke-virtual {v0, v3}, Lokhttp3/aq;->a(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/aq;

    .line 64
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 65
    invoke-virtual {v0, v1, v2}, Lokhttp3/aq;->a(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/aq;

    .line 68
    :cond_1
    invoke-static {}, Lcom/twitter/library/network/ak;->b()Lokhttp3/al;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    invoke-virtual {v0, v1}, Lokhttp3/aq;->a(Lokhttp3/al;)Lokhttp3/aq;

    .line 73
    :cond_2
    return-object v0
.end method

.method public declared-synchronized a()V
    .locals 1

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/twitter/internal/network/p;->a()V

    .line 79
    iget-object v0, p0, Lcom/twitter/library/network/ak;->c:Lcom/twitter/library/network/w;

    invoke-virtual {v0}, Lcom/twitter/library/network/w;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/twitter/util/network/d;",
            "Lcom/twitter/util/network/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    return-void
.end method
