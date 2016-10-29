.class public Lakf;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/fullscreen/gn;


# instance fields
.field private final b:Landroid/widget/FrameLayout;

.field private final c:Lcom/twitter/android/widget/bn;

.field private final d:Lcom/twitter/android/moments/ui/fullscreen/bl;

.field private final e:Landroid/view/View;

.field private final f:Landroid/view/View;

.field private final g:Landroid/view/View;

.field private final h:Lrx/subjects/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/e",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/view/ViewGroup;

.field private final j:Landroid/widget/TextView;

.field private final k:Lcav;


# direct methods
.method constructor <init>(Landroid/widget/FrameLayout;Lcom/twitter/android/widget/bn;Lcom/twitter/android/moments/ui/fullscreen/bl;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/TextView;Lcav;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lakf;->b:Landroid/widget/FrameLayout;

    .line 70
    iput-object p2, p0, Lakf;->c:Lcom/twitter/android/widget/bn;

    .line 71
    iput-object p3, p0, Lakf;->d:Lcom/twitter/android/moments/ui/fullscreen/bl;

    .line 72
    iput-object p4, p0, Lakf;->e:Landroid/view/View;

    .line 73
    iput-object p5, p0, Lakf;->f:Landroid/view/View;

    .line 74
    iput-object p6, p0, Lakf;->g:Landroid/view/View;

    .line 75
    iput-object p7, p0, Lakf;->i:Landroid/view/ViewGroup;

    .line 76
    iput-object p8, p0, Lakf;->j:Landroid/widget/TextView;

    .line 77
    iput-object p9, p0, Lakf;->k:Lcav;

    .line 78
    invoke-static {}, Lrx/subjects/e;->q()Lrx/subjects/e;

    move-result-object v0

    iput-object v0, p0, Lakf;->h:Lrx/subjects/e;

    .line 79
    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;)Lakf;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 40
    const v0, 0x7f0401e4

    .line 41
    invoke-virtual {p0, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 42
    new-instance v2, Lcom/twitter/android/widget/bn;

    invoke-direct {v2, v1}, Lcom/twitter/android/widget/bn;-><init>(Landroid/view/ViewGroup;)V

    .line 43
    const v0, 0x7f1304d0

    .line 44
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 45
    const v3, 0x7f130405

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 47
    invoke-static {}, Lcey;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v9, Lcav;

    invoke-direct {v9, v0}, Lcav;-><init>(Landroid/widget/FrameLayout;)V

    .line 49
    :cond_0
    new-instance v3, Lcom/twitter/android/moments/ui/fullscreen/gr;

    .line 50
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v3, v5, v0, v4}, Lcom/twitter/android/moments/ui/fullscreen/gr;-><init>(Landroid/content/res/Resources;Landroid/view/View;Landroid/view/View;)V

    .line 52
    const v0, 0x7f1304ac

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 53
    const v0, 0x7f1304d1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 54
    const v0, 0x7f1304ae

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 55
    const v0, 0x7f1304cf

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 56
    const v0, 0x7f130273

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 57
    new-instance v0, Lakf;

    invoke-direct/range {v0 .. v9}, Lakf;-><init>(Landroid/widget/FrameLayout;Lcom/twitter/android/widget/bn;Lcom/twitter/android/moments/ui/fullscreen/bl;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/TextView;Lcav;)V

    return-object v0
.end method


# virtual methods
.method public a()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lakf;->c:Lcom/twitter/android/widget/bn;

    invoke-virtual {v0}, Lcom/twitter/android/widget/bn;->b()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lakf;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lakf;->c:Lcom/twitter/android/widget/bn;

    invoke-virtual {v0}, Lcom/twitter/android/widget/bn;->b()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/twitter/util/ui/q;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 98
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 109
    iget-object v1, p0, Lakf;->e:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 110
    return-void

    .line 109
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public b()Lrx/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/o",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lakf;->g:Landroid/view/View;

    invoke-static {v0}, Ldcx;->a(Landroid/view/View;)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Lakf;->g:Landroid/view/View;

    .line 142
    invoke-virtual {v0, v1}, Lrx/o;->d(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Lakf;->h:Lrx/subjects/e;

    .line 143
    invoke-virtual {v0, v1}, Lrx/o;->g(Lrx/o;)Lrx/o;

    move-result-object v0

    new-instance v1, Lakg;

    invoke-direct {v1, p0}, Lakg;-><init>(Lakf;)V

    .line 144
    invoke-virtual {v0, v1}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lrx/o;->h()Lrx/o;

    move-result-object v0

    .line 141
    return-object v0
.end method

.method public b(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lakf;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lakf;->c:Lcom/twitter/android/widget/bn;

    invoke-virtual {v0}, Lcom/twitter/android/widget/bn;->c()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method

.method public c()Lcom/twitter/android/moments/ui/fullscreen/bl;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lakf;->d:Lcom/twitter/android/moments/ui/fullscreen/bl;

    return-object v0
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lakf;->c:Lcom/twitter/android/widget/bn;

    invoke-virtual {v0}, Lcom/twitter/android/widget/bn;->d()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    return-void
.end method

.method public d()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lakf;->i:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public d(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lakf;->j:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/twitter/util/ui/q;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 118
    return-void
.end method

.method public e()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lakf;->b:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public f()Lcav;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lakf;->k:Lcav;

    return-object v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lakf;->h:Lrx/subjects/e;

    iget-object v1, p0, Lakf;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Lrx/subjects/e;->b_(Ljava/lang/Object;)V

    .line 136
    return-void
.end method
