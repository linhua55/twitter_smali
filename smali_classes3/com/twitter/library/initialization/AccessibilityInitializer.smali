.class public Lcom/twitter/library/initialization/AccessibilityInitializer;
.super Lauo;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lauo",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lauo;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/library/initialization/AccessibilityInitializer;->a(Landroid/content/Context;Ljava/lang/Void;)V

    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 19
    invoke-static {p1}, Lcom/twitter/util/ui/a;->a(Landroid/content/Context;)V

    .line 20
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    .line 22
    new-instance v1, Lcom/twitter/library/initialization/a;

    invoke-direct {v1, p0, p1, v0}, Lcom/twitter/library/initialization/a;-><init>(Lcom/twitter/library/initialization/AccessibilityInitializer;Landroid/content/Context;Lcom/twitter/library/client/bk;)V

    .line 34
    const-string/jumbo v0, "accessibility"

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 36
    invoke-static {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;)Z

    .line 38
    return-void
.end method
