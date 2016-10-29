.class public Ltv/periscope/android/view/PsCheckButton;
.super Landroid/widget/ImageView;
.source "Twttr"


# instance fields
.field private a:Z

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {p0}, Ltv/periscope/android/view/PsCheckButton;->getDefaultCheckedResId()I

    move-result v2

    invoke-virtual {p0}, Ltv/periscope/android/view/PsCheckButton;->getDefaultCheckedColorFilterId()I

    move-result v3

    .line 21
    invoke-virtual {p0}, Ltv/periscope/android/view/PsCheckButton;->getDefaultUncheckedResId()I

    move-result v4

    invoke-virtual {p0}, Ltv/periscope/android/view/PsCheckButton;->getDefaultUncheckedColorFilterId()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    .line 20
    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/view/PsCheckButton;->a(Landroid/content/Context;IIII)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0, p1, p2}, Ltv/periscope/android/view/PsCheckButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-direct {p0, p1, p2}, Ltv/periscope/android/view/PsCheckButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method private a(Landroid/content/Context;IIII)V
    .locals 3

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/view/PsCheckButton;->b:Landroid/graphics/drawable/Drawable;

    .line 71
    iget-object v0, p0, Ltv/periscope/android/view/PsCheckButton;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 73
    if-lez p4, :cond_0

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/view/PsCheckButton;->c:Landroid/graphics/drawable/Drawable;

    .line 75
    iget-object v0, p0, Ltv/periscope/android/view/PsCheckButton;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 80
    :goto_0
    invoke-direct {p0}, Ltv/periscope/android/view/PsCheckButton;->b()V

    .line 81
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/periscope/android/view/PsCheckButton;->c:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 51
    sget-object v0, Ltv/periscope/android/library/q;->PsCheckButton:[I

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 54
    :try_start_0
    sget v0, Ltv/periscope/android/library/q;->PsCheckButton_ps__checked:I

    .line 55
    invoke-virtual {p0}, Ltv/periscope/android/view/PsCheckButton;->getDefaultCheckedResId()I

    move-result v1

    .line 54
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 56
    sget v0, Ltv/periscope/android/library/q;->PsCheckButton_ps__checkedColorFilter:I

    .line 57
    invoke-virtual {p0}, Ltv/periscope/android/view/PsCheckButton;->getDefaultCheckedColorFilterId()I

    move-result v1

    .line 56
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 58
    sget v0, Ltv/periscope/android/library/q;->PsCheckButton_ps__unchecked:I

    .line 59
    invoke-virtual {p0}, Ltv/periscope/android/view/PsCheckButton;->getDefaultUncheckedResId()I

    move-result v1

    .line 58
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 60
    sget v0, Ltv/periscope/android/library/q;->PsCheckButton_ps__uncheckedColorFilter:I

    .line 61
    invoke-virtual {p0}, Ltv/periscope/android/view/PsCheckButton;->getDefaultUncheckedColorFilterId()I

    move-result v1

    .line 60
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    .line 62
    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/view/PsCheckButton;->a(Landroid/content/Context;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    return-void

    .line 64
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Ltv/periscope/android/view/PsCheckButton;->a:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Ltv/periscope/android/view/PsCheckButton;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Ltv/periscope/android/view/PsCheckButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/view/PsCheckButton;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Ltv/periscope/android/view/PsCheckButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Ltv/periscope/android/view/PsCheckButton;->a:Z

    return v0
.end method

.method protected getDefaultCheckedColorFilterId()I
    .locals 1

    .prologue
    .line 29
    sget v0, Ltv/periscope/android/library/i;->ps__blue:I

    return v0
.end method

.method protected getDefaultCheckedResId()I
    .locals 1

    .prologue
    .line 25
    sget v0, Ltv/periscope/android/library/k;->ps__ic_check:I

    return v0
.end method

.method protected getDefaultUncheckedColorFilterId()I
    .locals 1

    .prologue
    .line 37
    sget v0, Ltv/periscope/android/library/i;->ps__light_grey:I

    return v0
.end method

.method protected getDefaultUncheckedResId()I
    .locals 1

    .prologue
    .line 33
    sget v0, Ltv/periscope/android/library/k;->ps__ic_hollow_cirlce:I

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    .prologue
    .line 92
    iput-boolean p1, p0, Ltv/periscope/android/view/PsCheckButton;->a:Z

    .line 93
    invoke-direct {p0}, Ltv/periscope/android/view/PsCheckButton;->b()V

    .line 94
    return-void
.end method
