.class final Lokhttp3/as;
.super Ldex;
.source "Twttr"


# instance fields
.field final synthetic a:Lokhttp3/ar;

.field private final c:Lokhttp3/o;


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lokhttp3/as;->a:Lokhttp3/ar;

    iget-object v0, v0, Lokhttp3/ar;->a:Lokhttp3/at;

    invoke-virtual {v0}, Lokhttp3/at;->a()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 118
    const/4 v2, 0x0

    .line 120
    :try_start_0
    iget-object v0, p0, Lokhttp3/as;->a:Lokhttp3/ar;

    invoke-static {v0}, Lokhttp3/ar;->a(Lokhttp3/ar;)Lokhttp3/ax;

    move-result-object v0

    .line 121
    iget-object v3, p0, Lokhttp3/as;->a:Lokhttp3/ar;

    invoke-static {v3}, Lokhttp3/ar;->b(Lokhttp3/ar;)Ldgm;

    move-result-object v3

    invoke-virtual {v3}, Ldgm;->b()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    :try_start_1
    iget-object v0, p0, Lokhttp3/as;->c:Lokhttp3/o;

    iget-object v2, p0, Lokhttp3/as;->a:Lokhttp3/ar;

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Canceled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Lokhttp3/o;->a(Lokhttp3/n;Ljava/io/IOException;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :goto_0
    iget-object v0, p0, Lokhttp3/as;->a:Lokhttp3/ar;

    invoke-static {v0}, Lokhttp3/ar;->d(Lokhttp3/ar;)Lokhttp3/ao;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ao;->t()Lokhttp3/ad;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp3/ad;->a(Lokhttp3/as;)V

    .line 138
    :goto_1
    return-void

    .line 126
    :cond_0
    :try_start_2
    iget-object v2, p0, Lokhttp3/as;->c:Lokhttp3/o;

    iget-object v3, p0, Lokhttp3/as;->a:Lokhttp3/ar;

    invoke-interface {v2, v3, v0}, Lokhttp3/o;->a(Lokhttp3/n;Lokhttp3/ax;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    :goto_2
    if-eqz v1, :cond_1

    .line 131
    :try_start_3
    invoke-static {}, Ldgx;->b()Ldgx;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Callback failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/as;->a:Lokhttp3/ar;

    invoke-static {v4}, Lokhttp3/ar;->c(Lokhttp3/ar;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ldgx;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 136
    :goto_3
    iget-object v0, p0, Lokhttp3/as;->a:Lokhttp3/ar;

    invoke-static {v0}, Lokhttp3/ar;->d(Lokhttp3/ar;)Lokhttp3/ao;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ao;->t()Lokhttp3/ad;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp3/ad;->a(Lokhttp3/as;)V

    goto :goto_1

    .line 133
    :cond_1
    :try_start_4
    iget-object v1, p0, Lokhttp3/as;->c:Lokhttp3/o;

    iget-object v2, p0, Lokhttp3/as;->a:Lokhttp3/ar;

    invoke-interface {v1, v2, v0}, Lokhttp3/o;->a(Lokhttp3/n;Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 136
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lokhttp3/as;->a:Lokhttp3/ar;

    invoke-static {v1}, Lokhttp3/ar;->d(Lokhttp3/ar;)Lokhttp3/ao;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ao;->t()Lokhttp3/ad;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/ad;->a(Lokhttp3/as;)V

    throw v0

    .line 128
    :catch_1
    move-exception v0

    move v1, v2

    goto :goto_2
.end method
