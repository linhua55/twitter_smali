.class Layo;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Layn;


# direct methods
.method constructor <init>(Layn;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Layo;->a:Layn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 52
    iget-object v0, p0, Layo;->a:Layn;

    invoke-virtual {v0}, Layn;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Layo;->a:Layn;

    invoke-virtual {v0}, Layn;->o()V

    .line 55
    :cond_0
    iget-object v0, p0, Layo;->a:Layn;

    invoke-static {v0}, Layn;->a(Layn;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Layo;->a:Layn;

    invoke-virtual {v1}, Layn;->g()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    return-void
.end method
