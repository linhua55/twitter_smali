.class public Lcom/twitter/android/moments/ui/fullscreen/b;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/fullscreen/fn;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/twitter/android/moments/ui/fullscreen/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/android/moments/ui/fullscreen/e",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/twitter/android/moments/ui/fullscreen/e;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/twitter/android/moments/ui/fullscreen/e",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/b;->a:Landroid/app/Activity;

    .line 35
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/b;->b:Lcom/twitter/android/moments/ui/fullscreen/e;

    .line 36
    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/twitter/android/moments/ui/fullscreen/b;
    .locals 4

    .prologue
    .line 22
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/b;

    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/e;

    new-instance v2, Lcom/twitter/android/moments/ui/fullscreen/c;

    invoke-direct {v2, p0}, Lcom/twitter/android/moments/ui/fullscreen/c;-><init>(Landroid/app/Activity;)V

    .line 28
    invoke-static {}, Ldls;->d()Lrx/t;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/twitter/android/moments/ui/fullscreen/e;-><init>(Ljava/util/concurrent/Callable;Lrx/t;)V

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/moments/ui/fullscreen/b;-><init>(Landroid/app/Activity;Lcom/twitter/android/moments/ui/fullscreen/e;)V

    .line 22
    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/b;->b:Lcom/twitter/android/moments/ui/fullscreen/e;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 46
    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/b;->a:Landroid/app/Activity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/b;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/b;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
