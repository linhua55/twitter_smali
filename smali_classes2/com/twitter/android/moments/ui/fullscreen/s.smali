.class Lcom/twitter/android/moments/ui/fullscreen/s;
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
        "Lcom/twitter/android/moments/ui/fullscreen/af;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/q;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/q;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/s;->a:Lcom/twitter/android/moments/ui/fullscreen/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/moments/ui/fullscreen/af;)V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/s;->a:Lcom/twitter/android/moments/ui/fullscreen/q;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/q;->a(Lcom/twitter/android/moments/ui/fullscreen/q;)Lcom/twitter/model/moments/viewmodels/y;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/android/moments/ui/fullscreen/af;->a:Lcom/twitter/model/moments/viewmodels/ac;

    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/s;->a:Lcom/twitter/android/moments/ui/fullscreen/q;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/q;->c(Lcom/twitter/android/moments/ui/fullscreen/q;)Lajk;

    move-result-object v0

    invoke-virtual {v0}, Lajk;->a()V

    .line 48
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 42
    check-cast p1, Lcom/twitter/android/moments/ui/fullscreen/af;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/s;->a(Lcom/twitter/android/moments/ui/fullscreen/af;)V

    return-void
.end method
