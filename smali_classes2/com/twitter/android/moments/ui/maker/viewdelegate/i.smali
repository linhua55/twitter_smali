.class public Lcom/twitter/android/moments/ui/maker/viewdelegate/i;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/maker/navigation/aw;


# instance fields
.field private final a:Lcom/twitter/android/moments/ui/maker/viewdelegate/w;

.field private final b:Lcom/twitter/util/object/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/object/e",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Rect;",
            "Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/ui/maker/viewdelegate/w;Lcom/twitter/util/object/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/moments/ui/maker/viewdelegate/w;",
            "Lcom/twitter/util/object/e",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Rect;",
            "Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/i;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/w;

    .line 40
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/i;->b:Lcom/twitter/util/object/e;

    .line 41
    return-void
.end method

.method public static a(Lcom/twitter/android/moments/ui/maker/viewdelegate/w;)Lcom/twitter/android/moments/ui/maker/viewdelegate/i;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/twitter/android/moments/ui/maker/viewdelegate/i;

    new-instance v1, Lcom/twitter/android/moments/ui/maker/viewdelegate/j;

    invoke-direct {v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/j;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/i;-><init>(Lcom/twitter/android/moments/ui/maker/viewdelegate/w;Lcom/twitter/util/object/e;)V

    return-object v0
.end method


# virtual methods
.method public a(I)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/i;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/w;

    invoke-interface {v0, p1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/w;->b(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public a(ILandroid/graphics/Rect;)Lrx/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/Rect;",
            ")",
            "Lrx/o",
            "<",
            "Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation$AnimationState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/i;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/w;

    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/i;->b:Lcom/twitter/util/object/e;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Lcom/twitter/util/object/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation;

    invoke-interface {v1, v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/w;->a(Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation;)Lrx/o;

    move-result-object v0

    return-object v0
.end method
