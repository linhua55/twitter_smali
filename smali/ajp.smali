.class public Lajp;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private final b:Landroid/view/ViewGroup;

.field private final c:Lcom/twitter/android/moments/ui/fullscreen/bx;

.field private final d:Lamc;

.field private final e:Landroid/view/View;

.field private final f:Landroid/view/View;

.field private final g:Landroid/widget/TextView;

.field private final h:Landroid/widget/TextView;

.field private i:Landroid/view/View$OnClickListener;

.field private j:Landroid/animation/ObjectAnimator;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Landroid/view/ViewGroup;Lcom/twitter/android/moments/ui/fullscreen/bx;Lamc;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 4

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lajp;->a:Landroid/content/res/Resources;

    .line 66
    iput-object p2, p0, Lajp;->b:Landroid/view/ViewGroup;

    .line 67
    iput-object p3, p0, Lajp;->c:Lcom/twitter/android/moments/ui/fullscreen/bx;

    .line 68
    iput-object p4, p0, Lajp;->d:Lamc;

    .line 69
    iput-object p5, p0, Lajp;->e:Landroid/view/View;

    .line 70
    iput-object p7, p0, Lajp;->f:Landroid/view/View;

    .line 71
    iput-object p6, p0, Lajp;->g:Landroid/widget/TextView;

    .line 72
    iput-object p8, p0, Lajp;->h:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lajp;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lajp;->a:Landroid/content/res/Resources;

    const v2, 0x7f120170

    .line 74
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lajp;->a:Landroid/content/res/Resources;

    const v3, 0x7f120171

    .line 75
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/16 v3, 0x4b0

    .line 73
    invoke-static {v0, v1, v2, v3}, Lcom/twitter/util/d;->a(Landroid/widget/TextView;III)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lajp;->j:Landroid/animation/ObjectAnimator;

    .line 77
    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;)Lajp;
    .locals 9

    .prologue
    .line 46
    const v0, 0x7f0401d5

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 47
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 48
    new-instance v0, Lajp;

    .line 49
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v3, Lcom/twitter/android/moments/ui/fullscreen/bx;

    invoke-direct {v3, v2}, Lcom/twitter/android/moments/ui/fullscreen/bx;-><init>(Landroid/view/ViewGroup;)V

    const v4, 0x7f1304ba

    .line 53
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 52
    invoke-static {v4}, Lamc;->b(Landroid/view/View;)Lamc;

    move-result-object v4

    const v5, 0x7f1304b9

    .line 54
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f1304ce

    .line 55
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f130052

    .line 56
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f13043f

    .line 57
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-direct/range {v0 .. v8}, Lajp;-><init>(Landroid/content/res/Resources;Landroid/view/ViewGroup;Lcom/twitter/android/moments/ui/fullscreen/bx;Lamc;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;)V

    .line 48
    return-object v0
.end method

.method static synthetic a(Lajp;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lajp;->i:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 124
    iget-object v0, p0, Lajp;->c:Lcom/twitter/android/moments/ui/fullscreen/bx;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/bx;->d()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lajp;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lajp;->d:Lamc;

    invoke-virtual {v0, p1}, Lamc;->a(Landroid/view/View$OnClickListener;)V

    .line 138
    return-void
.end method

.method public a(Lcom/twitter/model/moments/a;)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lajp;->d:Lamc;

    invoke-virtual {v0, p1}, Lamc;->a(Lcom/twitter/model/moments/a;)V

    .line 134
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lajp;->c:Lcom/twitter/android/moments/ui/fullscreen/bx;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/bx;->b()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 5

    .prologue
    .line 88
    iget-object v0, p0, Lajp;->a:Landroid/content/res/Resources;

    const v1, 0x7f1200db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 89
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string/jumbo v2, " "

    .line 91
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 92
    invoke-virtual {v1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 93
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v2, v3

    .line 94
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    .line 95
    new-instance v4, Lajq;

    invoke-direct {v4, p0, v0}, Lajq;-><init>(Lajp;I)V

    .line 110
    const/16 v0, 0x21

    invoke-interface {v1, v4, v2, v3, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 112
    iget-object v0, p0, Lajp;->c:Lcom/twitter/android/moments/ui/fullscreen/bx;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/bx;->c()Landroid/widget/TextView;

    move-result-object v0

    .line 113
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 114
    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 115
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lajp;->c:Lcom/twitter/android/moments/ui/fullscreen/bx;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/bx;->a()Landroid/widget/TextView;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    return-void

    .line 129
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lajp;->d:Lamc;

    invoke-virtual {v0}, Lamc;->d()V

    .line 142
    return-void
.end method

.method public b(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lajp;->i:Landroid/view/View$OnClickListener;

    .line 146
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lajp;->c:Lcom/twitter/android/moments/ui/fullscreen/bx;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/bx;->c()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lajp;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    return-void
.end method

.method public c(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lajp;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lajp;->c:Lcom/twitter/android/moments/ui/fullscreen/bx;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/bx;->d()Landroid/widget/TextView;

    move-result-object v0

    .line 119
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lajp;->c:Lcom/twitter/android/moments/ui/fullscreen/bx;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/bx;->d()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lajp;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    return-void
.end method

.method public e()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 161
    iget-object v0, p0, Lajp;->h:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lajp;->j:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 163
    iget-object v0, p0, Lajp;->a:Landroid/content/res/Resources;

    const v1, 0x7f02047b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 164
    invoke-static {v1}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lajp;->a:Landroid/content/res/Resources;

    const v3, 0x7f1200e8

    .line 165
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 167
    iget-object v0, p0, Lajp;->g:Landroid/widget/TextView;

    invoke-static {v0, v1, v4, v4, v4}, Lcom/twitter/util/ui/q;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 169
    iget-object v0, p0, Lajp;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lajp;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lajp;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lajp;->j:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 176
    return-void
.end method

.method public g()Landroid/view/View;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lajp;->b:Landroid/view/ViewGroup;

    return-object v0
.end method
