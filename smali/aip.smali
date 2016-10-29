.class public Laip;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/guide/az;


# instance fields
.field protected final a:Landroid/content/res/Resources;

.field private final b:Laiq;

.field private final c:Lcom/twitter/util/object/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/object/c",
            "<",
            "Landroid/widget/TextView;",
            "Lais;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Laiq;Lcom/twitter/util/object/c;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Laiq;",
            "Lcom/twitter/util/object/c",
            "<",
            "Landroid/widget/TextView;",
            "Lais;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Laip;->a:Landroid/content/res/Resources;

    .line 82
    iput-object p2, p0, Laip;->b:Laiq;

    .line 83
    iput-object p3, p0, Laip;->c:Lcom/twitter/util/object/c;

    .line 84
    return-void
.end method

.method private a(Lair;)V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p1, Lair;->d:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    iget-object v0, p1, Lair;->b:Landroid/widget/TextView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v1}, Lcom/twitter/util/ui/q;->a(Landroid/widget/TextView;F)V

    .line 186
    return-void
.end method

.method private a(Lcrg;Lair;Z)V
    .locals 5

    .prologue
    .line 228
    iget-object v0, p1, Lcrg;->b:Lcri;

    iget-object v1, v0, Lcri;->c:Ljava/lang/String;

    .line 229
    iget-object v2, p1, Lcrg;->c:Ljava/lang/String;

    .line 230
    iget-object v0, p1, Lcrg;->b:Lcri;

    invoke-virtual {v0}, Lcri;->a()Ljava/lang/String;

    move-result-object v3

    .line 231
    if-eqz p3, :cond_0

    .line 232
    iget-object v0, p0, Laip;->c:Lcom/twitter/util/object/c;

    iget-object v4, p2, Lair;->b:Landroid/widget/TextView;

    invoke-interface {v0, v4}, Lcom/twitter/util/object/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lais;

    .line 233
    invoke-virtual {v0, v2}, Lais;->a(Ljava/lang/String;)V

    .line 237
    :goto_0
    iget-object v0, p2, Lair;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p2, Lair;->c:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-static {v3}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 239
    return-void

    .line 235
    :cond_0
    iget-object v0, p2, Lair;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private b(Lair;)V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p1, Lair;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    iget-object v0, p1, Lair;->b:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/twitter/util/ui/q;->a(Landroid/widget/TextView;F)V

    .line 191
    return-void
.end method

.method private c(Lair;)V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p1, Lair;->d:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    iget-object v0, p1, Lair;->b:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/twitter/util/ui/q;->a(Landroid/widget/TextView;F)V

    .line 196
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Laip;->b:Laiq;

    invoke-virtual {v0}, Laiq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Laip;->b:Laiq;

    invoke-virtual {v0}, Laiq;->b()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 113
    packed-switch p1, :pswitch_data_0

    .line 119
    invoke-virtual {p0}, Laip;->a()V

    .line 123
    :goto_0
    return-void

    .line 115
    :pswitch_0
    invoke-virtual {p0}, Laip;->c()V

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public a(ILcrg;Z)V
    .locals 1

    .prologue
    .line 135
    if-nez p1, :cond_0

    iget-object v0, p0, Laip;->b:Laiq;

    .line 136
    invoke-virtual {v0}, Laiq;->c()Lair;

    move-result-object v0

    .line 137
    :goto_0
    invoke-direct {p0, p2, v0, p3}, Laip;->a(Lcrg;Lair;Z)V

    .line 138
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Laip;->b:Laiq;

    invoke-virtual {v0}, Laiq;->d()Lair;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Laip;->b:Laiq;

    invoke-virtual {v0}, Laiq;->g()Landroid/widget/TextSwitcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 161
    return-void
.end method

.method public a(Z)V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 146
    iget-object v0, p0, Laip;->b:Laiq;

    invoke-virtual {v0}, Laiq;->c()Lair;

    move-result-object v0

    iget-object v3, v0, Lair;->b:Landroid/widget/TextView;

    .line 147
    iget-object v0, p0, Laip;->b:Laiq;

    invoke-virtual {v0}, Laiq;->d()Lair;

    move-result-object v0

    iget-object v4, v0, Lair;->b:Landroid/widget/TextView;

    .line 148
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    return-void

    :cond_0
    move v0, v2

    .line 148
    goto :goto_0

    :cond_1
    move v1, v2

    .line 149
    goto :goto_1
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
    .line 94
    iget-object v0, p0, Laip;->b:Laiq;

    invoke-virtual {v0}, Laiq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Laip;->b:Laiq;

    .line 97
    invoke-virtual {v0}, Laiq;->h()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Laip;->b:Laiq;

    .line 98
    invoke-virtual {v3}, Laiq;->e()Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Laip;->b:Laiq;

    .line 99
    invoke-virtual {v3}, Laiq;->f()Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Laip;->b:Laiq;

    .line 100
    invoke-virtual {v3}, Laiq;->g()Landroid/widget/TextSwitcher;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Laip;->b:Laiq;

    .line 101
    invoke-virtual {v3}, Laiq;->i()Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    .line 96
    invoke-static {v0, v1}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 171
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 172
    iget-object v0, p0, Laip;->b:Laiq;

    invoke-virtual {v0}, Laiq;->c()Lair;

    move-result-object v0

    invoke-direct {p0, v0}, Laip;->c(Lair;)V

    .line 173
    iget-object v0, p0, Laip;->b:Laiq;

    invoke-virtual {v0}, Laiq;->d()Lair;

    move-result-object v0

    invoke-direct {p0, v0}, Laip;->c(Lair;)V

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    if-nez p1, :cond_2

    .line 175
    iget-object v0, p0, Laip;->b:Laiq;

    invoke-virtual {v0}, Laiq;->c()Lair;

    move-result-object v0

    invoke-direct {p0, v0}, Laip;->b(Lair;)V

    .line 176
    iget-object v0, p0, Laip;->b:Laiq;

    invoke-virtual {v0}, Laiq;->d()Lair;

    move-result-object v0

    invoke-direct {p0, v0}, Laip;->a(Lair;)V

    goto :goto_0

    .line 177
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 178
    iget-object v0, p0, Laip;->b:Laiq;

    invoke-virtual {v0}, Laiq;->c()Lair;

    move-result-object v0

    invoke-direct {p0, v0}, Laip;->a(Lair;)V

    .line 179
    iget-object v0, p0, Laip;->b:Laiq;

    invoke-virtual {v0}, Laiq;->d()Lair;

    move-result-object v0

    invoke-direct {p0, v0}, Laip;->b(Lair;)V

    goto :goto_0
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Laip;->b:Laiq;

    invoke-virtual {v0}, Laiq;->b()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 207
    return-void
.end method
