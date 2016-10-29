.class final Lcom/twitter/android/moments/ui/maker/viewdelegate/j;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/object/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/object/e",
        "<",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Rect;",
        "Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Landroid/graphics/Rect;)Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation;
    .locals 3

    .prologue
    .line 30
    new-instance v0, Lcom/twitter/android/moments/ui/maker/viewdelegate/h;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Lcom/twitter/android/moments/ui/maker/viewdelegate/x;

    invoke-direct {v2}, Lcom/twitter/android/moments/ui/maker/viewdelegate/x;-><init>()V

    invoke-direct {v0, v1, p2, v2}, Lcom/twitter/android/moments/ui/maker/viewdelegate/h;-><init>(ILandroid/graphics/Rect;Lcom/twitter/android/moments/ui/maker/viewdelegate/x;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/moments/ui/maker/viewdelegate/j;->a(Ljava/lang/Integer;Landroid/graphics/Rect;)Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation;

    move-result-object v0

    return-object v0
.end method
