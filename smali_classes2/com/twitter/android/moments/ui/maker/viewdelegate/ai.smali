.class Lcom/twitter/android/moments/ui/maker/viewdelegate/ai;
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
        "Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation;",
        "Lrx/o",
        "<",
        "Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation$AnimationState;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ai;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 144
    check-cast p1, Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ai;->a(Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation;)Lrx/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation;",
            ")",
            "Lrx/o",
            "<",
            "Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation$AnimationState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    invoke-interface {p1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation;->a()Lrx/o;

    move-result-object v0

    return-object v0
.end method
