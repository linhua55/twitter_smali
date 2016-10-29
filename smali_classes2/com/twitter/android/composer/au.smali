.class Lcom/twitter/android/composer/au;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Long;

.field final synthetic b:Lcom/twitter/android/composer/at;


# direct methods
.method constructor <init>(Lcom/twitter/android/composer/at;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 3532
    iput-object p1, p0, Lcom/twitter/android/composer/au;->b:Lcom/twitter/android/composer/at;

    iput-object p2, p0, Lcom/twitter/android/composer/au;->a:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3535
    iget-object v0, p0, Lcom/twitter/android/composer/au;->b:Lcom/twitter/android/composer/at;

    invoke-static {v0}, Lcom/twitter/android/composer/at;->a(Lcom/twitter/android/composer/at;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3537
    iget-object v0, p0, Lcom/twitter/android/composer/au;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 3538
    iget-object v0, p0, Lcom/twitter/android/composer/au;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/twitter/android/composer/au;->b:Lcom/twitter/android/composer/at;

    invoke-static {v2}, Lcom/twitter/android/composer/at;->b(Lcom/twitter/android/composer/at;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/composer/au;->b:Lcom/twitter/android/composer/at;

    invoke-static {v3}, Lcom/twitter/android/composer/at;->c(Lcom/twitter/android/composer/at;)Lcom/twitter/library/client/Session;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/composer/au;->b:Lcom/twitter/android/composer/at;

    invoke-static {v4}, Lcom/twitter/android/composer/at;->d(Lcom/twitter/android/composer/at;)Lcom/twitter/library/client/bd;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/twitter/android/composer/ComposerActivity;->a(JLandroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/library/client/bd;)V

    .line 3549
    :cond_0
    :goto_0
    return-void

    .line 3542
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/composer/au;->b:Lcom/twitter/android/composer/at;

    invoke-static {v0}, Lcom/twitter/android/composer/at;->e(Lcom/twitter/android/composer/at;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/composer/ComposerActivity;

    .line 3543
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/twitter/app/common/util/s;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3544
    iget-object v1, v0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-static {v1}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/composer/ba;

    iget-object v2, p0, Lcom/twitter/android/composer/au;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/twitter/android/composer/ba;->a(J)V

    .line 3545
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/twitter/android/composer/ComposerActivity;->b(Lcom/twitter/android/composer/ComposerActivity;I)I

    .line 3546
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twitter/android/composer/ComposerActivity;->a(Lcom/twitter/android/composer/ComposerActivity;Lcom/twitter/android/composer/at;)Lcom/twitter/android/composer/at;

    goto :goto_0
.end method
