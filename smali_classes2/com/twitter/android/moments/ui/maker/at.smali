.class Lcom/twitter/android/moments/ui/maker/at;
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
.field final synthetic a:Lcom/twitter/android/moments/ui/maker/as;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/as;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/at;->a:Lcom/twitter/android/moments/ui/maker/as;

    invoke-direct {p0}, Lach;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/viewmodels/a;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/at;->a:Lcom/twitter/android/moments/ui/maker/as;

    invoke-static {v0, p1}, Lcom/twitter/android/moments/ui/maker/as;->a(Lcom/twitter/android/moments/ui/maker/as;Lcom/twitter/model/moments/viewmodels/a;)V

    .line 37
    return-void
.end method

.method public synthetic b_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Lcom/twitter/model/moments/viewmodels/a;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/at;->a(Lcom/twitter/model/moments/viewmodels/a;)V

    return-void
.end method
