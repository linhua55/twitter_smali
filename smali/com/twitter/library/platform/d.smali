.class public Lcom/twitter/library/platform/d;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/model/core/TwitterUser;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/twitter/model/account/OAuthToken;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/model/core/TwitterUser;Ljava/lang/String;Lcom/twitter/model/account/OAuthToken;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/platform/d;->a:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/twitter/library/platform/d;->b:Lcom/twitter/model/core/TwitterUser;

    .line 45
    iput-object p3, p0, Lcom/twitter/library/platform/d;->c:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/twitter/library/platform/d;->d:Lcom/twitter/model/account/OAuthToken;

    .line 47
    return-void
.end method


# virtual methods
.method protected a()Lbsb;
    .locals 9

    .prologue
    .line 119
    new-instance v0, Lbsb;

    iget-object v8, p0, Lcom/twitter/library/platform/d;->a:Landroid/content/Context;

    new-instance v1, Lcom/twitter/library/service/ab;

    iget-object v2, p0, Lcom/twitter/library/platform/d;->b:Lcom/twitter/model/core/TwitterUser;

    iget-wide v2, v2, Lcom/twitter/model/core/TwitterUser;->c:J

    iget-object v4, p0, Lcom/twitter/library/platform/d;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/twitter/library/platform/d;->d:Lcom/twitter/model/account/OAuthToken;

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/twitter/library/service/ab;-><init>(JLjava/lang/String;Lcom/twitter/model/account/OAuthToken;Z)V

    iget-object v5, p0, Lcom/twitter/library/platform/d;->b:Lcom/twitter/model/core/TwitterUser;

    const/4 v6, 0x0

    const/4 v7, 0x2

    move-object v2, v0

    move-object v3, v8

    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Lbsb;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;Lcom/twitter/model/core/TwitterUser;ZI)V

    .line 121
    invoke-static {}, Lcom/twitter/android/av/v;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lbsb;->f(I)Lbss;

    move-result-object v0

    const-string/jumbo v1, "Home sync requests are never triggered by a user action."

    .line 122
    invoke-virtual {v0, v1}, Lbss;->k(Ljava/lang/String;)Lcom/twitter/library/service/x;

    move-result-object v0

    check-cast v0, Lbsb;

    .line 119
    return-object v0
.end method

.method protected a(Lbsb;)Lcom/twitter/library/service/aa;
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p1}, Lbsb;->P()Lcom/twitter/library/service/aa;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/SyncResult;Lcom/twitter/library/platform/notifications/a;)Z
    .locals 13

    .prologue
    const-wide/16 v8, 0x1

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x1

    .line 54
    iget-object v0, p0, Lcom/twitter/library/platform/d;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/library/platform/d;->b:Lcom/twitter/model/core/TwitterUser;

    iget-wide v6, v1, Lcom/twitter/model/core/TwitterUser;->c:J

    iget-object v1, p0, Lcom/twitter/library/platform/d;->c:Ljava/lang/String;

    invoke-static {v0, v6, v7, v1}, Lcom/twitter/library/platform/TwitterDataSyncService;->c(Landroid/content/Context;JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    return v10

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/library/platform/d;->a()Lbsb;

    move-result-object v11

    .line 59
    invoke-virtual {p0, v11}, Lcom/twitter/library/platform/d;->a(Lbsb;)Lcom/twitter/library/service/aa;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->g()Lcom/twitter/internal/network/k;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_7

    .line 62
    iget v0, v0, Lcom/twitter/internal/network/k;->a:I

    .line 63
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_5

    .line 64
    invoke-virtual {v11}, Lbsb;->H()I

    move-result v0

    .line 65
    invoke-virtual {v11}, Lbsb;->I()I

    move-result v1

    .line 67
    const-string/jumbo v2, "TwitterDataSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "====> Sync home timeline, got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    if-lez v0, :cond_2

    .line 70
    new-instance v2, Lcom/twitter/library/platform/notifications/ae;

    invoke-direct {v2}, Lcom/twitter/library/platform/notifications/ae;-><init>()V

    iput-object v2, p2, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    .line 71
    iget-object v2, p2, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    const/4 v5, 0x4

    iput v5, v2, Lcom/twitter/library/platform/notifications/ae;->b:I

    .line 72
    iget-object v2, p2, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    iput v0, v2, Lcom/twitter/library/platform/notifications/ae;->d:I

    .line 73
    iget-boolean v0, p2, Lcom/twitter/library/platform/notifications/a;->d:Z

    if-nez v0, :cond_2

    .line 74
    iget-object v0, p2, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    iput v1, v0, Lcom/twitter/library/platform/notifications/ae;->c:I

    .line 75
    if-ne v1, v3, :cond_1

    .line 76
    invoke-virtual {v11}, Lbsb;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/ay;

    .line 78
    instance-of v1, v0, Lcom/twitter/model/timeline/cd;

    if-eqz v1, :cond_3

    .line 79
    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/cd;

    .line 80
    iget-object v0, v0, Lcom/twitter/model/timeline/cd;->a:Lcom/twitter/model/core/cs;

    .line 87
    :goto_1
    if-eqz v0, :cond_1

    .line 88
    iget-object v1, p2, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    invoke-virtual {v1, v0}, Lcom/twitter/library/platform/notifications/ae;->a(Lcom/twitter/model/core/cs;)Lcom/twitter/library/platform/notifications/ae;

    move-result-object v1

    iget-object v0, v0, Lcom/twitter/model/core/cs;->E:Lcom/twitter/model/core/TwitterUser;

    .line 89
    invoke-virtual {v1, v0}, Lcom/twitter/library/platform/notifications/ae;->a(Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/library/platform/notifications/ae;

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/platform/d;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/library/platform/d;->b:Lcom/twitter/model/core/TwitterUser;

    iget-wide v6, v1, Lcom/twitter/model/core/TwitterUser;->c:J

    .line 93
    invoke-static {v0, v6, v7}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v0

    .line 94
    iget-object v12, p2, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    iget-object v1, p0, Lcom/twitter/library/platform/d;->b:Lcom/twitter/model/core/TwitterUser;

    iget-wide v1, v1, Lcom/twitter/model/core/TwitterUser;->c:J

    iget-object v5, p2, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    .line 95
    invoke-virtual {v5}, Lcom/twitter/library/platform/notifications/ae;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p2, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    iget-wide v6, v6, Lcom/twitter/library/platform/notifications/ae;->i:J

    iget-object v8, p2, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    iget-object v8, v8, Lcom/twitter/library/platform/notifications/ae;->g:Ljava/lang/String;

    move v9, v3

    .line 94
    invoke-virtual/range {v0 .. v9}, Lcom/twitter/library/provider/dm;->a(JILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)I

    move-result v0

    iput v0, v12, Lcom/twitter/library/platform/notifications/ae;->r:I

    .line 111
    :cond_2
    :goto_2
    invoke-virtual {v11, v4}, Lbsb;->a(Lcom/twitter/internal/android/service/AsyncService;)V

    .line 112
    invoke-virtual {p1}, Landroid/content/SyncResult;->hasError()Z

    move-result v0

    if-nez v0, :cond_8

    :goto_3
    move v10, v3

    goto/16 :goto_0

    .line 81
    :cond_3
    instance-of v1, v0, Lcom/twitter/model/timeline/at;

    if-eqz v1, :cond_4

    .line 82
    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/at;

    .line 83
    iget-object v0, v0, Lcom/twitter/model/timeline/at;->a:Lcom/twitter/model/timeline/c;

    invoke-virtual {v0}, Lcom/twitter/model/timeline/c;->a()Lcom/twitter/model/core/cs;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v4

    .line 85
    goto :goto_1

    .line 99
    :cond_5
    const/16 v1, 0x191

    if-ne v0, v1, :cond_6

    .line 100
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    goto :goto_2

    .line 101
    :cond_6
    if-nez v0, :cond_2

    .line 102
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v0, Landroid/content/SyncStats;->numParseExceptions:J

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/content/SyncStats;->numParseExceptions:J

    goto :goto_2

    .line 105
    :cond_7
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v0, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_2

    :cond_8
    move v3, v10

    .line 112
    goto :goto_3
.end method
