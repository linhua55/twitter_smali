.class Lcom/twitter/android/az;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/concurrent/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/concurrent/e",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/twitter/android/ay;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 478
    const-class v0, Lcom/twitter/android/au;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/android/az;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/twitter/android/ay;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/twitter/android/az;->c:Lcom/twitter/android/ay;

    iput-object p2, p0, Lcom/twitter/android/az;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 481
    sget-boolean v0, Lcom/twitter/android/az;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 482
    :cond_0
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 483
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/twitter/android/az;->b:Landroid/content/Context;

    const-class v2, Lcom/twitter/android/BugReporterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 484
    iget-object v0, p0, Lcom/twitter/android/az;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 485
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 478
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/twitter/android/az;->a(Landroid/content/Intent;)V

    return-void
.end method
