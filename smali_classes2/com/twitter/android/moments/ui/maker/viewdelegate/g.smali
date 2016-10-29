.class Lcom/twitter/android/moments/ui/maker/viewdelegate/g;
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
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/twitter/android/moments/ui/maker/viewdelegate/f;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/viewdelegate/f;I)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/g;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/f;

    iput p2, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/g;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/f;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/f;->a(Lcom/twitter/android/moments/ui/maker/viewdelegate/f;)Lcom/twitter/android/moments/ui/maker/SnappyRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/SnappyRecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/g;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/f;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/f;->b(Lcom/twitter/android/moments/ui/maker/viewdelegate/f;)Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;

    move-result-object v0

    iget v1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/g;->a:I

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;->b(I)V

    .line 102
    :cond_0
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 96
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/g;->a(Landroid/view/View;)V

    return-void
.end method
