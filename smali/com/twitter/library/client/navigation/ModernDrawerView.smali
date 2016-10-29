.class public Lcom/twitter/library/client/navigation/ModernDrawerView;
.super Landroid/support/design/internal/ScrimInsetsFrameLayout;
.source "Twttr"

# interfaces
.implements Lcza;


# instance fields
.field private final a:Lcyu;

.field private final b:Lcyn;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/library/client/navigation/ModernDrawerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 34
    sget v0, Lbjs;->drawerViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/library/client/navigation/ModernDrawerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/internal/ScrimInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v0, Lcyn;

    invoke-direct {v0}, Lcyn;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/client/navigation/ModernDrawerView;->b:Lcyn;

    .line 41
    iget-object v0, p0, Lcom/twitter/library/client/navigation/ModernDrawerView;->b:Lcyn;

    invoke-virtual {v0, p0}, Lcyn;->a(Lcza;)V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 44
    sget v1, Lbju;->design_navigation_separator_vertical_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 45
    sget v1, Lbju;->design_navigation_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 46
    sget v1, Lbju;->design_navigation_padding_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 47
    sget-object v1, Lbkc;->NavigationView:[I

    invoke-virtual {p1, p2, v1, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 48
    new-instance v7, Landroid/widget/ListView;

    invoke-direct {v7, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 51
    sget v1, Lbkc;->NavigationView_headerLayout:I

    invoke-virtual {v6, v1, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 53
    if-nez v1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ModernDrawerView requires a header view."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    invoke-virtual {v1, v9, v9, v9, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 57
    new-instance v8, Lcom/twitter/library/client/navigation/h;

    .line 58
    invoke-static {}, Lcom/twitter/app/common/account/d;->a()Lcom/twitter/app/common/account/d;

    move-result-object v4

    invoke-direct {v8, p1, v4, v1}, Lcom/twitter/library/client/navigation/h;-><init>(Landroid/content/Context;Lcom/twitter/app/common/account/d;Landroid/view/View;)V

    .line 59
    invoke-interface {v8, v7}, Lcyw;->a(Landroid/widget/ListView;)V

    .line 62
    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 63
    invoke-virtual {v7, v9, v9, v9, v0}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 64
    new-instance v0, Lcom/twitter/library/client/navigation/a;

    sget v1, Lbkc;->NavigationView_itemTextColor:I

    .line 65
    invoke-virtual {v6, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    sget v1, Lbkc;->NavigationView_itemIconTint:I

    .line 66
    invoke-virtual {v6, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/twitter/library/client/navigation/a;-><init>(Landroid/content/Context;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 67
    new-instance v1, Lcom/twitter/library/client/navigation/j;

    invoke-direct {v1, v7, v0}, Lcom/twitter/library/client/navigation/j;-><init>(Landroid/widget/ListView;Lcom/twitter/library/client/navigation/a;)V

    .line 71
    invoke-static {}, Lcom/twitter/app/common/account/d;->a()Lcom/twitter/app/common/account/d;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/library/client/navigation/ModernDrawerView;->b:Lcyn;

    invoke-static {p1, v0, v1, v8, v2}, Lcom/twitter/library/client/navigation/k;->a(Landroid/content/Context;Lcom/twitter/app/common/account/d;Lcyy;Lcyw;Lcyn;)Lcom/twitter/library/client/navigation/k;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/client/navigation/ModernDrawerView;->a:Lcyu;

    .line 73
    iget-object v0, p0, Lcom/twitter/library/client/navigation/ModernDrawerView;->a:Lcyu;

    invoke-interface {v0}, Lcyu;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/client/navigation/ModernDrawerView;->addView(Landroid/view/View;)V

    .line 75
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    return-void
.end method


# virtual methods
.method public a(I)Lcym;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/twitter/library/client/navigation/ModernDrawerView;->b:Lcyn;

    invoke-virtual {v0, p1}, Lcyn;->a(I)Lcym;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/twitter/library/client/navigation/ModernDrawerView;->a:Lcyu;

    invoke-interface {v0}, Lcyu;->e()V

    .line 99
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcym;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/twitter/library/client/navigation/ModernDrawerView;->b:Lcyn;

    invoke-virtual {v0, p1}, Lcyn;->a(Ljava/util/List;)V

    .line 84
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/twitter/library/client/navigation/ModernDrawerView;->a:Lcyu;

    invoke-interface {v0}, Lcyu;->e()V

    .line 103
    return-void
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/twitter/library/client/navigation/ModernDrawerView;->a:Lcyu;

    invoke-interface {v0}, Lcyu;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setOnDrawerClickListener(Lcyz;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/twitter/library/client/navigation/ModernDrawerView;->a:Lcyu;

    invoke-interface {v0, p1}, Lcyu;->a(Lcyz;)V

    .line 80
    return-void
.end method
