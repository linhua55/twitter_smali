.class public Lcom/twitter/android/moments/ui/fullscreen/gj;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field protected a:Landroid/widget/RelativeLayout;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field protected b:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field protected c:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field protected d:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field protected e:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final f:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/gj;->f:Landroid/view/ViewGroup;

    .line 33
    return-void
.end method


# virtual methods
.method a()V
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gj;->a:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gj;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040202

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/gj;->f:Landroid/view/ViewGroup;

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gj;->f:Landroid/view/ViewGroup;

    const v1, 0x7f1304f6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gj;->a:Landroid/widget/RelativeLayout;

    .line 70
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gj;->f:Landroid/view/ViewGroup;

    const v1, 0x7f1301d6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gj;->b:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gj;->f:Landroid/view/ViewGroup;

    const v1, 0x7f1304f7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gj;->c:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gj;->f:Landroid/view/ViewGroup;

    const v1, 0x7f1304f8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gj;->d:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gj;->f:Landroid/view/ViewGroup;

    const v1, 0x7f1304f9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gj;->e:Landroid/widget/TextView;

    .line 75
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/model/core/ay;Ljava/lang/CharSequence;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 36
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/fullscreen/gj;->a()V

    .line 37
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gj;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 38
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gj;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gj;->b:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gj;->b:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/twitter/model/core/ay;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gj;->d:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gj;->d:Landroid/widget/TextView;

    const v2, 0x7f0a0a87

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/twitter/model/core/ay;->d:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gj;->c:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gj;->c:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/twitter/model/core/ay;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gj;->a:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/twitter/android/moments/ui/fullscreen/gk;

    invoke-direct {v2, p0, p1, v1}, Lcom/twitter/android/moments/ui/fullscreen/gk;-><init>(Lcom/twitter/android/moments/ui/fullscreen/gj;Lcom/twitter/model/core/ay;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gj;->e:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gj;->e:Landroid/widget/TextView;

    invoke-static {v0, p2}, Lcom/twitter/util/ui/q;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method
