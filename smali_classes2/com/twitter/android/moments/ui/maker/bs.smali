.class public Lcom/twitter/android/moments/ui/maker/bs;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/maker/viewdelegate/s;


# instance fields
.field private final a:Lasp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lasp",
            "<",
            "Lcom/twitter/model/moments/viewmodels/m;",
            "Lcom/twitter/android/moments/ui/maker/bt;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Last;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Last",
            "<",
            "Lcom/twitter/model/moments/viewmodels/m;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/twitter/android/moments/data/maker/a;


# direct methods
.method public constructor <init>(Lasp;Last;Lcom/twitter/android/moments/data/maker/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lasp",
            "<",
            "Lcom/twitter/model/moments/viewmodels/m;",
            "Lcom/twitter/android/moments/ui/maker/bt;",
            ">;",
            "Last",
            "<",
            "Lcom/twitter/model/moments/viewmodels/m;",
            ">;",
            "Lcom/twitter/android/moments/data/maker/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/bs;->a:Lasp;

    .line 34
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/bs;->b:Last;

    .line 35
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/bs;->c:Lcom/twitter/android/moments/data/maker/a;

    .line 36
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 42
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    .line 43
    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/bs;->b:Last;

    invoke-virtual {v2, v0, v1}, Last;->a(II)V

    .line 44
    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/bs;->a:Lasp;

    invoke-virtual {v2, v0, v1}, Lasp;->a(II)V

    .line 45
    return-void
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 5

    .prologue
    .line 51
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    .line 55
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bs;->b:Last;

    invoke-virtual {v0, v1}, Last;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/m;

    .line 56
    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/m;->a()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/y;

    .line 57
    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/y;->s()J

    move-result-wide v2

    .line 59
    if-lez v1, :cond_2

    .line 60
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bs;->b:Last;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Last;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/m;

    .line 61
    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/m;->a()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/y;

    .line 62
    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/y;->s()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/twitter/model/moments/maker/aj;->b(J)Lcom/twitter/model/moments/maker/aj;

    move-result-object v0

    move-object v1, v0

    .line 68
    :goto_1
    iget-object v4, p0, Lcom/twitter/android/moments/ui/maker/bs;->c:Lcom/twitter/android/moments/data/maker/a;

    new-instance v0, Lcom/twitter/model/moments/maker/u;

    invoke-direct {v0}, Lcom/twitter/model/moments/maker/u;-><init>()V

    .line 69
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/moments/maker/u;->a(J)Lcom/twitter/model/moments/maker/ap;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/u;

    .line 70
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/maker/u;->a(Lcom/twitter/model/moments/maker/aj;)Lcom/twitter/model/moments/maker/ad;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/u;

    .line 71
    invoke-virtual {v0}, Lcom/twitter/model/moments/maker/u;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/w;

    .line 68
    invoke-virtual {v4, v0}, Lcom/twitter/android/moments/data/maker/a;->a(Lcom/twitter/model/moments/maker/w;)V

    goto :goto_0

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bs;->b:Last;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Last;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/m;

    .line 65
    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/m;->a()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/y;

    .line 66
    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/y;->s()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/twitter/model/moments/maker/aj;->a(J)Lcom/twitter/model/moments/maker/aj;

    move-result-object v0

    move-object v1, v0

    goto :goto_1
.end method
