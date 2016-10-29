.class public Laso;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Ljava/lang/Object;",
        "TypedItemController::",
        "Lasm",
        "<TItem;>;>",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lasq",
        "<TTypedItemController;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lasr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lasr",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private final b:Lasn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lasn",
            "<TItem;TTypedItemController;>;"
        }
    .end annotation
.end field

.field private final c:Lasl;


# direct methods
.method public constructor <init>(Lasr;Lasn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lasr",
            "<TItem;>;",
            "Lasn",
            "<TItem;TTypedItemController;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 15
    new-instance v0, Lasw;

    invoke-direct {v0, p0}, Lasw;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iput-object v0, p0, Laso;->c:Lasl;

    .line 19
    iput-object p1, p0, Laso;->a:Lasr;

    .line 20
    iput-object p2, p0, Laso;->b:Lasn;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lasq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lasq",
            "<TTypedItemController;>;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lasq;

    iget-object v1, p0, Laso;->b:Lasn;

    iget-object v2, p0, Laso;->c:Lasl;

    invoke-interface {v1, p1, v2, p2}, Lasn;->b(Landroid/view/ViewGroup;Lasl;I)Lasm;

    move-result-object v1

    invoke-direct {v0, v1}, Lasq;-><init>(Lcom/twitter/app/common/inject/m;)V

    return-object v0
.end method

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
    .line 47
    iget-object v0, p1, Lasq;->a:Lcom/twitter/app/common/inject/m;

    check-cast v0, Lasm;

    .line 48
    instance-of v1, v0, Lasi;

    if-eqz v1, :cond_0

    .line 49
    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasi;

    .line 50
    invoke-interface {v0}, Lasi;->b()V

    .line 52
    :cond_0
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
    .line 42
    iget-object v0, p1, Lasq;->a:Lcom/twitter/app/common/inject/m;

    check-cast v0, Lasm;

    iget-object v1, p0, Laso;->a:Lasr;

    invoke-interface {v1, p2}, Lasr;->a(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lasm;->a(Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Laso;->a:Lasr;

    invoke-interface {v0}, Lasr;->b()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Laso;->a:Lasr;

    invoke-interface {v0, p1}, Lasr;->b(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Laso;->b:Lasn;

    iget-object v1, p0, Laso;->a:Lasr;

    invoke-interface {v1, p1}, Lasr;->a(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lasn;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lasq;

    invoke-virtual {p0, p1, p2}, Laso;->a(Lasq;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0, p1, p2}, Laso;->a(Landroid/view/ViewGroup;I)Lasq;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lasq;

    invoke-virtual {p0, p1}, Laso;->a(Lasq;)V

    return-void
.end method
