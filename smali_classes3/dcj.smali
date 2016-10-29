.class Ldcj;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/p",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v4/content/LocalBroadcastManager;

.field private final b:Landroid/content/IntentFilter;


# direct methods
.method constructor <init>(Landroid/support/v4/content/LocalBroadcastManager;Landroid/content/IntentFilter;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Ldcj;->a:Landroid/support/v4/content/LocalBroadcastManager;

    .line 46
    iput-object p2, p0, Ldcj;->b:Landroid/content/IntentFilter;

    .line 47
    return-void
.end method

.method static synthetic a(Ldcj;)Landroid/support/v4/content/LocalBroadcastManager;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Ldcj;->a:Landroid/support/v4/content/LocalBroadcastManager;

    return-object v0
.end method


# virtual methods
.method public a(Lrx/ao;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/ao",
            "<-",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Ldck;

    invoke-direct {v0, p0, p1}, Ldck;-><init>(Ldcj;Lrx/ao;)V

    .line 57
    new-instance v1, Ldcl;

    invoke-direct {v1, p0, v0}, Ldcl;-><init>(Ldcj;Landroid/content/BroadcastReceiver;)V

    invoke-static {v1}, Ldmc;->a(Ldje;)Lrx/ap;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/ao;->a(Lrx/ap;)V

    .line 63
    iget-object v1, p0, Ldcj;->a:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Ldcj;->b:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 64
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Lrx/ao;

    invoke-virtual {p0, p1}, Ldcj;->a(Lrx/ao;)V

    return-void
.end method
