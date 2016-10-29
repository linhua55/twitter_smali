.class public Lcom/twitter/android/initialization/AppSessionInitializer;
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
    .line 43
    invoke-direct {p0}, Lauo;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;JJ)V
    .locals 3

    .prologue
    .line 138
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/twitter/android/initialization/a;

    invoke-direct {v1, p1, p2, p0}, Lcom/twitter/android/initialization/a;-><init>(JLandroid/content/Context;)V

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 155
    return-void
.end method

.method static a(Landroid/content/Context;Lcom/twitter/library/client/Session;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 78
    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 79
    new-instance v2, Lcom/twitter/app/common/account/UserIdentifier;

    invoke-direct {v2, v0, v1}, Lcom/twitter/app/common/account/UserIdentifier;-><init>(J)V

    invoke-static {v2}, Lcom/twitter/app/common/app/n;->c(Lcom/twitter/app/common/account/UserIdentifier;)V

    .line 80
    invoke-static {}, Lcom/twitter/platform/PlatformContext;->e()Lcom/twitter/platform/PlatformContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/platform/PlatformContext;->d()Lcom/twitter/platform/p;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/twitter/platform/p;->a(J)V

    .line 82
    invoke-static {p1}, Lcom/twitter/android/initialization/AppSessionInitializer;->a(Lcom/twitter/library/client/Session;)V

    .line 83
    invoke-static {p0}, Ltc;->a(Landroid/content/Context;)Ltc;

    move-result-object v2

    invoke-virtual {v2}, Ltc;->a()V

    .line 85
    invoke-static {}, Lcom/twitter/app/common/util/f;->a()Lcom/twitter/app/common/util/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/app/common/util/f;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    const-wide/32 v2, 0xea60

    invoke-static {v0, v1, v2, v3}, Lcbo;->a(JJ)V

    .line 89
    :cond_0
    invoke-static {p0}, Lcom/twitter/android/client/c;->a(Landroid/content/Context;)Lcom/twitter/android/client/c;

    move-result-object v0

    .line 90
    invoke-virtual {v0, v4}, Lcom/twitter/android/client/c;->a(Z)V

    .line 91
    invoke-virtual {v0, v4}, Lcom/twitter/android/client/c;->b(Z)V

    .line 92
    return-void
.end method

.method private static a(Lcom/twitter/library/client/Session;)V
    .locals 3

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    .line 159
    invoke-static {}, Lbix;->a()Lbiu;

    move-result-object v1

    .line 160
    const-string/jumbo v2, "verified_user"

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/twitter/model/core/TwitterUser;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lbiu;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string/jumbo v0, "user_name"

    invoke-virtual {p0}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lbiu;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string/jumbo v0, "feature_switches"

    invoke-static {}, Lcbq;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lbiu;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    return-void

    .line 160
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Lcom/twitter/library/client/Session;Z)Z
    .locals 6

    .prologue
    .line 95
    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 100
    invoke-static {p0}, Lcom/twitter/android/client/cd;->a(Landroid/content/Context;)Lcom/twitter/android/client/cd;

    move-result-object v2

    .line 101
    invoke-virtual {v2, v0, v1}, Lcom/twitter/android/client/cd;->a(J)Lcom/twitter/android/client/WidgetControl;

    move-result-object v2

    .line 102
    if-eqz v2, :cond_0

    .line 103
    invoke-virtual {v2, p2}, Lcom/twitter/android/client/WidgetControl;->a(Z)V

    .line 106
    :cond_0
    if-eqz p2, :cond_1

    .line 108
    invoke-static {p0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/bd;->a()V

    .line 111
    invoke-static {p0}, Lcom/twitter/library/media/manager/l;->a(Landroid/content/Context;)Lcom/twitter/library/media/manager/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/media/manager/l;->g()V

    .line 114
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/twitter/android/initialization/AppSessionInitializer;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    .line 117
    :cond_1
    new-instance v2, Lcom/twitter/library/client/l;

    invoke-direct {v2, p0, v0, v1}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    .line 118
    invoke-virtual {v2}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/n;->a()Lcom/twitter/library/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/n;->apply()V

    .line 119
    const-wide/32 v2, 0x493e0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/twitter/android/initialization/AppSessionInitializer;->a(Landroid/content/Context;JJ)V

    .line 121
    invoke-static {p0}, Lcom/twitter/library/platform/TwitterDataSyncService;->a(Landroid/content/Context;)V

    .line 123
    invoke-static {}, Lcom/twitter/platform/PlatformContext;->e()Lcom/twitter/platform/PlatformContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/platform/PlatformContext;->d()Lcom/twitter/platform/p;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-interface {v2, v4, v5}, Lcom/twitter/platform/p;->a(J)V

    .line 124
    new-instance v2, Lcom/twitter/app/common/account/UserIdentifier;

    invoke-direct {v2, v0, v1}, Lcom/twitter/app/common/account/UserIdentifier;-><init>(J)V

    invoke-static {v2}, Lcom/twitter/app/common/app/n;->b(Lcom/twitter/app/common/account/UserIdentifier;)V

    .line 125
    return p2
.end method


# virtual methods
.method protected bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/initialization/AppSessionInitializer;->a(Landroid/content/Context;Ljava/lang/Void;)V

    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    .line 57
    new-instance v1, Lcom/twitter/android/initialization/b;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/initialization/b;-><init>(Lcom/twitter/android/initialization/AppSessionInitializer;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/bj;)V

    .line 58
    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 59
    invoke-static {p1, v0}, Lcom/twitter/android/initialization/AppSessionInitializer;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    .line 60
    return-void
.end method
