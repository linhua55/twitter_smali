.class Lcom/twitter/library/scribe/av;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static a:Lcom/twitter/library/scribe/av;


# instance fields
.field private b:Z

.field private c:J

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1050
    invoke-direct {p0}, Lcom/twitter/library/scribe/av;->e()V

    .line 1051
    new-instance v0, Lcom/twitter/library/scribe/aw;

    invoke-direct {v0, p0}, Lcom/twitter/library/scribe/aw;-><init>(Lcom/twitter/library/scribe/av;)V

    invoke-static {v0}, Lcom/twitter/config/d;->a(Lcom/twitter/config/f;)V

    .line 1066
    return-void
.end method

.method public static declared-synchronized a()Lcom/twitter/library/scribe/av;
    .locals 2

    .prologue
    .line 1043
    const-class v1, Lcom/twitter/library/scribe/av;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/twitter/library/scribe/av;->a:Lcom/twitter/library/scribe/av;

    if-nez v0, :cond_0

    .line 1044
    new-instance v0, Lcom/twitter/library/scribe/av;

    invoke-direct {v0}, Lcom/twitter/library/scribe/av;-><init>()V

    sput-object v0, Lcom/twitter/library/scribe/av;->a:Lcom/twitter/library/scribe/av;

    .line 1046
    :cond_0
    sget-object v0, Lcom/twitter/library/scribe/av;->a:Lcom/twitter/library/scribe/av;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1043
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/twitter/library/scribe/av;)Z
    .locals 1

    .prologue
    .line 1034
    iget-boolean v0, p0, Lcom/twitter/library/scribe/av;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/twitter/library/scribe/av;)J
    .locals 2

    .prologue
    .line 1034
    iget-wide v0, p0, Lcom/twitter/library/scribe/av;->c:J

    return-wide v0
.end method

.method static synthetic c(Lcom/twitter/library/scribe/av;)V
    .locals 0

    .prologue
    .line 1034
    invoke-direct {p0}, Lcom/twitter/library/scribe/av;->e()V

    return-void
.end method

.method static synthetic d(Lcom/twitter/library/scribe/av;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/twitter/library/scribe/av;->e:Landroid/content/Context;

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 1073
    const-string/jumbo v0, "scribe_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/library/scribe/av;->b:Z

    .line 1074
    const-wide/16 v0, 0x3e8

    const-string/jumbo v2, "scribe_interval_seconds"

    const/16 v3, 0x3c

    .line 1075
    invoke-static {v2, v3}, Lcom/twitter/config/d;->a(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/twitter/library/scribe/av;->c:J

    .line 1076
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1077
    const-string/jumbo v0, "scribe_cdn_host_list"

    invoke-static {v0}, Lcom/twitter/config/d;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1078
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1079
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1080
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1083
    :cond_1
    iput-object v1, p0, Lcom/twitter/library/scribe/av;->d:Ljava/util/Set;

    .line 1084
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1069
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/av;->e:Landroid/content/Context;

    .line 1070
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 1087
    iget-boolean v0, p0, Lcom/twitter/library/scribe/av;->b:Z

    return v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 1091
    iget-wide v0, p0, Lcom/twitter/library/scribe/av;->c:J

    return-wide v0
.end method

.method public d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/twitter/library/scribe/av;->d:Ljava/util/Set;

    return-object v0
.end method
