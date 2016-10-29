.class public Lcom/twitter/library/platform/notifications/x;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/library/client/l;


# direct methods
.method private constructor <init>(Lcom/twitter/library/client/l;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/twitter/library/platform/notifications/x;->a:Lcom/twitter/library/client/l;

    .line 28
    return-void
.end method

.method public static a(Landroid/content/Context;J)Lcom/twitter/library/platform/notifications/x;
    .locals 5

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/twitter/library/platform/notifications/x;->a(Landroid/content/Context;)V

    .line 57
    new-instance v1, Lcom/twitter/library/platform/notifications/x;

    new-instance v2, Lcom/twitter/library/client/l;

    const-string/jumbo v3, "c2dm"

    invoke-direct {v2, v0, p1, p2, v3}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/twitter/library/platform/notifications/x;-><init>(Lcom/twitter/library/client/l;)V

    return-object v1
.end method

.method private static a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 61
    const-string/jumbo v0, "c2dm"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 62
    const-string/jumbo v1, "ver"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    const-string/jumbo v1, "ver"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 64
    if-ge v1, v3, :cond_0

    .line 65
    invoke-static {v0, v1}, Lcom/twitter/library/platform/notifications/x;->a(Landroid/content/SharedPreferences;I)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-static {v0, v2}, Lcom/twitter/library/platform/notifications/x;->a(Landroid/content/SharedPreferences;I)V

    .line 75
    invoke-static {p0, v0}, Lcom/twitter/library/platform/notifications/x;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 8

    .prologue
    .line 105
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    :cond_0
    return-void

    .line 108
    :cond_1
    invoke-static {}, Lcom/twitter/app/common/account/d;->a()Lcom/twitter/app/common/account/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/account/d;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/account/a;

    .line 109
    new-instance v2, Lcom/twitter/library/client/l;

    invoke-virtual {v0}, Lcom/twitter/app/common/account/a;->b()Lcom/twitter/app/common/account/UserIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/app/common/account/UserIdentifier;->b()J

    move-result-wide v4

    const-string/jumbo v3, "c2dm"

    invoke-direct {v2, p0, v4, v5, v3}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    .line 110
    invoke-virtual {v2}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v2

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "last_refresh."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/twitter/app/common/account/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-interface {p1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 116
    const-string/jumbo v4, "last_refresh."

    const-wide/16 v6, 0x0

    invoke-interface {p1, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v2, v4, v6, v7}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;J)Lcom/twitter/library/client/n;

    .line 118
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reg_enabled_for."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/twitter/app/common/account/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 120
    const-string/jumbo v3, "reg_enabled_for."

    const/4 v4, 0x0

    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;I)Lcom/twitter/library/client/n;

    .line 122
    :cond_3
    invoke-virtual {v2}, Lcom/twitter/library/client/n;->apply()V

    goto :goto_0
.end method

.method private static a(Landroid/content/SharedPreferences;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 83
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 85
    if-nez p1, :cond_1

    move v0, v1

    .line 88
    :goto_0
    if-ne v0, v1, :cond_0

    .line 92
    const-string/jumbo v0, "reg_id"

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "backoff"

    .line 93
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "backoff_ceil"

    .line 94
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "last_refresh."

    .line 95
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 96
    const/4 v0, 0x2

    .line 98
    :cond_0
    const-string/jumbo v1, "ver"

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 99
    return-void

    :cond_1
    move v0, p1

    goto :goto_0
.end method


# virtual methods
.method public a(J)V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/twitter/library/platform/notifications/x;->a:Lcom/twitter/library/client/l;

    invoke-virtual {v0}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "last_refresh."

    invoke-virtual {v0, v1, p1, p2}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;J)Lcom/twitter/library/client/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/n;->apply()V

    .line 44
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/twitter/library/platform/notifications/x;->a:Lcom/twitter/library/client/l;

    invoke-virtual {v0}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "enabled"

    invoke-virtual {v0, v1, p1}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Z)Lcom/twitter/library/client/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/n;->apply()V

    .line 36
    return-void
.end method

.method public a()Z
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/twitter/library/platform/notifications/x;->a:Lcom/twitter/library/client/l;

    const-string/jumbo v1, "enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/l;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b()J
    .locals 4

    .prologue
    .line 39
    iget-object v0, p0, Lcom/twitter/library/platform/notifications/x;->a:Lcom/twitter/library/client/l;

    const-string/jumbo v1, "last_refresh."

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/client/l;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
