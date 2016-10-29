.class public Lcom/twitter/android/widget/UrlLinkablePreference;
.super Landroid/preference/Preference;
.source "Twttr"


# instance fields
.field private a:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput v1, p0, Lcom/twitter/android/widget/UrlLinkablePreference;->a:I

    .line 35
    sget-object v0, Lcom/twitter/android/mu;->UrlLinkablePreference:[I

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/UrlLinkablePreference;->a:I

    .line 37
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput v1, p0, Lcom/twitter/android/widget/UrlLinkablePreference;->a:I

    .line 42
    sget-object v0, Lcom/twitter/android/mu;->UrlLinkablePreference:[I

    .line 43
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/UrlLinkablePreference;->a:I

    .line 45
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/twitter/android/widget/UrlLinkablePreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/twitter/android/widget/UrlLinkablePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/widget/UrlLinkablePreference;->b:Landroid/view/View;

    iget v2, p0, Lcom/twitter/android/widget/UrlLinkablePreference;->a:I

    invoke-static {v0, v1, v2}, Lcom/twitter/android/widget/gc;->a(Landroid/content/Context;Landroid/view/View;I)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/widget/UrlLinkablePreference;->b:Landroid/view/View;

    invoke-static {v0}, Lcom/twitter/android/widget/gc;->a(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 68
    iput p1, p0, Lcom/twitter/android/widget/UrlLinkablePreference;->a:I

    .line 69
    invoke-direct {p0}, Lcom/twitter/android/widget/UrlLinkablePreference;->a()V

    .line 70
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 51
    iput-object p1, p0, Lcom/twitter/android/widget/UrlLinkablePreference;->b:Landroid/view/View;

    .line 52
    invoke-direct {p0}, Lcom/twitter/android/widget/UrlLinkablePreference;->a()V

    .line 53
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/twitter/android/widget/UrlLinkablePreference;->isEnabled()Z

    move-result v0

    .line 58
    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 59
    invoke-virtual {p0}, Lcom/twitter/android/widget/UrlLinkablePreference;->isEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/twitter/android/widget/UrlLinkablePreference;->a()V

    .line 62
    :cond_0
    return-void
.end method
