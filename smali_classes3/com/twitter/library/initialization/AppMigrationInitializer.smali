.class public Lcom/twitter/library/initialization/AppMigrationInitializer;
.super Lauo;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lauo",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lauo;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/app/common/account/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 62
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/account/a;

    .line 63
    invoke-virtual {v0}, Lcom/twitter/app/common/account/a;->b()Lcom/twitter/app/common/account/UserIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/app/common/account/UserIdentifier;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {v0}, Lcom/twitter/app/common/account/a;->b()Lcom/twitter/app/common/account/UserIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/account/UserIdentifier;->b()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v4, v4}, Lcom/twitter/library/provider/dm;->c(Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 68
    :cond_1
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/app/common/account/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "auto_clean"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "antispam_last_poll_timestamp"

    aput-object v3, v4, v2

    .line 75
    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "notifications_follow_only"

    aput-object v3, v5, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "connect_tab"

    aput-object v3, v5, v2

    .line 79
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 80
    const/4 v3, 0x0

    .line 81
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 82
    array-length v8, v4

    const/4 v2, 0x0

    move/from16 v16, v2

    move v2, v3

    move/from16 v3, v16

    :goto_0
    if-ge v3, v8, :cond_2

    aget-object v9, v4, v3

    .line 83
    invoke-interface {v6, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 84
    const-wide/16 v10, 0x0

    invoke-interface {v6, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 85
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/app/common/account/a;

    .line 86
    new-instance v13, Lcom/twitter/library/client/l;

    invoke-virtual {v2}, Lcom/twitter/app/common/account/a;->b()Lcom/twitter/app/common/account/UserIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/app/common/account/UserIdentifier;->b()J

    move-result-wide v14

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v14, v15}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    .line 87
    invoke-virtual {v13}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v2

    invoke-virtual {v2, v9, v10, v11}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;J)Lcom/twitter/library/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/n;->apply()V

    goto :goto_1

    .line 89
    :cond_0
    invoke-interface {v7, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 90
    const/4 v2, 0x1

    .line 82
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 93
    :cond_2
    array-length v4, v5

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_5

    aget-object v8, v5, v3

    .line 94
    invoke-interface {v6, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 95
    const/4 v2, 0x0

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 96
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/app/common/account/a;

    .line 97
    new-instance v11, Lcom/twitter/library/client/l;

    invoke-virtual {v2}, Lcom/twitter/app/common/account/a;->b()Lcom/twitter/app/common/account/UserIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/app/common/account/UserIdentifier;->b()J

    move-result-wide v12

    move-object/from16 v0, p1

    invoke-direct {v11, v0, v12, v13}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    .line 98
    invoke-virtual {v11}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Z)Lcom/twitter/library/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/n;->apply()V

    goto :goto_3

    .line 100
    :cond_3
    invoke-interface {v7, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 101
    const/4 v2, 0x1

    .line 93
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 104
    :cond_5
    if-eqz v2, :cond_6

    .line 105
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 107
    :cond_6
    return-void
.end method

.method private c(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/app/common/account/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/account/a;

    .line 119
    invoke-virtual {v0}, Lcom/twitter/app/common/account/a;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 121
    new-instance v3, Lcom/twitter/library/client/l;

    invoke-virtual {v0}, Lcom/twitter/app/common/account/a;->b()Lcom/twitter/app/common/account/UserIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/account/UserIdentifier;->b()J

    move-result-wide v4

    invoke-direct {v3, p1, v4, v5}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    .line 122
    invoke-static {v3, v2}, Lcom/twitter/platform/j;->a(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 124
    :cond_0
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method protected synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/library/initialization/AppMigrationInitializer;->b(Landroid/content/Context;Ljava/lang/Void;)V

    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/Void;)Z
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->d()Z

    move-result v0

    return v0
.end method

.method protected b(Landroid/content/Context;Ljava/lang/Void;)V
    .locals 4

    .prologue
    .line 40
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 41
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 43
    const-string/jumbo v2, "app_v"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 45
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/config/AppConfig;->p()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 46
    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->i()I

    move-result v0

    .line 50
    :goto_0
    if-ge v2, v0, :cond_1

    .line 51
    invoke-static {}, Lcom/twitter/app/common/account/d;->a()Lcom/twitter/app/common/account/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/app/common/account/d;->c()Ljava/util/List;

    move-result-object v2

    .line 52
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    invoke-direct {p0, p1, v2}, Lcom/twitter/library/initialization/AppMigrationInitializer;->b(Landroid/content/Context;Ljava/util/List;)V

    .line 54
    invoke-direct {p0, p1, v2}, Lcom/twitter/library/initialization/AppMigrationInitializer;->c(Landroid/content/Context;Ljava/util/List;)V

    .line 55
    invoke-static {p1, v2}, Lcom/twitter/library/initialization/AppMigrationInitializer;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 57
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "app_v"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 59
    :cond_1
    return-void

    .line 48
    :cond_2
    invoke-static {p1}, Lcom/twitter/util/c;->d(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method protected synthetic b(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 25
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/library/initialization/AppMigrationInitializer;->a(Landroid/content/Context;Ljava/lang/Void;)Z

    move-result v0

    return v0
.end method
