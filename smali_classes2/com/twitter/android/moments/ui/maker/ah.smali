.class Lcom/twitter/android/moments/ui/maker/ah;
.super Lach;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lach",
        "<",
        "Lcom/twitter/model/moments/viewmodels/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/maker/ab;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/ab;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/ah;->a:Lcom/twitter/android/moments/ui/maker/ab;

    invoke-direct {p0}, Lach;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/viewmodels/a;)V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ah;->a:Lcom/twitter/android/moments/ui/maker/ab;

    invoke-static {v0, p1}, Lcom/twitter/android/moments/ui/maker/ab;->a(Lcom/twitter/android/moments/ui/maker/ab;Lcom/twitter/model/moments/viewmodels/a;)V

    .line 193
    return-void
.end method

.method public synthetic b_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 189
    check-cast p1, Lcom/twitter/model/moments/viewmodels/a;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/ah;->a(Lcom/twitter/model/moments/viewmodels/a;)V

    return-void
.end method
