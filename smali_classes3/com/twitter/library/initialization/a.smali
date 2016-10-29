.class Lcom/twitter/library/initialization/a;
.super Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;
.source "Twttr"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/twitter/library/client/bk;

.field final synthetic c:Lcom/twitter/library/initialization/AccessibilityInitializer;


# direct methods
.method constructor <init>(Lcom/twitter/library/initialization/AccessibilityInitializer;Landroid/content/Context;Lcom/twitter/library/client/bk;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/twitter/library/initialization/a;->c:Lcom/twitter/library/initialization/AccessibilityInitializer;

    iput-object p2, p0, Lcom/twitter/library/initialization/a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/twitter/library/initialization/a;->b:Lcom/twitter/library/client/bk;

    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityStateChanged(Z)V
    .locals 4

    .prologue
    .line 26
    iget-object v0, p0, Lcom/twitter/library/initialization/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/util/ui/a;->a(Landroid/content/Context;)V

    .line 27
    if-eqz p1, :cond_0

    .line 28
    iget-object v0, p0, Lcom/twitter/library/initialization/a;->b:Lcom/twitter/library/client/bk;

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 29
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v2, v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "app::::explorebytouch_enabled"

    aput-object v3, v0, v1

    .line 30
    invoke-virtual {v2, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 29
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 32
    :cond_0
    return-void
.end method
