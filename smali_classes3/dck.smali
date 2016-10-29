.class Ldck;
.super Landroid/content/BroadcastReceiver;
.source "Twttr"


# instance fields
.field final synthetic a:Lrx/ao;

.field final synthetic b:Ldcj;


# direct methods
.method constructor <init>(Ldcj;Lrx/ao;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Ldck;->b:Ldcj;

    iput-object p2, p0, Ldck;->a:Lrx/ao;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Ldck;->a:Lrx/ao;

    invoke-virtual {v0, p2}, Lrx/ao;->b_(Ljava/lang/Object;)V

    .line 55
    return-void
.end method
