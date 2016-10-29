.class Lcom/twitter/android/commerce/view/v;
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
.field final synthetic a:Lcom/twitter/android/commerce/view/OrderHistoryFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/commerce/view/OrderHistoryFragment;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 194
    iput-object p1, p0, Lcom/twitter/android/commerce/view/v;->a:Lcom/twitter/android/commerce/view/OrderHistoryFragment;

    .line 195
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lbkj;-><init>(Landroid/content/Context;I)V

    .line 196
    return-void
.end method

.method private a(Lcom/twitter/library/commerce/model/r;Lcom/twitter/android/commerce/view/x;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 215
    iget-object v0, p2, Lcom/twitter/android/commerce/view/x;->a:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 216
    iget-object v0, p2, Lcom/twitter/android/commerce/view/x;->a:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    invoke-virtual {p1}, Lcom/twitter/library/commerce/model/r;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p2, Lcom/twitter/android/commerce/view/x;->a:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {p1}, Lcom/twitter/library/commerce/model/r;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 220
    iget-object v0, p2, Lcom/twitter/android/commerce/view/x;->a:Lcom/twitter/media/ui/image/MediaImageView;

    iget-object v1, p0, Lcom/twitter/android/commerce/view/v;->a:Lcom/twitter/android/commerce/view/OrderHistoryFragment;

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    :cond_0
    iget-object v0, p2, Lcom/twitter/android/commerce/view/x;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/twitter/library/commerce/model/r;->d()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/commerce/util/c;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v0, p2, Lcom/twitter/android/commerce/view/x;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/commerce/view/v;->a:Lcom/twitter/android/commerce/view/OrderHistoryFragment;

    const v2, 0x7f0a0199

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/twitter/android/commerce/view/v;->a:Lcom/twitter/android/commerce/view/OrderHistoryFragment;

    .line 224
    invoke-virtual {v4}, Lcom/twitter/android/commerce/view/OrderHistoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/twitter/library/commerce/model/r;->a(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 223
    invoke-virtual {v1, v2, v3}, Lcom/twitter/android/commerce/view/OrderHistoryFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    const-string/jumbo v0, "CANCELED"

    invoke-virtual {p1}, Lcom/twitter/library/commerce/model/r;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    const v0, 0x7f1200be

    .line 231
    :goto_0
    iget-object v1, p2, Lcom/twitter/android/commerce/view/x;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/twitter/android/commerce/view/v;->a:Lcom/twitter/android/commerce/view/OrderHistoryFragment;

    invoke-virtual {v2}, Lcom/twitter/android/commerce/view/OrderHistoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 232
    iget-object v0, p2, Lcom/twitter/android/commerce/view/x;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/twitter/library/commerce/model/r;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v0, p0, Lcom/twitter/android/commerce/view/v;->a:Lcom/twitter/android/commerce/view/OrderHistoryFragment;

    .line 234
    invoke-virtual {v0}, Lcom/twitter/android/commerce/view/OrderHistoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01db

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/twitter/library/commerce/model/r;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 235
    iget-object v1, p2, Lcom/twitter/android/commerce/view/x;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    return-void

    .line 229
    :cond_1
    const v0, 0x7f120064

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 200
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 201
    const v1, 0x7f04007b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 203
    new-instance v1, Lcom/twitter/android/commerce/view/x;

    invoke-direct {v1, v0}, Lcom/twitter/android/commerce/view/x;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 204
    return-object v0
.end method

.method public bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 193
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/commerce/view/v;->a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 209
    const/4 v0, 0x3

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 210
    sget-object v1, Lcom/twitter/library/commerce/model/r;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v0, v1}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/commerce/model/r;

    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/commerce/view/x;

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/commerce/view/v;->a(Lcom/twitter/library/commerce/model/r;Lcom/twitter/android/commerce/view/x;)V

    .line 212
    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 193
    check-cast p3, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/commerce/view/v;->a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    return-void
.end method
