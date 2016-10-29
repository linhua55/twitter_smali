.class Lawz;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/composer/cl;


# instance fields
.field final synthetic a:Lawv;


# direct methods
.method constructor <init>(Lawv;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lawz;->a:Lawv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lawz;->a:Lawv;

    invoke-static {v0}, Lawv;->e(Lawv;)Lawu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lawz;->a:Lawv;

    invoke-static {v0}, Lawv;->e(Lawv;)Lawu;

    move-result-object v0

    invoke-interface {v0}, Lawu;->a()V

    .line 275
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lawz;->a:Lawv;

    invoke-static {v0}, Lawv;->f(Lawv;)Lcom/twitter/android/composer/ComposerCountView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/android/composer/ComposerCountView;->a(I)I

    .line 262
    iget-object v0, p0, Lawz;->a:Lawv;

    invoke-static {v0}, Lawv;->g(Lawv;)Lcom/twitter/android/composer/TweetBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/composer/TweetBox;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lawz;->a:Lawv;

    invoke-static {v0}, Lawv;->h(Lawv;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0a0682

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 267
    :goto_0
    iget-object v0, p0, Lawz;->a:Lawv;

    invoke-static {v0}, Lawv;->h(Lawv;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lawz;->a:Lawv;

    invoke-static {v1}, Lawv;->g(Lawv;)Lcom/twitter/android/composer/TweetBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/composer/TweetBox;->o()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 268
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lawz;->a:Lawv;

    invoke-static {v0}, Lawv;->h(Lawv;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0a067b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 286
    iget-object v0, p0, Lawz;->a:Lawv;

    invoke-static {v0}, Lawv;->i(Lawv;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 287
    iget-object v0, p0, Lawz;->a:Lawv;

    invoke-static {v0}, Lawv;->j(Lawv;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lawz;->a:Lawv;

    invoke-static {v0}, Lawv;->k(Lawv;)V

    .line 289
    invoke-static {}, Lcau;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lawz;->a:Lawv;

    invoke-static {v0}, Lawv;->g(Lawv;)Lcom/twitter/android/composer/TweetBox;

    move-result-object v0

    const v1, 0x7f130276

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/TweetBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 291
    invoke-virtual {v0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0205ad

    .line 292
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 294
    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120011

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v1, v2}, Lbkd;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 295
    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 296
    aget-object v3, v2, v4

    const/4 v4, 0x1

    aget-object v4, v2, v4

    const/4 v5, 0x3

    aget-object v2, v2, v5

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 300
    invoke-virtual {v0}, Landroid/widget/EditText;->invalidate()V

    .line 301
    new-instance v1, Laxa;

    invoke-direct {v1, p0, v0}, Laxa;-><init>(Lawz;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 319
    :cond_0
    iget-object v0, p0, Lawz;->a:Lawv;

    iget-object v1, p0, Lawz;->a:Lawv;

    invoke-static {v1}, Lawv;->i(Lawv;)Z

    move-result v1

    or-int/2addr v1, p1

    invoke-static {v0, v1}, Lawv;->b(Lawv;Z)Z

    .line 320
    iget-object v0, p0, Lawz;->a:Lawv;

    invoke-static {v0}, Lawv;->h(Lawv;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lawz;->a:Lawv;

    invoke-static {v1}, Lawv;->g(Lawv;)Lcom/twitter/android/composer/TweetBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/composer/TweetBox;->o()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 321
    return-void
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lawz;->a:Lawv;

    invoke-static {v0}, Lawv;->e(Lawv;)Lawu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lawz;->a:Lawv;

    invoke-static {v0}, Lawv;->e(Lawv;)Lawu;

    move-result-object v0

    invoke-interface {v0}, Lawu;->b()V

    .line 282
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lawz;->a:Lawv;

    invoke-static {v0}, Lawv;->e(Lawv;)Lawu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lawz;->a:Lawv;

    invoke-static {v0}, Lawv;->e(Lawv;)Lawu;

    move-result-object v0

    invoke-interface {v0}, Lawu;->a()V

    .line 328
    :cond_0
    return-void
.end method
