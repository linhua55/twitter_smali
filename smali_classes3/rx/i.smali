.class Lrx/i;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/n;


# instance fields
.field a:Z

.field final synthetic b:Ldje;

.field final synthetic c:Ldly;

.field final synthetic d:Lrx/a;


# direct methods
.method constructor <init>(Lrx/a;Ldje;Ldly;)V
    .locals 0

    .prologue
    .line 1896
    iput-object p1, p0, Lrx/i;->d:Lrx/a;

    iput-object p2, p0, Lrx/i;->b:Ldje;

    iput-object p3, p0, Lrx/i;->c:Ldly;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 1900
    iget-boolean v0, p0, Lrx/i;->a:Z

    if-nez v0, :cond_0

    .line 1901
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/i;->a:Z

    .line 1903
    :try_start_0
    iget-object v0, p0, Lrx/i;->b:Ldje;

    invoke-interface {v0}, Ldje;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1908
    iget-object v0, p0, Lrx/i;->c:Ldly;

    invoke-virtual {v0}, Ldly;->R_()V

    .line 1911
    :cond_0
    :goto_0
    return-void

    .line 1904
    :catch_0
    move-exception v0

    .line 1905
    :try_start_1
    sget-object v1, Lrx/a;->a:Ldlj;

    invoke-virtual {v1, v0}, Ldlj;->a(Ljava/lang/Throwable;)V

    .line 1906
    invoke-static {v0}, Lrx/a;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1908
    iget-object v0, p0, Lrx/i;->c:Ldly;

    invoke-virtual {v0}, Ldly;->R_()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/i;->c:Ldly;

    invoke-virtual {v1}, Ldly;->R_()V

    throw v0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 1915
    sget-object v0, Lrx/a;->a:Ldlj;

    invoke-virtual {v0, p1}, Ldlj;->a(Ljava/lang/Throwable;)V

    .line 1916
    iget-object v0, p0, Lrx/i;->c:Ldly;

    invoke-virtual {v0}, Ldly;->R_()V

    .line 1917
    invoke-static {p1}, Lrx/a;->b(Ljava/lang/Throwable;)V

    .line 1918
    return-void
.end method

.method public a(Lrx/ap;)V
    .locals 1

    .prologue
    .line 1922
    iget-object v0, p0, Lrx/i;->c:Ldly;

    invoke-virtual {v0, p1}, Ldly;->a(Lrx/ap;)V

    .line 1923
    return-void
.end method
