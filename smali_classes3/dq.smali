.class Ldq;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/cache/common/a;

.field final synthetic b:Lfo;

.field final synthetic c:Ldo;


# direct methods
.method constructor <init>(Ldo;Lcom/facebook/cache/common/a;Lfo;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Ldq;->c:Ldo;

    iput-object p2, p0, Ldq;->a:Lcom/facebook/cache/common/a;

    iput-object p3, p0, Ldq;->b:Lfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 214
    :try_start_0
    iget-object v0, p0, Ldq;->c:Ldo;

    iget-object v1, p0, Ldq;->a:Lcom/facebook/cache/common/a;

    iget-object v2, p0, Ldq;->b:Lfo;

    invoke-static {v0, v1, v2}, Ldo;->a(Ldo;Lcom/facebook/cache/common/a;Lfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    iget-object v0, p0, Ldq;->c:Ldo;

    invoke-static {v0}, Ldo;->a(Ldo;)Lep;

    move-result-object v0

    iget-object v1, p0, Ldq;->a:Lcom/facebook/cache/common/a;

    iget-object v2, p0, Ldq;->b:Lfo;

    invoke-virtual {v0, v1, v2}, Lep;->b(Lcom/facebook/cache/common/a;Lfo;)Z

    .line 217
    iget-object v0, p0, Ldq;->b:Lfo;

    invoke-static {v0}, Lfo;->d(Lfo;)V

    .line 219
    return-void

    .line 216
    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldq;->c:Ldo;

    invoke-static {v1}, Ldo;->a(Ldo;)Lep;

    move-result-object v1

    iget-object v2, p0, Ldq;->a:Lcom/facebook/cache/common/a;

    iget-object v3, p0, Ldq;->b:Lfo;

    invoke-virtual {v1, v2, v3}, Lep;->b(Lcom/facebook/cache/common/a;Lfo;)Z

    .line 217
    iget-object v1, p0, Ldq;->b:Lfo;

    invoke-static {v1}, Lfo;->d(Lfo;)V

    throw v0
.end method
