.class public Lcom/twitter/android/moments/ui/maker/navigation/r;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/maker/navigation/ap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/android/moments/ui/maker/navigation/ap",
        "<",
        "Lcom/twitter/android/moments/ui/maker/navigation/aw;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/android/moments/ui/maker/bc;


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/ui/maker/bc;Lcom/twitter/model/moments/viewmodels/m;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/navigation/r;->a:Lcom/twitter/android/moments/ui/maker/bc;

    .line 15
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/r;->a:Lcom/twitter/android/moments/ui/maker/bc;

    invoke-virtual {v0, p2}, Lcom/twitter/android/moments/ui/maker/bc;->a(Lcom/twitter/model/moments/viewmodels/m;)V

    .line 16
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/r;->a:Lcom/twitter/android/moments/ui/maker/bc;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/bc;->aK_()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public c()Lcom/twitter/android/moments/ui/maker/navigation/au;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/twitter/android/moments/ui/maker/navigation/au;->b:Lcom/twitter/android/moments/ui/maker/navigation/au;

    return-object v0
.end method

.method public d()Lcom/twitter/android/moments/ui/maker/navigation/aw;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/twitter/android/moments/ui/maker/navigation/s;

    invoke-direct {v0, p0}, Lcom/twitter/android/moments/ui/maker/navigation/s;-><init>(Lcom/twitter/android/moments/ui/maker/navigation/r;)V

    return-object v0
.end method
