.class public Lcom/twitter/android/moments/ui/maker/viewdelegate/m;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/inject/m;


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private final b:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/GridLayoutManager;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/m;->a:Landroid/view/ViewGroup;

    .line 34
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/m;->b:Landroid/support/v7/widget/RecyclerView;

    .line 35
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/m;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 36
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/twitter/android/moments/ui/maker/viewdelegate/m;
    .locals 5

    .prologue
    .line 25
    .line 26
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0401c1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 27
    const v1, 0x7f1304a3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    .line 28
    new-instance v2, Lcom/twitter/android/moments/ui/maker/viewdelegate/m;

    new-instance v3, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v0, v1, v3}, Lcom/twitter/android/moments/ui/maker/viewdelegate/m;-><init>(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/GridLayoutManager;)V

    return-object v2
.end method


# virtual methods
.method public a(Lasp;)V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/m;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Lasp;->b()Laso;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 46
    return-void
.end method

.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/m;->a:Landroid/view/ViewGroup;

    return-object v0
.end method
