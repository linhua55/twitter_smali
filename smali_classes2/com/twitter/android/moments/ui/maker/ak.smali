.class Lcom/twitter/android/moments/ui/maker/ak;
.super Lach;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lach",
        "<",
        "Lcom/twitter/android/moments/ui/maker/dt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/twitter/android/moments/ui/maker/aj;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/aj;Z)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/ak;->b:Lcom/twitter/android/moments/ui/maker/aj;

    iput-boolean p2, p0, Lcom/twitter/android/moments/ui/maker/ak;->a:Z

    invoke-direct {p0}, Lach;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/moments/ui/maker/dt;)V
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/maker/ak;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ak;->b:Lcom/twitter/android/moments/ui/maker/aj;

    iget-boolean v1, p0, Lcom/twitter/android/moments/ui/maker/ak;->a:Z

    invoke-static {v0, p1, v1}, Lcom/twitter/android/moments/ui/maker/aj;->a(Lcom/twitter/android/moments/ui/maker/aj;Lcom/twitter/android/moments/ui/maker/dt;Z)V

    .line 69
    :cond_0
    return-void
.end method

.method public synthetic b_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    check-cast p1, Lcom/twitter/android/moments/ui/maker/dt;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/ak;->a(Lcom/twitter/android/moments/ui/maker/dt;)V

    return-void
.end method
