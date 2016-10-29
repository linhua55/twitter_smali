.class public Lcom/twitter/library/platform/notifications/ac;
.super Lbiv;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 402
    invoke-direct {p0}, Lbiv;-><init>()V

    .line 403
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;I)V
    .locals 6

    .prologue
    .line 405
    invoke-direct {p0}, Lbiv;-><init>()V

    .line 406
    const-string/jumbo v0, "PushDebugErrorLog.error code"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/library/platform/notifications/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    .line 407
    const-string/jumbo v0, "PushDebugErrorLog.account"

    invoke-virtual {p0, v0, p4}, Lcom/twitter/library/platform/notifications/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 409
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    .line 410
    invoke-static {p1, p2, p3}, Lcom/twitter/library/platform/notifications/x;->a(Landroid/content/Context;J)Lcom/twitter/library/platform/notifications/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/platform/notifications/x;->b()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 409
    invoke-static {v2, v3, v0}, Landroid/support/v4/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 411
    const-string/jumbo v1, "PushDebugErrorLog.refresh duration"

    invoke-virtual {p0, v1, v0}, Lcom/twitter/library/platform/notifications/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    .line 412
    return-void
.end method
