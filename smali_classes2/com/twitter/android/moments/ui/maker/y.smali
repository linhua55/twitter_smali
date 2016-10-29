.class Lcom/twitter/android/moments/ui/maker/y;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldau;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldau",
        "<",
        "Lamu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldau;

.field final synthetic b:Lcom/twitter/android/moments/ui/maker/w;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/w;Ldau;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/y;->b:Lcom/twitter/android/moments/ui/maker/w;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/y;->a:Ldau;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lamu;)Z
    .locals 2

    .prologue
    .line 54
    instance-of v0, p1, Lamv;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/y;->a:Ldau;

    check-cast p1, Lamv;

    iget-object v1, p1, Lamv;->a:Lcom/twitter/model/moments/viewmodels/m;

    invoke-interface {v0, v1}, Ldau;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x1

    .line 59
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 51
    check-cast p1, Lamu;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/y;->a(Lamu;)Z

    move-result v0

    return v0
.end method
