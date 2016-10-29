.class Lcom/twitter/android/moments/ui/fullscreen/cc;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/object/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/object/c",
        "<",
        "Lcom/twitter/model/moments/viewmodels/a;",
        "Lcom/twitter/android/moments/ui/fullscreen/ax;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/by;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/by;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/cc;->a:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/viewmodels/a;)Lcom/twitter/android/moments/ui/fullscreen/ax;
    .locals 4

    .prologue
    .line 254
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/cc;->a:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-static {}, Lcom/twitter/util/collection/ab;->a()Lcom/twitter/util/collection/ab;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/cc;->a:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-static {v2}, Lcom/twitter/android/moments/ui/fullscreen/by;->c(Lcom/twitter/android/moments/ui/fullscreen/by;)Lcom/twitter/android/moments/ui/fullscreen/fc;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/twitter/android/moments/ui/fullscreen/by;->a(Lcom/twitter/android/moments/ui/fullscreen/by;Lcom/twitter/model/moments/viewmodels/a;Lcom/twitter/util/collection/ab;Lcom/twitter/android/moments/ui/fullscreen/fc;Landroid/os/Bundle;)Lcom/twitter/android/moments/ui/fullscreen/ax;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 250
    check-cast p1, Lcom/twitter/model/moments/viewmodels/a;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/cc;->a(Lcom/twitter/model/moments/viewmodels/a;)Lcom/twitter/android/moments/ui/fullscreen/ax;

    move-result-object v0

    return-object v0
.end method
