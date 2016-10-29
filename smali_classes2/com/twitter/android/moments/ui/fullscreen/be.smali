.class Lcom/twitter/android/moments/ui/fullscreen/be;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/bd;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/bd;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/be;->a:Lcom/twitter/android/moments/ui/fullscreen/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 95
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/be;->a:Lcom/twitter/android/moments/ui/fullscreen/bd;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/bd;->b(Lcom/twitter/android/moments/ui/fullscreen/bd;)Lcom/twitter/android/moments/ui/fullscreen/fc;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/be;->a:Lcom/twitter/android/moments/ui/fullscreen/bd;

    .line 96
    invoke-static {v1}, Lcom/twitter/android/moments/ui/fullscreen/bd;->a(Lcom/twitter/android/moments/ui/fullscreen/bd;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 95
    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/fc;->a(I)I

    move-result v0

    .line 97
    if-lez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/be;->a:Lcom/twitter/android/moments/ui/fullscreen/bd;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/bd;->c(Lcom/twitter/android/moments/ui/fullscreen/bd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/fullscreen/ax;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/ax;->b()V

    .line 99
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/be;->a:Lcom/twitter/android/moments/ui/fullscreen/bd;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/bd;->c(Lcom/twitter/android/moments/ui/fullscreen/bd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 101
    :cond_0
    return-void
.end method
