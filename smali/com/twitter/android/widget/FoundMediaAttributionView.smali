.class public Lcom/twitter/android/widget/FoundMediaAttributionView;
.super Landroid/widget/LinearLayout;
.source "Twttr"


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 21
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/twitter/android/widget/FoundMediaAttributionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/widget/FoundMediaAttributionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/FoundMediaAttributionView;->setOrientation(I)V

    .line 31
    const v0, 0x7f0400fd

    invoke-static {p1, v0, p0}, Lcom/twitter/android/widget/FoundMediaAttributionView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 32
    const v0, 0x7f13037c

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/FoundMediaAttributionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/FoundMediaAttributionView;->a:Landroid/widget/TextView;

    .line 33
    const v0, 0x7f13037b

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/FoundMediaAttributionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/widget/FoundMediaAttributionView;->b:Landroid/widget/ImageView;

    .line 34
    return-void
.end method


# virtual methods
.method public setProvider(Lcom/twitter/model/media/foundmedia/FoundMediaProvider;)V
    .locals 4

    .prologue
    .line 37
    if-eqz p1, :cond_2

    .line 38
    iget-object v0, p1, Lcom/twitter/model/media/foundmedia/FoundMediaProvider;->c:Ljava/lang/String;

    .line 39
    iget-object v1, p0, Lcom/twitter/android/widget/FoundMediaAttributionView;->b:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    const-string/jumbo v1, "giphy"

    iget-object v2, p1, Lcom/twitter/model/media/foundmedia/FoundMediaProvider;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/twitter/android/widget/FoundMediaAttributionView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/twitter/android/widget/FoundMediaAttributionView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02033f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    iget-object v1, p0, Lcom/twitter/android/widget/FoundMediaAttributionView;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :goto_0
    return-void

    .line 43
    :cond_0
    const-string/jumbo v1, "riffsy"

    iget-object v2, p1, Lcom/twitter/model/media/foundmedia/FoundMediaProvider;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/twitter/android/widget/FoundMediaAttributionView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/twitter/android/widget/FoundMediaAttributionView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020340

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    iget-object v1, p0, Lcom/twitter/android/widget/FoundMediaAttributionView;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/twitter/android/widget/FoundMediaAttributionView;->b:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    iget-object v1, p0, Lcom/twitter/android/widget/FoundMediaAttributionView;->a:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/widget/FoundMediaAttributionView;->a:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/twitter/android/widget/FoundMediaAttributionView;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
