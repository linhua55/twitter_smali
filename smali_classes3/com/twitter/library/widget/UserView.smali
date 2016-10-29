.class public Lcom/twitter/library/widget/UserView;
.super Lcom/twitter/library/widget/BaseUserView;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Lcom/twitter/library/widget/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/library/widget/e",
            "<",
            "Lcom/twitter/library/widget/UserView;",
            ">;"
        }
    .end annotation
.end field

.field private B:Lcom/twitter/library/widget/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/library/widget/e",
            "<",
            "Lcom/twitter/library/widget/UserView;",
            ">;"
        }
    .end annotation
.end field

.field private C:Lcom/twitter/library/scribe/TwitterScribeItem;

.field private D:Ljava/lang/String;

.field private E:Z

.field private F:I

.field public r:Lcom/twitter/library/widget/ActionButton;

.field public s:Landroid/widget/CheckBox;

.field protected t:Lcom/twitter/library/widget/ActionButton;

.field private u:Lcom/twitter/ui/widget/ToggleTwitterButton;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Z

.field private y:Lcom/twitter/library/widget/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/library/widget/e",
            "<",
            "Lcom/twitter/library/widget/UserView;",
            ">;"
        }
    .end annotation
.end field

.field private z:Lcom/twitter/library/widget/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/library/widget/e",
            "<",
            "Lcom/twitter/library/widget/UserView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/twitter/library/widget/BaseUserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/library/widget/UserView;->E:Z

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/library/widget/UserView;->F:I

    .line 51
    return-void
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->t:Lcom/twitter/library/widget/ActionButton;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->u:Lcom/twitter/ui/widget/ToggleTwitterButton;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setFollowButtonText(Z)V
    .locals 2

    .prologue
    .line 210
    iget-object v1, p0, Lcom/twitter/library/widget/UserView;->u:Lcom/twitter/ui/widget/ToggleTwitterButton;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->w:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/ui/widget/ToggleTwitterButton;->setText(Ljava/lang/CharSequence;)V

    .line 211
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->v:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a(ILcom/twitter/library/widget/e;)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/twitter/library/widget/e",
            "<",
            "Lcom/twitter/library/widget/UserView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->t:Lcom/twitter/library/widget/ActionButton;

    invoke-virtual {v0, p1}, Lcom/twitter/library/widget/ActionButton;->a(I)V

    .line 112
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->t:Lcom/twitter/library/widget/ActionButton;

    invoke-virtual {v0, p0}, Lcom/twitter/library/widget/ActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->t:Lcom/twitter/library/widget/ActionButton;

    iget-object v1, p0, Lcom/twitter/library/widget/UserView;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/ActionButton;->setUsername(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, p2}, Lcom/twitter/library/widget/UserView;->setActionButtonClickListener(Lcom/twitter/library/widget/e;)V

    .line 115
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Lcom/twitter/library/widget/BaseUserView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->t:Lcom/twitter/library/widget/ActionButton;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->t:Lcom/twitter/library/widget/ActionButton;

    invoke-virtual {v0, p1}, Lcom/twitter/library/widget/ActionButton;->setUsername(Ljava/lang/String;)V

    .line 78
    :cond_0
    return-void
.end method

.method public a(ZZ)V
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/twitter/library/widget/UserView;->setMuted(Z)V

    .line 82
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->n:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->n:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/twitter/library/widget/UserView;->v:Ljava/lang/String;

    .line 189
    iput-object p2, p0, Lcom/twitter/library/widget/UserView;->w:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/twitter/library/widget/UserView;->E:Z

    .line 138
    return-void
.end method

.method public c(Z)V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 178
    iput-boolean p1, p0, Lcom/twitter/library/widget/UserView;->x:Z

    .line 179
    invoke-direct {p0}, Lcom/twitter/library/widget/UserView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v3, p0, Lcom/twitter/library/widget/UserView;->t:Lcom/twitter/library/widget/ActionButton;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/twitter/library/widget/ActionButton;->setVisibility(I)V

    .line 182
    :cond_0
    invoke-direct {p0}, Lcom/twitter/library/widget/UserView;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->u:Lcom/twitter/ui/widget/ToggleTwitterButton;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v2}, Lcom/twitter/ui/widget/ToggleTwitterButton;->setVisibility(I)V

    .line 185
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 180
    goto :goto_0

    :cond_3
    move v2, v1

    .line 183
    goto :goto_1
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/twitter/library/widget/UserView;->F:I

    return v0
.end method

.method public getScribeComponent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->D:Ljava/lang/String;

    return-object v0
.end method

.method public getScribeItem()Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->C:Lcom/twitter/library/scribe/TwitterScribeItem;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/twitter/library/widget/UserView;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/twitter/library/widget/UserView;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/twitter/library/widget/UserView;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/twitter/library/widget/UserView;->x:Z

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->t:Lcom/twitter/library/widget/ActionButton;

    invoke-virtual {v0}, Lcom/twitter/library/widget/ActionButton;->toggle()V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-direct {p0}, Lcom/twitter/library/widget/UserView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->u:Lcom/twitter/ui/widget/ToggleTwitterButton;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/ToggleTwitterButton;->d()V

    goto :goto_0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/twitter/library/widget/UserView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/library/widget/UserView;->x:Z

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->t:Lcom/twitter/library/widget/ActionButton;

    invoke-virtual {v0}, Lcom/twitter/library/widget/ActionButton;->isChecked()Z

    move-result v0

    .line 168
    :goto_0
    return v0

    .line 165
    :cond_0
    invoke-direct {p0}, Lcom/twitter/library/widget/UserView;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->u:Lcom/twitter/ui/widget/ToggleTwitterButton;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/ToggleTwitterButton;->e()Z

    move-result v0

    goto :goto_0

    .line 168
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    .line 217
    sget v0, Lbjw;->follow_button:I

    if-ne v4, v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->y:Lcom/twitter/library/widget/e;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->y:Lcom/twitter/library/widget/e;

    iget-wide v2, p0, Lcom/twitter/library/widget/UserView;->f:J

    iget v5, p0, Lcom/twitter/library/widget/UserView;->F:I

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/twitter/library/widget/e;->a(Lcom/twitter/library/widget/BaseUserView;JII)V

    .line 221
    :cond_0
    iget-boolean v0, p0, Lcom/twitter/library/widget/UserView;->E:Z

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->u:Lcom/twitter/ui/widget/ToggleTwitterButton;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/ToggleTwitterButton;->d()V

    .line 224
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->u:Lcom/twitter/ui/widget/ToggleTwitterButton;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/ToggleTwitterButton;->e()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/twitter/library/widget/UserView;->setFollowButtonText(Z)V

    .line 249
    :cond_1
    :goto_0
    return-void

    .line 226
    :cond_2
    sget v0, Lbjw;->action_button:I

    if-ne v4, v0, :cond_4

    .line 227
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->y:Lcom/twitter/library/widget/e;

    if-eqz v0, :cond_3

    .line 228
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->y:Lcom/twitter/library/widget/e;

    iget-wide v2, p0, Lcom/twitter/library/widget/UserView;->f:J

    iget v5, p0, Lcom/twitter/library/widget/UserView;->F:I

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/twitter/library/widget/e;->a(Lcom/twitter/library/widget/BaseUserView;JII)V

    .line 230
    :cond_3
    iget-boolean v0, p0, Lcom/twitter/library/widget/UserView;->E:Z

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->t:Lcom/twitter/library/widget/ActionButton;

    invoke-virtual {v0}, Lcom/twitter/library/widget/ActionButton;->toggle()V

    goto :goto_0

    .line 234
    :cond_4
    sget v0, Lbjw;->block_button:I

    if-ne v4, v0, :cond_6

    .line 235
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->z:Lcom/twitter/library/widget/e;

    if-eqz v0, :cond_5

    .line 236
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->z:Lcom/twitter/library/widget/e;

    iget-wide v2, p0, Lcom/twitter/library/widget/UserView;->f:J

    iget v5, p0, Lcom/twitter/library/widget/UserView;->F:I

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/twitter/library/widget/e;->a(Lcom/twitter/library/widget/BaseUserView;JII)V

    .line 239
    :cond_5
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->r:Lcom/twitter/library/widget/ActionButton;

    invoke-virtual {v0}, Lcom/twitter/library/widget/ActionButton;->toggle()V

    goto :goto_0

    .line 240
    :cond_6
    sget v0, Lbjw;->user_checkbox:I

    if-ne v4, v0, :cond_7

    .line 241
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->A:Lcom/twitter/library/widget/e;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->A:Lcom/twitter/library/widget/e;

    iget-wide v2, p0, Lcom/twitter/library/widget/UserView;->f:J

    iget v5, p0, Lcom/twitter/library/widget/UserView;->F:I

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/twitter/library/widget/e;->a(Lcom/twitter/library/widget/BaseUserView;JII)V

    goto :goto_0

    .line 244
    :cond_7
    sget v0, Lbjw;->muted_item:I

    if-ne v4, v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->B:Lcom/twitter/library/widget/e;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->B:Lcom/twitter/library/widget/e;

    iget-wide v2, p0, Lcom/twitter/library/widget/UserView;->f:J

    iget v5, p0, Lcom/twitter/library/widget/UserView;->F:I

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/twitter/library/widget/e;->a(Lcom/twitter/library/widget/BaseUserView;JII)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcom/twitter/library/widget/BaseUserView;->onFinishInflate()V

    .line 56
    sget v0, Lbjw;->action_button:I

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/UserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/ActionButton;

    iput-object v0, p0, Lcom/twitter/library/widget/UserView;->t:Lcom/twitter/library/widget/ActionButton;

    .line 57
    sget v0, Lbjw;->follow_button:I

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/UserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/ToggleTwitterButton;

    iput-object v0, p0, Lcom/twitter/library/widget/UserView;->u:Lcom/twitter/ui/widget/ToggleTwitterButton;

    .line 58
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->u:Lcom/twitter/ui/widget/ToggleTwitterButton;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->u:Lcom/twitter/ui/widget/ToggleTwitterButton;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/ToggleTwitterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    :cond_0
    sget v0, Lbjw;->block_button:I

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/UserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/ActionButton;

    iput-object v0, p0, Lcom/twitter/library/widget/UserView;->r:Lcom/twitter/library/widget/ActionButton;

    .line 63
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->r:Lcom/twitter/library/widget/ActionButton;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->r:Lcom/twitter/library/widget/ActionButton;

    invoke-virtual {v0, p0}, Lcom/twitter/library/widget/ActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    :cond_1
    sget v0, Lbjw;->user_checkbox:I

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/UserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/twitter/library/widget/UserView;->s:Landroid/widget/CheckBox;

    .line 67
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->s:Landroid/widget/CheckBox;

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    :cond_2
    return-void
.end method

.method public setActionButtonClickListener(Lcom/twitter/library/widget/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/widget/e",
            "<",
            "Lcom/twitter/library/widget/UserView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    iput-object p1, p0, Lcom/twitter/library/widget/UserView;->y:Lcom/twitter/library/widget/e;

    .line 119
    return-void
.end method

.method public setBlockButtonClickListener(Lcom/twitter/library/widget/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/widget/e",
            "<",
            "Lcom/twitter/library/widget/UserView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    iput-object p1, p0, Lcom/twitter/library/widget/UserView;->z:Lcom/twitter/library/widget/e;

    .line 123
    return-void
.end method

.method public setCheckBoxClickListener(Lcom/twitter/library/widget/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/widget/e",
            "<",
            "Lcom/twitter/library/widget/UserView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    iput-object p1, p0, Lcom/twitter/library/widget/UserView;->A:Lcom/twitter/library/widget/e;

    .line 134
    return-void
.end method

.method public setFollowBackgroundResource(I)V
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/twitter/library/widget/UserView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->t:Lcom/twitter/library/widget/ActionButton;

    invoke-virtual {v0, p1}, Lcom/twitter/library/widget/ActionButton;->setBackgroundResource(I)V

    .line 175
    :cond_0
    return-void
.end method

.method public setFollowVisibility(I)V
    .locals 1

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/twitter/library/widget/UserView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->t:Lcom/twitter/library/widget/ActionButton;

    invoke-virtual {v0, p1}, Lcom/twitter/library/widget/ActionButton;->setVisibility(I)V

    .line 196
    :cond_0
    invoke-direct {p0}, Lcom/twitter/library/widget/UserView;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/twitter/library/widget/UserView;->x:Z

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->u:Lcom/twitter/ui/widget/ToggleTwitterButton;

    invoke-virtual {v0, p1}, Lcom/twitter/ui/widget/ToggleTwitterButton;->setVisibility(I)V

    .line 199
    :cond_1
    return-void
.end method

.method public setIsFollowing(Z)V
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/twitter/library/widget/UserView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->t:Lcom/twitter/library/widget/ActionButton;

    invoke-virtual {v0, p1}, Lcom/twitter/library/widget/ActionButton;->setChecked(Z)V

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/twitter/library/widget/UserView;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->u:Lcom/twitter/ui/widget/ToggleTwitterButton;

    invoke-virtual {v0, p1}, Lcom/twitter/ui/widget/ToggleTwitterButton;->setToggledOn(Z)V

    .line 158
    invoke-direct {p0, p1}, Lcom/twitter/library/widget/UserView;->setFollowButtonText(Z)V

    .line 160
    :cond_1
    return-void
.end method

.method public setMutedViewClickListener(Lcom/twitter/library/widget/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/widget/e",
            "<",
            "Lcom/twitter/library/widget/UserView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    iput-object p1, p0, Lcom/twitter/library/widget/UserView;->B:Lcom/twitter/library/widget/e;

    .line 127
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->n:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/twitter/library/widget/UserView;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    :cond_0
    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .prologue
    .line 256
    iput p1, p0, Lcom/twitter/library/widget/UserView;->F:I

    .line 257
    return-void
.end method

.method public setScribeComponent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/twitter/library/widget/UserView;->D:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setScribeItem(Lcom/twitter/library/scribe/TwitterScribeItem;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/twitter/library/widget/UserView;->C:Lcom/twitter/library/scribe/TwitterScribeItem;

    .line 89
    return-void
.end method
