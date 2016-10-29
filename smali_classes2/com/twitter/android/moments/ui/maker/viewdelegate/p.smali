.class public Lcom/twitter/android/moments/ui/maker/viewdelegate/p;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private a:Lcom/twitter/android/moments/ui/maker/viewdelegate/r;

.field private b:Landroid/support/v7/widget/helper/ItemTouchHelper;


# direct methods
.method public constructor <init>(Lcom/twitter/util/object/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/object/c",
            "<",
            "Lcom/twitter/android/moments/ui/maker/viewdelegate/r;",
            "Landroid/support/v7/widget/helper/ItemTouchHelper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/twitter/android/moments/ui/maker/viewdelegate/r;

    invoke-direct {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/r;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/p;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/r;

    .line 31
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/p;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/r;

    invoke-interface {p1, v0}, Lcom/twitter/util/object/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/helper/ItemTouchHelper;

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/p;->b:Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 32
    return-void
.end method

.method public static a()Lcom/twitter/android/moments/ui/maker/viewdelegate/p;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/twitter/android/moments/ui/maker/viewdelegate/p;

    new-instance v1, Lcom/twitter/android/moments/ui/maker/viewdelegate/q;

    invoke-direct {v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/q;-><init>()V

    invoke-direct {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/p;-><init>(Lcom/twitter/util/object/c;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/p;->b:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 36
    return-void
.end method

.method public a(Lcom/twitter/android/moments/ui/maker/viewdelegate/s;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/p;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/r;

    invoke-virtual {v0, p1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/r;->a(Lcom/twitter/android/moments/ui/maker/viewdelegate/s;)V

    .line 40
    return-void
.end method
