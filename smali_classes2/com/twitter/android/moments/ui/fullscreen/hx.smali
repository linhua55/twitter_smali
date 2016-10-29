.class Lcom/twitter/android/moments/ui/fullscreen/hx;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lali;

.field final synthetic b:Lcom/twitter/android/moments/ui/fullscreen/hw;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/hw;Lali;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/hx;->b:Lcom/twitter/android/moments/ui/fullscreen/hw;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/hx;->a:Lali;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hx;->b:Lcom/twitter/android/moments/ui/fullscreen/hw;

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/hw;->a:Lcom/twitter/android/moments/ui/fullscreen/hv;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hx;->a:Lali;

    invoke-static {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/hv;->a(Lcom/twitter/android/moments/ui/fullscreen/hv;Lali;)V

    .line 54
    return-void
.end method
