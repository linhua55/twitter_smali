.class Lcom/twitter/android/periscope/m;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ltv/periscope/android/event/RetryEvent;

.field final synthetic b:Lcom/twitter/android/periscope/l;


# direct methods
.method constructor <init>(Lcom/twitter/android/periscope/l;Ltv/periscope/android/event/RetryEvent;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/twitter/android/periscope/m;->b:Lcom/twitter/android/periscope/l;

    iput-object p2, p0, Lcom/twitter/android/periscope/m;->a:Ltv/periscope/android/event/RetryEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/twitter/android/periscope/m;->b:Lcom/twitter/android/periscope/l;

    invoke-static {v0}, Lcom/twitter/android/periscope/l;->a(Lcom/twitter/android/periscope/l;)Lcom/twitter/library/client/bd;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/periscope/b;

    iget-object v2, p0, Lcom/twitter/android/periscope/m;->a:Ltv/periscope/android/event/RetryEvent;

    iget-object v2, v2, Ltv/periscope/android/event/RetryEvent;->a:Ltv/periscope/android/api/ApiRunnable;

    invoke-direct {v1, v2}, Lcom/twitter/android/periscope/b;-><init>(Ltv/periscope/android/api/ApiRunnable;)V

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 55
    return-void
.end method
