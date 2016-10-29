.class public Lcom/twitter/android/moments/ui/maker/navigation/aa;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/maker/navigation/af;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/android/moments/ui/maker/navigation/af",
        "<",
        "Lcom/twitter/model/moments/ak;",
        "Lcom/twitter/android/moments/ui/maker/viewdelegate/i;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/android/moments/ui/maker/by;

.field private final b:Lcom/twitter/android/moments/ui/maker/viewdelegate/i;


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/ui/maker/by;Lcom/twitter/android/moments/ui/maker/viewdelegate/i;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/navigation/aa;->a:Lcom/twitter/android/moments/ui/maker/by;

    .line 18
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/navigation/aa;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/i;

    .line 19
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/aa;->a:Lcom/twitter/android/moments/ui/maker/by;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/by;->b()V

    .line 25
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/aa;->a:Lcom/twitter/android/moments/ui/maker/by;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/by;->aK_()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/aa;->a:Lcom/twitter/android/moments/ui/maker/by;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/by;->c()V

    .line 31
    return-void
.end method

.method public c()Lcom/twitter/android/moments/ui/maker/navigation/au;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/twitter/android/moments/ui/maker/navigation/ae;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/navigation/aa;->a:Lcom/twitter/android/moments/ui/maker/by;

    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/maker/by;->d()Lcom/twitter/model/moments/ak;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/android/moments/ui/maker/navigation/ae;-><init>(Lcom/twitter/model/moments/ak;)V

    return-object v0
.end method

.method public synthetic d()Lcom/twitter/android/moments/ui/maker/navigation/aw;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/maker/navigation/aa;->e()Lcom/twitter/android/moments/ui/maker/viewdelegate/i;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/twitter/android/moments/ui/maker/viewdelegate/i;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/aa;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/i;

    return-object v0
.end method

.method public f()Lcom/twitter/model/moments/ak;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/aa;->a:Lcom/twitter/android/moments/ui/maker/by;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/by;->d()Lcom/twitter/model/moments/ak;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/maker/navigation/aa;->f()Lcom/twitter/model/moments/ak;

    move-result-object v0

    return-object v0
.end method
