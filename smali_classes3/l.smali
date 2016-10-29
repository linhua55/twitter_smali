.class Ll;
.super Lio/fabric/sdk/android/d;
.source "Twttr"


# instance fields
.field final synthetic a:Lk;


# direct methods
.method constructor <init>(Lk;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Ll;->a:Lk;

    invoke-direct {p0}, Lio/fabric/sdk/android/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Ll;->a:Lk;

    invoke-virtual {v0}, Lk;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Ll;->a:Lk;

    invoke-static {v0}, Lk;->a(Lk;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lm;

    invoke-direct {v1, p0}, Lm;-><init>(Ll;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 31
    :cond_0
    return-void
.end method
