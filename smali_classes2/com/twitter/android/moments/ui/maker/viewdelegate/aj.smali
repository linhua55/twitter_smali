.class public Lcom/twitter/android/moments/ui/maker/viewdelegate/aj;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/maker/viewdelegate/aa;


# instance fields
.field private final a:Landroid/support/v7/widget/RecyclerView$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/aj;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 160
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/aj;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/aj;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
