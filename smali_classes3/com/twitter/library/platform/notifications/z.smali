.class final Lcom/twitter/library/platform/notifications/z;
.super Lcom/twitter/library/service/z;
.source "Twttr"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:J


# direct methods
.method constructor <init>(Landroid/content/Context;ZZLjava/lang/String;IJ)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/twitter/library/platform/notifications/z;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/twitter/library/platform/notifications/z;->b:Z

    iput-boolean p3, p0, Lcom/twitter/library/platform/notifications/z;->c:Z

    iput-object p4, p0, Lcom/twitter/library/platform/notifications/z;->d:Ljava/lang/String;

    iput p5, p0, Lcom/twitter/library/platform/notifications/z;->e:I

    iput-wide p6, p0, Lcom/twitter/library/platform/notifications/z;->f:J

    invoke-direct {p0}, Lcom/twitter/library/service/z;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 177
    check-cast p1, Lcom/twitter/library/service/x;

    invoke-virtual {p0, p1}, Lcom/twitter/library/platform/notifications/z;->a(Lcom/twitter/library/service/x;)V

    return-void
.end method

.method public a(Lcom/twitter/library/service/x;)V
    .locals 7

    .prologue
    .line 180
    check-cast p1, Lbqp;

    .line 181
    invoke-virtual {p1}, Lbqp;->U()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/twitter/library/platform/notifications/z;->a:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/twitter/library/platform/notifications/z;->b:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/twitter/library/platform/notifications/PushRegistration;->b:Ljava/lang/String;

    :goto_0
    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/twitter/library/platform/notifications/z;->c:Z

    iget-object v4, p0, Lcom/twitter/library/platform/notifications/z;->d:Ljava/lang/String;

    iget v5, p0, Lcom/twitter/library/platform/notifications/z;->e:I

    .line 185
    invoke-virtual {p1}, Lbqp;->g()I

    move-result v6

    .line 182
    invoke-static/range {v0 .. v6}, Lcom/twitter/library/platform/notifications/PushRegistration;->a(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;II)V

    .line 190
    :cond_0
    :goto_1
    return-void

    .line 182
    :cond_1
    sget-object v1, Lcom/twitter/library/platform/notifications/PushRegistration;->a:Ljava/lang/String;

    goto :goto_0

    .line 186
    :cond_2
    invoke-virtual {p1}, Lbqp;->b()I

    move-result v0

    const/16 v1, 0x86

    if-ne v0, v1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/twitter/library/platform/notifications/z;->a:Landroid/content/Context;

    iget-wide v2, p0, Lcom/twitter/library/platform/notifications/z;->f:J

    iget-object v1, p0, Lcom/twitter/library/platform/notifications/z;->d:Ljava/lang/String;

    const-string/jumbo v4, "Device limit exceeded failure when updating push destinations"

    invoke-static {v0, v2, v3, v1, v4}, Lcom/twitter/library/platform/notifications/PushRegistration;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
