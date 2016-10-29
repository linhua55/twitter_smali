.class public Lcom/twitter/android/autocomplete/adapters/l;
.super Lcom/twitter/android/autocomplete/adapters/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/autocomplete/adapters/h",
        "<",
        "Ljava/lang/String;",
        "Lcom/twitter/android/provider/z;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 22
    const v0, 0x7f0403e3

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/autocomplete/adapters/l;-><init>(Landroid/content/Context;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/twitter/android/autocomplete/adapters/h;-><init>(Landroid/content/Context;)V

    .line 27
    iput p2, p0, Lcom/twitter/android/autocomplete/adapters/l;->a:I

    .line 28
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/twitter/android/provider/z;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 34
    iget v1, p0, Lcom/twitter/android/autocomplete/adapters/l;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/twitter/android/autocomplete/adapters/k;

    invoke-direct {v1, v0}, Lcom/twitter/android/autocomplete/adapters/k;-><init>(Landroid/view/View;)V

    .line 36
    invoke-virtual {v1}, Lcom/twitter/android/autocomplete/adapters/k;->a()Lcom/twitter/library/media/widget/UserImageView;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020094

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/library/media/widget/UserImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 38
    return-object v0
.end method

.method public bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 18
    check-cast p2, Lcom/twitter/android/provider/z;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/autocomplete/adapters/l;->a(Landroid/content/Context;Lcom/twitter/android/provider/z;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Landroid/content/Context;Lcom/twitter/android/provider/z;)V
    .locals 3

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/autocomplete/adapters/k;

    .line 45
    iget-object v1, p3, Lcom/twitter/android/provider/z;->d:Ljava/lang/String;

    .line 46
    invoke-virtual {v0}, Lcom/twitter/android/autocomplete/adapters/k;->a()Lcom/twitter/library/media/widget/UserImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/twitter/library/media/widget/UserImageView;->a(Ljava/lang/String;)Z

    .line 48
    invoke-virtual {v0}, Lcom/twitter/android/autocomplete/adapters/k;->b()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p3, Lcom/twitter/android/provider/z;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v1, p3, Lcom/twitter/android/provider/z;->g:Ljava/lang/String;

    invoke-static {v1}, Lbyi;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/twitter/android/autocomplete/adapters/l;->j()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/autocomplete/adapters/k;->a(Landroid/content/Context;)V

    .line 56
    :goto_0
    invoke-virtual {v0}, Lcom/twitter/android/autocomplete/adapters/k;->c()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {p3}, Lcom/twitter/android/provider/z;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    invoke-virtual {v0}, Lcom/twitter/android/autocomplete/adapters/k;->d()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/twitter/android/provider/z;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-void

    .line 53
    :cond_0
    invoke-virtual {v0}, Lcom/twitter/android/autocomplete/adapters/k;->g()V

    goto :goto_0

    .line 56
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public bridge synthetic a(Landroid/view/View;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p3, Lcom/twitter/android/provider/z;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/autocomplete/adapters/l;->a(Landroid/view/View;Landroid/content/Context;Lcom/twitter/android/provider/z;)V

    return-void
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/twitter/android/autocomplete/adapters/l;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/z;

    .line 64
    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/twitter/android/provider/z;->a:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method
