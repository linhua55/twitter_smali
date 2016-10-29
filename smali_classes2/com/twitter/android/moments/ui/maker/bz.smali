.class Lcom/twitter/android/moments/ui/maker/bz;
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
.field final synthetic a:Lcom/twitter/android/moments/ui/maker/by;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/by;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/bz;->a:Lcom/twitter/android/moments/ui/maker/by;

    invoke-direct {p0}, Lach;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/viewmodels/a;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bz;->a:Lcom/twitter/android/moments/ui/maker/by;

    invoke-static {v0, p1}, Lcom/twitter/android/moments/ui/maker/by;->a(Lcom/twitter/android/moments/ui/maker/by;Lcom/twitter/model/moments/viewmodels/a;)V

    .line 105
    return-void
.end method

.method public synthetic b_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 101
    check-cast p1, Lcom/twitter/model/moments/viewmodels/a;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/bz;->a(Lcom/twitter/model/moments/viewmodels/a;)V

    return-void
.end method
