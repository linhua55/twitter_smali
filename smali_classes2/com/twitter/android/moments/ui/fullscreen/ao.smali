.class Lcom/twitter/android/moments/ui/fullscreen/ao;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/fullscreen/dx;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/dx;

.field final synthetic b:Lcom/twitter/android/moments/ui/fullscreen/am;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/am;Lcom/twitter/android/moments/ui/fullscreen/dx;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/ao;->b:Lcom/twitter/android/moments/ui/fullscreen/am;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/ao;->a:Lcom/twitter/android/moments/ui/fullscreen/dx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ao;->b:Lcom/twitter/android/moments/ui/fullscreen/am;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/am;->b(Lcom/twitter/android/moments/ui/fullscreen/am;)Lrx/ap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ao;->b:Lcom/twitter/android/moments/ui/fullscreen/am;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/am;->b(Lcom/twitter/android/moments/ui/fullscreen/am;)Lrx/ap;

    move-result-object v0

    invoke-interface {v0}, Lrx/ap;->R_()V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ao;->a:Lcom/twitter/android/moments/ui/fullscreen/dx;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ao;->a:Lcom/twitter/android/moments/ui/fullscreen/dx;

    invoke-interface {v0}, Lcom/twitter/android/moments/ui/fullscreen/dx;->a()V

    .line 209
    :cond_1
    return-void
.end method
