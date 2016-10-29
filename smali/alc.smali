.class public Lalc;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private final b:Lcom/twitter/android/moments/ui/fullscreen/cn;

.field private final c:Landroid/view/View;

.field private final d:Landroid/view/View;

.field private final e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lalc;->a:Landroid/view/ViewGroup;

    .line 42
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/cn;

    invoke-direct {v0, p1}, Lcom/twitter/android/moments/ui/fullscreen/cn;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lalc;->b:Lcom/twitter/android/moments/ui/fullscreen/cn;

    .line 43
    const v0, 0x7f1304ac

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lalc;->c:Landroid/view/View;

    .line 44
    const v0, 0x7f130500

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lalc;->d:Landroid/view/View;

    .line 45
    const v0, 0x7f130273

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lalc;->e:Landroid/widget/TextView;

    .line 46
    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;)Lalc;
    .locals 3

    .prologue
    .line 36
    const v0, 0x7f0401e1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 37
    new-instance v1, Lalc;

    invoke-direct {v1, v0}, Lalc;-><init>(Landroid/view/ViewGroup;)V

    return-object v1
.end method


# virtual methods
.method public a()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lalc;->a:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lalc;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method

.method public a(Lcom/twitter/model/moments/bd;)V
    .locals 2

    .prologue
    .line 53
    iget v0, p1, Lcom/twitter/model/moments/bd;->c:I

    .line 54
    iget-object v1, p0, Lalc;->b:Lcom/twitter/android/moments/ui/fullscreen/cn;

    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/fullscreen/cn;->b()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    iget-object v1, p0, Lalc;->b:Lcom/twitter/android/moments/ui/fullscreen/cn;

    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/fullscreen/cn;->c()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v1}, Lcom/twitter/util/ui/h;->g(IF)I

    move-result v0

    .line 59
    iget-object v1, p0, Lalc;->b:Lcom/twitter/android/moments/ui/fullscreen/cn;

    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/fullscreen/cn;->d()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    iget-object v1, p0, Lalc;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    iget-object v0, p0, Lalc;->a:Landroid/view/ViewGroup;

    iget v1, p1, Lcom/twitter/model/moments/bd;->b:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 62
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lalc;->b:Lcom/twitter/android/moments/ui/fullscreen/cn;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/cn;->b()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lalc;->e:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/twitter/util/ui/q;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 86
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/twitter/media/request/c;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lalc;->b:Lcom/twitter/android/moments/ui/fullscreen/cn;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/cn;->a()Lcom/twitter/library/media/widget/UserImageView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/twitter/library/media/widget/UserImageView;->a(Ljava/lang/String;Lcom/twitter/media/request/c;)Z

    .line 82
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 49
    iget-object v1, p0, Lalc;->c:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 50
    return-void

    .line 49
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public b()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lalc;->b:Lcom/twitter/android/moments/ui/fullscreen/cn;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/cn;->b()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lalc;->b:Lcom/twitter/android/moments/ui/fullscreen/cn;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/cn;->a()Lcom/twitter/library/media/widget/UserImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/library/media/widget/UserImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lalc;->b:Lcom/twitter/android/moments/ui/fullscreen/cn;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/cn;->c()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lalc;->b:Lcom/twitter/android/moments/ui/fullscreen/cn;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/cn;->d()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lalc;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lalc;->b:Lcom/twitter/android/moments/ui/fullscreen/cn;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/cn;->c()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method

.method public b(Z)V
    .locals 3

    .prologue
    const/16 v2, 0xc8

    .line 105
    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lalc;->d:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/twitter/util/d;->b(Landroid/view/View;I)Landroid/view/ViewPropertyAnimator;

    .line 111
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-static {}, Lcwp;->b()Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lalc;->d:Landroid/view/View;

    invoke-static {v1, v2, v0}, Lcom/twitter/util/d;->a(Landroid/view/View;ILandroid/view/animation/Interpolator;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lalc;->b:Lcom/twitter/android/moments/ui/fullscreen/cn;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/cn;->d()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method
