.class Lcom/twitter/android/moments/ui/maker/dx;
.super Lach;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lach",
        "<",
        "Lcom/twitter/model/moments/maker/MomentEditOperation;",
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
    .line 29
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/dx;->b:Lcom/twitter/android/moments/ui/maker/dv;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/dx;->a:Lcom/twitter/android/moments/ui/maker/du;

    invoke-direct {p0}, Lach;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/maker/MomentEditOperation;)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/dx;->a:Lcom/twitter/android/moments/ui/maker/du;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/du;->a()V

    .line 33
    return-void
.end method

.method public synthetic b_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Lcom/twitter/model/moments/maker/MomentEditOperation;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/dx;->a(Lcom/twitter/model/moments/maker/MomentEditOperation;)V

    return-void
.end method
