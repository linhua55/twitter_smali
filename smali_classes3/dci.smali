.class public Ldci;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/support/v4/content/LocalBroadcastManager;


# direct methods
.method public constructor <init>(Landroid/support/v4/content/LocalBroadcastManager;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Ldci;->a:Landroid/support/v4/content/LocalBroadcastManager;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Landroid/content/IntentFilter;)Lrx/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            ")",
            "Lrx/o",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Ldcj;

    iget-object v1, p0, Ldci;->a:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-direct {v0, v1, p1}, Ldcj;-><init>(Landroid/support/v4/content/LocalBroadcastManager;Landroid/content/IntentFilter;)V

    invoke-static {v0}, Lrx/o;->a(Lrx/p;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Ldci;->a:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 36
    return-void
.end method
