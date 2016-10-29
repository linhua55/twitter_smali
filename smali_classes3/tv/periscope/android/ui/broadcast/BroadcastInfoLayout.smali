.class public Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;
.super Landroid/view/ViewGroup;
.source "Twttr"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/support/v7/widget/RecyclerView;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->a(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->a(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->a(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/n;->ps__broadcast_info_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 45
    sget v0, Ltv/periscope/android/library/l;->btn_play:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->a:Landroid/widget/ImageView;

    .line 46
    sget v0, Ltv/periscope/android/library/l;->title_view:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->e:Landroid/view/View;

    .line 47
    sget v0, Ltv/periscope/android/library/l;->broadcast_title:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->b:Landroid/widget/TextView;

    .line 48
    sget v0, Ltv/periscope/android/library/l;->broadcast_subtitle:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->c:Landroid/widget/TextView;

    .line 49
    sget v0, Ltv/periscope/android/library/l;->list:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->d:Landroid/support/v7/widget/RecyclerView;

    .line 50
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 51
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 52
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->d:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 53
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->d:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Ltv/periscope/android/ui/broadcast/ae;

    invoke-direct {v1, p0}, Ltv/periscope/android/ui/broadcast/ae;-><init>(Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 78
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->a:Landroid/widget/ImageView;

    sget v1, Ltv/periscope/android/library/k;->ps__ic_chat:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 173
    return-void
.end method

.method public canScrollVertically(I)Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 147
    sub-int v1, p4, p2

    .line 148
    sub-int v0, p5, p3

    .line 150
    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    .line 151
    sub-int/2addr v0, v2

    .line 153
    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->d:Landroid/support/v7/widget/RecyclerView;

    add-int/2addr v2, v0

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->layout(IIII)V

    .line 155
    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->e:Landroid/view/View;

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {v2, v4, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 158
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Ltv/periscope/android/library/j;->ps__activity_horizontal_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 159
    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    .line 160
    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->a:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    .line 162
    iget-object v4, p0, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->e:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 165
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Ltv/periscope/android/util/v;->a(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 166
    :goto_0
    div-int/lit8 v1, v3, 0x2

    sub-int v1, v4, v1

    .line 168
    iget-object v4, p0, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->a:Landroid/widget/ImageView;

    add-int/2addr v2, v0

    add-int/2addr v3, v1

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    .line 169
    return-void

    .line 165
    :cond_0
    sub-int v0, v1, v0

    sub-int/2addr v0, v2

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, p2}, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->measureChild(Landroid/view/View;II)V

    .line 132
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->e:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->measureChild(Landroid/view/View;II)V

    .line 135
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 136
    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 139
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v1, p1, v0}, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->measureChild(Landroid/view/View;II)V

    .line 141
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->getDefaultSize(II)I

    move-result v0

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->e:Landroid/view/View;

    .line 142
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 141
    invoke-virtual {p0, v0, v1}, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->setMeasuredDimension(II)V

    .line 143
    return-void
.end method

.method public setActionButtonVisibility(Z)V
    .locals 2

    .prologue
    .line 110
    if-eqz p1, :cond_0

    .line 111
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setAdapter(Ltv/periscope/android/ui/broadcast/a;)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 127
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    return-void
.end method

.method public setTitleAlpha(F)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 85
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 86
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 87
    return-void
.end method
