.class abstract Lcom/twitter/android/moments/ui/guide/v;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/guide/az;
.implements Lcom/twitter/util/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/android/moments/viewmodels/MomentModule;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/twitter/android/moments/ui/guide/az;",
        "Lcom/twitter/util/y",
        "<",
        "Lcom/twitter/model/moments/ad;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Lcom/twitter/android/moments/data/h;

.field protected final c:Landroid/view/ViewGroup;

.field protected final c_:Lcom/twitter/android/moments/ui/guide/s;

.field protected final d:Landroid/view/View;

.field protected final e:Landroid/widget/TextView;

.field protected final f:Landroid/widget/TextView;

.field protected final g:Lcom/twitter/ui/widget/BadgeView;

.field protected final h:Landroid/view/LayoutInflater;

.field protected final i:Lcom/twitter/android/moments/ui/guide/h;

.field protected final k:Lcom/twitter/android/moments/data/q;

.field private final l:Lcom/twitter/android/moments/ui/guide/q;

.field private final m:Lcom/twitter/android/moments/ui/guide/i;

.field private final n:Lcom/twitter/android/moments/data/bg;

.field private final o:Lamc;

.field private final p:Lcom/twitter/android/moments/data/ap;

.field private q:Lcom/twitter/model/moments/ad;


# direct methods
.method constructor <init>(Landroid/content/Context;Lamc;Lcom/twitter/android/moments/ui/guide/s;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/twitter/android/moments/ui/guide/h;Lcom/twitter/android/moments/data/q;Lcom/twitter/android/moments/data/q;Lcom/twitter/android/moments/data/ae;Lahn;Lcom/twitter/android/moments/data/bo;Lcom/twitter/android/moments/ui/guide/q;)V
    .locals 8

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/twitter/android/moments/ui/guide/v;->a:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/twitter/android/moments/ui/guide/v;->o:Lamc;

    .line 69
    iput-object p3, p0, Lcom/twitter/android/moments/ui/guide/v;->c_:Lcom/twitter/android/moments/ui/guide/s;

    .line 70
    iput-object p4, p0, Lcom/twitter/android/moments/ui/guide/v;->h:Landroid/view/LayoutInflater;

    .line 71
    iput-object p5, p0, Lcom/twitter/android/moments/ui/guide/v;->c:Landroid/view/ViewGroup;

    .line 72
    iput-object p6, p0, Lcom/twitter/android/moments/ui/guide/v;->i:Lcom/twitter/android/moments/ui/guide/h;

    .line 73
    iput-object p7, p0, Lcom/twitter/android/moments/ui/guide/v;->k:Lcom/twitter/android/moments/data/q;

    .line 74
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/twitter/android/moments/ui/guide/v;->l:Lcom/twitter/android/moments/ui/guide/q;

    .line 75
    iget-object v2, p0, Lcom/twitter/android/moments/ui/guide/v;->c:Landroid/view/ViewGroup;

    const v3, 0x7f1304af

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/twitter/android/moments/ui/guide/v;->e:Landroid/widget/TextView;

    .line 76
    iget-object v2, p0, Lcom/twitter/android/moments/ui/guide/v;->c:Landroid/view/ViewGroup;

    const v3, 0x7f1304b1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/twitter/android/moments/ui/guide/v;->f:Landroid/widget/TextView;

    .line 77
    iget-object v2, p0, Lcom/twitter/android/moments/ui/guide/v;->c:Landroid/view/ViewGroup;

    const v3, 0x7f1304dc

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/twitter/ui/widget/BadgeView;

    iput-object v2, p0, Lcom/twitter/android/moments/ui/guide/v;->g:Lcom/twitter/ui/widget/BadgeView;

    .line 78
    iget-object v2, p0, Lcom/twitter/android/moments/ui/guide/v;->c:Landroid/view/ViewGroup;

    const v3, 0x7f1304e0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/moments/ui/guide/v;->d:Landroid/view/View;

    .line 79
    iget-object v2, p0, Lcom/twitter/android/moments/ui/guide/v;->c:Landroid/view/ViewGroup;

    const v3, 0x7f1304e1

    .line 80
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/moments/ui/guide/BadgeableRichImageView;

    .line 81
    new-instance v3, Laio;

    iget-object v4, p0, Lcom/twitter/android/moments/ui/guide/v;->c:Landroid/view/ViewGroup;

    invoke-direct {v3, v4}, Laio;-><init>(Landroid/view/View;)V

    .line 82
    new-instance v4, Lcom/twitter/android/moments/data/h;

    move-object/from16 v0, p9

    move-object/from16 v1, p10

    invoke-direct {v4, v3, v0, v1}, Lcom/twitter/android/moments/data/h;-><init>(Laio;Lcom/twitter/android/moments/data/ae;Lahp;)V

    iput-object v4, p0, Lcom/twitter/android/moments/ui/guide/v;->b:Lcom/twitter/android/moments/data/h;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/moments/ui/guide/v;->c:Landroid/view/ViewGroup;

    const v5, 0x7f1304bc

    const v6, 0x7f1304bd

    .line 84
    invoke-static {v3, v4, v5, v6}, Laiv;->a(Landroid/content/res/Resources;Landroid/view/View;II)Laip;

    move-result-object v3

    .line 86
    new-instance v4, Lcom/twitter/android/moments/data/bg;

    new-instance v5, Laiu;

    invoke-direct {v5, v3}, Laiu;-><init>(Laip;)V

    move-object/from16 v0, p11

    invoke-direct {v4, v5, v0}, Lcom/twitter/android/moments/data/bg;-><init>(Laiu;Lcom/twitter/android/moments/data/bo;)V

    iput-object v4, p0, Lcom/twitter/android/moments/ui/guide/v;->n:Lcom/twitter/android/moments/data/bg;

    .line 87
    new-instance v3, Lcom/twitter/android/moments/ui/guide/i;

    iget-object v4, p0, Lcom/twitter/android/moments/ui/guide/v;->k:Lcom/twitter/android/moments/data/q;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/twitter/android/moments/ui/guide/az;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/twitter/android/moments/ui/guide/v;->n:Lcom/twitter/android/moments/data/bg;

    aput-object v7, v5, v6

    .line 88
    invoke-static {p0, v5}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p8

    invoke-direct {v3, v2, v4, v0, v5}, Lcom/twitter/android/moments/ui/guide/i;-><init>(Lcom/twitter/android/moments/ui/a;Lcom/twitter/android/moments/data/q;Lcom/twitter/android/moments/data/q;Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/twitter/android/moments/ui/guide/v;->m:Lcom/twitter/android/moments/ui/guide/i;

    .line 89
    new-instance v2, Lcom/twitter/android/moments/data/ar;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/guide/v;->c:Landroid/view/ViewGroup;

    const v4, 0x7f1304d8

    .line 90
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/twitter/android/moments/data/ar;-><init>(Landroid/view/View;)V

    .line 91
    new-instance v3, Lcom/twitter/android/moments/data/ap;

    move-object/from16 v0, p12

    move-object/from16 v1, p10

    invoke-direct {v3, v2, v0, v1}, Lcom/twitter/android/moments/data/ap;-><init>(Lcom/twitter/android/moments/data/ar;Lcom/twitter/android/moments/ui/guide/q;Lahl;)V

    iput-object v3, p0, Lcom/twitter/android/moments/ui/guide/v;->p:Lcom/twitter/android/moments/data/ap;

    .line 93
    return-void
.end method

.method private a(Lcrc;)V
    .locals 2

    .prologue
    .line 137
    if-eqz p1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/v;->d:Landroid/view/View;

    const v1, 0x7f020089

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 139
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/v;->n:Lcom/twitter/android/moments/data/bg;

    invoke-virtual {v0, p1}, Lcom/twitter/android/moments/data/bg;->a(Lcrc;)V

    .line 144
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/v;->d:Landroid/view/View;

    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 142
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/v;->n:Lcom/twitter/android/moments/data/bg;

    invoke-virtual {v0}, Lcom/twitter/android/moments/data/bg;->a()V

    goto :goto_0
.end method

.method private b(Lcom/twitter/model/moments/ad;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 111
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/v;->e:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/twitter/model/moments/ad;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/v;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/v;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/twitter/android/moments/data/ag;->a(Landroid/content/res/Resources;Lcom/twitter/model/moments/ad;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/v;->o:Lamc;

    invoke-virtual {v0, p1}, Lamc;->a(Lcom/twitter/model/moments/ad;)V

    .line 115
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/v;->b:Lcom/twitter/android/moments/data/h;

    invoke-virtual {v0, p1}, Lcom/twitter/android/moments/data/h;->a(Lcom/twitter/model/moments/ad;)V

    .line 116
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/v;->b:Lcom/twitter/android/moments/data/h;

    new-instance v1, Lcom/twitter/android/moments/ui/guide/w;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/guide/w;-><init>(Lcom/twitter/android/moments/ui/guide/v;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/data/h;->a(Lcom/twitter/android/moments/data/k;)V

    .line 124
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/v;->c_:Lcom/twitter/android/moments/ui/guide/s;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/v;->b:Lcom/twitter/android/moments/data/h;

    invoke-virtual {v1}, Lcom/twitter/android/moments/data/h;->b()Lcom/twitter/ui/widget/ToggleTwitterButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/guide/s;->a(Landroid/view/View;)V

    .line 126
    invoke-virtual {p1}, Lcom/twitter/model/moments/ad;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/v;->g:Lcom/twitter/ui/widget/BadgeView;

    const v1, 0x7f020483

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/twitter/android/moments/ui/h;->a(Lcom/twitter/model/moments/ad;Lcom/twitter/ui/widget/BadgeView;IZ)V

    .line 129
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/v;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/v;->g:Lcom/twitter/ui/widget/BadgeView;

    invoke-virtual {v0, v3}, Lcom/twitter/ui/widget/BadgeView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/v;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/v;->b:Lcom/twitter/android/moments/data/h;

    invoke-virtual {v0}, Lcom/twitter/android/moments/data/h;->a()V

    .line 161
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/v;->n:Lcom/twitter/android/moments/data/bg;

    invoke-virtual {v0}, Lcom/twitter/android/moments/data/bg;->a()V

    .line 162
    return-void
.end method

.method public a(Lcom/twitter/android/moments/viewmodels/MomentModule;)V
    .locals 4

    .prologue
    .line 102
    invoke-virtual {p1}, Lcom/twitter/android/moments/viewmodels/MomentModule;->b()Lcom/twitter/model/moments/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/guide/v;->q:Lcom/twitter/model/moments/ad;

    .line 103
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/v;->q:Lcom/twitter/model/moments/ad;

    invoke-direct {p0, v0}, Lcom/twitter/android/moments/ui/guide/v;->b(Lcom/twitter/model/moments/ad;)V

    .line 104
    invoke-virtual {p1}, Lcom/twitter/android/moments/viewmodels/MomentModule;->d()Lcrc;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/moments/ui/guide/v;->a(Lcrc;)V

    .line 105
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/v;->p:Lcom/twitter/android/moments/data/ap;

    invoke-virtual {v0, p1}, Lcom/twitter/android/moments/data/ap;->a(Lcom/twitter/android/moments/viewmodels/MomentModule;)V

    .line 107
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/v;->m:Lcom/twitter/android/moments/ui/guide/i;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/v;->q:Lcom/twitter/model/moments/ad;

    iget-wide v2, v1, Lcom/twitter/model/moments/ad;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/moments/ui/guide/i;->a(J)V

    .line 108
    return-void
.end method

.method public a(Lcom/twitter/model/moments/ad;)V
    .locals 4

    .prologue
    .line 148
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/v;->q:Lcom/twitter/model/moments/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/v;->q:Lcom/twitter/model/moments/ad;

    iget-wide v0, v0, Lcom/twitter/model/moments/ad;->b:J

    iget-wide v2, p1, Lcom/twitter/model/moments/ad;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 149
    iput-object p1, p0, Lcom/twitter/android/moments/ui/guide/v;->q:Lcom/twitter/model/moments/ad;

    .line 150
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/v;->q:Lcom/twitter/model/moments/ad;

    invoke-direct {p0, v0}, Lcom/twitter/android/moments/ui/guide/v;->b(Lcom/twitter/model/moments/ad;)V

    .line 152
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Lcom/twitter/model/moments/ad;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/guide/v;->a(Lcom/twitter/model/moments/ad;)V

    return-void
.end method

.method public b()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/v;->e:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/moments/ui/guide/v;->f:Landroid/widget/TextView;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/twitter/util/collection/au;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/android/moments/ui/guide/q;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/v;->l:Lcom/twitter/android/moments/ui/guide/q;

    return-object v0
.end method
