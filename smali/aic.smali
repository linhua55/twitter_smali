.class Laic;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjf",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/viewmodels/u;

.field final synthetic b:Laib;


# direct methods
.method constructor <init>(Laib;Lcom/twitter/android/moments/viewmodels/u;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Laic;->b:Laib;

    iput-object p2, p0, Laic;->a:Lcom/twitter/android/moments/viewmodels/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Laic;->b:Laib;

    invoke-static {v0}, Laib;->b(Laib;)Laih;

    move-result-object v0

    iget-object v1, p0, Laic;->b:Laib;

    invoke-static {v1}, Laib;->a(Laib;)Lahy;

    move-result-object v1

    invoke-virtual {v1}, Lahy;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Laih;->a(Landroid/view/View;)V

    .line 82
    iget-object v0, p0, Laic;->b:Laib;

    invoke-static {v0}, Laib;->b(Laib;)Laih;

    move-result-object v0

    iget-object v1, p0, Laic;->a:Lcom/twitter/android/moments/viewmodels/u;

    invoke-virtual {v0, v1}, Laih;->a(Lcom/twitter/android/moments/viewmodels/u;)V

    .line 83
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 78
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Laic;->a(Ljava/lang/Boolean;)V

    return-void
.end method
