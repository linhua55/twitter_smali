.class public Lblh;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Landroid/content/Context;JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Lcom/twitter/library/client/l;

    const-string/jumbo v1, "login_verification"

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "lv_totp_secret"

    .line 37
    invoke-virtual {v0, v1, p3}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/client/n;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/twitter/library/client/n;->apply()V

    .line 39
    return-void
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 26
    new-instance v0, Lcom/twitter/library/client/l;

    const-string/jumbo v1, "login_verification"

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "login_verification"

    const/4 v2, 0x1

    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Z)Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "lv_private_key"

    .line 28
    invoke-virtual {v0, v1, p3}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "lv_public_key"

    .line 29
    invoke-virtual {v0, v1, p4}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "lv_secret"

    .line 30
    invoke-virtual {v0, v1, p5}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "lv_times_to_hash"

    .line 31
    invoke-virtual {v0, v1, p6}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;I)Lcom/twitter/library/client/n;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/twitter/library/client/n;->apply()V

    .line 33
    return-void
.end method

.method public static a(Landroid/content/Context;J)Z
    .locals 3

    .prologue
    .line 20
    new-instance v0, Lcom/twitter/library/client/l;

    const-string/jumbo v1, "login_verification"

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    .line 21
    const-string/jumbo v1, "login_verification"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/l;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;J)V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lcom/twitter/library/client/l;

    const-string/jumbo v1, "login_verification"

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "login_verification"

    const/4 v2, 0x0

    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Z)Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "lv_private_key"

    .line 44
    invoke-virtual {v0, v1}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;)Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "lv_public_key"

    .line 45
    invoke-virtual {v0, v1}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;)Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "lv_secret"

    .line 46
    invoke-virtual {v0, v1}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;)Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "lv_times_to_hash"

    .line 47
    invoke-virtual {v0, v1}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;)Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "lv_totp_secret"

    .line 48
    invoke-virtual {v0, v1}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;)Lcom/twitter/library/client/n;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/twitter/library/client/n;->apply()V

    .line 50
    return-void
.end method

.method public static c(Landroid/content/Context;J)V
    .locals 3

    .prologue
    .line 53
    new-instance v0, Lcom/twitter/library/client/l;

    const-string/jumbo v1, "login_verification"

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    .line 54
    const-string/jumbo v1, "lv_times_to_hash"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/l;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 55
    invoke-virtual {v0}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v2, "lv_times_to_hash"

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;I)Lcom/twitter/library/client/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/n;->apply()V

    .line 56
    return-void
.end method

.method public static d(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 60
    new-instance v0, Lcom/twitter/library/client/l;

    const-string/jumbo v1, "login_verification"

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    const-string/jumbo v1, "lv_public_key"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/l;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;J)Z
    .locals 5

    .prologue
    .line 64
    new-instance v0, Lcom/twitter/library/client/l;

    const-string/jumbo v1, "login_verification"

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    .line 65
    const-string/jumbo v1, "lv_private_key"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/l;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    const-string/jumbo v2, "lv_public_key"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/client/l;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static f(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 72
    new-instance v0, Lcom/twitter/library/client/l;

    const-string/jumbo v1, "login_verification"

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    const-string/jumbo v1, "lv_private_key"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/l;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static g(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 77
    new-instance v0, Lcom/twitter/library/client/l;

    const-string/jumbo v1, "login_verification"

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    const-string/jumbo v1, "lv_secret"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/l;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static h(Landroid/content/Context;J)I
    .locals 3

    .prologue
    .line 81
    new-instance v0, Lcom/twitter/library/client/l;

    const-string/jumbo v1, "login_verification"

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    const-string/jumbo v1, "lv_times_to_hash"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/l;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static i(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    new-instance v0, Lcom/twitter/library/client/l;

    const-string/jumbo v1, "login_verification"

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    const-string/jumbo v1, "lv_totp_secret"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/l;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
