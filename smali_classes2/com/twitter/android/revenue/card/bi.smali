.class Lcom/twitter/android/revenue/card/bi;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/revenue/card/bk;


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private final b:Lcom/twitter/android/revenue/card/CardMediaView;

.field private final c:Lcom/twitter/android/revenue/card/CardMediaView;


# direct methods
.method constructor <init>(Landroid/content/Context;Lclm;Lcom/twitter/library/widget/renderablecontent/DisplayMode;F)V
    .locals 4

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 165
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/twitter/android/revenue/card/bi;->a:Landroid/view/ViewGroup;

    .line 166
    iget-object v1, p0, Lcom/twitter/android/revenue/card/bi;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    invoke-static {p1, p3}, Lcom/twitter/android/revenue/y;->a(Landroid/content/Context;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Z

    move-result v1

    .line 170
    new-instance v2, Lcom/twitter/android/revenue/card/CardMediaView;

    invoke-direct {v2, p1}, Lcom/twitter/android/revenue/card/CardMediaView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/twitter/android/revenue/card/bi;->b:Lcom/twitter/android/revenue/card/CardMediaView;

    .line 171
    const-string/jumbo v2, "cover_promo_image"

    invoke-static {v2, p2}, Lcln;->a(Ljava/lang/String;Lclm;)Lcln;

    move-result-object v2

    .line 172
    iget-object v3, p0, Lcom/twitter/android/revenue/card/bi;->b:Lcom/twitter/android/revenue/card/CardMediaView;

    invoke-direct {p0, v3, v2, v1, p4}, Lcom/twitter/android/revenue/card/bi;->a(Lcom/twitter/android/revenue/card/CardMediaView;Lcln;ZF)V

    .line 174
    new-instance v2, Lcom/twitter/android/revenue/card/CardMediaView;

    invoke-direct {v2, p1}, Lcom/twitter/android/revenue/card/CardMediaView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/twitter/android/revenue/card/bi;->c:Lcom/twitter/android/revenue/card/CardMediaView;

    .line 175
    const-string/jumbo v2, "promo_image"

    invoke-static {v2, p2}, Lcln;->a(Ljava/lang/String;Lclm;)Lcln;

    move-result-object v2

    .line 176
    iget-object v3, p0, Lcom/twitter/android/revenue/card/bi;->c:Lcom/twitter/android/revenue/card/CardMediaView;

    invoke-direct {p0, v3, v2, v1, p4}, Lcom/twitter/android/revenue/card/bi;->a(Lcom/twitter/android/revenue/card/CardMediaView;Lcln;ZF)V

    .line 178
    iget-object v1, p0, Lcom/twitter/android/revenue/card/bi;->a:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/twitter/android/revenue/card/bi;->c:Lcom/twitter/android/revenue/card/CardMediaView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    iget-object v1, p0, Lcom/twitter/android/revenue/card/bi;->a:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/twitter/android/revenue/card/bi;->b:Lcom/twitter/android/revenue/card/CardMediaView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    return-void
.end method

.method private a(Lcom/twitter/android/revenue/card/CardMediaView;Lcln;ZF)V
    .locals 0

    .prologue
    .line 213
    if-eqz p2, :cond_0

    .line 214
    invoke-static {p1, p2, p3, p4}, Lcom/twitter/android/revenue/y;->a(Lcom/twitter/android/revenue/card/CardMediaView;Lcln;ZF)V

    .line 216
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bi;->a:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public a(Landroid/app/Activity;Lcom/twitter/model/core/Tweet;JLcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 0

    .prologue
    .line 232
    return-void
.end method

.method public a(Z)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 220
    iget-object v3, p0, Lcom/twitter/android/revenue/card/bi;->b:Lcom/twitter/android/revenue/card/CardMediaView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/twitter/android/revenue/card/CardMediaView;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bi;->c:Lcom/twitter/android/revenue/card/CardMediaView;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/twitter/android/revenue/card/CardMediaView;->setVisibility(I)V

    .line 222
    return-void

    :cond_0
    move v0, v2

    .line 220
    goto :goto_0

    :cond_1
    move v2, v1

    .line 221
    goto :goto_1
.end method

.method public at_()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/twitter/library/av/playback/ba;->a:Lcom/twitter/library/av/playback/ba;

    return-object v0
.end method

.method public ay_()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/twitter/library/av/playback/ba;->a:Lcom/twitter/library/av/playback/ba;

    return-object v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 236
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 244
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bi;->b:Lcom/twitter/android/revenue/card/CardMediaView;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bi;->b:Lcom/twitter/android/revenue/card/CardMediaView;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/card/CardMediaView;->getMediaImageView()Lcom/twitter/media/ui/image/MediaImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bi;->c:Lcom/twitter/android/revenue/card/CardMediaView;

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bi;->c:Lcom/twitter/android/revenue/card/CardMediaView;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/card/CardMediaView;->getMediaImageView()Lcom/twitter/media/ui/image/MediaImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 251
    :cond_1
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bi;->b:Lcom/twitter/android/revenue/card/CardMediaView;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bi;->b:Lcom/twitter/android/revenue/card/CardMediaView;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/card/CardMediaView;->getMediaImageView()Lcom/twitter/media/ui/image/MediaImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/MediaImageView;->j()Z

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bi;->c:Lcom/twitter/android/revenue/card/CardMediaView;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bi;->c:Lcom/twitter/android/revenue/card/CardMediaView;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/card/CardMediaView;->getMediaImageView()Lcom/twitter/media/ui/image/MediaImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/MediaImageView;->j()Z

    .line 262
    :cond_1
    return-void
.end method

.method public h()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/twitter/library/av/playback/ba;->a:Lcom/twitter/library/av/playback/ba;

    return-object v0
.end method

.method public i()Landroid/view/View;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/twitter/library/widget/a;->j:Lcom/twitter/library/widget/a;

    invoke-interface {v0}, Lcom/twitter/library/widget/a;->i()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
