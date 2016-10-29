.class Lcom/twitter/android/moments/ui/guide/y;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/viewmodels/MomentModule;

.field final synthetic b:Lcom/twitter/media/ui/image/MediaImageView;

.field final synthetic c:Lcom/twitter/android/moments/ui/guide/x;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/guide/x;Lcom/twitter/android/moments/viewmodels/MomentModule;Lcom/twitter/media/ui/image/MediaImageView;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/twitter/android/moments/ui/guide/y;->c:Lcom/twitter/android/moments/ui/guide/x;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/guide/y;->a:Lcom/twitter/android/moments/viewmodels/MomentModule;

    iput-object p3, p0, Lcom/twitter/android/moments/ui/guide/y;->b:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/y;->c:Lcom/twitter/android/moments/ui/guide/x;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/guide/x;->e()Lcom/twitter/android/moments/ui/guide/q;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/y;->a:Lcom/twitter/android/moments/viewmodels/MomentModule;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/guide/y;->b:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-interface {v0, v1, v2}, Lcom/twitter/android/moments/ui/guide/q;->a(Lcom/twitter/android/moments/viewmodels/MomentModule;Landroid/view/View;)V

    .line 104
    return-void
.end method
