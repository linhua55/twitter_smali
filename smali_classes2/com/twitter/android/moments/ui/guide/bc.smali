.class Lcom/twitter/android/moments/ui/guide/bc;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/viewmodels/ap;

.field final synthetic b:Lcom/twitter/android/moments/ui/guide/ba;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/guide/ba;Lcom/twitter/android/moments/viewmodels/ap;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/twitter/android/moments/ui/guide/bc;->b:Lcom/twitter/android/moments/ui/guide/ba;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/guide/bc;->a:Lcom/twitter/android/moments/viewmodels/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/bc;->b:Lcom/twitter/android/moments/ui/guide/ba;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/guide/ba;->e()Lcom/twitter/android/moments/ui/guide/q;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/moments/ui/guide/bc;->a:Lcom/twitter/android/moments/viewmodels/ap;

    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/bc;->b:Lcom/twitter/android/moments/ui/guide/ba;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/guide/ba;->b(Lcom/twitter/android/moments/ui/guide/ba;)Lcom/twitter/android/moments/ui/fullscreen/MomentsVideoPlayerView;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v2, v0}, Lcom/twitter/android/moments/ui/guide/q;->a(Lcom/twitter/android/moments/viewmodels/MomentModule;Landroid/view/View;)V

    .line 101
    return-void
.end method
