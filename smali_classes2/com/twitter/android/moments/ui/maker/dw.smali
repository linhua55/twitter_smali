.class Lcom/twitter/android/moments/ui/maker/dw;
.super Lach;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lach",
        "<",
        "Lcom/twitter/model/moments/maker/q;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/maker/du;

.field final synthetic b:Lcom/twitter/android/moments/ui/maker/dv;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/dv;Lcom/twitter/android/moments/ui/maker/du;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/dw;->b:Lcom/twitter/android/moments/ui/maker/dv;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/dw;->a:Lcom/twitter/android/moments/ui/maker/du;

    invoke-direct {p0}, Lach;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/maker/q;)V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/dw;->a:Lcom/twitter/android/moments/ui/maker/du;

    iget-object v1, p1, Lcom/twitter/model/moments/maker/q;->a:Lcom/twitter/model/moments/maker/n;

    iget-object v1, v1, Lcom/twitter/model/moments/maker/n;->b:Lcom/twitter/model/moments/ak;

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/du;->b(Lcom/twitter/model/moments/ak;)V

    .line 26
    return-void
.end method

.method public synthetic b_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lcom/twitter/model/moments/maker/q;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/dw;->a(Lcom/twitter/model/moments/maker/q;)V

    return-void
.end method
