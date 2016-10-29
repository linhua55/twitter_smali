.class public Lcom/twitter/app/lists/e;
.super Lcvt;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcvt",
        "<",
        "Lcom/twitter/model/core/cm;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcvt;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/twitter/model/core/cm;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040176

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 49
    new-instance v1, Lcom/twitter/app/lists/f;

    invoke-direct {v1, v0}, Lcom/twitter/app/lists/f;-><init>(Landroid/view/View;)V

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 51
    return-object v0
.end method

.method protected bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    check-cast p2, Lcom/twitter/model/core/cm;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/app/lists/e;->a(Landroid/content/Context;Lcom/twitter/model/core/cm;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/view/View;Landroid/content/Context;Lcom/twitter/model/core/cm;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/lists/f;

    .line 59
    iget-object v1, v0, Lcom/twitter/app/lists/f;->a:Landroid/widget/TextView;

    iget-object v2, p3, Lcom/twitter/model/core/cm;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-boolean v1, p3, Lcom/twitter/model/core/cm;->b:Z

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020450

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 65
    invoke-virtual {p0}, Lcom/twitter/app/lists/e;->j()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120063

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 64
    invoke-static {v1, v2}, Lbkd;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 66
    iget-object v2, v0, Lcom/twitter/app/lists/f;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 72
    :goto_0
    iget-object v1, v0, Lcom/twitter/app/lists/f;->b:Landroid/widget/TextView;

    const v2, 0x7f0a0481

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p3, Lcom/twitter/model/core/cm;->l:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, v0, Lcom/twitter/app/lists/f;->e:Lcom/twitter/library/media/widget/UserImageView;

    iget-object v1, p3, Lcom/twitter/model/core/cm;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/widget/UserImageView;->a(Ljava/lang/String;)Z

    .line 74
    return-void

    .line 68
    :cond_0
    iget-object v1, v0, Lcom/twitter/app/lists/f;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Landroid/view/View;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 40
    check-cast p3, Lcom/twitter/model/core/cm;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/app/lists/e;->a(Landroid/view/View;Landroid/content/Context;Lcom/twitter/model/core/cm;)V

    return-void
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/twitter/app/lists/e;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cm;

    .line 79
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/model/core/cm;->a()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-super {p0, p1}, Lcvt;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method
