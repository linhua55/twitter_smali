.class public Lcom/twitter/android/moments/ui/fullscreen/hd;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/android/widget/ToggleImageButton;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/LinearLayout;

.field private final d:Lcom/twitter/android/widget/ToggleImageButton;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/widget/LinearLayout;

.field private final g:Landroid/content/res/Resources;

.field private final h:Lcom/twitter/android/moments/ui/fullscreen/ei;

.field private final i:Landroid/widget/ImageButton;

.field private final j:Lcom/twitter/android/moments/ui/animation/m;

.field private final k:Lcav;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Lcom/twitter/android/widget/ToggleImageButton;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/twitter/android/widget/ToggleImageButton;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Lcom/twitter/android/moments/ui/fullscreen/ei;Lcom/twitter/android/moments/ui/animation/m;Lcav;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/hd;->a:Lcom/twitter/android/widget/ToggleImageButton;

    .line 57
    iput-object p3, p0, Lcom/twitter/android/moments/ui/fullscreen/hd;->b:Landroid/widget/TextView;

    .line 58
    iput-object p4, p0, Lcom/twitter/android/moments/ui/fullscreen/hd;->c:Landroid/widget/LinearLayout;

    .line 59
    iput-object p5, p0, Lcom/twitter/android/moments/ui/fullscreen/hd;->d:Lcom/twitter/android/widget/ToggleImageButton;

    .line 60
    iput-object p6, p0, Lcom/twitter/android/moments/ui/fullscreen/hd;->e:Landroid/widget/TextView;

    .line 61
    iput-object p7, p0, Lcom/twitter/android/moments/ui/fullscreen/hd;->f:Landroid/widget/LinearLayout;

    .line 62
    iput-object p8, p0, Lcom/twitter/android/moments/ui/fullscreen/hd;->i:Landroid/widget/ImageButton;

    .line 63
    iput-object p11, p0, Lcom/twitter/android/moments/ui/fullscreen/hd;->k:Lcav;

    .line 64
    iput-object p10, p0, Lcom/twitter/android/moments/ui/fullscreen/hd;->j:Lcom/twitter/android/moments/ui/animation/m;

    .line 68
    iput-object p9, p0, Lcom/twitter/android/moments/ui/fullscreen/hd;->h:Lcom/twitter/android/moments/ui/fullscreen/ei;

    .line 69
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/hd;->g:Landroid/content/res/Resources;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/twitter/android/moments/ui/fullscreen/ei;Lcom/twitter/android/moments/ui/animation/m;Lcav;)V
    .locals 12

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v0, 0x7f13002d

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/widget/ToggleImageButton;

    const v0, 0x7f13048a

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v0, 0x7f130489

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v0, 0x7f130061

    .line 42
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/twitter/android/widget/ToggleImageButton;

    const v0, 0x7f1304a9

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v0, 0x7f1304a8

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    const v0, 0x7f130052

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    move-object v0, p0

    move-object v9, p2

    move-object v10, p3

    move-object/from16 v11, p4

    .line 38
    invoke-direct/range {v0 .. v11}, Lcom/twitter/android/moments/ui/fullscreen/hd;-><init>(Landroid/content/res/Resources;Lcom/twitter/android/widget/ToggleImageButton;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/twitter/android/widget/ToggleImageButton;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Lcom/twitter/android/moments/ui/fullscreen/ei;Lcom/twitter/android/moments/ui/animation/m;Lcav;)V

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/hd;)Lcom/twitter/android/moments/ui/fullscreen/ei;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hd;->h:Lcom/twitter/android/moments/ui/fullscreen/ei;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/fullscreen/hd;)Lcom/twitter/android/widget/ToggleImageButton;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hd;->a:Lcom/twitter/android/widget/ToggleImageButton;

    return-object v0
.end method

.method private b(Lcom/twitter/model/core/Tweet;)V
    .locals 4

    .prologue
    .line 85
    iget v0, p1, Lcom/twitter/model/core/Tweet;->k:I

    if-lez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hd;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hd;->g:Landroid/content/res/Resources;

    iget v2, p1, Lcom/twitter/model/core/Tweet;->k:I

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/twitter/util/s;->a(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hd;->a:Lcom/twitter/android/widget/ToggleImageButton;

    iget-boolean v1, p1, Lcom/twitter/model/core/Tweet;->a:Z

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ToggleImageButton;->setToggledOn(Z)V

    .line 92
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/hf;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/hf;-><init>(Lcom/twitter/android/moments/ui/fullscreen/hd;Lcom/twitter/model/core/Tweet;)V

    .line 108
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hd;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hd;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/twitter/android/moments/ui/fullscreen/hd;)Lcav;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hd;->k:Lcav;

    return-object v0
.end method

.method private c(Lcom/twitter/model/core/Tweet;)V
    .locals 4

    .prologue
    .line 112
    iget v0, p1, Lcom/twitter/model/core/Tweet;->h:I

    if-lez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hd;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hd;->g:Landroid/content/res/Resources;

    iget v2, p1, Lcom/twitter/model/core/Tweet;->h:I

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/twitter/util/s;->a(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hd;->d:Lcom/twitter/android/widget/ToggleImageButton;

    iget-boolean v1, p1, Lcom/twitter/model/core/Tweet;->c:Z

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ToggleImageButton;->setToggledOn(Z)V

    .line 119
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/hg;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/hg;-><init>(Lcom/twitter/android/moments/ui/fullscreen/hd;Lcom/twitter/model/core/Tweet;)V

    .line 125
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hd;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hd;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/twitter/android/moments/ui/fullscreen/hd;)Lcom/twitter/android/moments/ui/animation/m;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hd;->j:Lcom/twitter/android/moments/ui/animation/m;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hd;->k:Lcav;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hd;->k:Lcav;

    invoke-virtual {v0}, Lcav;->b()V

    .line 132
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/model/core/Tweet;)V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/hd;->b(Lcom/twitter/model/core/Tweet;)V

    .line 75
    invoke-direct {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/hd;->c(Lcom/twitter/model/core/Tweet;)V

    .line 76
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hd;->i:Landroid/widget/ImageButton;

    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/he;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/he;-><init>(Lcom/twitter/android/moments/ui/fullscreen/hd;Lcom/twitter/model/core/Tweet;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method
