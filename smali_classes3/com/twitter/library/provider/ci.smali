.class public Lcom/twitter/library/provider/ci;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/twitter/internal/network/j;
    .locals 6

    .prologue
    .line 287
    .line 288
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 290
    new-instance v1, Lcom/twitter/internal/network/j;

    const-string/jumbo v2, "proxy_enabled"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v3, "proxy_host"

    const-string/jumbo v4, ""

    .line 291
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "proxy_port"

    const-string/jumbo v5, ""

    .line 292
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/twitter/internal/network/j;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    .line 290
    return-object v1
.end method

.method public static b(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .prologue
    .line 297
    invoke-static {p0}, Ldbt;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 298
    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "http-responses"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Lcom/twitter/internal/network/f;
    .locals 3

    .prologue
    .line 305
    new-instance v0, Lcom/twitter/internal/network/f;

    invoke-static {p0}, Lcom/twitter/library/provider/ci;->a(Landroid/content/Context;)Lcom/twitter/internal/network/j;

    move-result-object v1

    invoke-static {p0}, Lcom/twitter/library/provider/ci;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/twitter/internal/network/f;-><init>(Lcom/twitter/internal/network/j;Ljava/io/File;)V

    return-object v0
.end method
