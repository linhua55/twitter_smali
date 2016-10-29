.class public abstract Lcom/twitter/library/network/livepipeline/y;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:J

.field private final b:Lcom/twitter/platform/u;

.field private final c:Landroid/content/Context;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field protected final j:J

.field protected k:J


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/twitter/library/network/livepipeline/y;->k:J

    .line 42
    iput-object p1, p0, Lcom/twitter/library/network/livepipeline/y;->c:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/twitter/library/network/livepipeline/y;->d:Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/twitter/platform/PlatformContext;->e()Lcom/twitter/platform/PlatformContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/platform/PlatformContext;->a()Lcom/twitter/platform/u;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/network/livepipeline/y;->b:Lcom/twitter/platform/u;

    .line 45
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/y;->b:Lcom/twitter/platform/u;

    invoke-interface {v0}, Lcom/twitter/platform/u;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/library/network/livepipeline/y;->j:J

    .line 46
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/library/network/livepipeline/y;->a:J

    .line 47
    invoke-static {}, Lcom/twitter/library/network/forecaster/b;->a()Lcom/twitter/library/network/forecaster/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/network/forecaster/b;->b()Lcom/twitter/library/network/forecaster/NetworkQuality;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/network/forecaster/NetworkQuality;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/network/livepipeline/y;->e:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/twitter/util/telephony/TelephonyUtil;->i()Lcom/twitter/util/telephony/TelephonyUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/util/telephony/TelephonyUtil;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/network/livepipeline/y;->f:Ljava/lang/String;

    .line 49
    return-void
.end method

.method protected static a(JJ)J
    .locals 4

    .prologue
    const-wide/16 v0, -0x1

    .line 95
    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    cmp-long v2, p2, p0

    if-lez v2, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    sub-long v0, p0, p2

    goto :goto_0
.end method

.method private a()Lcom/twitter/util/collection/v;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/util/collection/v",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {}, Lcom/twitter/util/collection/v;->e()Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "total_time"

    .line 105
    invoke-virtual {p0}, Lcom/twitter/library/network/livepipeline/y;->k()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "start_network_quality"

    iget-object v2, p0, Lcom/twitter/library/network/livepipeline/y;->e:Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "end_network_quality"

    iget-object v2, p0, Lcom/twitter/library/network/livepipeline/y;->g:Ljava/lang/String;

    .line 107
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "start_network_type"

    iget-object v2, p0, Lcom/twitter/library/network/livepipeline/y;->f:Ljava/lang/String;

    .line 108
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "end_network_type"

    iget-object v2, p0, Lcom/twitter/library/network/livepipeline/y;->h:Ljava/lang/String;

    .line 109
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "year_class"

    .line 110
    invoke-static {}, Latv;->a()Latv;

    move-result-object v2

    invoke-virtual {v2}, Latv;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    .line 104
    return-object v0
.end method

.method private a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/twitter/library/network/livepipeline/y;->a()Lcom/twitter/util/collection/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/util/collection/v;->b(Ljava/util/Map;)Lcom/twitter/util/collection/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 115
    invoke-virtual {p0}, Lcom/twitter/library/network/livepipeline/y;->l()Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v1

    .line 117
    :try_start_0
    invoke-static {v0}, Lcom/twitter/library/network/livepipeline/y;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->n(Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    invoke-static {v1}, Lbjf;->a(Lbjh;)V

    .line 123
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 120
    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static b(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 128
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 129
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract e()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public j()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/y;->b:Lcom/twitter/platform/u;

    invoke-interface {v0}, Lcom/twitter/platform/u;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/library/network/livepipeline/y;->k:J

    .line 61
    invoke-static {}, Lcom/twitter/library/network/forecaster/b;->a()Lcom/twitter/library/network/forecaster/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/network/forecaster/b;->b()Lcom/twitter/library/network/forecaster/NetworkQuality;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/network/forecaster/NetworkQuality;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/network/livepipeline/y;->g:Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/twitter/util/telephony/TelephonyUtil;->i()Lcom/twitter/util/telephony/TelephonyUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/util/telephony/TelephonyUtil;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/network/livepipeline/y;->h:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/twitter/library/network/livepipeline/y;->e()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/library/network/livepipeline/y;->a(Ljava/util/Map;)V

    .line 64
    return-void
.end method

.method protected k()J
    .locals 4

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/twitter/library/network/livepipeline/y;->k:J

    iget-wide v2, p0, Lcom/twitter/library/network/livepipeline/y;->j:J

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/library/network/livepipeline/y;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected l()Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/twitter/library/network/livepipeline/y;->m()Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    return-object v0
.end method

.method protected final m()Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 4

    .prologue
    .line 85
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/library/network/livepipeline/y;->a:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/library/network/livepipeline/y;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 86
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/library/network/livepipeline/y;->c:Landroid/content/Context;

    .line 87
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 85
    return-object v0
.end method
