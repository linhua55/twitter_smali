.class Lcom/twitter/android/moments/ui/fullscreen/ev;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/er;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/er;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/ev;->a:Lcom/twitter/android/moments/ui/fullscreen/er;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ev;->a:Lcom/twitter/android/moments/ui/fullscreen/er;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/er;->c(Lcom/twitter/android/moments/ui/fullscreen/er;)Lcom/twitter/android/moments/ui/fullscreen/fo;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ev;->a:Lcom/twitter/android/moments/ui/fullscreen/er;

    invoke-static {v1}, Lcom/twitter/android/moments/ui/fullscreen/er;->b(Lcom/twitter/android/moments/ui/fullscreen/er;)Lcom/twitter/model/core/TwitterUser;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/fo;->a(Lcom/twitter/model/core/TwitterUser;)V

    .line 166
    return-void
.end method
