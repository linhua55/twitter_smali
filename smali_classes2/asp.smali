.class public Lasp;
.super Ljava/lang/Object;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Ljava/lang/Object;",
        "TypedItemController::",
        "Lasm",
        "<TItem;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Laso;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laso",
            "<TItem;TTypedItemController;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Laso;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laso",
            "<TItem;TTypedItemController;>;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lasp;->a:Laso;

    .line 16
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lasp;->a:Laso;

    invoke-virtual {v0}, Laso;->notifyDataSetChanged()V

    .line 20
    return-void
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lasp;->a:Laso;

    invoke-virtual {v0, p1, p2}, Laso;->notifyItemMoved(II)V

    .line 24
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lasp;->a:Laso;

    invoke-virtual {v0, p1}, Laso;->setHasStableIds(Z)V

    .line 28
    return-void
.end method

.method public b()Laso;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laso",
            "<TItem;TTypedItemController;>;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lasp;->a:Laso;

    return-object v0
.end method
