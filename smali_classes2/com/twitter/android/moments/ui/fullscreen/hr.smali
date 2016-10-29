.class Lcom/twitter/android/moments/ui/fullscreen/hr;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Laky;

.field final synthetic b:Lcom/twitter/android/moments/ui/fullscreen/hl;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/hl;Laky;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/hr;->b:Lcom/twitter/android/moments/ui/fullscreen/hl;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/hr;->a:Laky;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hr;->a:Laky;

    invoke-virtual {v0}, Laky;->j()V

    .line 219
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hr;->b:Lcom/twitter/android/moments/ui/fullscreen/hl;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/hl;->b(Lcom/twitter/android/moments/ui/fullscreen/hl;)Lcom/twitter/android/moments/ui/video/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/video/b;->c()V

    .line 220
    return-void
.end method
