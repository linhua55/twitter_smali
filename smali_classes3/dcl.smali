.class Ldcl;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldcf;


# instance fields
.field final synthetic a:Landroid/content/BroadcastReceiver;

.field final synthetic b:Ldcj;


# direct methods
.method constructor <init>(Ldcj;Landroid/content/BroadcastReceiver;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Ldcl;->b:Ldcj;

    iput-object p2, p0, Ldcl;->a:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Ldcl;->b:Ldcj;

    invoke-static {v0}, Ldcj;->a(Ldcj;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Ldcl;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 61
    return-void
.end method
