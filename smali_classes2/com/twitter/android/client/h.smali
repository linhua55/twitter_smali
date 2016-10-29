.class public Lcom/twitter/android/client/h;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/util/h;


# instance fields
.field a:J

.field b:J

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/twitter/android/client/h;->c:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 6

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/twitter/android/client/h;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 44
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/twitter/android/client/h;->a:J

    sub-long/2addr v2, v4

    .line 46
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "app::::become_inactive"

    aput-object v5, v0, v4

    .line 47
    invoke-virtual {v1, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 48
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b(J)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 49
    iget-object v1, p0, Lcom/twitter/android/client/h;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/twitter/android/lc;->a(Landroid/content/Context;)Lcom/twitter/android/lc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/android/lc;->a(Lcom/twitter/library/scribe/TwitterScribeLog;)V

    .line 50
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/client/h;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/client/ab;->a(Landroid/content/Context;)Lcom/twitter/library/client/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/ab;->b()V

    .line 55
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 6

    .prologue
    .line 60
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 61
    iput-wide v2, p0, Lcom/twitter/android/client/h;->a:J

    .line 63
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "app::::become_active"

    aput-object v5, v1, v4

    .line 64
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 65
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 67
    const-string/jumbo v0, "app_event_track_non_referred_open_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/twitter/android/client/h;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/android/util/AppEventTrack;->a(Landroid/content/Context;)V

    .line 73
    :cond_0
    iget-wide v0, p0, Lcom/twitter/android/client/h;->b:J

    sub-long v0, v2, v0

    const-wide/16 v4, 0x7d0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 74
    iput-wide v2, p0, Lcom/twitter/android/client/h;->b:J

    .line 78
    new-instance v0, Lcom/twitter/android/client/i;

    iget-object v1, p0, Lcom/twitter/android/client/h;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/twitter/android/client/i;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 80
    :cond_1
    return-void
.end method
