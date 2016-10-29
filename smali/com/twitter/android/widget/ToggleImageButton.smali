.class public Lcom/twitter/android/widget/ToggleImageButton;
.super Landroid/widget/ImageButton;
.source "Twttr"


# static fields
.field private static final a:[I


# instance fields
.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f01038f

    aput v2, v0, v1

    sput-object v0, Lcom/twitter/android/widget/ToggleImageButton;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/widget/ToggleImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/widget/ToggleImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput-boolean v0, p0, Lcom/twitter/android/widget/ToggleImageButton;->b:Z

    .line 47
    const/4 v1, 0x0

    .line 49
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v2, Lcom/twitter/android/mu;->ToggleImageButton:[I

    const/4 v3, 0x0

    invoke-virtual {v0, p2, v2, p3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 51
    const/4 v0, 0x2

    .line 52
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    const/4 v2, 0x3

    .line 54
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 56
    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/twitter/android/widget/ToggleImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    iput-object v0, p0, Lcom/twitter/android/widget/ToggleImageButton;->c:Ljava/lang/String;

    .line 58
    if-nez v2, :cond_2

    .line 59
    invoke-virtual {p0}, Lcom/twitter/android/widget/ToggleImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/twitter/android/widget/ToggleImageButton;->d:Ljava/lang/String;

    .line 61
    const/4 v0, 0x4

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/widget/ToggleImageButton;->e:Z

    .line 63
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/ToggleImageButton;->setToggledOn(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    :cond_1
    return-void

    :cond_2
    move-object v0, v2

    .line 59
    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 66
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/twitter/android/widget/ToggleImageButton;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/ToggleImageButton;->setToggledOn(Z)V

    .line 114
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/twitter/android/widget/ToggleImageButton;->b:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 2

    .prologue
    .line 73
    add-int/lit8 v0, p1, 0x2

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 74
    iget-boolean v1, p0, Lcom/twitter/android/widget/ToggleImageButton;->b:Z

    if-eqz v1, :cond_0

    .line 75
    sget-object v1, Lcom/twitter/android/widget/ToggleImageButton;->a:[I

    invoke-static {v0, v1}, Lcom/twitter/android/widget/ToggleImageButton;->mergeDrawableStates([I[I)[I

    .line 77
    :cond_0
    return-object v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 127
    check-cast p1, Lcom/twitter/android/widget/ToggleImageButton$SavedState;

    .line 128
    invoke-virtual {p1}, Lcom/twitter/android/widget/ToggleImageButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 129
    iget-boolean v0, p1, Lcom/twitter/android/widget/ToggleImageButton$SavedState;->a:Z

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/ToggleImageButton;->setToggledOn(Z)V

    .line 130
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 122
    new-instance v0, Lcom/twitter/android/widget/ToggleImageButton$SavedState;

    invoke-super {p0}, Landroid/widget/ImageButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iget-boolean v2, p0, Lcom/twitter/android/widget/ToggleImageButton;->b:Z

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/widget/ToggleImageButton$SavedState;-><init>(Landroid/os/Parcelable;Z)V

    return-object v0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/twitter/android/widget/ToggleImageButton;->e:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/twitter/android/widget/ToggleImageButton;->a()V

    .line 85
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v0

    return v0
.end method

.method public setContentDescriptionOff(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/twitter/android/widget/ToggleImageButton;->d:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setContentDescriptionOn(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/twitter/android/widget/ToggleImageButton;->c:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setToggleOnClick(Z)V
    .locals 0

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/twitter/android/widget/ToggleImageButton;->e:Z

    .line 104
    return-void
.end method

.method public setToggledOn(Z)V
    .locals 1

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/twitter/android/widget/ToggleImageButton;->b:Z

    .line 108
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/widget/ToggleImageButton;->c:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/ToggleImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {p0}, Lcom/twitter/android/widget/ToggleImageButton;->refreshDrawableState()V

    .line 110
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/widget/ToggleImageButton;->d:Ljava/lang/String;

    goto :goto_0
.end method
