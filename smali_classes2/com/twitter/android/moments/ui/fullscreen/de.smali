.class Lcom/twitter/android/moments/ui/fullscreen/de;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/dc;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/dc;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/de;->a:Lcom/twitter/android/moments/ui/fullscreen/dc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/de;->a:Lcom/twitter/android/moments/ui/fullscreen/dc;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/dc;->b(Lcom/twitter/android/moments/ui/fullscreen/dc;)Lcom/twitter/android/moments/ui/fullscreen/w;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/w;->a(Lcom/twitter/android/moments/ui/fullscreen/dx;)V

    .line 102
    return-void
.end method
