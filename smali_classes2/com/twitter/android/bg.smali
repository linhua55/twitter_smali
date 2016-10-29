.class Lcom/twitter/android/bg;
.super Lbkj;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkj",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/CategoriesFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/CategoriesFragment;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 197
    iput-object p1, p0, Lcom/twitter/android/bg;->a:Lcom/twitter/android/CategoriesFragment;

    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lbkj;-><init>(Landroid/content/Context;I)V

    .line 199
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 203
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 204
    const v1, 0x7f04039f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 205
    new-instance v1, Lcom/twitter/android/bh;

    invoke-direct {v1, v0}, Lcom/twitter/android/bh;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 206
    return-object v0
.end method

.method public bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 196
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/bg;->a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 15

    .prologue
    .line 211
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 212
    const-string/jumbo v0, "name"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 213
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/twitter/android/bh;

    .line 214
    iget-object v0, v7, Lcom/twitter/android/bh;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lcom/twitter/android/bg;->a:Lcom/twitter/android/CategoriesFragment;

    invoke-static {v0}, Lcom/twitter/android/CategoriesFragment;->a(Lcom/twitter/android/CategoriesFragment;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 216
    if-eqz v10, :cond_0

    .line 217
    const-string/jumbo v0, "related_query"

    invoke-static {v2, v0}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    .line 219
    add-int/lit8 v2, p4, 0x1

    iput v2, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->g:I

    .line 220
    iget-object v2, p0, Lcom/twitter/android/bg;->a:Lcom/twitter/android/CategoriesFragment;

    invoke-static {v2}, Lcom/twitter/android/CategoriesFragment;->b(Lcom/twitter/android/CategoriesFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_0
    const-string/jumbo v0, "users"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 224
    if-eqz v11, :cond_3

    .line 225
    iget-object v0, v7, Lcom/twitter/android/bh;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v12

    .line 226
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    .line 227
    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v12, :cond_3

    .line 228
    iget-object v0, v7, Lcom/twitter/android/bh;->b:Landroid/widget/LinearLayout;

    .line 229
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/twitter/library/media/widget/UserImageView;

    .line 230
    if-ge v9, v13, :cond_2

    .line 231
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/twitter/model/core/TwitterUser;

    .line 232
    invoke-virtual {v8, v3}, Lcom/twitter/library/media/widget/UserImageView;->a(Lcom/twitter/model/core/TwitterUser;)Z

    .line 233
    if-eqz v10, :cond_1

    .line 234
    iget-object v0, p0, Lcom/twitter/android/bg;->a:Lcom/twitter/android/CategoriesFragment;

    invoke-static {v0}, Lcom/twitter/android/CategoriesFragment;->c(Lcom/twitter/android/CategoriesFragment;)Ljava/util/ArrayList;

    move-result-object v14

    .line 236
    invoke-virtual {v3}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v0

    iget-object v2, v3, Lcom/twitter/model/core/TwitterUser;->B:Lcss;

    .line 237
    invoke-virtual {v3}, Lcom/twitter/model/core/TwitterUser;->h()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    add-int/lit8 v5, p4, 0x1

    const/4 v6, 0x0

    .line 235
    invoke-static/range {v0 .. v6}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(JLcss;Ljava/lang/String;Ljava/lang/String;ILcom/twitter/model/timeline/al;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    .line 234
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/twitter/library/media/widget/UserImageView;->setVisibility(I)V

    .line 227
    :goto_1
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    .line 241
    :cond_2
    invoke-virtual {v8}, Lcom/twitter/library/media/widget/UserImageView;->f()V

    .line 242
    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Lcom/twitter/library/media/widget/UserImageView;->setVisibility(I)V

    goto :goto_1

    .line 246
    :cond_3
    return-void
.end method

.method protected bridge synthetic a(Landroid/view/View;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 196
    check-cast p3, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/bg;->a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;Landroid/content/Context;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 196
    check-cast p3, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/twitter/android/bg;->a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;I)V

    return-void
.end method
