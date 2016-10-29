.class Lcom/twitter/android/moments/ui/fullscreen/ch;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/fullscreen/bc;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/ax;

.field final synthetic b:Lcom/twitter/android/moments/ui/fullscreen/by;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/by;Lcom/twitter/android/moments/ui/fullscreen/ax;)V
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/ch;->b:Lcom/twitter/android/moments/ui/fullscreen/by;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/ch;->a:Lcom/twitter/android/moments/ui/fullscreen/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ch;->b:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/by;->m(Lcom/twitter/android/moments/ui/fullscreen/by;)Lcom/twitter/android/moments/ui/fullscreen/dn;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ch;->b:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-static {v1}, Lcom/twitter/android/moments/ui/fullscreen/by;->k(Lcom/twitter/android/moments/ui/fullscreen/by;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/dn;->b(Landroid/os/Bundle;)V

    .line 529
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ch;->a:Lcom/twitter/android/moments/ui/fullscreen/ax;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/ax;->a(Lcom/twitter/android/moments/ui/fullscreen/bc;)V

    .line 530
    return-void
.end method
