.class public Lcom/twitter/android/widget/ExperimentalEngagementActionBar;
.super Lcom/twitter/android/widget/EngagementActionBar;
.source "Twttr"


# static fields
.field private static final a:[I

.field private static final b:[I


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 17
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/twitter/android/widget/ExperimentalEngagementActionBar;->a:[I

    .line 18
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/twitter/android/widget/ExperimentalEngagementActionBar;->b:[I

    return-void

    .line 17
    :array_0
    .array-data 4
        0x7f130135
        0x7f130136
        0x7f130137
    .end array-data

    .line 18
    :array_1
    .array-data 4
        0x7f130416
        0x7f130417
        0x7f130418
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/widget/ExperimentalEngagementActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f01002b

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/widget/ExperimentalEngagementActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/android/widget/EngagementActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    sget-object v0, Lcom/twitter/android/mu;->ExperimentalEngagementActionBar:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/widget/ExperimentalEngagementActionBar;->c:Ljava/lang/String;

    .line 45
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/widget/ExperimentalEngagementActionBar;->d:Ljava/lang/String;

    .line 46
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/widget/ExperimentalEngagementActionBar;->e:Ljava/lang/String;

    .line 47
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/widget/ExperimentalEngagementActionBar;->f:Ljava/lang/String;

    .line 48
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/widget/ExperimentalEngagementActionBar;->g:Ljava/lang/String;

    .line 49
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/ExperimentalEngagementActionBar;->h:I

    .line 50
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/ExperimentalEngagementActionBar;->i:I

    .line 51
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/ExperimentalEngagementActionBar;->j:I

    .line 52
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/ExperimentalEngagementActionBar;->k:I

    .line 53
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/ExperimentalEngagementActionBar;->l:I

    .line 54
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/ExperimentalEngagementActionBar;->m:I

    .line 55
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    return-void
.end method


# virtual methods
.method public a(ILandroid/widget/TextView;)V
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/widget/ExperimentalEngagementActionBar;->b(ILandroid/widget/TextView;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setId(I)V

    .line 85
    return-void
.end method

.method public a(ILcom/twitter/android/widget/ToggleImageButton;)V
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/widget/ExperimentalEngagementActionBar;->b(ILcom/twitter/android/widget/ToggleImageButton;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/twitter/android/widget/ToggleImageButton;->setId(I)V

    .line 81
    return-void
.end method

.method public b(ILandroid/widget/TextView;)I
    .locals 6

    .prologue
    const v1, 0x7f130062

    const v0, 0x7f13002e

    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 167
    invoke-static {}, Lcbh;->a()Lcbh;

    move-result-object v2

    invoke-virtual {v2}, Lcbh;->f()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 168
    if-nez p1, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v0

    .line 171
    :cond_1
    if-ne p1, v3, :cond_2

    move v0, v1

    .line 172
    goto :goto_0

    .line 174
    :cond_2
    if-ne p1, v4, :cond_3

    .line 175
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    :cond_3
    invoke-virtual {p2}, Landroid/widget/TextView;->getId()I

    move-result v0

    goto :goto_0

    .line 177
    :cond_4
    invoke-static {}, Lcbh;->a()Lcbh;

    move-result-object v2

    invoke-virtual {v2}, Lcbh;->g()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 178
    if-eqz p1, :cond_0

    .line 181
    if-ne p1, v3, :cond_5

    .line 182
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    :cond_5
    if-ne p1, v4, :cond_3

    move v0, v1

    .line 185
    goto :goto_0

    .line 188
    :cond_6
    if-nez p1, :cond_7

    .line 189
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    :cond_7
    if-ne p1, v3, :cond_8

    move v0, v1

    .line 192
    goto :goto_0

    .line 194
    :cond_8
    if-ne p1, v4, :cond_3

    goto :goto_0
.end method

.method public b(ILcom/twitter/android/widget/ToggleImageButton;)I
    .locals 6

    .prologue
    const v1, 0x7f130061

    const v2, 0x7f13005f

    const v0, 0x7f13002d

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 132
    invoke-static {}, Lcbh;->a()Lcbh;

    move-result-object v3

    invoke-virtual {v3}, Lcbh;->f()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 133
    if-nez p1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v0

    .line 136
    :cond_1
    if-ne p1, v4, :cond_2

    move v0, v1

    .line 137
    goto :goto_0

    .line 139
    :cond_2
    if-ne p1, v5, :cond_8

    move v0, v2

    .line 140
    goto :goto_0

    .line 142
    :cond_3
    invoke-static {}, Lcbh;->a()Lcbh;

    move-result-object v3

    invoke-virtual {v3}, Lcbh;->g()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 143
    if-eqz p1, :cond_0

    .line 146
    if-ne p1, v4, :cond_4

    move v0, v2

    .line 147
    goto :goto_0

    .line 149
    :cond_4
    if-ne p1, v5, :cond_8

    move v0, v1

    .line 150
    goto :goto_0

    .line 153
    :cond_5
    if-nez p1, :cond_6

    move v0, v2

    .line 154
    goto :goto_0

    .line 156
    :cond_6
    if-ne p1, v4, :cond_7

    move v0, v1

    .line 157
    goto :goto_0

    .line 159
    :cond_7
    if-eq p1, v5, :cond_0

    .line 163
    :cond_8
    invoke-virtual {p2}, Lcom/twitter/android/widget/ToggleImageButton;->getId()I

    move-result v0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    sget-object v0, Lcom/twitter/android/widget/ExperimentalEngagementActionBar;->a:[I

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 61
    sget-object v0, Lcom/twitter/android/widget/ExperimentalEngagementActionBar;->a:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/ExperimentalEngagementActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ToggleImageButton;

    .line 62
    sget-object v1, Lcom/twitter/android/widget/ExperimentalEngagementActionBar;->b:[I

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/twitter/android/widget/ExperimentalEngagementActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 64
    invoke-virtual {p0, v2, v0}, Lcom/twitter/android/widget/ExperimentalEngagementActionBar;->a(ILcom/twitter/android/widget/ToggleImageButton;)V

    .line 65
    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/ExperimentalEngagementActionBar;->setButtonStyle(Lcom/twitter/android/widget/ToggleImageButton;)V

    .line 67
    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p0, v2, v1}, Lcom/twitter/android/widget/ExperimentalEngagementActionBar;->a(ILandroid/widget/TextView;)V

    .line 69
    invoke-virtual {p0, v1}, Lcom/twitter/android/widget/ExperimentalEngagementActionBar;->setLabelStyle(Landroid/widget/TextView;)V

    .line 60
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 72
    :cond_1
    const v0, 0x7f130138

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/ExperimentalEngagementActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 73
    invoke-static {}, Lcbh;->a()Lcbh;

    move-result-object v1

    invoke-virtual {v1}, Lcbh;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 74
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 76
    :cond_2
    invoke-super {p0}, Lcom/twitter/android/widget/EngagementActionBar;->onFinishInflate()V

    .line 77
    return-void
.end method

.method public setButtonStyle(Lcom/twitter/android/widget/ToggleImageButton;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-virtual {p1}, Lcom/twitter/android/widget/ToggleImageButton;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 113
    :goto_0
    return-void

    .line 90
    :sswitch_0
    invoke-static {}, Lcbh;->a()Lcbh;

    move-result-object v0

    invoke-virtual {v0}, Lcbh;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/twitter/android/widget/ExperimentalEngagementActionBar;->h:I

    :goto_1
    invoke-virtual {p1, v0}, Lcom/twitter/android/widget/ToggleImageButton;->setImageResource(I)V

    .line 92
    iget-object v0, p0, Lcom/twitter/android/widget/ExperimentalEngagementActionBar;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/android/widget/ToggleImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {p1, v1}, Lcom/twitter/android/widget/ToggleImageButton;->setToggleOnClick(Z)V

    goto :goto_0

    .line 90
    :cond_0
    iget v0, p0, Lcom/twitter/android/widget/ExperimentalEngagementActionBar;->i:I

    goto :goto_1

    .line 97
    :sswitch_1
    iget v0, p0, Lcom/twitter/android/widget/ExperimentalEngagementActionBar;->j:I

    invoke-virtual {p1, v0}, Lcom/twitter/android/widget/ToggleImageButton;->setImageResource(I)V

    .line 98
    iget-object v0, p0, Lcom/twitter/android/widget/ExperimentalEngagementActionBar;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/android/widget/ToggleImageButton;->setContentDescriptionOff(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/twitter/android/widget/ExperimentalEngagementActionBar;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/android/widget/ToggleImageButton;->setContentDescriptionOn(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1, v1}, Lcom/twitter/android/widget/ToggleImageButton;->setToggleOnClick(Z)V

    goto :goto_0

    .line 104
    :sswitch_2
    iget v0, p0, Lcom/twitter/android/widget/ExperimentalEngagementActionBar;->k:I

    invoke-virtual {p1, v0}, Lcom/twitter/android/widget/ToggleImageButton;->setImageResource(I)V

    .line 105
    iget-object v0, p0, Lcom/twitter/android/widget/ExperimentalEngagementActionBar;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/android/widget/ToggleImageButton;->setContentDescriptionOff(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/twitter/android/widget/ExperimentalEngagementActionBar;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/android/widget/ToggleImageButton;->setContentDescriptionOn(Ljava/lang/String;)V

    .line 107
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/twitter/android/widget/ToggleImageButton;->setToggleOnClick(Z)V

    goto :goto_0

    .line 88
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f13002d -> :sswitch_2
        0x7f13005f -> :sswitch_0
        0x7f130061 -> :sswitch_1
    .end sparse-switch
.end method

.method public setLabelStyle(Landroid/widget/TextView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 116
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 117
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 129
    :goto_0
    return-void

    .line 119
    :sswitch_0
    iget v1, p0, Lcom/twitter/android/widget/ExperimentalEngagementActionBar;->l:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 123
    :sswitch_1
    iget v1, p0, Lcom/twitter/android/widget/ExperimentalEngagementActionBar;->m:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 117
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f13002e -> :sswitch_1
        0x7f130062 -> :sswitch_0
    .end sparse-switch
.end method
