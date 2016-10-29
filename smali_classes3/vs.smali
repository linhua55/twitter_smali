.class public Lvs;
.super Lcom/evernote/android/job/Job;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/evernote/android/job/Job;-><init>()V

    return-void
.end method

.method static a(J)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TpmIdSyncJob_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;J)V
    .locals 1

    .prologue
    .line 24
    invoke-static {p0, p1, p2}, Lvs;->b(Landroid/content/Context;J)V

    return-void
.end method

.method static synthetic b(J)V
    .locals 0

    .prologue
    .line 24
    invoke-static {p0, p1}, Lvs;->c(J)V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lvt;

    invoke-direct {v0, p0}, Lvt;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-static {v0}, Lcom/twitter/config/d;->a(Lcom/twitter/config/f;)V

    .line 67
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/bj;)V

    .line 68
    return-void
.end method

.method private static b(Landroid/content/Context;J)V
    .locals 7

    .prologue
    .line 71
    invoke-static {}, Lvr;->b()J

    move-result-wide v2

    .line 72
    invoke-static {p1, p2}, Lvs;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {}, Lcom/evernote/android/job/h;->a()Lcom/evernote/android/job/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/evernote/android/job/h;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 75
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 76
    new-instance v1, Lae;

    invoke-direct {v1}, Lae;-><init>()V

    .line 77
    const-string/jumbo v4, "user_id"

    invoke-virtual {v1, v4, p1, p2}, Lae;->a(Ljava/lang/String;J)V

    .line 79
    new-instance v4, Lcom/evernote/android/job/m;

    invoke-direct {v4, v0}, Lcom/evernote/android/job/m;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v4, v2, v3}, Lcom/evernote/android/job/m;->a(J)Lcom/evernote/android/job/m;

    move-result-object v0

    const/4 v2, 0x1

    .line 81
    invoke-virtual {v0, v2}, Lcom/evernote/android/job/m;->c(Z)Lcom/evernote/android/job/m;

    move-result-object v0

    .line 82
    invoke-virtual {v0, v1}, Lcom/evernote/android/job/m;->a(Lae;)Lcom/evernote/android/job/m;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/evernote/android/job/m;->a()Lcom/evernote/android/job/JobRequest;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->t()I

    .line 85
    invoke-static {p0, p1, p2}, Lvs;->c(Landroid/content/Context;J)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-static {v1}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/job/JobRequest;

    .line 88
    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->h()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->u()Lcom/evernote/android/job/m;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/evernote/android/job/m;->a(J)Lcom/evernote/android/job/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/m;->a()Lcom/evernote/android/job/JobRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->t()I

    goto :goto_0
.end method

.method private static c(J)V
    .locals 2

    .prologue
    .line 95
    invoke-static {}, Lcom/evernote/android/job/h;->a()Lcom/evernote/android/job/h;

    move-result-object v0

    invoke-static {p0, p1}, Lvs;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/h;->c(Ljava/lang/String;)I

    .line 96
    return-void
.end method

.method private static c(Landroid/content/Context;J)V
    .locals 5

    .prologue
    .line 99
    invoke-static {p0, p1, p2}, Lvr;->a(Landroid/content/Context;J)Lvr;

    move-result-object v0

    .line 100
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/twitter/library/client/bk;->b(J)Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 101
    invoke-static {p0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v2

    new-instance v3, Lvu;

    invoke-direct {v3, p0, v1, v0}, Lvu;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lvr;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-virtual {v2, v3, v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;ILcom/twitter/library/client/bf;)Z

    .line 103
    return-void
.end method


# virtual methods
.method protected a(Lcom/evernote/android/job/b;)Lcom/evernote/android/job/Job$Result;
    .locals 4

    .prologue
    .line 113
    invoke-virtual {p1}, Lcom/evernote/android/job/b;->d()Lae;

    move-result-object v0

    const-string/jumbo v1, "user_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lae;->b(Ljava/lang/String;J)J

    move-result-wide v0

    .line 114
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 115
    invoke-virtual {p0}, Lvs;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lvs;->c(Landroid/content/Context;J)V

    .line 116
    sget-object v0, Lcom/evernote/android/job/Job$Result;->a:Lcom/evernote/android/job/Job$Result;

    .line 118
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/evernote/android/job/Job$Result;->b:Lcom/evernote/android/job/Job$Result;

    goto :goto_0
.end method
