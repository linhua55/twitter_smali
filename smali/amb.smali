.class public Lamb;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/inject/m;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lcom/twitter/media/ui/image/MediaImageView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Lcom/twitter/ui/widget/BadgeView;

.field private final f:Lamc;

.field private final g:Lcom/twitter/android/moments/ui/guide/l;


# direct methods
.method public constructor <init>(Landroid/view/View;Lamc;Lcom/twitter/android/moments/ui/guide/l;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lamb;->a:Landroid/view/View;

    .line 43
    const v0, 0x7f1304dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    iput-object v0, p0, Lamb;->b:Lcom/twitter/media/ui/image/MediaImageView;

    .line 44
    const v0, 0x7f1304af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lamb;->c:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f1304b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lamb;->d:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f1304dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/BadgeView;

    iput-object v0, p0, Lamb;->e:Lcom/twitter/ui/widget/BadgeView;

    .line 47
    iput-object p2, p0, Lamb;->f:Lamc;

    .line 48
    iput-object p3, p0, Lamb;->g:Lcom/twitter/android/moments/ui/guide/l;

    .line 49
    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lamb;
    .locals 5

    .prologue
    .line 32
    const v0, 0x7f0401f1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 34
    invoke-static {v0}, Lamc;->a(Landroid/view/View;)Lamc;

    move-result-object v1

    .line 35
    new-instance v2, Lamb;

    new-instance v3, Lcom/twitter/android/moments/ui/guide/l;

    const v4, 0x7f1304db

    .line 36
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/twitter/android/moments/ui/guide/l;-><init>(Landroid/view/View;)V

    invoke-direct {v2, v0, v1, v3}, Lamb;-><init>(Landroid/view/View;Lamc;Lcom/twitter/android/moments/ui/guide/l;)V

    .line 35
    return-object v2
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lamb;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lamb;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method

.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lamb;->a:Landroid/view/View;

    return-object v0
.end method

.method public b()Lcom/twitter/ui/widget/BadgeView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lamb;->e:Lcom/twitter/ui/widget/BadgeView;

    return-object v0
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lamb;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lamb;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    return-void
.end method

.method public c()Lamc;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lamb;->f:Lamc;

    return-object v0
.end method

.method public d()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {}, Lcom/twitter/util/collection/au;->e()Lcom/twitter/util/collection/au;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lamb;->b:Lcom/twitter/media/ui/image/MediaImageView;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lamb;->c:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lamb;->d:Landroid/widget/TextView;

    aput-object v3, v1, v2

    .line 64
    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/au;->a([Ljava/lang/Object;)Lcom/twitter/util/collection/au;

    move-result-object v0

    iget-object v1, p0, Lamb;->f:Lamc;

    .line 65
    invoke-virtual {v1}, Lamc;->c()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/au;->b(Ljava/lang/Iterable;)Lcom/twitter/util/collection/au;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/twitter/util/collection/au;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 63
    return-object v0
.end method

.method public e()Lcom/twitter/media/ui/image/MediaImageView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lamb;->b:Lcom/twitter/media/ui/image/MediaImageView;

    return-object v0
.end method

.method public f()Lcom/twitter/android/moments/ui/a;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lamb;->g:Lcom/twitter/android/moments/ui/guide/l;

    return-object v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lamb;->e:Lcom/twitter/ui/widget/BadgeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/BadgeView;->setVisibility(I)V

    .line 81
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lamb;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    return-void
.end method
