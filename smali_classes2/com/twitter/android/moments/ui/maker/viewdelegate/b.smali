.class public Lcom/twitter/android/moments/ui/maker/viewdelegate/b;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/inject/m;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/support/v7/widget/RecyclerView;

.field private final c:Landroid/widget/LinearLayout;

.field private final d:Landroid/widget/TextView;

.field private final e:Lcom/twitter/ui/widget/TwitterButton;

.field private final f:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/LinearLayoutManager;Landroid/support/v7/widget/RecyclerView$ItemDecoration;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/twitter/ui/widget/TwitterButton;Landroid/widget/ProgressBar;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/b;->a:Landroid/view/View;

    .line 56
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/b;->b:Landroid/support/v7/widget/RecyclerView;

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 58
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/b;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 59
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/b;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p4}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 60
    iput-object p5, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/b;->c:Landroid/widget/LinearLayout;

    .line 61
    iput-object p6, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/b;->d:Landroid/widget/TextView;

    .line 62
    iput-object p7, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/b;->e:Lcom/twitter/ui/widget/TwitterButton;

    .line 63
    iput-object p8, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/b;->f:Landroid/widget/ProgressBar;

    .line 64
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/twitter/android/moments/ui/maker/viewdelegate/b;
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 33
    .line 34
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0401b6

    invoke-virtual {v0, v1, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 35
    const v0, 0x7f13048c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    .line 36
    new-instance v3, Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;

    invoke-direct {v3, p0, v4}, Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;-><init>(Landroid/content/Context;Z)V

    .line 38
    const v0, 0x7f13048d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 39
    const v0, 0x7f13048e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 40
    const v0, 0x7f13048f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/twitter/ui/widget/TwitterButton;

    .line 41
    const v0, 0x7f1304e5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0f02e3

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v9, 0x7f0f02e4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    .line 46
    new-instance v4, Lcom/twitter/internal/android/widget/aa;

    invoke-direct {v4, v0, v9}, Lcom/twitter/internal/android/widget/aa;-><init>(II)V

    .line 47
    new-instance v0, Lcom/twitter/android/moments/ui/maker/viewdelegate/b;

    invoke-direct/range {v0 .. v8}, Lcom/twitter/android/moments/ui/maker/viewdelegate/b;-><init>(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/LinearLayoutManager;Landroid/support/v7/widget/RecyclerView$ItemDecoration;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/twitter/ui/widget/TwitterButton;Landroid/widget/ProgressBar;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/b;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 74
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/b;->e:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, p1}, Lcom/twitter/ui/widget/TwitterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 87
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/b;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/b;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/b;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/b;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 91
    return-void
.end method

.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/b;->a:Landroid/view/View;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 81
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/b;->f:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/b;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/b;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 84
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 94
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/b;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/b;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/b;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 97
    return-void
.end method
