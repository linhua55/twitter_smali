.class Lcom/twitter/android/moments/ui/fullscreen/ac;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/y",
        "<",
        "Lcom/twitter/model/moments/viewmodels/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/ab;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/ab;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/ac;->a:Lcom/twitter/android/moments/ui/fullscreen/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/viewmodels/i;)V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ac;->a:Lcom/twitter/android/moments/ui/fullscreen/ab;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ac;->a:Lcom/twitter/android/moments/ui/fullscreen/ab;

    invoke-static {v1}, Lcom/twitter/android/moments/ui/fullscreen/ab;->a(Lcom/twitter/android/moments/ui/fullscreen/ab;)I

    move-result v1

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/ac;->a:Lcom/twitter/android/moments/ui/fullscreen/ab;

    invoke-static {v2}, Lcom/twitter/android/moments/ui/fullscreen/ab;->b(Lcom/twitter/android/moments/ui/fullscreen/ab;)F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/twitter/android/moments/ui/fullscreen/ab;->a(Lcom/twitter/android/moments/ui/fullscreen/ab;IF)V

    .line 63
    invoke-virtual {p1, p0}, Lcom/twitter/model/moments/viewmodels/i;->b(Lcom/twitter/util/y;)V

    .line 64
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 59
    check-cast p1, Lcom/twitter/model/moments/viewmodels/i;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/ac;->a(Lcom/twitter/model/moments/viewmodels/i;)V

    return-void
.end method
