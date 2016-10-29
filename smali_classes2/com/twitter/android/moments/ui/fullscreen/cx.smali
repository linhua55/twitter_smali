.class Lcom/twitter/android/moments/ui/fullscreen/cx;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjf",
        "<",
        "Lcom/twitter/android/moments/ui/fullscreen/cv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/cv;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/cv;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/cx;->a:Lcom/twitter/android/moments/ui/fullscreen/cv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/moments/ui/fullscreen/cv;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/cx;->a:Lcom/twitter/android/moments/ui/fullscreen/cv;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/cv;->b(Lcom/twitter/android/moments/ui/fullscreen/cv;)Lcom/twitter/android/moments/ui/fullscreen/fr;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/android/moments/ui/fullscreen/fr;->b()V

    .line 54
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 50
    check-cast p1, Lcom/twitter/android/moments/ui/fullscreen/cv;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/cx;->a(Lcom/twitter/android/moments/ui/fullscreen/cv;)V

    return-void
.end method
