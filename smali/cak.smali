.class public Lcak;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Landroid/content/Context;JI)V
    .locals 5

    .prologue
    .line 62
    new-instance v0, Lcom/twitter/library/client/l;

    invoke-direct {v0, p0, p1, p2}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    .line 63
    invoke-static {}, Lcge;->b()Lcge;

    move-result-object v1

    .line 64
    invoke-virtual {v0}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v2, "pref_contacts_live_sync_opt_in"

    invoke-virtual {v0, v2, p3}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;I)Lcom/twitter/library/client/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/n;->apply()V

    .line 66
    if-nez p3, :cond_0

    .line 67
    invoke-static {p0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    new-instance v2, Lcah;

    .line 68
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcah;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    .line 67
    invoke-virtual {v0, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 69
    new-instance v0, Lcgc;

    new-instance v2, Lcom/twitter/library/client/l;

    invoke-direct {v2, p0, p1, p2}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    invoke-direct {v0, v2}, Lcgc;-><init>(Lcom/twitter/library/client/l;)V

    const/4 v2, 0x0

    .line 70
    invoke-virtual {v0, v2}, Lcgc;->a(Z)V

    .line 73
    :cond_0
    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {v1}, Lcge;->a()V

    .line 76
    :cond_1
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcgb;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "people_discovery_use_new_contacts_permission_prompt_for_all"

    .line 50
    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 49
    :goto_0
    return v0

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 58
    invoke-static {}, Lcom/twitter/android/lb;->a()Lcom/twitter/android/lb;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.READ_CONTACTS"

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/twitter/android/lb;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;J)Z
    .locals 3

    .prologue
    .line 54
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-static {p0}, Lcak;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcak;->c(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 87
    invoke-static {p0}, Lcak;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v0

    .line 91
    :cond_1
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 92
    if-eqz p1, :cond_2

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcak;->b(Landroid/content/Context;J)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;J)Z
    .locals 1

    .prologue
    .line 96
    invoke-static {p0, p1, p2}, Lcak;->e(Landroid/content/Context;J)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;J)Z
    .locals 3

    .prologue
    .line 100
    invoke-static {p0, p1, p2}, Lcak;->e(Landroid/content/Context;J)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;J)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 104
    invoke-static {p0, p1, p2}, Lcak;->e(Landroid/content/Context;J)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Landroid/content/Context;J)I
    .locals 3

    .prologue
    .line 109
    new-instance v0, Lcom/twitter/library/client/l;

    invoke-direct {v0, p0, p1, p2}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    const-string/jumbo v1, "pref_contacts_live_sync_opt_in"

    const/4 v2, 0x0

    .line 110
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/l;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 111
    return v0
.end method
