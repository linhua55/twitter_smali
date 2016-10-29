.class Lcom/twitter/android/autocomplete/adapters/k;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/library/media/widget/UserImageView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/ImageView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/widget/ImageView;

.field private final g:Landroid/widget/ProgressBar;

.field private final h:Lcom/twitter/library/widget/SocialBylineView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongViewCast"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const v0, 0x7f130088

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/widget/UserImageView;

    iput-object v0, p0, Lcom/twitter/android/autocomplete/adapters/k;->a:Lcom/twitter/library/media/widget/UserImageView;

    .line 38
    const v0, 0x7f13004d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/autocomplete/adapters/k;->b:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f13008c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/autocomplete/adapters/k;->c:Landroid/widget/ImageView;

    .line 40
    const v0, 0x7f130064

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/autocomplete/adapters/k;->d:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f13047b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/autocomplete/adapters/k;->e:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f1302ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/autocomplete/adapters/k;->f:Landroid/widget/ImageView;

    .line 43
    const v0, 0x7f13030f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/twitter/android/autocomplete/adapters/k;->g:Landroid/widget/ProgressBar;

    .line 44
    const v0, 0x7f13006a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/SocialBylineView;

    iput-object v0, p0, Lcom/twitter/android/autocomplete/adapters/k;->h:Lcom/twitter/library/widget/SocialBylineView;

    .line 45
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/library/media/widget/UserImageView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/twitter/android/autocomplete/adapters/k;->a:Lcom/twitter/library/media/widget/UserImageView;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/widget/UserImageView;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/twitter/android/autocomplete/adapters/k;->h:Lcom/twitter/library/widget/SocialBylineView;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/twitter/android/autocomplete/adapters/k;->h:Lcom/twitter/library/widget/SocialBylineView;

    const v1, 0x7f020590

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/SocialBylineView;->setIcon(I)V

    .line 85
    iget-object v0, p0, Lcom/twitter/android/autocomplete/adapters/k;->h:Lcom/twitter/library/widget/SocialBylineView;

    const v1, 0x7f0a086d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/SocialBylineView;->setLabel(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/twitter/android/autocomplete/adapters/k;->h:Lcom/twitter/library/widget/SocialBylineView;

    invoke-static {}, Lcom/twitter/util/ak;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/SocialBylineView;->setRenderRTL(Z)V

    .line 87
    iget-object v0, p0, Lcom/twitter/android/autocomplete/adapters/k;->h:Lcom/twitter/library/widget/SocialBylineView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/SocialBylineView;->setVisibility(I)V

    .line 89
    :cond_0
    return-void
.end method

.method public b()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/twitter/android/autocomplete/adapters/k;->b:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public c()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/twitter/android/autocomplete/adapters/k;->c:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public d()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/twitter/android/autocomplete/adapters/k;->d:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public e()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/twitter/android/autocomplete/adapters/k;->e:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public f()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/twitter/android/autocomplete/adapters/k;->f:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/twitter/android/autocomplete/adapters/k;->h:Lcom/twitter/library/widget/SocialBylineView;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/twitter/android/autocomplete/adapters/k;->h:Lcom/twitter/library/widget/SocialBylineView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/SocialBylineView;->setVisibility(I)V

    .line 95
    :cond_0
    return-void
.end method
