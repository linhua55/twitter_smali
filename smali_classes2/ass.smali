.class public Lass;
.super Laso;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Ljava/lang/Object;",
        "TypedItemController::",
        "Lasm",
        "<TItem;>;>",
        "Laso",
        "<TItem;TTypedItemController;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/app/common/inject/o;


# direct methods
.method public constructor <init>(Lcom/twitter/app/common/inject/o;Lasr;Lasn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/app/common/inject/o;",
            "Lasr",
            "<TItem;>;",
            "Lasn",
            "<TItem;TTypedItemController;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p2, p3}, Laso;-><init>(Lasr;Lasn;)V

    .line 22
    iput-object p1, p0, Lass;->a:Lcom/twitter/app/common/inject/o;

    .line 23
    return-void
.end method


# virtual methods
.method public a(Lasq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lasq",
            "<TTypedItemController;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lass;->a:Lcom/twitter/app/common/inject/o;

    iget-object v1, p1, Lasq;->a:Lcom/twitter/app/common/inject/m;

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/inject/o;->b(Ljava/lang/Object;)Lcom/twitter/app/common/inject/o;

    .line 34
    invoke-super {p0, p1}, Laso;->a(Lasq;)V

    .line 35
    return-void
.end method

.method public a(Lasq;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lasq",
            "<TTypedItemController;>;I)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Laso;->a(Lasq;I)V

    .line 28
    iget-object v0, p0, Lass;->a:Lcom/twitter/app/common/inject/o;

    iget-object v1, p1, Lasq;->a:Lcom/twitter/app/common/inject/m;

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/inject/o;->a(Ljava/lang/Object;)Lcom/twitter/app/common/inject/o;

    .line 29
    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lasq;

    invoke-virtual {p0, p1, p2}, Lass;->a(Lasq;I)V

    return-void
.end method

.method public synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lasq;

    invoke-virtual {p0, p1}, Lass;->a(Lasq;)V

    return-void
.end method
