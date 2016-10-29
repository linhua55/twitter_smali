.class final Lcom/twitter/library/platform/notifications/ab;
.super Lcom/twitter/library/service/z;
.source "Twttr"


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:J


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/lang/String;Landroid/content/Context;J)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/twitter/library/platform/notifications/ab;->a:Ljava/util/Set;

    iput-object p2, p0, Lcom/twitter/library/platform/notifications/ab;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/twitter/library/platform/notifications/ab;->c:Landroid/content/Context;

    iput-wide p4, p0, Lcom/twitter/library/platform/notifications/ab;->d:J

    invoke-direct {p0}, Lcom/twitter/library/service/z;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 311
    check-cast p1, Lcom/twitter/library/service/x;

    invoke-virtual {p0, p1}, Lcom/twitter/library/platform/notifications/ab;->a(Lcom/twitter/library/service/x;)V

    return-void
.end method

.method public a(Lcom/twitter/library/service/x;)V
    .locals 5

    .prologue
    .line 314
    check-cast p1, Lbqn;

    .line 315
    invoke-virtual {p1}, Lbqn;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/twitter/library/platform/notifications/ab;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/twitter/library/platform/notifications/ab;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    invoke-virtual {p1}, Lbqn;->b()I

    move-result v0

    const/16 v1, 0x86

    if-ne v0, v1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/twitter/library/platform/notifications/ab;->c:Landroid/content/Context;

    iget-wide v2, p0, Lcom/twitter/library/platform/notifications/ab;->d:J

    iget-object v1, p0, Lcom/twitter/library/platform/notifications/ab;->b:Ljava/lang/String;

    const-string/jumbo v4, "Device limit exceeded failure when posting push destinations after registration"

    invoke-static {v0, v2, v3, v1, v4}, Lcom/twitter/library/platform/notifications/PushRegistration;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
