.class Lcom/twitter/android/sj;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/model/timeline/al;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/twitter/android/si;


# direct methods
.method constructor <init>(Lcom/twitter/android/si;Lcom/twitter/model/timeline/al;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/twitter/android/sj;->d:Lcom/twitter/android/si;

    iput-object p2, p0, Lcom/twitter/android/sj;->a:Lcom/twitter/model/timeline/al;

    iput-object p3, p0, Lcom/twitter/android/sj;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/twitter/android/sj;->c:Ljava/lang/String;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 103
    iget-object v0, p0, Lcom/twitter/android/sj;->d:Lcom/twitter/android/si;

    iget-object v1, p0, Lcom/twitter/android/sj;->a:Lcom/twitter/model/timeline/al;

    const-string/jumbo v2, "dismiss"

    invoke-static {v0, v1, v5, v2}, Lcom/twitter/android/si;->a(Lcom/twitter/android/si;Lcom/twitter/model/timeline/al;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/twitter/android/sj;->d:Lcom/twitter/android/si;

    iget-object v1, p0, Lcom/twitter/android/sj;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/android/si;->a(Lcom/twitter/android/si;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/twitter/android/sj;->d:Lcom/twitter/android/si;

    invoke-static {v0}, Lcom/twitter/android/si;->c(Lcom/twitter/android/si;)Lcom/twitter/library/client/bd;

    move-result-object v0

    new-instance v1, Lbrs;

    iget-object v2, p0, Lcom/twitter/android/sj;->d:Lcom/twitter/android/si;

    .line 106
    invoke-static {v2}, Lcom/twitter/android/si;->a(Lcom/twitter/android/si;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/sj;->d:Lcom/twitter/android/si;

    invoke-static {v3}, Lcom/twitter/android/si;->b(Lcom/twitter/android/si;)Lcom/twitter/library/client/bk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/sj;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lbrs;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;)V

    sget-object v2, Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;->c:Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;

    .line 105
    invoke-virtual {v0, v1, v5, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;)Ljava/lang/String;

    .line 109
    return-void
.end method
