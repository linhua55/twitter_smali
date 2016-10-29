.class Lcom/twitter/app/common/app/j;
.super Lcom/twitter/app/common/util/i;
.source "Twttr"


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/twitter/app/common/app/TwitterApplication;


# direct methods
.method constructor <init>(Lcom/twitter/app/common/app/TwitterApplication;JJJ)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/twitter/app/common/app/j;->d:Lcom/twitter/app/common/app/TwitterApplication;

    iput-wide p2, p0, Lcom/twitter/app/common/app/j;->a:J

    iput-wide p4, p0, Lcom/twitter/app/common/app/j;->b:J

    iput-wide p6, p0, Lcom/twitter/app/common/app/j;->c:J

    invoke-direct {p0}, Lcom/twitter/app/common/util/i;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 78
    invoke-static {}, Lcom/twitter/app/common/util/c;->a()Lcom/twitter/app/common/util/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/twitter/app/common/util/c;->b(Lcom/twitter/app/common/util/a;)V

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 80
    iget-wide v2, p0, Lcom/twitter/app/common/app/j;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 84
    new-instance v0, Laxz;

    const-string/jumbo v1, "app:init"

    sget-object v2, Laxz;->n:Laye;

    iget-wide v4, p0, Lcom/twitter/app/common/app/j;->a:J

    iget-wide v6, p0, Lcom/twitter/app/common/app/j;->b:J

    sub-long/2addr v4, v6

    invoke-direct {v0, v1, v2, v4, v5}, Laxz;-><init>(Ljava/lang/String;Laye;J)V

    sput-object v0, Lcom/twitter/library/metrics/k;->a:Laxz;

    .line 86
    sget-object v0, Lcom/twitter/library/metrics/k;->a:Laxz;

    iget-wide v2, p0, Lcom/twitter/app/common/app/j;->c:J

    invoke-virtual {v0, v2, v3}, Laxz;->b(J)V

    .line 87
    sget-object v0, Lcom/twitter/library/metrics/k;->a:Laxz;

    const-string/jumbo v1, "AppMetrics"

    invoke-virtual {v0, v1}, Laxz;->b(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Layj;->b()Layj;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/metrics/k;->a:Laxz;

    invoke-virtual {v0, v1}, Layj;->a(Laxz;)V

    .line 90
    :cond_0
    return-void
.end method
