.class public Lrq;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field static final a:Ljava/lang/String;

.field static final b:Ljava/lang/String;

.field private static c:Lrq;

.field private static d:J


# instance fields
.field private final e:Lcdg;

.field private f:Landroid/content/SharedPreferences;

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-class v0, Lrq;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrq;->a:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lrq;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":alerts_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrq;->b:Ljava/lang/String;

    .line 39
    const-wide/16 v0, -0x1

    sput-wide v0, Lrq;->d:J

    return-void
.end method

.method constructor <init>(Lcdg;ZZ)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lrq;->e:Lcdg;

    .line 50
    iput-boolean p2, p0, Lrq;->h:Z

    .line 51
    iput-boolean p3, p0, Lrq;->g:Z

    .line 52
    new-instance v0, Lrr;

    invoke-direct {v0, p0}, Lrr;-><init>(Lrq;)V

    invoke-static {v0}, Lcom/twitter/config/d;->a(Lcom/twitter/config/f;)V

    .line 59
    return-void
.end method

.method static synthetic a(Lrq;)Lcdg;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lrq;->e:Lcdg;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lrq;
    .locals 4

    .prologue
    .line 66
    const-class v1, Lrq;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lrq;->a(Landroid/content/Context;J)Lrq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized a(Landroid/content/Context;J)Lrq;
    .locals 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 78
    const-class v1, Lrq;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lrq;->c:Lrq;

    if-nez v0, :cond_0

    .line 79
    invoke-static {}, Lrp;->a()Lcom/twitter/library/geo/provider/param/a;

    move-result-object v0

    .line 80
    invoke-static {p0}, Lrq;->b(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 81
    new-instance v3, Lcdb;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, v2, v4}, Lcdb;-><init>(Landroid/content/Context;Lcom/twitter/library/geo/provider/param/a;Landroid/app/PendingIntent;Z)V

    .line 82
    invoke-static {p0}, Lcom/twitter/android/alerts/receivers/ConnectivityChangedReceiver;->a(Landroid/content/Context;)Z

    move-result v0

    .line 83
    invoke-static {p0}, Lcom/twitter/android/alerts/receivers/PowerStateChangedReceiver;->a(Landroid/content/Context;)Z

    move-result v2

    .line 84
    new-instance v4, Lrq;

    invoke-direct {v4, v3, v0, v2}, Lrq;-><init>(Lcdg;ZZ)V

    sput-object v4, Lrq;->c:Lrq;

    .line 87
    :cond_0
    sget-object v0, Lrq;->c:Lrq;

    invoke-static {p0, v0, p1, p2}, Lrq;->a(Landroid/content/Context;Lrq;J)V

    .line 89
    sget-object v0, Lrq;->c:Lrq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/library/client/bk;)V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lrs;

    invoke-direct {v0, p0}, Lrs;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/bj;)V

    .line 100
    return-void
.end method

.method private static a(Landroid/content/Context;Lrq;J)V
    .locals 2

    .prologue
    .line 113
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lrq;->a(Landroid/content/SharedPreferences;)V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    sget-wide v0, Lrq;->d:J

    cmp-long v0, v0, p2

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Lcom/twitter/library/client/l;

    invoke-direct {v0, p0, p2, p3}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    invoke-virtual {p1, v0}, Lrq;->a(Landroid/content/SharedPreferences;)V

    .line 117
    sput-wide p2, Lrq;->d:J

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 123
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/alerts/receivers/LocationUpdatesAlertsReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lrq;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lrq;->e:Lcdg;

    invoke-interface {v0}, Lcdg;->g()V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lrq;->e:Lcdg;

    invoke-interface {v0}, Lcdg;->h()V

    goto :goto_0
.end method

.method a(Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lrq;->f:Landroid/content/SharedPreferences;

    .line 205
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lrq;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrq;->f:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lrq;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lrq;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 150
    invoke-virtual {p0}, Lrq;->a()V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 159
    iput-boolean p1, p0, Lrq;->h:Z

    .line 160
    invoke-virtual {p0}, Lrq;->a()V

    .line 161
    return-void
.end method

.method b()Z
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lrq;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lrq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lrq;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lrq;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 169
    iput-boolean p1, p0, Lrq;->g:Z

    .line 170
    invoke-virtual {p0}, Lrq;->a()V

    .line 171
    return-void
.end method

.method c()Z
    .locals 1

    .prologue
    .line 187
    const-string/jumbo v0, "alerts_v2_experience_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method d()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 194
    iget-object v1, p0, Lrq;->f:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lrq;->f:Landroid/content/SharedPreferences;

    sget-object v2, Lrq;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
