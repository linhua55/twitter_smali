.class public Lcom/twitter/android/moments/ui/maker/bf;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/inject/m;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Lcom/twitter/android/moments/ui/maker/viewdelegate/ac;

.field private final f:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/twitter/android/moments/ui/maker/viewdelegate/ac;Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/bf;->a:Landroid/view/View;

    .line 48
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/bf;->b:Landroid/widget/TextView;

    .line 49
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/bf;->c:Landroid/widget/TextView;

    .line 50
    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/bf;->d:Landroid/widget/TextView;

    .line 51
    iput-object p5, p0, Lcom/twitter/android/moments/ui/maker/bf;->e:Lcom/twitter/android/moments/ui/maker/viewdelegate/ac;

    .line 52
    iput-object p6, p0, Lcom/twitter/android/moments/ui/maker/bf;->f:Landroid/content/res/Resources;

    .line 53
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/twitter/android/moments/ui/maker/bf;
    .locals 7

    .prologue
    .line 32
    .line 33
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040193

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 34
    const v0, 0x7f13045e

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 35
    const v2, 0x7f13018b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 36
    const v3, 0x7f13045f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 37
    const v0, 0x7f13045d

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 39
    invoke-static {v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ac;->a(Landroid/view/ViewGroup;)Lcom/twitter/android/moments/ui/maker/viewdelegate/ac;

    move-result-object v5

    .line 40
    new-instance v0, Lcom/twitter/android/moments/ui/maker/bf;

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/moments/ui/maker/bf;-><init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/twitter/android/moments/ui/maker/viewdelegate/ac;Landroid/content/res/Resources;)V

    .line 40
    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 78
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bf;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 79
    return-void
.end method

.method public a(II)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 68
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bf;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/bf;->f:Landroid/content/res/Resources;

    const v2, 0x7f0a04fd

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bf;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bf;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bf;->a:Landroid/view/View;

    return-object v0
.end method

.method public b()Lcom/twitter/android/moments/ui/maker/viewdelegate/ac;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bf;->e:Lcom/twitter/android/moments/ui/maker/viewdelegate/ac;

    return-object v0
.end method

.method public b(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 82
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bf;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 83
    return-void
.end method

.method public b(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bf;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bf;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    return-void
.end method
