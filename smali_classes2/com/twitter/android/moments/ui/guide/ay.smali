.class Lcom/twitter/android/moments/ui/guide/ay;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/viewmodels/MomentModule;

.field final synthetic b:Lcom/twitter/android/moments/ui/guide/aw;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/guide/aw;Lcom/twitter/android/moments/viewmodels/MomentModule;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/twitter/android/moments/ui/guide/ay;->b:Lcom/twitter/android/moments/ui/guide/aw;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/guide/ay;->a:Lcom/twitter/android/moments/viewmodels/MomentModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/ay;->b:Lcom/twitter/android/moments/ui/guide/aw;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/guide/aw;->c(Lcom/twitter/android/moments/ui/guide/aw;)Lcom/twitter/android/moments/ui/guide/q;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/ay;->a:Lcom/twitter/android/moments/viewmodels/MomentModule;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/guide/ay;->b:Lcom/twitter/android/moments/ui/guide/aw;

    .line 127
    invoke-static {v2}, Lcom/twitter/android/moments/ui/guide/aw;->b(Lcom/twitter/android/moments/ui/guide/aw;)Lamb;

    move-result-object v2

    invoke-virtual {v2}, Lamb;->e()Lcom/twitter/media/ui/image/MediaImageView;

    move-result-object v2

    .line 126
    invoke-interface {v0, v1, v2}, Lcom/twitter/android/moments/ui/guide/q;->a(Lcom/twitter/android/moments/viewmodels/MomentModule;Landroid/view/View;)V

    .line 128
    return-void
.end method
