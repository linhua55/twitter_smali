.class public Ltv/periscope/android/view/ActionSheetItem;
.super Landroid/widget/RelativeLayout;
.source "Twttr"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Ltv/periscope/android/view/PsTextView;

.field private c:Ltv/periscope/android/view/PsTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Ltv/periscope/android/view/ActionSheetItem;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ltv/periscope/android/view/ActionSheetItem;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-virtual {p0, p1, p2, p3}, Ltv/periscope/android/view/ActionSheetItem;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Ltv/periscope/android/library/n;->ps__action_sheet_item:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 38
    sget v0, Ltv/periscope/android/library/l;->icon:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/view/ActionSheetItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ltv/periscope/android/view/ActionSheetItem;->a:Landroid/widget/ImageView;

    .line 39
    sget v0, Ltv/periscope/android/library/l;->label:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/view/ActionSheetItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/view/PsTextView;

    iput-object v0, p0, Ltv/periscope/android/view/ActionSheetItem;->b:Ltv/periscope/android/view/PsTextView;

    .line 40
    sget v0, Ltv/periscope/android/library/l;->description:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/view/ActionSheetItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/view/PsTextView;

    iput-object v0, p0, Ltv/periscope/android/view/ActionSheetItem;->c:Ltv/periscope/android/view/PsTextView;

    .line 42
    sget-object v0, Ltv/periscope/android/library/q;->ActionSheetItem:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 44
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    move v0, v1

    .line 45
    :goto_0
    if-ge v0, v3, :cond_5

    .line 46
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 47
    sget v5, Ltv/periscope/android/library/q;->ActionSheetItem_ps__icon:I

    if-ne v4, v5, :cond_1

    .line 48
    iget-object v5, p0, Ltv/periscope/android/view/ActionSheetItem;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_1
    sget v5, Ltv/periscope/android/library/q;->ActionSheetItem_ps__tint:I

    if-ne v4, v5, :cond_2

    .line 50
    iget-object v5, p0, Ltv/periscope/android/view/ActionSheetItem;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    .line 51
    :cond_2
    sget v5, Ltv/periscope/android/library/q;->ActionSheetItem_ps__label:I

    if-ne v4, v5, :cond_3

    .line 52
    iget-object v5, p0, Ltv/periscope/android/view/ActionSheetItem;->b:Ltv/periscope/android/view/PsTextView;

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ltv/periscope/android/view/PsTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 53
    :cond_3
    sget v5, Ltv/periscope/android/library/q;->ActionSheetItem_ps__labelTextSize:I

    if-ne v4, v5, :cond_4

    .line 54
    iget-object v5, p0, Ltv/periscope/android/view/ActionSheetItem;->b:Ltv/periscope/android/view/PsTextView;

    const/16 v6, 0x10

    invoke-virtual {v2, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v5, v1, v4}, Ltv/periscope/android/view/PsTextView;->setTextSize(IF)V

    goto :goto_1

    .line 55
    :cond_4
    sget v5, Ltv/periscope/android/library/q;->ActionSheetItem_ps__labelFont:I

    if-ne v4, v5, :cond_0

    .line 56
    iget-object v4, p0, Ltv/periscope/android/view/ActionSheetItem;->b:Ltv/periscope/android/view/PsTextView;

    invoke-static {p1, p2, v4}, Ltv/periscope/android/view/as;->a(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/widget/TextView;)V

    goto :goto_1

    .line 59
    :cond_5
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    return-void
.end method

.method public a(Ljava/lang/CharSequence;I)V
    .locals 2
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 93
    iget-object v0, p0, Ltv/periscope/android/view/ActionSheetItem;->b:Ltv/periscope/android/view/PsTextView;

    invoke-virtual {v0, p1}, Ltv/periscope/android/view/PsTextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Ltv/periscope/android/view/ActionSheetItem;->b:Ltv/periscope/android/view/PsTextView;

    invoke-virtual {p0}, Ltv/periscope/android/view/ActionSheetItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ltv/periscope/android/view/PsTextView;->setTextColor(I)V

    .line 95
    return-void
.end method

.method public getIcon()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Ltv/periscope/android/view/ActionSheetItem;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public setDescription(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Ltv/periscope/android/view/ActionSheetItem;->c:Ltv/periscope/android/view/PsTextView;

    invoke-virtual {v0, p1}, Ltv/periscope/android/view/PsTextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Ltv/periscope/android/view/ActionSheetItem;->c:Ltv/periscope/android/view/PsTextView;

    invoke-virtual {p0}, Ltv/periscope/android/view/ActionSheetItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Ltv/periscope/android/library/i;->ps__primary_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ltv/periscope/android/view/PsTextView;->setTextColor(I)V

    .line 104
    return-void
.end method

.method public setDescriptionVisibility(I)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Ltv/periscope/android/view/ActionSheetItem;->c:Ltv/periscope/android/view/PsTextView;

    invoke-virtual {v0, p1}, Ltv/periscope/android/view/PsTextView;->setVisibility(I)V

    .line 99
    return-void
.end method

.method public setIconVisibility(I)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Ltv/periscope/android/view/ActionSheetItem;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Ltv/periscope/android/view/ActionSheetItem;->b:Ltv/periscope/android/view/PsTextView;

    invoke-virtual {v0, p1}, Ltv/periscope/android/view/PsTextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Ltv/periscope/android/view/ActionSheetItem;->b:Ltv/periscope/android/view/PsTextView;

    invoke-virtual {p0}, Ltv/periscope/android/view/ActionSheetItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Ltv/periscope/android/library/i;->ps__primary_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ltv/periscope/android/view/PsTextView;->setTextColor(I)V

    .line 90
    return-void
.end method

.method public setLabelVisibility(I)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Ltv/periscope/android/view/ActionSheetItem;->b:Ltv/periscope/android/view/PsTextView;

    invoke-virtual {v0, p1}, Ltv/periscope/android/view/PsTextView;->setVisibility(I)V

    .line 85
    return-void
.end method
