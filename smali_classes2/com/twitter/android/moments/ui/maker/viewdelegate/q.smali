.class final Lcom/twitter/android/moments/ui/maker/viewdelegate/q;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/object/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/object/c",
        "<",
        "Lcom/twitter/android/moments/ui/maker/viewdelegate/r;",
        "Landroid/support/v7/widget/helper/ItemTouchHelper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/moments/ui/maker/viewdelegate/r;)Landroid/support/v7/widget/helper/ItemTouchHelper;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lcom/twitter/android/moments/ui/maker/viewdelegate/r;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/q;->a(Lcom/twitter/android/moments/ui/maker/viewdelegate/r;)Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-result-object v0

    return-object v0
.end method
