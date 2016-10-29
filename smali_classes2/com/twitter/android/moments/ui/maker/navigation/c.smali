.class public Lcom/twitter/android/moments/ui/maker/navigation/c;
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
.field private final a:Lcom/twitter/android/moments/ui/maker/ab;

.field private final b:Lcom/twitter/android/moments/ui/maker/viewdelegate/i;


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/ui/maker/ab;Lcom/twitter/android/moments/ui/maker/viewdelegate/i;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/navigation/c;->a:Lcom/twitter/android/moments/ui/maker/ab;

    .line 19
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/navigation/c;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/i;

    .line 20
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/c;->a:Lcom/twitter/android/moments/ui/maker/ab;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/ab;->c()V

    .line 26
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/c;->a:Lcom/twitter/android/moments/ui/maker/ab;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/ab;->aK_()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/model/moments/ak;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/c;->a:Lcom/twitter/android/moments/ui/maker/ab;

    invoke-virtual {v0, p1}, Lcom/twitter/android/moments/ui/maker/ab;->a(Lcom/twitter/model/moments/ak;)V

    .line 54
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/c;->a:Lcom/twitter/android/moments/ui/maker/ab;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/ab;->d()V

    .line 32
    return-void
.end method

.method public c()Lcom/twitter/android/moments/ui/maker/navigation/au;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/twitter/android/moments/ui/maker/navigation/au;->b:Lcom/twitter/android/moments/ui/maker/navigation/au;

    return-object v0
.end method

.method public synthetic d()Lcom/twitter/android/moments/ui/maker/navigation/aw;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/maker/navigation/c;->e()Lcom/twitter/android/moments/ui/maker/viewdelegate/i;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/twitter/android/moments/ui/maker/viewdelegate/i;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/c;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/i;

    return-object v0
.end method

.method public f()Lcom/twitter/model/moments/ak;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/c;->a:Lcom/twitter/android/moments/ui/maker/ab;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/ab;->e()Lcom/twitter/model/moments/ak;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/c;->a:Lcom/twitter/android/moments/ui/maker/ab;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/ab;->b()Z

    move-result v0

    return v0
.end method

.method public synthetic h()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/maker/navigation/c;->f()Lcom/twitter/model/moments/ak;

    move-result-object v0

    return-object v0
.end method
