.class public Lcym;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcyd;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:Lcza;

.field private f:Ljava/lang/CharSequence;

.field private g:Landroid/content/Intent;

.field private h:Landroid/view/View;

.field private i:Z

.field private j:Z

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcym;->a:Landroid/content/Context;

    .line 33
    iput p2, p0, Lcym;->b:I

    .line 34
    iput p3, p0, Lcym;->c:I

    .line 35
    iput p4, p0, Lcym;->d:I

    .line 36
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcym;->b:I

    return v0
.end method

.method public a(I)Lcym;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 112
    iget-object v0, p0, Lcym;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcym;->a(Ljava/lang/CharSequence;)Lcym;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;)Lcym;
    .locals 1

    .prologue
    .line 117
    iput-object p1, p0, Lcym;->f:Ljava/lang/CharSequence;

    .line 118
    iget-object v0, p0, Lcym;->e:Lcza;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcym;->e:Lcza;

    invoke-interface {v0}, Lcza;->a()V

    .line 121
    :cond_0
    return-object p0
.end method

.method public a(Z)Lcym;
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcym;->i:Z

    if-eq v0, p1, :cond_0

    .line 46
    iput-boolean p1, p0, Lcym;->i:Z

    .line 47
    iget-object v0, p0, Lcym;->e:Lcza;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcym;->e:Lcza;

    invoke-interface {v0}, Lcza;->a()V

    .line 51
    :cond_0
    return-object p0
.end method

.method public a(Lcza;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcym;->e:Lcza;

    .line 40
    return-void
.end method

.method public a(Lcym;)Z
    .locals 2

    .prologue
    .line 187
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcym;->f:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcym;->f:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcym;->k:I

    iget v1, p1, Lcym;->k:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)Lcym;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 132
    iget v0, p0, Lcym;->k:I

    if-eq v0, p1, :cond_0

    .line 133
    iput p1, p0, Lcym;->k:I

    .line 134
    iget-object v0, p0, Lcym;->e:Lcza;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcym;->e:Lcza;

    invoke-interface {v0}, Lcza;->a()V

    .line 138
    :cond_0
    return-object p0
.end method

.method public b(Z)Lcym;
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcym;->j:Z

    if-eq v0, p1, :cond_0

    .line 96
    iput-boolean p1, p0, Lcym;->j:Z

    .line 97
    iget-object v0, p0, Lcym;->e:Lcza;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcym;->e:Lcza;

    invoke-interface {v0}, Lcza;->a()V

    .line 101
    :cond_0
    return-object p0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcym;->i:Z

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcym;->c:I

    return v0
.end method

.method public c(I)Lcym;
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 148
    if-eqz p1, :cond_0

    .line 149
    iget-object v0, p0, Lcym;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcym;->h:Landroid/view/View;

    .line 151
    :cond_0
    return-object p0
.end method

.method public d()Landroid/view/View;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcym;->h:Landroid/view/View;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcym;->d:I

    return v0
.end method

.method public synthetic e(Z)Lcyd;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcym;->b(Z)Lcym;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 162
    if-ne p0, p1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v0

    .line 165
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 166
    goto :goto_0

    .line 169
    :cond_3
    check-cast p1, Lcym;

    .line 170
    iget v2, p0, Lcym;->b:I

    iget v3, p1, Lcym;->b:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcym;->c:I

    iget v3, p1, Lcym;->c:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcym;->d:I

    iget v3, p1, Lcym;->d:I

    if-ne v2, v3, :cond_4

    .line 173
    invoke-virtual {p0, p1}, Lcym;->a(Lcym;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcym;->g:Landroid/content/Intent;

    iget-object v3, p1, Lcym;->g:Landroid/content/Intent;

    .line 174
    invoke-static {v2, v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcym;->e:Lcza;

    iget-object v3, p1, Lcym;->e:Lcza;

    .line 175
    invoke-static {v2, v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcym;->i:Z

    iget-boolean v3, p1, Lcym;->i:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcym;->j:Z

    iget-boolean v3, p1, Lcym;->j:Z

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public synthetic f(Z)Lcyd;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcym;->a(Z)Lcym;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcym;->f:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcym;->k:I

    return v0
.end method

.method public synthetic g(I)Lcyd;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcym;->a(I)Lcym;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 182
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcym;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcym;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcym;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcym;->f:Ljava/lang/CharSequence;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcym;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcym;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcym;->e:Lcza;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-boolean v2, p0, Lcym;->i:Z

    .line 183
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-boolean v2, p0, Lcym;->j:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 182
    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public m()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcym;->g:Landroid/content/Intent;

    return-object v0
.end method
