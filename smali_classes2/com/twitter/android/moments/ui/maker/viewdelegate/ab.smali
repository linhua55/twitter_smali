.class public Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/inject/m;


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/ImageView;

.field private final c:Landroid/view/View;

.field private final d:Landroid/support/v4/widget/Space;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/support/v4/widget/Space;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->c:Landroid/view/View;

    .line 50
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->a:Landroid/widget/TextView;

    .line 51
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->b:Landroid/widget/ImageView;

    .line 52
    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->d:Landroid/support/v4/widget/Space;

    .line 53
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;
    .locals 1

    .prologue
    .line 28
    const v0, 0x7f0401b9

    invoke-static {p0, v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->a(Landroid/view/ViewGroup;I)Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/view/ViewGroup;I)Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 39
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 40
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 41
    const v0, 0x7f130495

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 42
    const v1, 0x7f13027f

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 43
    const v2, 0x7f130494

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/Space;

    .line 44
    new-instance v4, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;

    invoke-direct {v4, v3, v0, v1, v2}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;-><init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/support/v4/widget/Space;)V

    return-object v4
.end method

.method public static b(Landroid/view/ViewGroup;)Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;
    .locals 1

    .prologue
    .line 33
    const v0, 0x7f0401ba

    invoke-static {p0, v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->a(Landroid/view/ViewGroup;I)Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->b:Landroid/widget/ImageView;

    .line 75
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 76
    :goto_0
    iget-object v3, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->a:Landroid/widget/TextView;

    .line 77
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 78
    :goto_1
    iget-object v3, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->d:Landroid/support/v4/widget/Space;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    :goto_2
    invoke-virtual {v3, v2}, Landroid/support/v4/widget/Space;->setVisibility(I)V

    .line 79
    return-void

    :cond_0
    move v0, v2

    .line 75
    goto :goto_0

    :cond_1
    move v1, v2

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    const/16 v2, 0x8

    goto :goto_2
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 61
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->d()V

    .line 63
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->d()V

    .line 58
    return-void
.end method

.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->c:Landroid/view/View;

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    return-void
.end method
