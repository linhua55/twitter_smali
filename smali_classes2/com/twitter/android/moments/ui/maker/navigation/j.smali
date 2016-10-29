.class Lcom/twitter/android/moments/ui/maker/navigation/j;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjj",
        "<",
        "Lcom/twitter/android/moments/ui/maker/navigation/af",
        "<TT2;",
        "Lcom/twitter/android/moments/ui/maker/viewdelegate/i;",
        ">;",
        "Lrx/o",
        "<",
        "Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation$AnimationState;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/maker/navigation/af;

.field final synthetic b:Lcom/twitter/android/moments/ui/maker/navigation/h;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/navigation/h;Lcom/twitter/android/moments/ui/maker/navigation/af;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/navigation/j;->b:Lcom/twitter/android/moments/ui/maker/navigation/h;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/navigation/j;->a:Lcom/twitter/android/moments/ui/maker/navigation/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    check-cast p1, Lcom/twitter/android/moments/ui/maker/navigation/af;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/navigation/j;->a(Lcom/twitter/android/moments/ui/maker/navigation/af;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/android/moments/ui/maker/navigation/af;)Lrx/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/moments/ui/maker/navigation/af",
            "<TT2;",
            "Lcom/twitter/android/moments/ui/maker/viewdelegate/i;",
            ">;)",
            "Lrx/o",
            "<",
            "Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation$AnimationState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    invoke-interface {p1}, Lcom/twitter/android/moments/ui/maker/navigation/af;->d()Lcom/twitter/android/moments/ui/maker/navigation/aw;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/maker/viewdelegate/i;

    .line 75
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/navigation/j;->a:Lcom/twitter/android/moments/ui/maker/navigation/af;

    invoke-interface {v1}, Lcom/twitter/android/moments/ui/maker/navigation/af;->d()Lcom/twitter/android/moments/ui/maker/navigation/aw;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/moments/ui/maker/viewdelegate/i;

    .line 76
    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/navigation/j;->a:Lcom/twitter/android/moments/ui/maker/navigation/af;

    invoke-interface {v2}, Lcom/twitter/android/moments/ui/maker/navigation/af;->h()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 77
    invoke-virtual {v1, v2}, Lcom/twitter/android/moments/ui/maker/viewdelegate/i;->a(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v2, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/i;->a(ILandroid/graphics/Rect;)Lrx/o;

    move-result-object v0

    return-object v0
.end method
