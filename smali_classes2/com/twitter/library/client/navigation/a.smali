.class public Lcom/twitter/library/client/navigation/a;
.super Lcvt;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcvt",
        "<",
        "Lcyr;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private final b:Landroid/content/res/ColorStateList;

.field private final c:Landroid/content/res/ColorStateList;

.field private final d:I

.field private final e:I

.field private f:Lcyz;


# direct methods
.method constructor <init>(Landroid/content/Context;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcvt;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/client/navigation/a;->a:Landroid/view/LayoutInflater;

    .line 42
    iput p2, p0, Lcom/twitter/library/client/navigation/a;->d:I

    .line 43
    iput p3, p0, Lcom/twitter/library/client/navigation/a;->e:I

    .line 44
    iput-object p4, p0, Lcom/twitter/library/client/navigation/a;->b:Landroid/content/res/ColorStateList;

    .line 45
    iput-object p5, p0, Lcom/twitter/library/client/navigation/a;->c:Landroid/content/res/ColorStateList;

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/twitter/library/client/navigation/a;)Lcyz;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/library/client/navigation/a;->f:Lcyz;

    return-object v0
.end method


# virtual methods
.method protected a(Lcyr;)I
    .locals 1

    .prologue
    .line 64
    instance-of v0, p1, Lcys;

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    .line 66
    :cond_0
    instance-of v0, p1, Lcyp;

    if-eqz v0, :cond_1

    .line 67
    const/4 v0, 0x2

    goto :goto_0

    .line 69
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 24
    check-cast p1, Lcyr;

    invoke-virtual {p0, p1}, Lcom/twitter/library/client/navigation/a;->a(Lcyr;)I

    move-result v0

    return v0
.end method

.method protected a(Landroid/content/Context;Lcyr;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 92
    instance-of v0, p2, Lcys;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/twitter/library/client/navigation/a;->a:Landroid/view/LayoutInflater;

    sget v1, Lbjx;->design_navigation_item_separator:I

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 94
    iget v1, p0, Lcom/twitter/library/client/navigation/a;->e:I

    iget v2, p0, Lcom/twitter/library/client/navigation/a;->e:I

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 121
    :goto_0
    return-object v0

    .line 95
    :cond_0
    instance-of v0, p2, Lcyp;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/twitter/library/client/navigation/a;->a:Landroid/view/LayoutInflater;

    sget v1, Lbjx;->drawer_account_item:I

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 97
    new-instance v1, Lcom/twitter/library/client/navigation/b;

    invoke-direct {v1, p0}, Lcom/twitter/library/client/navigation/b;-><init>(Lcom/twitter/library/client/navigation/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/client/navigation/a;->a:Landroid/view/LayoutInflater;

    sget v1, Lbjx;->drawer_menu_item:I

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 107
    new-instance v0, Lcom/twitter/library/client/navigation/c;

    invoke-direct {v0, p0}, Lcom/twitter/library/client/navigation/c;-><init>(Lcom/twitter/library/client/navigation/a;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    sget v0, Lbjw;->title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 117
    iget-object v2, p0, Lcom/twitter/library/client/navigation/a;->b:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    .line 118
    iget-object v2, p0, Lcom/twitter/library/client/navigation/a;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method protected bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 24
    check-cast p2, Lcyr;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/library/client/navigation/a;->a(Landroid/content/Context;Lcyr;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/view/View;Landroid/content/Context;Lcyr;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 126
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 128
    instance-of v0, p3, Lcyt;

    if-eqz v0, :cond_5

    .line 129
    check-cast p3, Lcyt;

    .line 130
    iget-object v2, p3, Lcyt;->a:Lcym;

    .line 131
    sget v0, Lbjw;->drawer_item_tag:I

    invoke-virtual {p1, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 134
    sget v0, Lbjw;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 135
    invoke-virtual {v2}, Lcym;->f()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    invoke-static {v0, v5, v5, v5, v5}, Lcom/twitter/util/ui/q;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 139
    invoke-virtual {v2}, Lcym;->g()I

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/twitter/library/client/navigation/a;->j()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v2}, Lcym;->g()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 141
    if-eqz v1, :cond_1

    .line 142
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    .line 143
    if-nez v3, :cond_4

    :goto_0
    invoke-static {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 144
    iget v3, p0, Lcom/twitter/library/client/navigation/a;->d:I

    iget v4, p0, Lcom/twitter/library/client/navigation/a;->d:I

    invoke-virtual {v1, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 145
    iget-object v3, p0, Lcom/twitter/library/client/navigation/a;->c:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_0

    .line 146
    iget-object v3, p0, Lcom/twitter/library/client/navigation/a;->c:Landroid/content/res/ColorStateList;

    invoke-static {v1, v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 148
    :cond_0
    invoke-static {v0, v1, v5, v5, v5}, Lcom/twitter/util/ui/q;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 153
    :cond_1
    sget v0, Lbjw;->action_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 154
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 155
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 158
    invoke-virtual {v2}, Lcym;->d()Landroid/view/View;

    move-result-object v2

    .line 159
    if-eqz v2, :cond_3

    .line 162
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 163
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 165
    :cond_2
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 166
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 183
    :cond_3
    :goto_1
    return-void

    .line 143
    :cond_4
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 168
    :cond_5
    instance-of v0, p3, Lcyp;

    if-eqz v0, :cond_3

    .line 169
    check-cast p3, Lcyp;

    iget-object v1, p3, Lcyp;->a:Lcom/twitter/model/account/UserAccount;

    .line 170
    sget v0, Lbjw;->drawer_item_tag:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 172
    sget v0, Lbjw;->user_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/widget/UserImageView;

    .line 173
    iget-object v2, v1, Lcom/twitter/model/account/UserAccount;->b:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v0, v2}, Lcom/twitter/library/media/widget/UserImageView;->a(Lcom/twitter/model/core/TwitterUser;)Z

    .line 175
    iget-object v0, v1, Lcom/twitter/model/account/UserAccount;->b:Lcom/twitter/model/core/TwitterUser;

    if-eqz v0, :cond_3

    .line 176
    sget v0, Lbjw;->account_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 177
    iget-object v2, v1, Lcom/twitter/model/account/UserAccount;->b:Lcom/twitter/model/core/TwitterUser;

    iget-object v2, v2, Lcom/twitter/model/core/TwitterUser;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    sget v0, Lbjw;->username:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/twitter/model/account/UserAccount;->b:Lcom/twitter/model/core/TwitterUser;

    iget-object v1, v1, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected bridge synthetic a(Landroid/view/View;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    check-cast p3, Lcyr;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/library/client/navigation/a;->a(Landroid/view/View;Landroid/content/Context;Lcyr;)V

    return-void
.end method

.method public a(Lcyz;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/twitter/library/client/navigation/a;->f:Lcyz;

    .line 50
    return-void
.end method

.method protected a(Landroid/content/Context;Lcyr;)Z
    .locals 1

    .prologue
    .line 59
    instance-of v0, p2, Lcys;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 24
    check-cast p2, Lcyr;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/library/client/navigation/a;->a(Landroid/content/Context;Lcyr;)Z

    move-result v0

    return v0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/twitter/library/client/navigation/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyr;

    .line 80
    instance-of v1, v0, Lcyt;

    if-eqz v1, :cond_0

    .line 81
    check-cast v0, Lcyt;

    iget-object v0, v0, Lcyt;->a:Lcym;

    invoke-virtual {v0}, Lcym;->a()I

    move-result v0

    int-to-long v0, v0

    .line 83
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x3

    return v0
.end method
