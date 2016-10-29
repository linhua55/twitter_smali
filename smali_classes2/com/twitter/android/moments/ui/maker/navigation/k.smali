.class public Lcom/twitter/android/moments/ui/maker/navigation/k;
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
.field private final a:Lamj;


# direct methods
.method public constructor <init>(Lamj;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/navigation/k;->a:Lamj;

    .line 15
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/k;->a:Lamj;

    invoke-virtual {v0}, Lamj;->b()V

    .line 21
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/k;->a:Lamj;

    invoke-virtual {v0}, Lamj;->aK_()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/k;->a:Lamj;

    invoke-virtual {v0}, Lamj;->c()V

    .line 27
    return-void
.end method

.method public c()Lcom/twitter/android/moments/ui/maker/navigation/au;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/twitter/android/moments/ui/maker/navigation/au;->b:Lcom/twitter/android/moments/ui/maker/navigation/au;

    return-object v0
.end method

.method public d()Lcom/twitter/android/moments/ui/maker/navigation/aw;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/twitter/android/moments/ui/maker/navigation/l;

    invoke-direct {v0, p0}, Lcom/twitter/android/moments/ui/maker/navigation/l;-><init>(Lcom/twitter/android/moments/ui/maker/navigation/k;)V

    return-object v0
.end method
