.class public Lcom/twitter/library/scribe/ScribeService;
.super Landroid/app/IntentService;
.source "Twttr"


# static fields
.field public static a:Lcom/twitter/library/scribe/au;

.field public static b:Lcom/twitter/library/scribe/ap;

.field public static c:Lcom/twitter/library/scribe/ao;

.field private static final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/library/scribe/at;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Laxu;


# instance fields
.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 182
    new-instance v0, Lcom/twitter/library/scribe/ar;

    invoke-direct {v0}, Lcom/twitter/library/scribe/ar;-><init>()V

    sput-object v0, Lcom/twitter/library/scribe/ScribeService;->a:Lcom/twitter/library/scribe/au;

    .line 183
    new-instance v0, Lcom/twitter/library/scribe/aq;

    invoke-direct {v0}, Lcom/twitter/library/scribe/aq;-><init>()V

    sput-object v0, Lcom/twitter/library/scribe/ScribeService;->b:Lcom/twitter/library/scribe/ap;

    .line 184
    new-instance v0, Lcom/twitter/library/scribe/an;

    invoke-direct {v0}, Lcom/twitter/library/scribe/an;-><init>()V

    sput-object v0, Lcom/twitter/library/scribe/ScribeService;->c:Lcom/twitter/library/scribe/ao;

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/twitter/library/scribe/ScribeService;->d:Ljava/util/HashMap;

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/twitter/library/scribe/ScribeService;->e:Ljava/util/HashMap;

    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/twitter/library/scribe/ScribeService;->f:Ljava/util/HashMap;

    .line 237
    sget-object v0, Lcom/twitter/library/scribe/ScribeService;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "LOG"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/twitter/library/scribe/ScribeService;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "FLUSH"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/twitter/library/scribe/ScribeService;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "RESEND_EXPERIMENTS"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/twitter/library/scribe/ScribeService;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "UPDATE_EXP_LOG_TIMESTAMP"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/twitter/library/scribe/ScribeService;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "UPDATE_ENDPOINT_URL"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/twitter/library/scribe/ScribeService;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "LOG_THRIFT"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 450
    const-string/jumbo v0, "ScribeService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 451
    return-void
.end method

.method private static a(Landroid/content/SharedPreferences;)J
    .locals 6

    .prologue
    .line 993
    const-string/jumbo v0, "log_failure_cnt"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 996
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/twitter/library/scribe/ScribeService;->b(Landroid/content/SharedPreferences;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 1001
    :goto_0
    return-wide v0

    .line 999
    :cond_0
    invoke-static {}, Lcom/twitter/library/scribe/av;->a()Lcom/twitter/library/scribe/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/scribe/av;->c()J

    move-result-wide v0

    shl-long/2addr v0, v2

    goto :goto_0
.end method

.method public static a()Lcom/twitter/common_header/thriftandroid/VersionedCommonHeader;
    .locals 6

    .prologue
    .line 828
    new-instance v0, Lcom/twitter/common_header/thriftandroid/b;

    invoke-direct {v0}, Lcom/twitter/common_header/thriftandroid/b;-><init>()V

    .line 830
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/twitter/library/scribe/ScribeService;->a(JLjava/util/TimeZone;)S

    move-result v1

    .line 831
    sget-object v2, Lcom/twitter/common_header/thriftandroid/ClientHeader;->b:Lcom/twitter/common_header/thriftandroid/ClientHeader$_Fields;

    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/twitter/common_header/thriftandroid/b;->a(Lcom/twitter/common_header/thriftandroid/ClientHeader$_Fields;Ljava/lang/Object;)Lcom/twitter/common_header/thriftandroid/b;

    move-result-object v2

    sget-object v3, Lcom/twitter/common_header/thriftandroid/ClientHeader;->c:Lcom/twitter/common_header/thriftandroid/ClientHeader$_Fields;

    .line 832
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/twitter/common_header/thriftandroid/b;->a(Lcom/twitter/common_header/thriftandroid/ClientHeader$_Fields;Ljava/lang/Object;)Lcom/twitter/common_header/thriftandroid/b;

    .line 834
    new-instance v1, Lcom/twitter/common_header/thriftandroid/CommonHeader;

    invoke-direct {v1}, Lcom/twitter/common_header/thriftandroid/CommonHeader;-><init>()V

    .line 835
    sget-object v2, Lcom/twitter/common_header/thriftandroid/CommonHeader;->b:Lcom/twitter/common_header/thriftandroid/CommonHeader$_Fields;

    invoke-virtual {v0}, Lcom/twitter/common_header/thriftandroid/b;->a()Lcom/twitter/common_header/thriftandroid/ClientHeader;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/twitter/common_header/thriftandroid/CommonHeader;->b(Lorg/apache/thrift/d;Ljava/lang/Object;)V

    .line 837
    new-instance v0, Lcom/twitter/common_header/thriftandroid/VersionedCommonHeader;

    invoke-direct {v0}, Lcom/twitter/common_header/thriftandroid/VersionedCommonHeader;-><init>()V

    .line 839
    sget-object v2, Lcom/twitter/common_header/thriftandroid/VersionedCommonHeader;->c:Lcom/twitter/common_header/thriftandroid/VersionedCommonHeader$_Fields;

    invoke-virtual {v0, v2, v1}, Lcom/twitter/common_header/thriftandroid/VersionedCommonHeader;->b(Lorg/apache/thrift/d;Ljava/lang/Object;)V

    .line 840
    return-object v0
.end method

.method private static a(JJ)Ljava/lang/Long;
    .locals 4

    .prologue
    .line 705
    sget-object v0, Lcom/twitter/library/scribe/ScribeService;->e:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 706
    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 707
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 713
    :goto_0
    return-object v0

    .line 710
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/at;

    .line 711
    iget-object v0, v0, Lcom/twitter/library/scribe/at;->e:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    goto :goto_1

    .line 713
    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method static a(JLjava/util/TimeZone;)S
    .locals 4

    .prologue
    .line 823
    invoke-virtual {p2, p0, p1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    .line 824
    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 698
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 699
    const-string/jumbo v1, "log_last_flush_request"

    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "log_failure_cnt"

    const/4 v2, 0x0

    .line 700
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 701
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 702
    return-void
.end method

.method private static a(Landroid/content/Context;J)V
    .locals 5

    .prologue
    .line 733
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/library/scribe/ScribeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "RESEND_EXPERIMENTS"

    .line 734
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "user_id"

    .line 735
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "exp_request_time"

    .line 736
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    .line 733
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 737
    return-void
.end method

.method private static a(Landroid/content/Context;JLjava/lang/String;ILjava/lang/String;J)V
    .locals 2

    .prologue
    .line 719
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/library/scribe/ScribeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "UPDATE_EXP_LOG_TIMESTAMP"

    .line 720
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "user_id"

    .line 721
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "exp_request_time"

    .line 722
    invoke-virtual {v0, v1, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "exp_key"

    .line 723
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "exp_version"

    .line 724
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "exp_bucket"

    .line 725
    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 719
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 726
    return-void
.end method

.method public static a(Landroid/content/Context;JLjava/lang/Throwable;)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 881
    const-string/jumbo v0, "scribe_crash_sample_size"

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lcom/twitter/library/scribe/ScribeService;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 882
    invoke-static {p0}, Lcom/twitter/library/network/at;->a(Landroid/content/Context;)Lcom/twitter/library/network/at;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/library/network/at;->e:Lcom/twitter/library/network/ax;

    .line 883
    invoke-virtual {v0}, Lcom/twitter/library/network/ax;->toString()Ljava/lang/String;

    move-result-object v1

    .line 884
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, p1, p2}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "app::::crash"

    aput-object v4, v2, v3

    .line 885
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 886
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->c(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 887
    if-eqz p3, :cond_0

    .line 888
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->f(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 889
    invoke-static {p3}, Lcjw;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->d(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 892
    :cond_0
    invoke-static {p0, v0, v5}, Lcom/twitter/library/scribe/ScribeService;->a(Landroid/content/Context;Lcom/twitter/library/scribe/ScribeLog;Z)V

    .line 894
    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/library/scribe/LogCategory;JLorg/apache/thrift/TBase;)V
    .locals 4

    .prologue
    .line 845
    const-string/jumbo v0, "thrift_logging_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 862
    :cond_0
    :goto_0
    return-void

    .line 850
    :cond_1
    :try_start_0
    new-instance v0, Lorg/apache/thrift/e;

    invoke-direct {v0}, Lorg/apache/thrift/e;-><init>()V

    .line 851
    invoke-virtual {v0, p4}, Lorg/apache/thrift/e;->a(Lorg/apache/thrift/TBase;)[B

    move-result-object v0

    .line 852
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/library/scribe/ScribeService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "LOG_THRIFT"

    .line 853
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "scribe_category"

    .line 854
    invoke-virtual {p1}, Lcom/twitter/library/scribe/LogCategory;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "owner_id"

    .line 855
    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "thrift_log"

    .line 856
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v0

    .line 852
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 857
    :catch_0
    move-exception v0

    .line 858
    const-string/jumbo v1, "thrift_logging_crash_report_enabled"

    invoke-static {v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 859
    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lcom/twitter/library/scribe/ScribeLog;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/twitter/library/scribe/ScribeLog;",
            ">(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 868
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/library/scribe/ScribeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "LOG"

    .line 869
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "log"

    .line 870
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 868
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 871
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/library/scribe/ScribeLog;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/twitter/library/scribe/ScribeLog;",
            ">(",
            "Landroid/content/Context;",
            "TT;Z)V"
        }
    .end annotation

    .prologue
    .line 812
    if-eqz p2, :cond_0

    .line 816
    invoke-virtual {p1}, Lcom/twitter/library/scribe/ScribeLog;->b()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/twitter/library/scribe/ScribeService;->a(Landroid/content/Context;J)V

    .line 819
    :cond_0
    invoke-static {p0, p1}, Lcom/twitter/library/scribe/ScribeService;->a(Landroid/content/Context;Lcom/twitter/library/scribe/ScribeLog;)V

    .line 820
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 8

    .prologue
    .line 924
    .line 925
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v6

    move-object v0, p0

    move-wide v1, p4

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    .line 924
    invoke-static/range {v0 .. v7}, Lcom/twitter/library/scribe/ScribeService;->a(Landroid/content/Context;JLjava/lang/String;ILjava/lang/String;J)V

    .line 928
    invoke-static {p0, p4, p5}, Lcom/twitter/library/scribe/ScribeService;->a(Landroid/content/Context;J)V

    .line 929
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 901
    const-string/jumbo v0, "ScribeService"

    const-string/jumbo v1, "Error"

    invoke-static {v0, v1, p1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 903
    const-string/jumbo v0, "scribe_error_sample_size"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/twitter/library/scribe/ScribeService;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 904
    invoke-static {p0}, Lcom/twitter/library/network/at;->a(Landroid/content/Context;)Lcom/twitter/library/network/at;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/library/network/at;->e:Lcom/twitter/library/network/ax;

    .line 905
    invoke-virtual {v0}, Lcom/twitter/library/network/ax;->toString()Ljava/lang/String;

    move-result-object v0

    .line 906
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 907
    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 909
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/twitter/library/scribe/ScribeService;->a(Landroid/content/Context;Lcom/twitter/library/scribe/ScribeLog;Z)V

    .line 911
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 938
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/twitter/library/scribe/ScribeService;->a(Landroid/content/Context;ZLjava/lang/String;)Z

    .line 939
    return-void
.end method

.method public static a(Laxu;)V
    .locals 0

    .prologue
    .line 278
    sput-object p0, Lcom/twitter/library/scribe/ScribeService;->g:Laxu;

    .line 279
    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1015
    invoke-virtual {p0}, Lcom/twitter/library/scribe/ScribeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1017
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1018
    const-string/jumbo v1, "log_failure_cnt"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1019
    if-eqz p1, :cond_1

    .line 1020
    if-eqz v1, :cond_0

    .line 1021
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "log_failure_cnt"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1028
    :cond_0
    :goto_0
    return-void

    .line 1024
    :cond_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 1025
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "log_failure_cnt"

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;ZLjava/lang/String;)Z
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 952
    sget-object v0, Lcom/twitter/library/scribe/ScribeService;->b:Lcom/twitter/library/scribe/ap;

    invoke-interface {v0}, Lcom/twitter/library/scribe/ap;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/twitter/library/scribe/av;->a()Lcom/twitter/library/scribe/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/scribe/av;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 953
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 955
    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 956
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v6

    .line 959
    if-eqz p1, :cond_0

    move v0, v1

    .line 968
    :goto_0
    if-eqz v0, :cond_2

    .line 969
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "log_last_flush_request"

    invoke-interface {v0, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 970
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/twitter/library/scribe/ScribeService;

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "FLUSH"

    .line 971
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "flush_request_id"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 970
    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 975
    :goto_1
    return v1

    .line 962
    :cond_0
    invoke-static {v4}, Lcom/twitter/library/scribe/ScribeService;->a(Landroid/content/SharedPreferences;)J

    move-result-wide v8

    .line 963
    const-string/jumbo v0, "log_last_flush_request"

    const-wide/16 v10, 0x0

    invoke-interface {v4, v0, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 965
    add-long/2addr v8, v10

    cmp-long v0, v8, v6

    if-gez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 975
    goto :goto_1
.end method

.method public static a(Lcom/twitter/internal/network/HttpOperation;)Z
    .locals 2

    .prologue
    .line 784
    invoke-virtual {p0}, Lcom/twitter/internal/network/HttpOperation;->i()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/ap;->a(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v0

    .line 785
    invoke-static {}, Lcom/twitter/library/scribe/av;->a()Lcom/twitter/library/scribe/av;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/scribe/av;->d()Ljava/util/Set;

    move-result-object v1

    .line 786
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 793
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/twitter/library/scribe/ScribeService;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;I)Z
    .locals 3

    .prologue
    const/16 v2, 0x2710

    .line 804
    .line 806
    invoke-static {p0, p1}, Lcom/twitter/config/d;->a(Ljava/lang/String;I)I

    move-result v0

    .line 804
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 807
    sget-object v1, Lcom/twitter/util/aj;->a:Ljava/security/SecureRandom;

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v1

    .line 808
    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/SharedPreferences;)J
    .locals 4

    .prologue
    .line 1005
    const-string/jumbo v0, "default"

    .line 1006
    const-string/jumbo v0, "debug_scribe_flushing_frequency"

    const-string/jumbo v1, "default"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1007
    const-string/jumbo v1, "default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1008
    const-wide/16 v0, 0x0

    .line 1011
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;[BJ)V
    .locals 3

    .prologue
    .line 768
    if-eqz p2, :cond_1

    .line 769
    invoke-static {}, Lcjw;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    const-string/jumbo v0, "ScribeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "thrift log: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    :cond_0
    invoke-static {p0, p3, p4}, Lcom/twitter/library/scribe/ScribeDatabaseHelper;->a(Landroid/content/Context;J)Lcom/twitter/library/scribe/ScribeDatabaseHelper;

    move-result-object v0

    .line 773
    invoke-virtual {v0, p1, p2}, Lcom/twitter/library/scribe/ScribeDatabaseHelper;->a(Ljava/lang/String;[B)J

    .line 774
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/twitter/library/scribe/ScribeService;->a(Landroid/content/Context;Z)V

    .line 776
    :cond_1
    return-void
.end method

.method public a([BJ)V
    .locals 4

    .prologue
    .line 755
    if-eqz p1, :cond_1

    .line 756
    invoke-static {}, Lcjw;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    :try_start_0
    const-string/jumbo v0, "ScribeService"

    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    :cond_0
    :goto_0
    invoke-static {p0, p2, p3}, Lcom/twitter/library/scribe/ScribeDatabaseHelper;->a(Landroid/content/Context;J)Lcom/twitter/library/scribe/ScribeDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/library/scribe/ScribeDatabaseHelper;->a([B)J

    .line 763
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/twitter/library/scribe/ScribeService;->a(Landroid/content/Context;Z)V

    .line 765
    :cond_1
    return-void

    .line 759
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 455
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 456
    const-string/jumbo v0, "debug_prefs"

    invoke-virtual {p0, v0, v4}, Lcom/twitter/library/scribe/ScribeService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 458
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/config/AppConfig;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "scribe_endpoint_enabled"

    .line 459
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    const-string/jumbo v1, "scribe_endpoint_url"

    const-string/jumbo v2, "https://twitter.com/scribe"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/library/scribe/ScribeService;->h:Ljava/lang/String;

    .line 467
    :goto_0
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/config/AppConfig;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "scribe_thrift_endpoint_enabled"

    .line 468
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 469
    const-string/jumbo v1, "scribe_thrift_endpoint_url"

    const-string/jumbo v2, "https://api.twitter.com/1.1/jot/t"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeService;->i:Ljava/lang/String;

    .line 475
    :goto_1
    invoke-static {}, Lcom/twitter/library/scribe/av;->a()Lcom/twitter/library/scribe/av;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/twitter/library/scribe/av;->a(Landroid/content/Context;)V

    .line 476
    return-void

    .line 463
    :cond_0
    const-string/jumbo v1, "config"

    invoke-virtual {p0, v1, v4}, Lcom/twitter/library/scribe/ScribeService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "scribe_url"

    const-string/jumbo v3, "https://twitter.com/scribe"

    .line 464
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/library/scribe/ScribeService;->h:Ljava/lang/String;

    goto :goto_0

    .line 472
    :cond_1
    const-string/jumbo v0, "https://api.twitter.com/1.1/jot/t"

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeService;->i:Ljava/lang/String;

    goto :goto_1
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 18

    .prologue
    .line 485
    if-eqz p1, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 489
    sget-object v3, Lcom/twitter/library/scribe/ScribeService;->d:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 490
    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 492
    :goto_1
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 494
    :pswitch_1
    const-string/jumbo v2, "log"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/ScribeLog;

    .line 495
    if-eqz v2, :cond_0

    .line 496
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 497
    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/ScribeLog;->a(Ljava/io/OutputStream;)V

    .line 498
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2}, Lcom/twitter/library/scribe/ScribeLog;->b()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/twitter/library/scribe/ScribeService;->a([BJ)V

    goto :goto_0

    .line 490
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    .line 503
    :pswitch_2
    const-string/jumbo v2, "thrift_log"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 504
    const-string/jumbo v3, "owner_id"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 505
    const-string/jumbo v3, "scribe_category"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 506
    if-eqz v2, :cond_0

    .line 507
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4, v5}, Lcom/twitter/library/scribe/ScribeService;->a(Ljava/lang/String;[BJ)V

    goto :goto_0

    .line 512
    :pswitch_3
    sget-object v2, Lcom/twitter/library/scribe/ScribeService;->b:Lcom/twitter/library/scribe/ap;

    invoke-interface {v2}, Lcom/twitter/library/scribe/ap;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 515
    invoke-static {}, Lcom/twitter/app/common/account/d;->a()Lcom/twitter/app/common/account/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/app/common/account/d;->c()Ljava/util/List;

    move-result-object v4

    .line 516
    const/4 v3, 0x1

    .line 517
    const/4 v2, 0x1

    .line 519
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move v10, v2

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/app/common/account/a;

    .line 520
    invoke-static {v2}, Lcom/twitter/library/util/b;->c(Lcom/twitter/app/common/account/a;)Lcom/twitter/model/core/TwitterUser;

    move-result-object v4

    .line 521
    if-eqz v4, :cond_7

    .line 522
    invoke-static {v2}, Lcom/twitter/library/util/b;->a(Lcom/twitter/app/common/account/a;)Lcom/twitter/model/account/UserSettings;

    move-result-object v5

    .line 524
    if-eqz v5, :cond_6

    .line 525
    iget-object v6, v5, Lcom/twitter/model/account/UserSettings;->h:Ljava/lang/String;

    .line 529
    :goto_3
    iget-wide v4, v4, Lcom/twitter/model/core/TwitterUser;->c:J

    .line 531
    invoke-static {v2}, Lcom/twitter/library/util/b;->b(Lcom/twitter/app/common/account/a;)Lcom/twitter/model/account/OAuthToken;

    move-result-object v7

    .line 532
    if-eqz v3, :cond_3

    .line 533
    new-instance v2, Lcom/twitter/library/scribe/ax;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/library/scribe/ScribeService;->h:Ljava/lang/String;

    sget-object v9, Lcom/twitter/library/scribe/ScribeService;->g:Laxu;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/twitter/library/scribe/ax;-><init>(Landroid/content/Context;JLjava/lang/String;Lcom/twitter/model/account/OAuthToken;Ljava/lang/String;Laxu;)V

    .line 534
    invoke-virtual {v2}, Lcom/twitter/library/scribe/ax;->a()Z

    move-result v3

    .line 536
    :cond_3
    if-eqz v10, :cond_17

    .line 537
    new-instance v8, Lcom/twitter/library/scribe/az;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/twitter/library/scribe/ScribeService;->i:Ljava/lang/String;

    sget-object v14, Lcom/twitter/library/scribe/ScribeService;->g:Laxu;

    move-object/from16 v9, p0

    move-wide v10, v4

    move-object v12, v7

    invoke-direct/range {v8 .. v14}, Lcom/twitter/library/scribe/az;-><init>(Landroid/content/Context;JLcom/twitter/model/account/OAuthToken;Ljava/lang/String;Laxu;)V

    .line 538
    invoke-virtual {v8}, Lcom/twitter/library/scribe/az;->a()Z

    move-result v2

    .line 540
    :goto_4
    if-nez v3, :cond_8

    if-nez v2, :cond_8

    move v10, v2

    move v2, v3

    .line 546
    :goto_5
    if-eqz v2, :cond_16

    .line 548
    new-instance v2, Lcom/twitter/library/scribe/ax;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/library/scribe/ScribeService;->h:Ljava/lang/String;

    sget-object v9, Lcom/twitter/library/scribe/ScribeService;->g:Laxu;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/twitter/library/scribe/ax;-><init>(Landroid/content/Context;JLjava/lang/String;Lcom/twitter/model/account/OAuthToken;Ljava/lang/String;Laxu;)V

    .line 549
    invoke-virtual {v2}, Lcom/twitter/library/scribe/ax;->a()Z

    move-result v2

    move v9, v2

    .line 551
    :goto_6
    if-eqz v10, :cond_15

    .line 552
    new-instance v2, Lcom/twitter/library/scribe/az;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/library/scribe/ScribeService;->i:Ljava/lang/String;

    sget-object v8, Lcom/twitter/library/scribe/ScribeService;->g:Laxu;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/twitter/library/scribe/az;-><init>(Landroid/content/Context;JLcom/twitter/model/account/OAuthToken;Ljava/lang/String;Laxu;)V

    .line 553
    invoke-virtual {v2}, Lcom/twitter/library/scribe/az;->a()Z

    move-result v2

    .line 555
    :goto_7
    if-eqz v9, :cond_9

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/twitter/library/scribe/ScribeService;->a(Z)V

    .line 558
    :cond_4
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/config/AppConfig;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 559
    const-string/jumbo v2, "flush_request_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 560
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/library/scribe/ScribeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 561
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "SCRIBE_FLUSH_COMPLETED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 562
    if-eqz v2, :cond_5

    .line 563
    const-string/jumbo v5, "flush_request_id"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 565
    :cond_5
    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 527
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_7
    move v2, v10

    :cond_8
    move v10, v2

    .line 544
    goto/16 :goto_2

    .line 555
    :cond_9
    const/4 v2, 0x0

    goto :goto_8

    .line 571
    :pswitch_4
    const-string/jumbo v2, "user_id"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 572
    const-string/jumbo v2, "exp_request_time"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 574
    sget-object v2, Lcom/twitter/library/scribe/ScribeService;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 575
    sget-object v3, Lcom/twitter/library/scribe/ScribeService;->e:Ljava/util/HashMap;

    .line 576
    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 580
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/library/scribe/ScribeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 582
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/config/AppConfig;->p()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-static {v4}, Lcom/twitter/library/scribe/ScribeService;->b(Landroid/content/SharedPreferences;)J

    move-result-wide v6

    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-lez v4, :cond_d

    .line 584
    const-wide/32 v4, 0x36ee80

    move-wide v8, v4

    move-wide v10, v6

    .line 590
    :goto_9
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 591
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v2, v4, v10

    if-lez v2, :cond_0

    .line 593
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 594
    :cond_a
    :goto_a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 595
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 596
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/at;

    .line 597
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v3, v2, Lcom/twitter/library/scribe/at;->e:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 598
    invoke-static {v2}, Lcom/twitter/library/scribe/at;->a(Lcom/twitter/library/scribe/at;)Z

    move-result v3

    if-nez v3, :cond_b

    cmp-long v3, v4, v10

    if-lez v3, :cond_e

    :cond_b
    const/4 v3, 0x1

    .line 601
    :goto_b
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v15, v2, Lcom/twitter/library/scribe/at;->d:Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sub-long v6, v6, v16

    cmp-long v6, v6, v10

    if-lez v6, :cond_c

    cmp-long v4, v4, v8

    if-gtz v4, :cond_f

    :cond_c
    const/4 v4, 0x1

    .line 605
    :goto_c
    if-eqz v3, :cond_10

    if-eqz v4, :cond_10

    .line 606
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/twitter/library/scribe/at;->a(J)V

    .line 607
    iget-object v15, v2, Lcom/twitter/library/scribe/at;->a:Ljava/lang/String;

    .line 608
    iget v0, v2, Lcom/twitter/library/scribe/at;->b:I

    move/from16 v16, v0

    .line 609
    iget-object v0, v2, Lcom/twitter/library/scribe/at;->c:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 612
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->d(J)Lcom/twitter/library/scribe/bo;

    move-result-object v2

    const-string/jumbo v3, "ddg"

    .line 613
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "experiment"

    invoke-virtual/range {v2 .. v7}, Lcom/twitter/library/scribe/bo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/bo;

    move-result-object v2

    .line 614
    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v15, v0, v1}, Lcom/twitter/library/scribe/bo;->a(Ljava/lang/String;ILjava/lang/String;)Lcom/twitter/library/scribe/bo;

    move-result-object v2

    .line 615
    invoke-virtual {v2}, Lcom/twitter/library/scribe/bo;->a()Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v2

    .line 617
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 618
    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/io/OutputStream;)V

    .line 619
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/twitter/library/scribe/ScribeService;->a([BJ)V

    .line 622
    const-string/jumbo v2, "thrift_logging_ddg_double_write_enabled"

    invoke-static {v2}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 624
    new-instance v2, Lcom/twitter/experiments/client/thriftandroid/b;

    invoke-direct {v2}, Lcom/twitter/experiments/client/thriftandroid/b;-><init>()V

    sget-object v3, Lcom/twitter/experiments/client/thriftandroid/DdgImpression;->b:Lcom/twitter/experiments/client/thriftandroid/DdgImpression$_Fields;

    .line 626
    invoke-static {}, Lcom/twitter/library/scribe/ScribeService;->a()Lcom/twitter/common_header/thriftandroid/VersionedCommonHeader;

    move-result-object v4

    .line 625
    invoke-virtual {v2, v3, v4}, Lcom/twitter/experiments/client/thriftandroid/b;->a(Lcom/twitter/experiments/client/thriftandroid/DdgImpression$_Fields;Ljava/lang/Object;)Lcom/twitter/experiments/client/thriftandroid/b;

    move-result-object v2

    sget-object v3, Lcom/twitter/experiments/client/thriftandroid/DdgImpression;->c:Lcom/twitter/experiments/client/thriftandroid/DdgImpression$_Fields;

    .line 627
    invoke-virtual {v2, v3, v15}, Lcom/twitter/experiments/client/thriftandroid/b;->a(Lcom/twitter/experiments/client/thriftandroid/DdgImpression$_Fields;Ljava/lang/Object;)Lcom/twitter/experiments/client/thriftandroid/b;

    move-result-object v2

    sget-object v3, Lcom/twitter/experiments/client/thriftandroid/DdgImpression;->d:Lcom/twitter/experiments/client/thriftandroid/DdgImpression$_Fields;

    .line 628
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/twitter/experiments/client/thriftandroid/b;->a(Lcom/twitter/experiments/client/thriftandroid/DdgImpression$_Fields;Ljava/lang/Object;)Lcom/twitter/experiments/client/thriftandroid/b;

    move-result-object v2

    sget-object v3, Lcom/twitter/experiments/client/thriftandroid/DdgImpression;->e:Lcom/twitter/experiments/client/thriftandroid/DdgImpression$_Fields;

    .line 629
    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Lcom/twitter/experiments/client/thriftandroid/b;->a(Lcom/twitter/experiments/client/thriftandroid/DdgImpression$_Fields;Ljava/lang/Object;)Lcom/twitter/experiments/client/thriftandroid/b;

    move-result-object v2

    .line 630
    invoke-virtual {v2}, Lcom/twitter/experiments/client/thriftandroid/b;->a()Lcom/twitter/experiments/client/thriftandroid/DdgImpression;

    move-result-object v2

    .line 631
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/library/scribe/ScribeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/twitter/library/scribe/LogCategory;->c:Lcom/twitter/library/scribe/LogCategory;

    .line 633
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 631
    invoke-static {v3, v4, v6, v7, v2}, Lcom/twitter/library/scribe/ScribeService;->a(Landroid/content/Context;Lcom/twitter/library/scribe/LogCategory;JLorg/apache/thrift/TBase;)V

    goto/16 :goto_a

    .line 586
    :cond_d
    const-wide/32 v6, 0x19a280

    .line 587
    const-wide/32 v4, 0x334500

    move-wide v8, v4

    move-wide v10, v6

    goto/16 :goto_9

    .line 598
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_b

    .line 601
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_c

    .line 635
    :cond_10
    if-nez v4, :cond_a

    .line 636
    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_a

    .line 639
    :cond_11
    sget-object v2, Lcom/twitter/library/scribe/ScribeService;->f:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/twitter/library/scribe/ScribeService;->a(JJ)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 644
    :pswitch_5
    const-string/jumbo v2, "user_id"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 645
    const-string/jumbo v2, "exp_request_time"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 646
    const-string/jumbo v2, "exp_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 647
    const-string/jumbo v2, "exp_version"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 648
    const-string/jumbo v2, "exp_bucket"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 651
    sget-object v2, Lcom/twitter/library/scribe/ScribeService;->e:Ljava/util/HashMap;

    .line 652
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 654
    if-nez v2, :cond_12

    .line 655
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 656
    sget-object v8, Lcom/twitter/library/scribe/ScribeService;->e:Ljava/util/HashMap;

    invoke-virtual {v8, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    :cond_12
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 660
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/at;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v2, v5, v7, v8, v9}, Lcom/twitter/library/scribe/at;->a(ILjava/lang/String;J)V

    .line 665
    :goto_d
    sget-object v2, Lcom/twitter/library/scribe/ScribeService;->f:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v6, v7, v4, v5}, Lcom/twitter/library/scribe/ScribeService;->a(JJ)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 662
    :cond_13
    new-instance v8, Lcom/twitter/library/scribe/at;

    .line 663
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v8, v5, v6, v7, v4}, Lcom/twitter/library/scribe/at;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;)V

    .line 662
    invoke-virtual {v2, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 669
    :pswitch_6
    const-string/jumbo v2, "debug_prefs"

    const/4 v3, 0x0

    .line 670
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/scribe/ScribeService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 671
    const-string/jumbo v3, "endpoint_url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 672
    if-eqz v3, :cond_14

    .line 673
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/twitter/library/scribe/ScribeService;->h:Ljava/lang/String;

    .line 674
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v4, "scribe_endpoint_enabled"

    const/4 v5, 0x1

    .line 675
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v4, "scribe_endpoint_url"

    .line 676
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 677
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 679
    :cond_14
    const-string/jumbo v3, "https://twitter.com/scribe"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/twitter/library/scribe/ScribeService;->h:Ljava/lang/String;

    .line 680
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "scribe_endpoint_enabled"

    const/4 v4, 0x0

    .line 681
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "scribe_endpoint_url"

    const-string/jumbo v4, "https://twitter.com/scribe"

    .line 682
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 684
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    :cond_15
    move v2, v10

    goto/16 :goto_7

    :cond_16
    move v9, v2

    goto/16 :goto_6

    :cond_17
    move v2, v10

    goto/16 :goto_4

    :cond_18
    move v2, v3

    goto/16 :goto_5

    .line 492
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method
