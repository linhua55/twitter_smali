.class final Lcom/twitter/android/initialization/b;
.super Lcom/twitter/library/client/ad;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/initialization/AppSessionInitializer;

.field private final b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/twitter/android/initialization/AppSessionInitializer;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/twitter/android/initialization/b;->a:Lcom/twitter/android/initialization/AppSessionInitializer;

    invoke-direct {p0}, Lcom/twitter/library/client/ad;-><init>()V

    .line 172
    iput-object p2, p0, Lcom/twitter/android/initialization/b;->b:Landroid/content/Context;

    .line 173
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/client/Session;)V
    .locals 4

    .prologue
    .line 178
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "app::switch_account::success"

    aput-object v3, v1, v2

    .line 179
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 180
    iget-object v1, p0, Lcom/twitter/android/initialization/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/twitter/android/lc;->a(Landroid/content/Context;)Lcom/twitter/android/lc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/android/lc;->a(Lcom/twitter/library/scribe/TwitterScribeLog;)V

    .line 181
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 182
    iget-object v0, p0, Lcom/twitter/android/initialization/b;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/twitter/android/initialization/AppSessionInitializer;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    .line 183
    return-void
.end method

.method public a(Lcom/twitter/library/client/Session;Z)V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/twitter/android/initialization/b;->b:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/twitter/android/initialization/AppSessionInitializer;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;Z)Z

    .line 203
    return-void
.end method

.method public b(Lcom/twitter/library/client/Session;)V
    .locals 4

    .prologue
    .line 208
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "notification:status_bar::unauthorised:impression"

    aput-object v3, v1, v2

    .line 209
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 208
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 210
    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/library/util/b;->a(Ljava/lang/String;)Landroid/accounts/AccountManagerFuture;

    .line 211
    iget-object v0, p0, Lcom/twitter/android/initialization/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/android/client/y;->a(Landroid/content/Context;)Lcom/twitter/android/client/y;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/android/client/y;->a(Lcom/twitter/library/client/Session;)V

    .line 212
    return-void
.end method

.method public b(Lcom/twitter/library/client/Session;Z)V
    .locals 4

    .prologue
    .line 187
    if-eqz p2, :cond_0

    .line 188
    iget-object v0, p0, Lcom/twitter/android/initialization/b;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/twitter/android/initialization/AppSessionInitializer;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/initialization/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/android/client/cd;->a(Landroid/content/Context;)Lcom/twitter/android/client/cd;

    move-result-object v0

    .line 192
    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/client/cd;->a(J)Lcom/twitter/android/client/WidgetControl;

    move-result-object v1

    .line 193
    if-eqz v1, :cond_1

    .line 194
    invoke-virtual {v1}, Lcom/twitter/android/client/WidgetControl;->c()V

    .line 195
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/twitter/android/client/cd;->a(Lcom/twitter/library/client/Session;Z)V

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/initialization/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/platform/TwitterDataSyncService;->a(Landroid/content/Context;)V

    .line 198
    return-void
.end method
