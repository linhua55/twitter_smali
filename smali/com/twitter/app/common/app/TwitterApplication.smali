.class public Lcom/twitter/app/common/app/TwitterApplication;
.super Lcom/twitter/app/common/app/InjectedApplication;
.source "Twttr"


# instance fields
.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string/jumbo v0, "com.twitter.android"

    invoke-static {v0}, Lcom/twitter/config/a;->a(Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/twitter/app/common/app/TwitterApplication;->c()V

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/twitter/app/common/app/InjectedApplication;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;J)V
    .locals 5

    .prologue
    .line 145
    invoke-static {p0}, Lcom/twitter/util/ui/r;->a(Landroid/content/Context;)Lcom/twitter/util/math/Size;

    move-result-object v1

    .line 146
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, p1, p2}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "app::::launch"

    aput-object v4, v2, v3

    .line 147
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "display_info:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 148
    invoke-virtual {v1}, Lcom/twitter/util/math/Size;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/twitter/util/math/Size;->d()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 149
    invoke-static {}, Lcom/twitter/util/ak;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->d(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 150
    invoke-static {}, Lcbz;->a()Lcca;

    move-result-object v1

    invoke-interface {v1}, Lcca;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "location_enabled"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->i(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 152
    invoke-virtual {v0, p0}, Lcom/twitter/library/scribe/TwitterScribeLog;->b(Landroid/content/Context;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 146
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 153
    return-void

    .line 150
    :cond_0
    const-string/jumbo v1, "location_disabled"

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 133
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {p0, v0}, Lcom/twitter/util/c;->a(Landroid/content/Context;I)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string/jumbo v1, ":"

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 134
    :goto_0
    return v0

    .line 135
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c()V
    .locals 2

    .prologue
    .line 139
    const-string/jumbo v0, "com.twitter.android"

    invoke-static {}, Lcom/twitter/config/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Default authority is incorrect"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    return-void
.end method


# virtual methods
.method protected synthetic a(J)Lcom/twitter/app/common/app/a;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/twitter/app/common/app/TwitterApplication;->b(J)Lcom/twitter/app/common/app/l;

    move-result-object v0

    return-object v0
.end method

.method protected a()Lcom/twitter/util/object/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/util/object/c",
            "<",
            "Lcom/twitter/app/common/account/UserIdentifier;",
            "Lcom/twitter/app/common/app/o;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Lcom/twitter/app/common/app/k;

    invoke-direct {v0, p0}, Lcom/twitter/app/common/app/k;-><init>(Lcom/twitter/app/common/app/TwitterApplication;)V

    return-object v0
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/twitter/app/common/app/InjectedApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 55
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method protected b(J)Lcom/twitter/app/common/app/l;
    .locals 3

    .prologue
    .line 100
    invoke-static {}, Lcom/twitter/app/common/app/c;->k()Lcom/twitter/app/common/app/e;

    move-result-object v0

    new-instance v1, Lcom/twitter/app/common/app/internal/w;

    invoke-direct {v1, p0, p1, p2}, Lcom/twitter/app/common/app/internal/w;-><init>(Landroid/app/Application;J)V

    .line 101
    invoke-virtual {v0, v1}, Lcom/twitter/app/common/app/e;->a(Lcom/twitter/app/common/app/internal/a;)Lcom/twitter/app/common/app/e;

    move-result-object v0

    new-instance v1, Lcom/twitter/app/common/app/internal/ag;

    iget-boolean v2, p0, Lcom/twitter/app/common/app/TwitterApplication;->d:Z

    invoke-direct {v1, v2}, Lcom/twitter/app/common/app/internal/ag;-><init>(Z)V

    .line 102
    invoke-virtual {v0, v1}, Lcom/twitter/app/common/app/e;->a(Lcom/twitter/app/common/app/internal/o;)Lcom/twitter/app/common/app/e;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/twitter/app/common/app/e;->a()Lcom/twitter/app/common/app/l;

    move-result-object v0

    .line 100
    return-object v0
.end method

.method public onCreate()V
    .locals 11

    .prologue
    .line 60
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 61
    invoke-virtual {p0}, Lcom/twitter/app/common/app/TwitterApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 62
    invoke-static {v8}, Lcom/twitter/app/common/app/TwitterApplication;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/app/common/app/TwitterApplication;->d:Z

    .line 64
    invoke-static {}, Lcom/twitter/app/common/app/TwitterApplication;->c()V

    .line 66
    invoke-static {v8}, Lcom/twitter/library/scribe/ScribeService;->a(Landroid/content/Context;)V

    .line 68
    invoke-super {p0}, Lcom/twitter/app/common/app/InjectedApplication;->onCreate()V

    .line 70
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v9

    .line 71
    iget-boolean v0, p0, Lcom/twitter/app/common/app/TwitterApplication;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {v9}, Lcom/twitter/library/client/Session;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 73
    invoke-virtual {v9}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    .line 74
    invoke-static {}, Lcom/twitter/app/common/util/c;->a()Lcom/twitter/app/common/util/c;

    move-result-object v10

    new-instance v0, Lcom/twitter/app/common/app/j;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/twitter/app/common/app/j;-><init>(Lcom/twitter/app/common/app/TwitterApplication;JJJ)V

    invoke-virtual {v10, v0}, Lcom/twitter/app/common/util/c;->a(Lcom/twitter/app/common/util/a;)V

    .line 93
    invoke-virtual {v9}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    invoke-static {v8, v0, v1}, Lcom/twitter/app/common/app/TwitterApplication;->a(Landroid/content/Context;J)V

    .line 95
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Lcom/twitter/app/common/app/InjectedApplication;->onLowMemory()V

    .line 122
    invoke-static {p0}, Lcom/twitter/library/media/manager/l;->a(Landroid/content/Context;)Lcom/twitter/library/media/manager/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/media/manager/l;->onLowMemory()V

    .line 123
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/twitter/app/common/app/InjectedApplication;->onTrimMemory(I)V

    .line 128
    invoke-static {}, Lcom/twitter/library/media/fresco/f;->a()Lcom/twitter/library/media/fresco/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/library/media/fresco/f;->a(I)V

    .line 129
    return-void
.end method
