.class public Lcom/twitter/android/client/bz;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static a:Lcom/twitter/android/client/bz;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/twitter/library/client/bk;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/twitter/android/client/bz;->b:Landroid/content/Context;

    .line 41
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/client/bz;->c:Lcom/twitter/library/client/bk;

    .line 42
    return-void
.end method

.method public static a(Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/PhoneMTFlowActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/twitter/android/PhoneMTFlowActivity;->a:Ljava/lang/String;

    .line 125
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 124
    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/twitter/android/client/bz;
    .locals 3

    .prologue
    .line 33
    const-class v1, Lcom/twitter/android/client/bz;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/twitter/android/client/bz;->a:Lcom/twitter/android/client/bz;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/twitter/android/client/bz;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/twitter/android/client/bz;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/twitter/android/client/bz;->a:Lcom/twitter/android/client/bz;

    .line 36
    :cond_0
    sget-object v0, Lcom/twitter/android/client/bz;->a:Lcom/twitter/android/client/bz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/twitter/model/core/TwitterUser;)Z
    .locals 1

    .prologue
    .line 60
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/twitter/android/client/bz;->b(Lcom/twitter/model/core/TwitterUser;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->I:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/twitter/model/core/TwitterUser;[I)Z
    .locals 1

    .prologue
    .line 100
    invoke-static {p0}, Lcom/twitter/android/client/bz;->b(Lcom/twitter/model/core/TwitterUser;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/twitter/android/client/bz;->b([I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/twitter/model/core/TwitterUser;)Z
    .locals 1

    .prologue
    .line 91
    if-eqz p0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b([I)Z
    .locals 1

    .prologue
    .line 95
    if-eqz p0, :cond_0

    const/16 v0, 0x40

    invoke-static {p0, v0}, Lcom/twitter/util/collection/CollectionUtils;->a([II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/twitter/model/core/TwitterUser;)V
    .locals 3

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/client/bz;->b:Landroid/content/Context;

    const-class v2, Lcom/twitter/android/DialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "blocked_suspended"

    .line 117
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "username"

    iget-object v2, p1, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    .line 118
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 119
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/twitter/android/client/bz;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 121
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 64
    iget-object v0, p0, Lcom/twitter/android/client/bz;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "age_gating_failure_time"

    .line 66
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 67
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 68
    return-void
.end method

.method public a(Lcom/twitter/library/client/Session;Lcom/twitter/library/service/aa;)V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/twitter/android/client/bz;->c:Lcom/twitter/library/client/bk;

    .line 73
    invoke-virtual {v0, p1}, Lcom/twitter/library/client/bk;->d(Lcom/twitter/library/client/Session;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/twitter/library/client/bk;->b(Lcom/twitter/library/client/Session;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/client/bz;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/twitter/library/network/at;->b(Lcom/twitter/library/service/aa;)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {p2}, Lcom/twitter/library/network/at;->c(Lcom/twitter/library/service/aa;)Z

    move-result v2

    .line 78
    invoke-static {v0, v1, v2}, Lcom/twitter/android/BouncerWebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 105
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/client/bz;->b:Landroid/content/Context;

    const-class v2, Lcom/twitter/android/dialog/PhoneVerificationDialogFragmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 106
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 108
    if-eqz p1, :cond_0

    .line 109
    sget-object v1, Lcom/twitter/android/dialog/PhoneVerificationDialogFragmentActivity;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/client/bz;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 113
    return-void
.end method

.method public a([I)V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/twitter/android/client/bz;->a([IZ)V

    .line 46
    return-void
.end method

.method public a([IZ)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/twitter/android/client/bz;->c:Lcom/twitter/library/client/bk;

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    .line 51
    invoke-static {v0}, Lcom/twitter/android/client/bz;->a(Lcom/twitter/model/core/TwitterUser;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {p0, p2}, Lcom/twitter/android/client/bz;->a(Z)V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    if-eqz v0, :cond_0

    .line 54
    invoke-static {v0, p1}, Lcom/twitter/android/client/bz;->a(Lcom/twitter/model/core/TwitterUser;[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-direct {p0, v0}, Lcom/twitter/android/client/bz;->c(Lcom/twitter/model/core/TwitterUser;)V

    goto :goto_0
.end method

.method b()Z
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/android/client/bz;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "age_gating_failure_time"

    const-wide/16 v2, 0x0

    .line 86
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 87
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
