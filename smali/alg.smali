.class Lalg;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/w;

.field final synthetic b:Lald;


# direct methods
.method constructor <init>(Lald;Lcom/twitter/android/moments/ui/fullscreen/w;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lalg;->b:Lald;

    iput-object p2, p0, Lalg;->a:Lcom/twitter/android/moments/ui/fullscreen/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lalg;->b:Lald;

    invoke-static {v0}, Lald;->b(Lald;)Lalc;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lalc;->b(Z)V

    .line 109
    iget-object v0, p0, Lalg;->a:Lcom/twitter/android/moments/ui/fullscreen/w;

    new-instance v1, Lalh;

    invoke-direct {v1, p0}, Lalh;-><init>(Lalg;)V

    invoke-interface {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/w;->a(Lcom/twitter/android/moments/ui/fullscreen/dx;)V

    .line 115
    return-void
.end method
