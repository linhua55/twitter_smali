.class Lcom/twitter/android/moments/ui/fullscreen/bp;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/bo;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/bo;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/bp;->a:Lcom/twitter/android/moments/ui/fullscreen/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bp;->a:Lcom/twitter/android/moments/ui/fullscreen/bo;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/bo;->b(Lcom/twitter/android/moments/ui/fullscreen/bo;)Lcom/twitter/android/moments/ui/fullscreen/ei;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/bp;->a:Lcom/twitter/android/moments/ui/fullscreen/bo;

    invoke-static {v1}, Lcom/twitter/android/moments/ui/fullscreen/bo;->a(Lcom/twitter/android/moments/ui/fullscreen/bo;)Lcom/twitter/model/core/Tweet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/ei;->b(Lcom/twitter/model/core/Tweet;)V

    .line 99
    return-void
.end method
