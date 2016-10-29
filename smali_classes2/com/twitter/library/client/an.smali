.class Lcom/twitter/library/client/an;
.super Landroid/support/customtabs/CustomTabsServiceConnection;
.source "Twttr"


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/twitter/library/client/am;


# direct methods
.method constructor <init>(Lcom/twitter/library/client/am;J)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/twitter/library/client/an;->b:Lcom/twitter/library/client/am;

    iput-wide p2, p0, Lcom/twitter/library/client/an;->a:J

    invoke-direct {p0}, Landroid/support/customtabs/CustomTabsServiceConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroid/support/customtabs/CustomTabsClient;)V
    .locals 6

    .prologue
    .line 297
    iget-object v0, p0, Lcom/twitter/library/client/an;->b:Lcom/twitter/library/client/am;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twitter/library/client/am;->a(Lcom/twitter/library/client/am;Z)Z

    .line 298
    if-eqz p2, :cond_3

    .line 299
    iget-object v0, p0, Lcom/twitter/library/client/an;->b:Lcom/twitter/library/client/am;

    invoke-static {v0}, Lcom/twitter/library/client/am;->a(Lcom/twitter/library/client/am;)Lcom/twitter/platform/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/platform/u;->b()J

    move-result-wide v0

    .line 300
    iget-object v2, p0, Lcom/twitter/library/client/an;->b:Lcom/twitter/library/client/am;

    invoke-static {v2}, Lcom/twitter/library/client/am;->b(Lcom/twitter/library/client/am;)Landroid/support/customtabs/CustomTabsClient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 301
    const-string/jumbo v2, "CustomTabs"

    const-string/jumbo v3, "Connection callback invoked when client exists already."

    invoke-static {v2, v3}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_0
    iget-object v2, p0, Lcom/twitter/library/client/an;->b:Lcom/twitter/library/client/am;

    invoke-static {v2}, Lcom/twitter/library/client/am;->b(Lcom/twitter/library/client/am;)Landroid/support/customtabs/CustomTabsClient;

    move-result-object v2

    if-eq v2, p2, :cond_1

    .line 304
    const-string/jumbo v2, "CustomTabs"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Service connected. Time to establish connection with Chrome Service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/twitter/library/client/an;->a:J

    sub-long/2addr v0, v4

    .line 305
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    invoke-static {v2, v0}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :goto_0
    iget-object v0, p0, Lcom/twitter/library/client/an;->b:Lcom/twitter/library/client/am;

    invoke-static {v0, p2}, Lcom/twitter/library/client/am;->a(Lcom/twitter/library/client/am;Landroid/support/customtabs/CustomTabsClient;)Landroid/support/customtabs/CustomTabsClient;

    .line 311
    iget-object v0, p0, Lcom/twitter/library/client/an;->b:Lcom/twitter/library/client/am;

    invoke-static {v0}, Lcom/twitter/library/client/am;->b(Lcom/twitter/library/client/am;)Landroid/support/customtabs/CustomTabsClient;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/support/customtabs/CustomTabsClient;->warmup(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 312
    const-string/jumbo v0, "CustomTabs"

    const-string/jumbo v1, "Client warmup failed at initial connection."

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :goto_1
    return-void

    .line 307
    :cond_1
    const-string/jumbo v0, "CustomTabs"

    const-string/jumbo v1, "Service connection callback invoked after initial connection"

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :cond_2
    const-string/jumbo v0, "CustomTabs"

    const-string/jumbo v1, "Client warmup succeeded at initial connection."

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 317
    :cond_3
    const-string/jumbo v0, "CustomTabs"

    const-string/jumbo v1, "Service connection returned a null client."

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 323
    const-string/jumbo v0, "CustomTabs"

    const-string/jumbo v1, "Service disconnected"

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    return-void
.end method
